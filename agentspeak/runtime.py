# -*- coding: utf-8 -*-
#
# This file is part of the python-agentspeak interpreter.
# Copyright (C) 2016-2019 Niklas Fiekas <niklas.fiekas@tu-clausthal.de>.
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

import collections
import copy
import functools
import os.path
import sys
import time

import agentspeak
import agentspeak.lexer
import agentspeak.parser
import agentspeak.util
from agentspeak import UnaryOp, BinaryOp, AslError, asl_str



LOGGER = agentspeak.get_logger(__name__)


class BuildTermVisitor:
    def __init__(self, variables):
        self.variables = variables

    def visit_literal(self, ast_literal):
        return agentspeak.Literal(ast_literal.functor,
            (t.accept(self) for t in ast_literal.terms),
            (t.accept(self) for t in ast_literal.annotations))

    def visit_const(self, ast_const):
        return ast_const.value

    def visit_list(self, ast_list):
        return tuple(t.accept(self) for t in ast_list.terms)

    def visit_linked_list(self, ast_linked_list):
        return agentspeak.LinkedList(
            ast_linked_list.head.accept(self),
            ast_linked_list.tail.accept(self))

    def visit_unary_op(self, ast_unary_op):
        return agentspeak.UnaryExpr(
            ast_unary_op.operator.value,
            ast_unary_op.operand.accept(self))

    def visit_binary_op(self, ast_binary_op):
        return agentspeak.BinaryExpr(
            ast_binary_op.operator.value,
            ast_binary_op.left.accept(self),
            ast_binary_op.right.accept(self))

    def visit_variable(self, ast_variable):
        try:
            return self.variables[ast_variable.name]
        except KeyError:
            if ast_variable.name == "_":
                var = agentspeak.Wildcard()
            else:
                var = agentspeak.Var()

            self.variables[ast_variable.name] = var
            return var


class BuildReplacePatternVisitor(BuildTermVisitor):
    def __init__(self):
        BuildTermVisitor.__init__(self, {})

    def visit_unary_op(self, ast_unary_op):
        return agentspeak.Wildcard()

    def visit_binary_op(self, ast_binary_op):
        return agentspeak.Wildcard()


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


class BuildEventVisitor(BuildTermVisitor):
    def __init__(self, log):
        super(BuildEventVisitor, self).__init__({})
        self.log = log

    def visit_event(self, ast_event):
        ast_event = ast_event.accept(agentspeak.parser.ConstFoldVisitor(self.log))
        return Event(ast_event.trigger, ast_event.goal_type, ast_event.head.accept(self))

    def visit_unary_op(self, op):
        raise self.log.error("event is supposed to be unifiable, but contains non-const expression", loc=op.loc)

    def visit_binary_op(self, op):
        raise self.log.error("event is supposed to be unifiable, but contains non-const expression", loc=op.loc)


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
        term = agentspeak.evaluate(self.term, intention.scope)
        if term is True:
            yield
            return
        elif term is False:
            return

        try:
            group = term.literal_group()
        except AttributeError:
            raise AslError("expected boolean or literal in query context, got: '%s'" % term)

        # Query on the belief base.
        for belief in agent.beliefs[group]:
            for _ in agentspeak.unify_annotated(term, belief, intention.scope, intention.stack):
                yield

        choicepoint = object()

        # Follow rules.
        for rule in agent.rules[group]:
            rule = copy.deepcopy(rule)

            intention.stack.append(choicepoint)

            if agentspeak.unify(term, rule.head, intention.scope, intention.stack):
                for _ in rule.query.execute(agent, intention):
                    yield

            agentspeak.reroll(intention.scope, intention.stack, choicepoint)

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

        agentspeak.reroll(intention.scope, intention.stack, choicepoint)

        if not success:
            yield

    def __str__(self):
        return "not " + str(self.query.term)


class UnifyQuery:
    def __init__(self, left, right):
        self.left = left
        self.right = right

    def execute(self, agent, intention):
        return agentspeak.unify_annotated(self.left, self.right, intention.scope, intention.stack)

    def __str__(self):
        return "(%s = %s)" % (self.left, self.right)


