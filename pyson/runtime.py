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
import pyson
import pyson.parser
import collections
import copy
import functools

import pyson.lexer
import pyson.util
import pyson.stdlib

from pyson import UnaryOp, BinaryOp, PysonError


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
    def execute(self, agent, scope, stack):
        yield


class FalseQuery:
    def execute(self, agent, scope, stack):
        return
        yield


class ActionQuery:
    def __init__(self, term, impl):
        self.term = term
        self.impl = impl

    def execute(self, agent, scope, stack):
        for _ in self.impl(agent, self.term, scope):
            yield


class TermQuery:
    def __init__(self, term):
        self.term = term

    def execute(self, agent, scope, stack):
        # Boolean constants.
        term = pyson.evaluate(self.term, scope)
        if term is True:
            yield
            return
        elif term is False:
            return

        try:
            group = term.literal_group()
        except AttributeError:
            raise PysonError("expected boolean or literal in query context, got: '%s'" % term)

        choicepoint = object()

        # Query on the belief base.
        for belief in agent.beliefs[group]:
            stack.append(choicepoint)

            if pyson.unify(term, belief, scope, stack):
                yield

            pyson.reroll(scope, stack, choicepoint)

        # Follow rules.
        for rule in agent.rules[group]:
            rule = copy.deepcopy(rule)

            stack.append(choicepoint)

            if pyson.unify(term, rule.head, scope, stack):
                for _ in rule.query.execute(agent, scope, stack):
                    yield

            pyson.reroll(scope, stack, choicepoint)

    def __str__(self):
        return str(self.term)


class AndQuery:
    def __init__(self, left, right):
        self.left = left
        self.right = right

    def execute(self, agent, scope, stack):
        for _ in self.left.execute(agent, scope, stack):
            for _ in self.right.execute(agent, scope, stack):
                yield

    def __str__(self):
        return "(%s & %s)" % (self.left, self.right)


class OrQuery:
    def __init__(self, left, right):
        self.left = left
        self.right = right

    def execute(self, agent, scope, stack):
        for _ in self.left.execute(agent, scope, stack):
            yield

        for _ in self.right.execute(agent, scope, stack):
            yield

    def __str__(self):
        return "(%s | %s)" % (self.left, self.right)


class NotQuery:
    def __init__(self, query):
        self.query = query

    def execute(self, agent, scope, stack):
        choicepoint = object()
        stack.append(choicepoint)

        success = any(True for _ in self.query.execute(agent, scope, stack))

        pyson.reroll(scope, stack, choicepoint)

        if not success:
            yield


class UnifyQuery:
    def __init__(self, left, right):
        self.left = left
        self.right = right

    def execute(self, agent, scope, stack):
        choicepoint = object()
        stack.append(choicepoint)
        if pyson.unify(self.left, self.right, scope, stack):
            yield
        pyson.reroll(scope, stack, choicepoint)

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


class Intention:
    def __init__(self):
        self.scope = {}
        self.instr = None
        self.last_result = True
        self.head_term = None
        self.calling_term = None


