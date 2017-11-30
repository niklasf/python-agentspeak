# -*- coding: utf-8 -*-
#
# This file is part of the Pyson AgentSpeak interpreter.
# Copyright (C) 2016 Niklas Fiekas <niklas.fiekas@tu-clausthal.de>.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

from __future__ import print_function

import sys
import collections
import copy
import functools
import os.path
import time

import pyson
import pyson.parser
import pyson.lexer
import pyson.util

from pyson import UnaryOp, BinaryOp, PysonError, pyson_str


LOGGER = pyson.get_logger(__name__)


class BuildTermVisitor:
    def __init__(self, variables):
        self.variables = variables

    def visit_literal(self, ast_literal):
        return pyson.Literal(ast_literal.functor,
            (t.accept(self) for t in ast_literal.terms),
            (t.accept(self) for t in ast_literal.annotations))

    def visit_const(self, ast_const):
        return ast_const.value

    def visit_list(self, ast_list):
        return tuple(t.accept(self) for t in ast_list.terms)

    def visit_linked_list(self, ast_linked_list):
        return pyson.LinkedList(
            ast_linked_list.head.accept(self),
            ast_linked_list.tail.accept(self))

    def visit_unary_op(self, ast_unary_op):
        return pyson.UnaryExpr(
            ast_unary_op.operator.value,
            ast_unary_op.operand.accept(self))

    def visit_binary_op(self, ast_binary_op):
        return pyson.BinaryExpr(
            ast_binary_op.operator.value,
            ast_binary_op.left.accept(self),
            ast_binary_op.right.accept(self))

    def visit_variable(self, ast_variable):
        try:
            return self.variables[ast_variable.name]
        except KeyError:
            if ast_variable.name == "_":
                var = pyson.Wildcard()
            else:
                var = pyson.Var()

            self.variables[ast_variable.name] = var
            return var


class BuildReplacePatternVisitor(BuildTermVisitor):
    def __init__(self):
        BuildTermVisitor.__init__(self, {})

    def visit_unary_op(self, ast_unary_op):
        return pyson.Wildcard()

    def visit_binary_op(self, ast_binary_op):
        return pyson.Wildcard()


class BuildQueryVisitor:
    def __init__(self, variables, actions, log):
        self.variables = variables
        self.actions = actions
        self.log = log

    def visit_literal(self, ast_literal):
        term = ast_literal.accept(BuildTermVisitor(self.variables))
        try:
            arity = len(ast_literal.terms)
            action_impl = self.actions.lookup(ast_literal.functor, arity)
            return ActionQuery(term, action_impl)
        except KeyError:
            if "." in ast_literal.functor:
                self.log.warning("no such action '%s/%d'", ast_literal.functor, arity,
                                 loc=ast_literal.loc,
                                 extra_locs=[t.loc for t in ast_literal.terms])
            return TermQuery(term)

    def visit_const(self, ast_const):
        if ast_const.value is True:
            return TrueQuery()
        elif ast_const.value is False:
            return FalseQuery()
        else:
            raise self.log.error("non-boolean const in query context: '%s'",
                                 ast_const.value, loc=ast_const.loc)

    def visit_binary_op(self, ast_binary_op):
        if ast_binary_op.operator == BinaryOp.op_and:
            return AndQuery(ast_binary_op.left.accept(self),
                            ast_binary_op.right.accept(self))
        elif ast_binary_op.operator == BinaryOp.op_or:
            return OrQuery(ast_binary_op.left.accept(self),
                           ast_binary_op.right.accept(self))
        elif ast_binary_op.operator == BinaryOp.op_unify:
            return UnifyQuery(ast_binary_op.left.accept(BuildTermVisitor(self.variables)),
                              ast_binary_op.right.accept(BuildTermVisitor(self.variables)))
        elif not ast_binary_op.operator.value.comp_op:
            self.log.error("invalid operator in query context: '%s'",
                           ast_binary_op.operator.value.lexeme,
                           loc=ast_binary_op.loc,
                           extra_locs=[ast_binary_op.left.loc, ast_binary_op.right.loc])

        return TermQuery(ast_binary_op.accept(BuildTermVisitor(self.variables)))

    def visit_unary_op(self, ast_unary_op):
        if ast_unary_op.operator == UnaryOp.op_not:
            return NotQuery(ast_unary_op.operand.accept(self))
        else:
            raise self.log.error("non-boolean unary operator in query context: '%s'",
                                 ast_unary_op.operator.lexeme, ast_unary_op.loc)

    def visit_variable(self, ast_variable):
        return TermQuery(ast_variable.accept(BuildTermVisitor(self.variables)))