class Rule:
    def __init__(self, head, query):
        self.head = head
        self.query = query

    def __str__(self):
        return "%s :- %s" % (self.head, self.query)


class Plan:
    def __init__(self, trigger, goal_type, head, context, body, str_body, annotation):
        self.trigger = trigger
        self.goal_type = goal_type
        self.head = head
        self.context = context
        self.body = body
        self.str_body = str_body
        self.annotation = annotation
        self.args = [None,None]

    def name(self):
        return "%s%s%s" % (self.trigger.value, self.goal_type.value, self.head)


class Event:
    def __init__(self, trigger, goal_type, head):
        self.trigger = trigger
        self.goal_type = goal_type
        self.head = head

    def __str__(self):
        return "%s%s%s" % (self.trigger.value, self.goal_type.value, self.head)


class Waiter:
    def __init__(self, event=None, until=None):
        self.event = event
        self.until = until

    def poll(self, env):
        return self.until is not None and self.until < env.time()

class Intention:
    def __init__(self):
        self.instr = None
        self.head_term = None
        self.calling_term = None

        self.scope = {}
        self.stack = collections.deque()

        self.query_stack = collections.deque()
        self.choicepoint_stack = collections.deque()

        self.waiter = None


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
                print(agentspeak.asl_repr(belief))

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
        # Modify beliefs.        
        if goal_type == agentspeak.GoalType.belief:
            if trigger == agentspeak.Trigger.addition:
                self.add_belief(term, calling_intention.scope)
            else:
                found = self.remove_belief(term, calling_intention)
                if not found:
                    return True

        # Freeze with caller scope.
        frozen = agentspeak.freeze(term, calling_intention.scope, {})

        if not isinstance(frozen, agentspeak.Literal):
            raise AslError("expected literal")

        # Wake up waiting intentions.
        for intention_stack in self.intentions:
            if not intention_stack:
                continue
            intention = intention_stack[-1]

            if not intention.waiter or not intention.waiter.event:
                continue
            event = intention.waiter.event

            if event.trigger != trigger or event.goal_type != goal_type:
                continue

            if agentspeak.unifies_annotated(event.head, frozen):
                intention.waiter = None

        # If the goal is an achievement and the trigger is an addition, then the agent will add the goal to his list of intentions
        if goal_type == agentspeak.GoalType.achievement and trigger == agentspeak.Trigger.addition:

            applicable_plans = self.plans[(trigger, goal_type, frozen.functor, len(frozen.args))]
            intention = Intention()

            # Find matching plan.
            for plan in applicable_plans:
                for _ in agentspeak.unify_annotated(plan.head, frozen, intention.scope, intention.stack):
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

        if goal_type == agentspeak.GoalType.achievement and trigger == agentspeak.Trigger.addition:
            raise AslError("no applicable plan for %s%s%s/%d" % (
                trigger.value, goal_type.value, frozen.functor, len(frozen.args)))
        elif goal_type == agentspeak.GoalType.test:
            return self.test_belief(term, calling_intention)

        # If the goal is an achievement and the trigger is a removal, then the agent will delete the goal from his list of
        # intentions
        if goal_type == agentspeak.GoalType.achievement and trigger == agentspeak.Trigger.removal:
            self._unachieve(term)

        # If the goal is an tellHow and the trigger is an addition, then the agent will add the goal received as string to his
        # list of plans
        if goal_type == agentspeak.GoalType.tellHow and trigger == agentspeak.Trigger.addition:
            self._tell_how(term)

        # If the goal is an askHow and the trigger is an addition, then the agent will find the plan in his list of plans and
        # send it to the agent that asked
        if goal_type == agentspeak.GoalType.askHow and trigger == agentspeak.Trigger.addition:
            return self._ask_how(term)

        # If the goal is an unTellHow and the trigger is a removal, then the agent will delete the goal from his list of plans   
        if goal_type == agentspeak.GoalType.tellHow and trigger == agentspeak.Trigger.removal:
            self._untell_how(term)

        return True

    def _unachieve(self, term):
        """
            UntellHow is a performative that allows the agent to remove and stop an achievement to another agent.
        """
        if not agentspeak.is_literal(term):
                raise AslError("expected literal term")

        # Remove a intention passed by the parameters.
        for intention_stack in self.intentions:
            if not intention_stack:
                continue

            intention = intention_stack[-1]

            if intention.head_term.functor == term.functor:
                if agentspeak.unifies(term.args, intention.head_term.args):
                    intention_stack.remove(intention)

    def _tell_how(self, term):
        """
            tellHow is a performative that allows the agent to add a plan to another agent.
        """
        str_plan = term.args[2]

        tokens = []
        # extend tokens with the tokens of the string plan
        tokens.extend(agentspeak.lexer.tokenize(agentspeak.StringSource("<stdin>", str_plan), agentspeak.Log(LOGGER), 1))

        # Prepare the conversion from tokens to AstPlan
        first_token = tokens[0]
        log = agentspeak.Log(LOGGER)
        tokens.pop(0)
        tokens = iter(tokens)

        # Converts the list of tokens to an Astplan
        if first_token.lexeme in ["@", "+", "-"]:
            tok, ast_plan = agentspeak.parser.parse_plan(first_token, tokens, log)
            if tok.lexeme != ".":
                raise log.error("", tok, "expected end of plan")

        # Prepare the conversion of Astplan to Plan
        variables = {}
        actions = agentspeak.stdlib.actions

        head = ast_plan.event.head.accept(BuildTermVisitor(variables))

        if ast_plan.context:
            context = ast_plan.context.accept(BuildQueryVisitor(variables, actions, log))
        else:
            context = TrueQuery()

        body = Instruction(noop)
        body.f = noop
        if ast_plan.body:
            ast_plan.body.accept(BuildInstructionsVisitor(variables, actions, body, log))

        # Converts the Astplan to Plan
        plan = Plan(ast_plan.event.trigger, ast_plan.event.goal_type, head, context, body, ast_plan.body, ast_plan.dicts_annotations)

        if ast_plan.args[0] is not None:
            plan.args[0] = ast_plan.args[0]

        if ast_plan.args[1] is not None:
            plan.args[1] = ast_plan.args[1]

        self.add_plan(plan)

    def _call_ask_how(self, receiver, term, intention):
        receiver.call(agentspeak.Trigger.addition, agentspeak.GoalType.tellHow, term, intention)

    def _ask_how(self, term):
        """
            AskHow is a performative that allows the agent to ask for a plan to another agent.
            We look in the plan.list of the slave agent for the plan that master wants,
            if we find it: master agent use tellHow to tell the plan to slave agent
        """
        # Receive the agent that ask for the plan
        for annotation in list(term.annots):
            if isinstance(annotation, str):
                if "askHow_sender" in annotation:
                    sender_name = annotation.split("(")[1].split(")")[0]
        # Find the plans       
        plans_wanted = collections.defaultdict(lambda: [])
        plans = self.plans.values()
        for plan in plans:
            for differents in plan:
                if differents.head.functor in term.args[2]:
                    plans_wanted[(differents.trigger, differents.goal_type, differents.head.functor, len(differents.head.args))].append(differents)

        # If the agent has any plan that match with the plan wanted, then the agent will send the plan to the agent that asked                       
        if plans_wanted:
            intention = agentspeak.runtime.Intention()
            receivers = agentspeak.grounded(sender_name, intention)
            if not agentspeak.is_list(receivers):
                receivers = [receivers]
            receiving_agents = []
            for receiver in receivers:
                if agentspeak.is_atom(receiver):
                    receiving_agents.append(self.env.agents[receiver.functor])
                else:
                    receiving_agents.append(self.env.agents[receiver])

            for plan in plans_wanted.values():
                for differents in plan:
                    strplan = plan_to_str(differents)
                term.args = (sender_name, "tellHow", strplan)
                for receiver in receiving_agents:
                    self._call_ask_how(receiver, term, intention)
        else:
            log = agentspeak.Log(LOGGER)
            raise log.warning(f"The agent not know the plan {term.args[2]}")

    def _untell_how(self, term):
        """
            UntellHow is a performative that allows the agent to remove a plan to another agent.
        """
        label = term.args[2]

        plans_to_delete = []
        plans = self.plans.values()
        for plan in plans:
            for plan_instance in plan:
                if len(plan_instance.annotation) > 0:
                    if ("@" + str(plan_instance.annotation[0].functor)).startswith(label):
                        plans_to_delete.append(plan_instance)
        for plan_instance in plans_to_delete:
            plan.remove(plan_instance)


    def add_belief(self, term, scope):
        term = term.grounded(scope)

        if term.functor is None:
            raise AslError("expected belief literal")

        self.beliefs[(term.functor, len(term.args))].add(term)

    def test_belief(self, term, intention):
        term = agentspeak.evaluate(term, intention.scope)

        if not isinstance(term, agentspeak.Literal):
            raise AslError("expected belief literal, got: '%s'" % term)

        query = TermQuery(term)

        try:
            next(query.execute(self, intention))
            return True
        except StopIteration:
            return False

    def remove_belief(self, term, intention):
        term = agentspeak.evaluate(term, intention.scope)

        try:
            group = term.literal_group()
        except AttributeError:
            raise AslError("expected belief literal, got: '%s'" % term)

        choicepoint = object()

        relevant_beliefs = self.beliefs[group]

        for belief in relevant_beliefs:
            intention.stack.append(choicepoint)

            if agentspeak.unify(term, belief, intention.scope, intention.stack):
                relevant_beliefs.remove(belief)
                return True

            agentspeak.reroll(intention.scope, intention.stack, choicepoint)

        return False

    def waiters(self):
        return (intention[-1].waiter for intention in self.intentions
                if intention and intention[-1].waiter)

    def shortest_deadline(self):
        deadlines = [waiter.until for waiter in self.waiters() if waiter.until is not None]
        if deadlines:
            return min(deadlines)

    def step(self):
        while self.intentions and not self.intentions[0]:
            self.intentions.popleft()

        for intention_stack in self.intentions:
            # Check if the intention has no length
            if not intention_stack:
                continue

            intention = intention_stack[-1]

            # Suspended / waiting.
            if intention.waiter is not None:
                if intention.waiter.poll(self.env):
                    intention.waiter = None
                else:
                    continue

            break
        else:
            return False

        # Ignore if the intentiosn stack is empty
        if not intention_stack:
            return False

        instr = intention.instr

        if not instr:
            intention_stack.pop()
            if not intention_stack:
                self.intentions.remove(intention_stack)
            elif intention.calling_term:
                frozen = intention.head_term.freeze(intention.scope, {})
                calling_intention = intention_stack[-1]
                if not agentspeak.unify(intention.calling_term, frozen, calling_intention.scope, calling_intention.stack):
                    raise RuntimeError("back unification failed")
            return True

        try:
            if instr.f(self, intention):
                intention.instr = instr.success
            else:
                intention.instr = instr.failure
                if not intention.instr:
                    raise AslError("plan failure")
        except AslError as err:
            log = agentspeak.Log(LOGGER)
            raise log.error("%s", err, loc=instr.loc, extra_locs=instr.extra_locs)
        except Exception as err:
            log = agentspeak.Log(LOGGER)
            raise log.exception("agent %r raised python exception: %r", self.name, err,
                                loc=instr.loc, extra_locs=instr.extra_locs)

        return True

    def run(self):
        while self.step():
            pass