class Agent:
    def __init__(self):
        self.beliefs = collections.defaultdict(lambda: set())
        self.rules = collections.defaultdict(lambda: [])
        self.plans = collections.defaultdict(lambda: [])

        self.query_stack = collections.deque()
        self.choicepoint_stack = collections.deque()

        self.stack = collections.deque()

        self.intentions = collections.deque()

    def dump(self):
        LOGGER.info("Belief base")
        for beliefs in self.beliefs.values():
            for belief in beliefs:
                print(belief)

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

    def call(self, trigger, goal_type, term, scope, delayed=False):
        if goal_type == pyson.GoalType.belief:
            if trigger == pyson.Trigger.addition:
                self.add_belief(term, scope)
            else:
                self.remove_belief(term, scope)

        frozen = pyson.freeze(term, scope, {})

        if not isinstance(frozen, pyson.Literal):
            raise PysonError("expected literal")

        applicable_plans = self.plans[(trigger, goal_type, frozen.functor, len(frozen.args))]
        choicepoint = object()
        intention = Intention()

        for plan in applicable_plans:
            self.stack.append(choicepoint)

            if not pyson.unify(plan.head, frozen, intention.scope, self.stack):
                pyson.reroll(intention.scope, self.stack, choicepoint)
                continue

            try:
                next(plan.context.execute(self, intention.scope, self.stack))
            except StopIteration:
                pyson.reroll(intention.scope, self.stack, choicepoint)
                continue

            intention.head_term = frozen
            intention.instr = plan.body
            if delayed or not self.intentions:
                new_intention_stack = collections.deque()
                new_intention_stack.append(intention)
                self.intentions.append(new_intention_stack)
            else:
                intention.calling_term = term
                self.intentions[0].append(intention)

            return True

        if goal_type == pyson.GoalType.achievement:
            raise PysonError("no applicable plan for %s%s%s/%d" % (
                trigger.value, goal_type.value, frozen.functor, len(frozen.args)))
        elif goal_type == pyson.GoalType.test:
            return self.test_belief(term, scope)

        return True

    def add_belief(self, term, scope):
        term = term.grounded(scope)

        if term.functor is None:
            raise PysonError("expected belief literal")

        print(term)
        self.beliefs[(term.functor, len(term.args))].add(term)

    def test_belief(self, term, scope):
        term = pyson.evaluate(term, scope)

        if not isinstance(term, pyson.Literal):
            raise PysonError("expected belief literal, got: '%s'" % term)

        query = TermQuery(term)

        try:
            next(query.execute(self, scope, self.stack))
            return True
        except StopIteration:
            return False

    def remove_belief(self, term, scope):
        term = pyson.evaluate(term, scope)

        try:
            group = term.literal_group()
        except AttributeError:
            raise PysonError("expected belief literal, got: '%s'" % term)

        choicepoint = object()

        relevant_beliefs = self.beliefs[group]

        for belief in relevant_beliefs:
            self.stack.append(choicepoint)

            if pyson.unify(term, belief, scope, self.stack):
                relevant_beliefs.remove(belief)
                return

            pyson.reroll(scope, self.stack, choicepoint)

    def step(self):
        if not self.intentions:
            return False

        if not self.intentions[0]:
            self.intentions.popleft()
            return True

        intention = self.intentions[0][-1]

        if intention.instr:
            intention.last_result = intention.instr.f(self, intention.scope)
            if intention.last_result:
                intention.instr = intention.instr.success
            else:
                intention.instr = intention.instr.failure
            return True
        else:
            self.intentions[0].pop()
            if intention.last_result:
                if intention.calling_term:
                    frozen = intention.head_term.freeze(intention.scope, {})
                    if not pyson.unify(intention.calling_term, frozen, self.intentions[0][-1].scope, self.stack):
                        raise RuntimeError("back unification failed")
                return True
            else:
                raise PysonError("plan failure")

        return False


def noop(agent, scope):
    return True


def add_belief(term, agent, scope):
    return agent.call(pyson.Trigger.addition, pyson.GoalType.belief, term, scope)


def remove_belief(term, agent, scope):
    return agent.call(pyson.Trigger.removal, pyson.GoalType.belief, term, scope)


def test_belief(term, agent, scope):
    return agent.call(pyson.Trigger.addition, pyson.GoalType.test, term, scope)


def call(trigger, goal_type, term, delayed, agent, scope):
    return agent.call(trigger, goal_type, term, scope, delayed=delayed)


def push_query(query, agent, scope):
    agent.query_stack.append(query.execute(agent, scope, agent.stack))
    return True


def next_or_fail(agent, scope):
    try:
        next(agent.query_stack[-1])
        return True
    except StopIteration:
        return False


def pop_query(agent, scope):
    agent.query_stack.pop()
    return True


def push_choicepoint(agent, scope):
    choicepoint = object()
    agent.choicepoint_stack.append(choicepoint)
    agent.stack.append(choicepoint)
    return True


def pop_choicepoint(agent, scope):
    choicepoint = agent.choicepoint_stack.pop()
    pyson.reroll(scope, agent.stack, choicepoint)
    return True