class TrueQuery:
    def execute(self, agent, intention):
        yield


class FalseQuery:
    def execute(self, agent, intention):
        return
        yield


class ActionQuery:
    def __init__(self, term, impl):
        self.term = term
        self.impl = impl

    def execute(self, agent, intention):
        for _ in self.impl(agent, self.term, intention):
            yield


class TermQuery:
    def __init__(self, term):
        self.term = term

    def execute(self, agent, intention):
        # Boolean constants.
        term = pyson.evaluate(self.term, intention.scope)
        if term is True:
            yield
            return
        elif term is False:
            return

        try:
            group = term.literal_group()
        except AttributeError:
            raise PysonError("expected boolean or literal in query context, got: '%s'" % term)

        # Query on the belief base.
        for belief in agent.beliefs[group]:
            for _ in pyson.unify_annotated(term, belief, intention.scope, intention.stack):
                yield

        choicepoint = object()

        # Follow rules.
        for rule in agent.rules[group]:
            rule = copy.deepcopy(rule)

            intention.stack.append(choicepoint)

            if pyson.unify(term, rule.head, intention.scope, intention.stack):
                for _ in rule.query.execute(agent, intention):
                    yield

            pyson.reroll(intention.scope, intention.stack, choicepoint)

    def __str__(self):
        return str(self.term)


class AndQuery:
    def __init__(self, left, right):
        self.left = left
        self.right = right

    def execute(self, agent, intention):
        for _ in self.left.execute(agent, intention):
            for _ in self.right.execute(agent, intention):
                yield

    def __str__(self):
        return "(%s & %s)" % (self.left, self.right)


class OrQuery:
    def __init__(self, left, right):
        self.left = left
        self.right = right

    def execute(self, agent, intention):
        for _ in self.left.execute(agent, intention):
            yield

        for _ in self.right.execute(agent, intention):
            yield

    def __str__(self):
        return "(%s | %s)" % (self.left, self.right)


class NotQuery:
    def __init__(self, query):
        self.query = query

    def execute(self, agent, intention):
        choicepoint = object()
        intention.stack.append(choicepoint)

        success = any(True for _ in self.query.execute(agent, intention))

        pyson.reroll(intention.scope, intention.stack, choicepoint)

        if not success:
            yield


class UnifyQuery:
    def __init__(self, left, right):
        self.left = left
        self.right = right

    def execute(self, agent, intention):
        return pyson.unify_annotated(self.left, self.right, intention.scope, intention.stack)

    def __str__(self):
        return "(%s = %s)" % (self.left, self.right)


class Rule:
    def __init__(self, head, query):
        self.head = head
        self.query = query

    def __str__(self):
        return "%s :- %s" % (self.head, self.query)


class Plan:
    def __init__(self, trigger, goal_type, head, context, body):
        self.trigger = trigger
        self.goal_type = goal_type
        self.head = head
        self.context = context
        self.body = body

    def name(self):
        return "%s%s%s" % (self.trigger.value, self.goal_type.value, self.head)


class Intention:
    def __init__(self):
        self.instr = None
        self.head_term = None
        self.calling_term = None

        self.scope = {}
        self.stack = collections.deque()

        self.query_stack = collections.deque()
        self.choicepoint_stack = collections.deque()

        self.wait_until = None