def plan_to_str(plan):
    """
    This function recieves a plan and return the plan as string
    """
    if isinstance(plan.context, type(TrueQuery())):
        context = "true"
    else:
        context = plan.context
    
    body = plan.str_body
    head = str(plan.head)
    start = 0
    
    if "_X_" in head:
        if plan.args[0] != None:
            first_open, first_close = head.find("(",start), head.find(")", start)
            if  "(" in str(plan.args[0]):
                head = head[:first_open+1] + str(plan.args[0]).split("(")[1].split(")")[0] + head[first_close:]
            else:
                head = head[:first_open+1] + str(plan.args[0]) + head[first_close:]
            start = head.find(")", start) +1 
            
        if plan.args[1] != None:
            first_open, first_close = head.find("(",start), head.find(")", start)
            if  "(" in str(plan.args[1]):
                head = head[:first_open+1] + str(plan.args[1]).split("(")[1].split(")")[0] + head[first_close:]
            else:
                head = head[:first_open+1] + str(plan.args[1]) + head[first_close:]
            start = head.find(")", start) +1 

    if plan.annotation:
        label = str(plan.annotation[0])
    else:
        label = ""
        return  f"{plan.trigger.value}{plan.goal_type.value}{head} : {context} <- {body}."

    return f"@{label} {plan.trigger.value}{plan.goal_type.value}{head} : {context} <- {body}."