class Instruction:
    def __init__(self, f):
        self.f = f
        self.success = None
        self.failure = None

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

    def add_instr(self, f):
        self.tail.success = Instruction(f)
        self.tail = self.tail.success
        return self.tail

    def visit_formula(self, ast_formula):
        if ast_formula.formula_type == pyson.FormulaType.add:
            term = ast_formula.term.accept(BuildTermVisitor(self.variables))
            self.add_instr(functools.partial(add_belief, term))
        elif ast_formula.formula_type == pyson.FormulaType.remove:
            term = ast_formula.term.accept(BuildTermVisitor(self.variables))
            self.add_instr(functools.partial(remove_belief, term))
        elif ast_formula.formula_type == pyson.FormulaType.test:
            term = ast_formula.term.accept(BuildTermVisitor(self.variables))
            self.add_instr(functools.partial(test_belief, term))
        elif ast_formula.formula_type == pyson.FormulaType.replace:
            removal_term = ast_formula.term.accept(BuildTermVisitor({}))
            self.add_instr(functools.partial(remove_belief, removal_term))

            term = ast_formula.term.accept(BuildTermVisitor(self.variables))
            self.add_instr(functools.partial(add_belief, term))
        elif ast_formula.formula_type == pyson.FormulaType.achieve:
            term = ast_formula.term.accept(BuildTermVisitor(self.variables))
            self.add_instr(functools.partial(call, pyson.Trigger.addition, pyson.GoalType.achievement, term, False))
        elif ast_formula.formula_type == pyson.FormulaType.achieve_later:
            term = ast_formula.term.accept(BuildTermVisitor(self.variables))
            self.add_instr(functools.partial(call, pyson.Trigger.addition, pyson.GoalType.achievement, term, True))
        elif ast_formula.formula_type == pyson.FormulaType.term:
            query = ast_formula.term.accept(BuildQueryVisitor(self.variables, self.actions, self.log))
            self.add_instr(functools.partial(push_query, query))
            self.add_instr(next_or_fail)
            self.add_instr(pop_query)

        return self.tail

    def visit_for(self, ast_for):
        query = ast_for.generator.accept(BuildQueryVisitor(self.variables, self.actions, self.log))
        self.add_instr(functools.partial(push_query, query))

        for_head = self.add_instr(next_or_fail)

        last_in_loop = ast_for.body.accept(self)
        last_in_loop.success = for_head

        self.tail = Instruction(noop)
        for_head.failure = self.tail
        return self.tail

    def visit_if_then_else(self, ast_if_then_else):
        query = ast_if_then_else.condition.accept(BuildQueryVisitor(self.variables, self.actions, self.log))
        self.add_instr(functools.partial(push_query, query))
        test_instr = self.add_instr(next_or_fail)

        tail = Instruction(noop)

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

        self.tail = tail
        return self.tail

    def visit_while(self, ast_while):
        tail = Instruction(noop)

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
        self.add_instr(pop_choicepoint)
        return self.tail

    def visit_body(self, ast_body):
        for formula in ast_body.formulas:
            formula.accept(self)

        return self.tail


def dump_variables(variables, scope):
    not_in_scope = []

    for name, variable in sorted(variables.items()):
        if variable in scope:
            print("%s = %s" % (name, pyson.deref(variable, scope)))
        else:
            not_in_scope.append("%s = %s" % (name, variable))

    if not_in_scope:
        print("%d unbound: %s" % (len(not_in_scope), ", ".join(not_in_scope)))


def repl(agent, actions=pyson.stdlib.actions):
    lineno = 0
    tokens = []

    variables = {}
    intention = Intention()

    while True:
        try:
            log = pyson.Log(LOGGER, 3)

            try:
                if not tokens:
                    line = pyson.util.prompt("%s >>> " % hex(id(agent)))
                else:
                    line = pyson.util.prompt("%s ... " % hex(id(agent)))
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
                    run_agent(agent)
                    dump_variables(variables, intention.scope)
        except pyson.AggregatedError as error:
            print(str(error), file=sys.stderr)
            tokens = []
        except pyson.PysonError as error:
            LOGGER.error("%s", error)
            intention.last_result = True


def build_agent(source, actions=pyson.stdlib.actions):
    log = pyson.Log(LOGGER, 3)
    tokens = pyson.lexer.tokenize(source, log)

    ast_agent = pyson.parser.parse(tokens, log, frozenset(source.name))

    log.throw()

    agent = Agent()

    for ast_rule in ast_agent.rules:
        variables = {}
        head = ast_rule.head.accept(BuildTermVisitor(variables))
        consequence = ast_rule.consequence.accept(BuildQueryVisitor(variables, actions, log))
        agent.add_rule(Rule(head, consequence))

    for ast_plan in ast_agent.plans:
        variables = {}

        head =  ast_plan.head.accept(BuildTermVisitor(variables))

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

    for ast_belief in ast_agent.beliefs:
        belief = ast_belief.accept(BuildTermVisitor({}))
        agent.call(pyson.Trigger.addition, pyson.GoalType.belief, belief, {}, delayed=True)

    for ast_goal in ast_agent.goals:
        term = ast_goal.atom.accept(BuildTermVisitor({}))
        agent.call(pyson.Trigger.addition, pyson.GoalType.achievement, term, {}, delayed=True)

    log.throw()

    return agent


def run_agent(agent):
    more_work = True
    while more_work:
        more_work = agent.step()


def main():
    try:
        args = sys.argv[1:]
        if args:
            for arg in args:
                with open(arg) as source:
                    agent = build_agent(source)
                    run_agent(agent)
                    repl(agent)
                    break
        elif sys.stdin.isatty():
            agent = Agent()
            repl(agent)
        else:
            run_agent(build_agent(sys.stdin))
    except pyson.AggregatedError as error:
        print(str(error), file=sys.stderr)
        sys.exit(1)
    except pyson.PysonError as error:
        LOGGER.error("%s", error)
        sys.exit(1)


if __name__ == "__main__":
    main()