class Agent:
    def __init__(self, env, name, beliefs=None, rules=None, plans=None):
        self.env = env
        self.name = name

        self.beliefs = collections.defaultdict(lambda: set()) if beliefs is None else beliefs
        self.rules = collections.defaultdict(lambda: []) if rules is None else rules
        self.plans = collections.defaultdict(lambda: []) if plans is None else plans

        self.intentions = collections.deque()

    def dump(self):
        LOGGER.info("Belief base")
        for beliefs in self.beliefs.values():
            for belief in beliefs:
                print(pyson.pyson_repr(belief))

        LOGGER.info("Rules")
        for rules in self.rules.values():
            for rule in rules:
                print(rule)

        LOGGER.info("Plans")
        for plans in self.plans.values():
            for plan in plans:
                print("* %s%s%s : %s <- ... ." % (plan.trigger.value, plan.goal_type.value, plan.head, plan.context))

        LOGGER.info("Intentions")
        for i, intention_stack in enumerate(self.intentions):
            for j, intention in enumerate(intention_stack):
                print(i, j, intention)

    def add_rule(self, rule):
        self.rules[(rule.head.functor, len(rule.head.args))].append(rule)

    def add_plan(self, plan):
        self.plans[(plan.trigger, plan.goal_type, plan.head.functor, len(plan.head.args))].append(plan)

    def call(self, trigger, goal_type, term, calling_intention, delayed=False):
        if goal_type == pyson.GoalType.belief:
            if trigger == pyson.Trigger.addition:
                self.add_belief(term, calling_intention.scope)
            else:
                found = self.remove_belief(term, calling_intention)
                if not found:
                    return True

        frozen = pyson.freeze(term, calling_intention.scope, {})

        if not isinstance(frozen, pyson.Literal):
            raise PysonError("expected literal")

        applicable_plans = self.plans[(trigger, goal_type, frozen.functor, len(frozen.args))]
        choicepoint = object()
        intention = Intention()

        for plan in applicable_plans:
            for _ in pyson.unify_annotated(plan.head, frozen, intention.scope, intention.stack):
                for _ in plan.context.execute(self, intention):
                    intention.head_term = frozen
                    intention.instr = plan.body
                    intention.calling_term = term

                    if not delayed and self.intentions:
                        for intention_stack in self.intentions:
                            if intention_stack[-1] == calling_intention:
                                intention_stack.append(intention)
                                return True

                    new_intention_stack = collections.deque()
                    new_intention_stack.append(intention)
                    self.intentions.append(new_intention_stack)
                    return True

        if goal_type == pyson.GoalType.achievement:
            raise PysonError("no applicable plan for %s%s%s/%d" % (
                trigger.value, goal_type.value, frozen.functor, len(frozen.args)))
        elif goal_type == pyson.GoalType.test:
            return self.test_belief(term, calling_intention)

        return True

    def add_belief(self, term, scope):
        term = term.grounded(scope)

        if term.functor is None:
            raise PysonError("expected belief literal")

        self.beliefs[(term.functor, len(term.args))].add(term)

    def test_belief(self, term, intention):
        term = pyson.evaluate(term, intention.scope)

        if not isinstance(term, pyson.Literal):
            raise PysonError("expected belief literal, got: '%s'" % term)

        query = TermQuery(term)

        try:
            next(query.execute(self, intention))
            return True
        except StopIteration:
            return False

    def remove_belief(self, term, intention):
        term = pyson.evaluate(term, intention.scope)

        try:
            group = term.literal_group()
        except AttributeError:
            raise PysonError("expected belief literal, got: '%s'" % term)

        choicepoint = object()

        relevant_beliefs = self.beliefs[group]

        for belief in relevant_beliefs:
            intention.stack.append(choicepoint)

            if pyson.unify(term, belief, intention.scope, intention.stack):
                relevant_beliefs.remove(belief)
                return True

            pyson.reroll(intention.scope, intention.stack, choicepoint)

        return False

    def step(self):
        while self.intentions and not self.intentions[0]:
            self.intentions.popleft()

        for intention_stack in self.intentions:
            intention = intention_stack[-1]

            # Wait until.
            if intention.wait_until:
                if intention.wait_until < self.env.time():
                    intention.wait_until = None
                else:
                    continue

            break
        else:
            return False

        instr = intention.instr

        if not instr:
            intention_stack.pop()
            if not intention_stack:
                self.intentions.remove(intention_stack)
            elif intention.calling_term:
                frozen = intention.head_term.freeze(intention.scope, {})
                calling_intention = intention_stack[-1]
                if not pyson.unify(intention.calling_term, frozen, calling_intention.scope, calling_intention.stack):
                    raise RuntimeError("back unification failed")
            return True

        try:
            if instr.f(self, intention):
                intention.instr = instr.success
            else:
                intention.instr = instr.failure
                if not intention.instr:
                    raise PysonError("plan failure")
        except PysonError as err:
            log = pyson.Log(LOGGER)
            raise log.error("%s @ %s", err, instr.f,
                            loc=instr.loc, extra_locs=instr.extra_locs)
        except:
            log = pyson.Log(LOGGER)
            raise log.exception("python exception @ %s", instr.f,
                                loc=instr.loc, extra_locs=instr.extra_locs)

        return True

    def run(self):
        while self.step():
            pass