class Environment:
    def __init__(self):
        self.agents = {}

    def _make_name(self, path):
        base_name = agentspeak.sanitize_functor(os.path.splitext(os.path.basename(path))[0])
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

        log = agentspeak.Log(LOGGER, 3)
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

            head = ast_plan.event.head.accept(BuildTermVisitor(variables))

            if ast_plan.context:
                context = ast_plan.context.accept(BuildQueryVisitor(variables, actions, log))
            else:
                context = TrueQuery()

            body = Instruction(noop)
            body.f = noop
            if ast_plan.body:
                ast_plan.body.accept(BuildInstructionsVisitor(variables, actions, body, log))

            str_body = str(ast_plan.body)
            
            plan = Plan(ast_plan.event.trigger, ast_plan.event.goal_type, head, context, body, ast_plan.body, ast_plan.annotations)

            if ast_plan.args[0] is not None:
                plan.args[0] = ast_plan.args[0]

            if ast_plan.args[1] is not None:
                plan.args[1] = ast_plan.args[1]



            agent.add_plan(plan)

        # Add beliefs to agent prototype.
        for ast_belief in ast_agent.beliefs:
            belief = ast_belief.accept(BuildTermVisitor({}))
            agent.call(agentspeak.Trigger.addition, agentspeak.GoalType.belief,
                       belief, Intention(), delayed=True)

        # Call initial goals on agent prototype.
        for ast_goal in ast_agent.goals:
            term = ast_goal.atom.accept(BuildTermVisitor({}))
            agent.call(agentspeak.Trigger.addition, agentspeak.GoalType.achievement,
                       term, Intention(), delayed=True)

        # Report errors.
        log.throw()

        self.agents[agent.name] = agent
        return ast_agent, agent

    def _build_agent(self, source, actions, agent_cls=Agent, name=None):
        # Parse source.
        log = agentspeak.Log(LOGGER, 3)
        tokens = agentspeak.lexer.TokenStream(source, log)
        ast_agent = agentspeak.parser.parse(source.name, tokens, log)
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
                agent.call(agentspeak.Trigger.addition, agentspeak.GoalType.achievement,
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

            if not more_work:
                # Sleep until the next deadline.
                wait_until = agent.shortest_deadline()
                if wait_until:
                    time.sleep(wait_until - self.time())
                    more_work = True

    def run(self):
        maybe_more_work = True
        while maybe_more_work:
            maybe_more_work = False
            for agent in self.agents.values():
                if agent.step():
                    maybe_more_work = True

            if not maybe_more_work:
                deadlines = (agent.shortest_deadline() for agent in self.agents.values())
                deadlines = [deadline for deadline in deadlines if deadline is not None]
                if deadlines:
                    time.sleep(min(deadlines) - self.time())
                    maybe_more_work = True

    def shutdown(self):
        sys.exit(1)


def noop(agent, intention):
    return True


def add_belief(term, agent, intention):
    return agent.call(agentspeak.Trigger.addition, agentspeak.GoalType.belief, term, intention)


def remove_belief(term, agent, intention):
    return agent.call(agentspeak.Trigger.removal, agentspeak.GoalType.belief, term, intention)


def test_belief(term, agent, intention):
    return agent.call(agentspeak.Trigger.addition, agentspeak.GoalType.test, term, intention)


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
    agentspeak.reroll(intention.scope, intention.stack, choicepoint)
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
        if ast_formula.formula_type == agentspeak.FormulaType.add:
            term = ast_formula.term.accept(BuildTermVisitor(self.variables))
            self.add_instr(functools.partial(add_belief, term),
                           loc=ast_formula.loc, extra_locs=[ast_formula.term.loc])
        elif ast_formula.formula_type == agentspeak.FormulaType.remove:
            term = ast_formula.term.accept(BuildTermVisitor(self.variables))
            self.add_instr(functools.partial(remove_belief, term))
        elif ast_formula.formula_type == agentspeak.FormulaType.test:
            term = ast_formula.term.accept(BuildTermVisitor(self.variables))
            self.add_instr(functools.partial(test_belief, term),
                           loc=ast_formula.loc, extra_locs=[ast_formula.term.loc])
        elif ast_formula.formula_type == agentspeak.FormulaType.replace:
            removal_term = ast_formula.term.accept(BuildReplacePatternVisitor())
            self.add_instr(functools.partial(remove_belief, removal_term))

            term = ast_formula.term.accept(BuildTermVisitor(self.variables))
            self.add_instr(functools.partial(add_belief, term),
                           loc=ast_formula.loc, extra_locs=[ast_formula.term.loc])
        elif ast_formula.formula_type == agentspeak.FormulaType.achieve:
            term = ast_formula.term.accept(BuildTermVisitor(self.variables))
            self.add_instr(functools.partial(call, agentspeak.Trigger.addition, agentspeak.GoalType.achievement, term),
                           loc=ast_formula.loc, extra_locs=[ast_formula.term.loc])
        elif ast_formula.formula_type == agentspeak.FormulaType.achieve_later:
            term = ast_formula.term.accept(BuildTermVisitor(self.variables))
            self.add_instr(functools.partial(call_delayed, agentspeak.Trigger.addition, agentspeak.GoalType.achievement, term),
                           loc=ast_formula.loc, extra_locs=[ast_formula.term.loc])
        elif ast_formula.formula_type == agentspeak.FormulaType.term:
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
            print("%s = %s" % (name, asl_str(agentspeak.deref(variable, scope))))
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
            log = agentspeak.Log(LOGGER, 3)

            try:
                if not tokens:
                    line = agentspeak.util.prompt("%s >>> " % agent.name)
                else:
                    line = agentspeak.util.prompt("%s ... " % agent.name)
            except KeyboardInterrupt:
                print()
                sys.exit(0)

            lineno += 1

            tokens.extend(agentspeak.lexer.tokenize(agentspeak.StringSource("<stdin>", line), log, lineno))

            while tokens:
                token_stream = iter(tokens)
                try:
                    tok = next(token_stream)
                    tok, body = agentspeak.parser.parse_plan_body(tok, token_stream, log)
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
        except agentspeak.AggregatedError as error:
            print(str(error), file=sys.stderr)
            tokens = []
        except agentspeak.AslError as error:
            LOGGER.error("%s", error)
            tokens = []


def main(post_repl=True):
    import agentspeak.ext_stdlib
    env = Environment()
    try:
        args = sys.argv[1:]
        if args:
            for arg in args:
                with open(arg) as source:
                    agent = env.build_agent(source, agentspeak.ext_stdlib.actions)
                    env.run_agent(agent)
                    if post_repl:
                        repl(agent, env, agentspeak.ext_stdlib.actions)
                    break
        elif sys.stdin.isatty():
            agent = Agent(env, "stdin")
            repl(agent, env, agentspeak.ext_stdlib.actions)
        else:
            env.run_agent(env.build_agent(sys.stdin, agentspeak.ext_stdlib.actions))
    except agentspeak.AggregatedError as error:
        print(str(error), file=sys.stderr)
        sys.exit(1)
    except agentspeak.AslError as error:
        LOGGER.error("%s", error)
        sys.exit(1)


if __name__ == "__main__":
    main()