class Environment:
    def __init__(self):
        self.agents = {}

    def _make_name(self, path):
        base_name = pyson.sanitize_functor(os.path.splitext(os.path.basename(path))[0])
        if not base_name:
            base_name = "agent"
        name = base_name
        i = 1
        while name in self.agents:
            name = base_name + str(i)
            i += 1
        return name

    def build_agent_from_ast(self, source, ast_agent, actions, agent_cls=Agent, name=None):
        # This function is also called by the optimizer.

        log = pyson.Log(LOGGER, 3)
        agent = agent_cls(self, self._make_name(name or source.name))

        # Add rules to agent prototype.
        for ast_rule in ast_agent.rules:
            variables = {}
            head = ast_rule.head.accept(BuildTermVisitor(variables))
            consequence = ast_rule.consequence.accept(BuildQueryVisitor(variables, actions, log))
            agent.add_rule(Rule(head, consequence))

        # Add plans to agent prototype.
        for ast_plan in ast_agent.plans:
            variables = {}

            head = ast_plan.head.accept(BuildTermVisitor(variables))

            if ast_plan.context:
                context = ast_plan.context.accept(BuildQueryVisitor(variables, actions, log))
            else:
                context = TrueQuery()

            body = Instruction(noop)
            body.f = noop
            if ast_plan.body:
                ast_plan.body.accept(BuildInstructionsVisitor(variables, actions, body, log))

            plan = Plan(ast_plan.trigger, ast_plan.goal_type, head, context, body)
            agent.add_plan(plan)

        # Add beliefs to agent prototype.
        for ast_belief in ast_agent.beliefs:
            belief = ast_belief.accept(BuildTermVisitor({}))
            agent.call(pyson.Trigger.addition, pyson.GoalType.belief,
                       belief, Intention(), delayed=True)

        # Call initial goals on agent prototype.
        for ast_goal in ast_agent.goals:
            term = ast_goal.atom.accept(BuildTermVisitor({}))
            agent.call(pyson.Trigger.addition, pyson.GoalType.achievement,
                       term, Intention(), delayed=True)

        # Report errors.
        log.throw()

        self.agents[agent.name] = agent
        return ast_agent, agent

    def _build_agent(self, source, actions, agent_cls=Agent, name=None):
        # Parse source.
        log = pyson.Log(LOGGER, 3)
        tokens = pyson.lexer.TokenStream(source, log)
        ast_agent = pyson.parser.parse(source.name, tokens, log)
        log.throw()

        return self.build_agent_from_ast(source, ast_agent, actions, agent_cls, name)

    def build_agent(self, source, actions, agent_cls=Agent, name=None):
        _, agent = self._build_agent(source, actions, agent_cls, name)
        return agent

    def build_agents(self, source, n, actions, agent_cls=Agent, name=None):
        if n <= 0:
            return []

        ast_agent, prototype_agent = self._build_agent(source, actions, agent_cls=agent_cls)

        # Create more instances from the prototype, but with their own
        # callstacks. This is more efficient than making complete deep copies.
        agents = [prototype_agent]

        while len(agents) < n:
            agent = agent_cls(self, self._make_name(name or source.name),
                copy.copy(prototype_agent.beliefs),
                copy.copy(prototype_agent.rules),
                copy.copy(prototype_agent.plans))

            for ast_goal in ast_agent.goals:
                term = ast_goal.atom.accept(BuildTermVisitor({}))
                agent.call(pyson.Trigger.addition, pyson.GoalType.achievement,
                           term, Intention(), delayed=True)

            agents.append(agent)
            self.agents[agent.name] = agent

        return agents

    def time(self):
        return time.time()

    def run_agent(self, agent):
        more_work = True
        while more_work:
            more_work = agent.step()

            # Wait.
            if not more_work and any(intention_stack[-1].wait_until for intention_stack in agent.intentions):
                time.sleep(min(intention_stack[-1].wait_until for intention_stack in agent.intentions) - self.time())
                more_work = True

    def run(self):
        maybe_more_work = True
        while maybe_more_work:
            maybe_more_work = False
            for agent in self.agents.values():
                if agent.step():
                    maybe_more_work = True

    def shutdown(self):
        sys.exit(1)


def noop(agent, intention):
    return True


def add_belief(term, agent, intention):
    return agent.call(pyson.Trigger.addition, pyson.GoalType.belief, term, intention)


def remove_belief(term, agent, intention):
    return agent.call(pyson.Trigger.removal, pyson.GoalType.belief, term, intention)


def test_belief(term, agent, intention):
    return agent.call(pyson.Trigger.addition, pyson.GoalType.test, term, intention)


def call(trigger, goal_type, term, agent, intention):
    return agent.call(trigger, goal_type, term, intention, delayed=False)


def call_delayed(trigger, goal_type, term, agent, intention):
    return agent.call(trigger, goal_type, term, intention, delayed=True)


def push_query(query, agent, intention):
    intention.query_stack.append(query.execute(agent, intention))
    return True


def next_or_fail(agent, intention):
    try:
        next(intention.query_stack[-1])
        return True
    except StopIteration:
        return False


def pop_query(agent, intention):
    intention.query_stack.pop()
    return True


def push_choicepoint(agent, intention):
    choicepoint = object()
    intention.choicepoint_stack.append(choicepoint)
    intention.stack.append(choicepoint)
    return True


def pop_choicepoint(agent, intention):
    choicepoint = intention.choicepoint_stack.pop()
    pyson.reroll(intention.scope, intention.stack, choicepoint)
    return True


class Instruction:
    def __init__(self, f, loc=None, extra_locs=()):
        self.f = f
        self.success = None
        self.failure = None
        self.loc = loc
        self.extra_locs = extra_locs

    def __repr__(self):
        success = hex(id(self.success)) if self.success is not None else "0"
        failure = hex(id(self.failure)) if self.failure is not None else "0"
        return "<Instruction %s: %r %s %s>" % (hex(id(self)), self.f, success, failure)


class BuildInstructionsVisitor:
    def __init__(self, variables, actions, tail, log):
        self.variables = variables
        self.actions = actions
        self.tail = tail
        self.log = log

    def add_instr(self, f, loc=None, extra_locs=()):
        self.tail.success = Instruction(f, loc, extra_locs)
        self.tail = self.tail.success
        return self.tail

    def visit_formula(self, ast_formula):
        if ast_formula.formula_type == pyson.FormulaType.add:
            term = ast_formula.term.accept(BuildTermVisitor(self.variables))
            self.add_instr(functools.partial(add_belief, term),
                           loc=ast_formula.loc, extra_locs=[ast_formula.term.loc])
        elif ast_formula.formula_type == pyson.FormulaType.remove:
            term = ast_formula.term.accept(BuildTermVisitor(self.variables))
            self.add_instr(functools.partial(remove_belief, term))
        elif ast_formula.formula_type == pyson.FormulaType.test:
            term = ast_formula.term.accept(BuildTermVisitor(self.variables))
            self.add_instr(functools.partial(test_belief, term),
                           loc=ast_formula.loc, extra_locs=[ast_formula.term.loc])
        elif ast_formula.formula_type == pyson.FormulaType.replace:
            removal_term = ast_formula.term.accept(BuildReplacePatternVisitor())
            self.add_instr(functools.partial(remove_belief, removal_term))

            term = ast_formula.term.accept(BuildTermVisitor(self.variables))
            self.add_instr(functools.partial(add_belief, term),
                           loc=ast_formula.loc, extra_locs=[ast_formula.term.loc])
        elif ast_formula.formula_type == pyson.FormulaType.achieve:
            term = ast_formula.term.accept(BuildTermVisitor(self.variables))
            self.add_instr(functools.partial(call, pyson.Trigger.addition, pyson.GoalType.achievement, term),
                           loc=ast_formula.loc, extra_locs=[ast_formula.term.loc])
        elif ast_formula.formula_type == pyson.FormulaType.achieve_later:
            term = ast_formula.term.accept(BuildTermVisitor(self.variables))
            self.add_instr(functools.partial(call_delayed, pyson.Trigger.addition, pyson.GoalType.achievement, term),
                           loc=ast_formula.loc, extra_locs=[ast_formula.term.loc])
        elif ast_formula.formula_type == pyson.FormulaType.term:
            query = ast_formula.term.accept(BuildQueryVisitor(self.variables, self.actions, self.log))
            self.add_instr(functools.partial(push_query, query))
            self.add_instr(next_or_fail, loc=ast_formula.term.loc)
            self.add_instr(pop_query)

        return self.tail

    def visit_for(self, ast_for):
        query = ast_for.generator.accept(BuildQueryVisitor(self.variables, self.actions, self.log))
        self.add_instr(functools.partial(push_query, query))

        for_head = self.add_instr(next_or_fail)

        last_in_loop = ast_for.body.accept(self)
        last_in_loop.success = for_head

        self.tail = Instruction(pop_query)
        for_head.failure = self.tail
        return self.tail

    def visit_if_then_else(self, ast_if_then_else):
        query = ast_if_then_else.condition.accept(BuildQueryVisitor(self.variables, self.actions, self.log))
        self.add_instr(functools.partial(push_query, query))
        test_instr = self.add_instr(next_or_fail)

        tail = Instruction(pop_query)

        if ast_if_then_else.if_body:
            if_tail = ast_if_then_else.if_body.accept(self)
            if_tail.success = tail
        else:
            test_instr.success = tail

        if ast_if_then_else.else_body:
            else_head = Instruction(noop)
            test_instr.failure = else_head
            self.tail = else_head
            ast_if_then_else.else_body.accept(self)
            self.tail.success = tail
        else:
            test_instr.failure = tail

        self.tail = tail
        return self.tail

    def visit_while(self, ast_while):
        tail = Instruction(pop_choicepoint)

        query = ast_while.condition.accept(BuildQueryVisitor(self.variables, self.actions, self.log))
        while_head = self.add_instr(functools.partial(push_query, query))
        self.add_instr(push_choicepoint)

        test_instr = self.add_instr(next_or_fail)
        test_instr.failure = tail

        self.add_instr(pop_query)

        ast_while.body.accept(self)
        while_tail = self.add_instr(pop_choicepoint)
        while_tail.success = while_head

        self.tail = tail
        return self.add_instr(pop_query)

    def visit_body(self, ast_body):
        for formula in ast_body.formulas:
            formula.accept(self)

        return self.tail


def dump_variables(variables, scope):
    not_in_scope = []

    for name, variable in sorted(variables.items()):
        if variable in scope:
            print("%s = %s" % (name, pyson_str(pyson.deref(variable, scope))))
        else:
            not_in_scope.append("%s = %s" % (name, variable))

    if not_in_scope:
        print("%d unbound: %s" % (len(not_in_scope), ", ".join(not_in_scope)))


def repl(agent, env, actions):
    lineno = 0
    tokens = []

    env = Environment()
    variables = {}
    intention = Intention()

    while True:
        try:
            log = pyson.Log(LOGGER, 3)

            try:
                if not tokens:
                    line = pyson.util.prompt("%s >>> " % agent.name)
                else:
                    line = pyson.util.prompt("%s ... " % agent.name)
            except KeyboardInterrupt:
                print()
                sys.exit(0)

            lineno += 1

            tokens.extend(pyson.lexer.tokenize(pyson.StringSource("<stdin>", line), log, lineno))

            while tokens:
                token_stream = iter(tokens)
                try:
                    tok = next(token_stream)
                    tok, body = pyson.parser.parse_plan_body(tok, token_stream, log)
                except StopIteration:
                    log.throw()
                    break
                else:
                    log.throw()
                    tokens = list(token_stream)

                    intention.instr = Instruction(noop)
                    body.accept(BuildInstructionsVisitor(variables, actions, intention.instr, log))
                    log.throw()
                    agent.intentions.append(collections.deque([intention]))
                    env.run_agent(agent)
                    dump_variables(variables, intention.scope)
        except pyson.AggregatedError as error:
            print(str(error), file=sys.stderr)
            tokens = []
        except pyson.PysonError as error:
            LOGGER.error("%s", error)
            tokens = []


def main(post_repl=True):
    import pyson.ext_stdlib
    env = Environment()
    try:
        args = sys.argv[1:]
        if args:
            for arg in args:
                with open(arg) as source:
                    agent = env.build_agent(source, pyson.ext_stdlib.actions)
                    env.run_agent(agent)
                    if post_repl:
                        repl(agent, env, pyson.ext_stdlib.actions)
                    break
        elif sys.stdin.isatty():
            agent = Agent(env, "stdin")
            repl(agent, env, pyson.ext_stdlib.actions)
        else:
            env.run_agent(env.build_agent(sys.stdin, pyson.ext_stdlib.actions))
    except pyson.AggregatedError as error:
        print(str(error), file=sys.stderr)
        sys.exit(1)
    except pyson.PysonError as error:
        LOGGER.error("%s", error)
        sys.exit(1)


if __name__ == "__main__":
    main()
