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

import sys
import errno
import os.path

import agentspeak
import agentspeak.lexer
import agentspeak.util

from agentspeak import Trigger, GoalType, FormulaType, UnaryOp, BinaryOp


class AstBaseVisitor(object):
    def visit_literal(self, ast_literal):
        pass

    def visit_list(self, ast_list):
        pass

    def visit_linked_list(self, ast_linked_list):
        pass

    def visit_rule(self, ast_rule):
        pass

    def visit_goal(self, ast_goal):
        pass

    def visit_formula(self, ast_formula):
        pass

    def visit_const(self, ast_const):
        pass

    def visit_variable(self, ast_variable):
        pass

    def visit_unary_op(self, ast_unary_op):
        pass

    def visit_binary_op(self, ast_binary_op):
        pass

    def visit_plan(self, ast_plan):
        pass

    def visit_event(self, ast_event):
        pass

    def visit_body(self, ast_body):
        pass

    def visit_while(self, ast_while):
        pass

    def visit_for(self, ast_for):
        pass

    def visit_if_then_else(self, ast_if_then_else):
        pass

    def visit_agent(self, ast_agent):
        pass


class AstNode(object):
    def __init__(self):
        self.loc = None


class AstLiteral(AstNode):
    def __init__(self):
        super(AstLiteral, self).__init__()
        self.functor = None
        self.terms = []
        self.annotations = []

    def accept(self, visitor):
        return visitor.visit_literal(self)

    def signature(self):
        return "%s/%d" % (self.functor, len(self.terms))

    def __str__(self):
        builder = []
        builder.append(self.functor)
        if self.terms:
            builder.append("(")
            builder.append(", ".join(str(term) for term in self.terms))
            builder.append(")")
        if self.annotations:
            builder.append("[")
            builder.append(", ".join(str(term) for term in self.annotations))
            builder.append("]")
        return "".join(builder)


class AstList(AstNode):
    def __init__(self):
        super(AstList, self).__init__()
        self.terms = []

    def accept(self, visitor):
        return visitor.visit_list(self)

    def __str__(self):
        return "[%s]" % (", ".join(str(term) for term in self.terms), )


class AstLinkedList(AstNode):
    def __init__(self):
        super(AstLinkedList, self).__init__()
        self.head = None
        self.tail = None

    def accept(self, visitor):
        return visitor.visit_linked_list(self)

    def __str__(self):
        return "[%s|%s]" % (self.head, self.tail)


class AstRule(AstNode):
    def __init__(self):
        super(AstRule, self).__init__()
        self.head = None
        self.consequence = None

    def accept(self, visitor):
        return visitor.visit_rule(self)

    def __str__(self):
        return "%s :- %s" % (self.head, self.consequence)


class AstGoal(AstNode):
    def __init__(self):
        super(AstGoal, self).__init__()
        self.atom = None

    def accept(self, visitor):
        return visitor.visit_goal(self)

    def __str__(self):
        return "!%s" % (self.atom, )


class AstFormula(AstNode):
    def __init__(self):
        super(AstFormula, self).__init__()
        self.formula_type = None
        self.term = None

    def accept(self, visitor):
        return visitor.visit_formula(self)

    def __str__(self):
        return "%s%s" % (self.formula_type.value, str(self.term))


class AstConst(AstNode):
    def __init__(self):
        super(AstConst, self).__init__()
        self.value = None

    def accept(self, visitor):
        return visitor.visit_const(self)

    def __str__(self):
        return agentspeak.asl_repr(self.value)


class AstVariable(AstNode):
    def __init__(self):
        super(AstVariable, self).__init__()
        self.name = None
        self.proven_bound = False
        self.proven_unbound = False

    def accept(self, visitor):
        return visitor.visit_variable(self)

    def __str__(self):
        return self.name


class AstUnaryOp(AstNode):
    def __init__(self):
        super(AstUnaryOp, self).__init__()
        self.operator = None
        self.operand = None

    def accept(self, visitor):
        return visitor.visit_unary_op(self)

    def __str__(self):
        return "(%s %s)" % (self.operator.value.lexeme, self.operand)


class AstBinaryOp(AstNode):
    def __init__(self):
        super(AstBinaryOp, self).__init__()
        self.operator = None
        self.left = None
        self.right = None

    def accept(self, visitor):
        return visitor.visit_binary_op(self)

    def __str__(self):
        return "(%s %s %s)" % (self.left, self.operator.value.lexeme, self.right)


class AstPlan(AstNode):
    def __init__(self):
        super(AstPlan, self).__init__()
        self.annotations = []
        self.event = None
        self.context = None
        self.body = None

    def accept(self, visitor):
        return visitor.visit_plan(self)

    def signature(self):
        return self.event.signature()

    def __str__(self):
        builder = []

        for annotation in self.annotations:
            builder.append("@")
            builder.append(str(annotation))
            builder.append("\n")

        builder.append(str(self.event))

        if self.context:
            builder.append(" : ")
            builder.append(str(self.context))

        if self.body:
            builder.append(" <-\n")
            builder.append(agentspeak.util.indent(str(self.body)))

        return "".join(builder)


class AstEvent(AstNode):
    def __init__(self):
        super(AstEvent, self).__init__()
        self.trigger = None
        self.goal_type = None
        self.head = None

    def signature(self):
        return "%s%s%s" % (self.trigger.value, self.goal_type.value, self.head.signature())

    def accept(self, visitor):
        return visitor.visit_event(self)

    def __str__(self):
        builder = []
        builder.append(self.trigger.value)
        builder.append(self.goal_type.value)
        builder.append(str(self.head))
        return "".join(builder)


class AstBody(AstNode):
    def __init__(self):
        super(AstBody, self).__init__()
        self.formulas = []

    def accept(self, visitor):
        return visitor.visit_body(self)

    def __str__(self):
        builder = []

        first = True
        for formula in self.formulas:
            if not first:
                builder.append(";\n")
            first = False

            builder.append(str(formula))

        return "".join(builder)


class AstWhile(AstNode):
    def __init__(self):
        super(AstWhile, self).__init__()
        self.condition = None
        self.body = None

    def accept(self, visitor):
        return visitor.visit_while(self)

    def __str__(self):
        builder = []
        builder.append("while (")
        builder.append(str(self.condition))
        builder.append(") {\n")
        if self.body and self.body.formulas:
            builder.append(agentspeak.util.indent(str(self.body)))
            builder.append(";\n")
        builder.append("}")
        return "".join(builder)


class AstFor(AstNode):
    def __init__(self):
        super(AstFor, self).__init__()
        self.generator = None
        self.body = None

    def accept(self, visitor):
        return visitor.visit_for(self)

    def __str__(self):
        builder = []
        builder.append("for (")
        builder.append(str(self.generator))
        builder.append(") {\n")
        if self.body and self.body.formulas:
            builder.append(agentspeak.util.indent(str(self.body)))
            builder.append(";\n")
        builder.append("}")
        return "".join(builder)


class AstIfThenElse(AstNode):
    def __init__(self):
        super(AstIfThenElse, self).__init__()
        self.condition = None
        self.if_body = None
        self.else_body = None

    def accept(self, visitor):
        return visitor.visit_if_then_else(self)

    def __str__(self):
        builder = []
        builder.append("if (")
        builder.append(str(self.condition))
        builder.append(") {\n")
        if self.if_body and self.if_body.formulas:
            builder.append(agentspeak.util.indent(str(self.if_body)))
            builder.append(";\n")
        if self.else_body and self.else_body.formulas:
            builder.append("} else {\n")
            builder.append(agentspeak.util.indent(str(self.else_body)))
            builder.append(";\n")
        builder.append("}")
        return "".join(builder)


class AstAgent(AstNode):
    def __init__(self):
        super(AstAgent, self).__init__()
        self.rules = []
        self.beliefs = []
        self.goals = []
        self.plans = []

    def accept(self, visitor):
        return visitor.visit_agent(self)

    def __str__(self):
        builder = []
        for rule in self.rules:
            if builder:
                builder.append("\n")
            builder.append(str(rule))
            builder.append(".")

        if self.beliefs:
            if builder:
                builder.append("\n")
            for belief in self.beliefs:
                if builder:
                    builder.append("\n")
                builder.append(str(belief))
                builder.append(".")

        if self.goals:
            if builder:
                builder.append("\n")
            for goal in self.goals:
                if builder:
                    builder.append("\n")
                builder.append(str(goal))
                builder.append(".")

        for plan in self.plans:
            if builder:
                builder.append("\n\n")
            builder.append(str(plan))
            builder.append(".")

        return "".join(builder)


def parse_literal(tok, tokens, log):
    if not tok.token.functor:
        raise log.error("expected functor, got '%s'", tok.lexeme, loc=tok.loc)

    literal = AstLiteral()
    literal.functor = tok.lexeme
    literal.loc = tok.loc

    tok = next(tokens)

    if tok.lexeme == "(":
        while True:
            tok = next(tokens)
            tok, term = parse_term(tok, tokens, log)
            literal.terms.append(term)

            if tok.lexeme == ")":
                tok = next(tokens)
                break
            elif tok.lexeme == ",":
                continue
            else:
                raise log.error("expected ')' or another argument for the literal, got '%s'",
                                tok.lexeme, loc=tok.loc, extra_locs=[literal.loc])

    if tok.lexeme == "[":
        while True:
            tok = next(tokens)
            tok, term = parse_term(tok, tokens, log)
            literal.annotations.append(term)

            if tok.lexeme == "]":
                tok = next(tokens)
                break
            elif tok.lexeme == ",":
                continue
            else:
                raise log.error("expected ']' or another annotation, got '%s'", tok.lexeme,
                                loc=tok.loc, extra_locs=[literal.loc])

    return tok, literal


def parse_list(tok, tokens, log):
    if tok.lexeme != "[":
        raise log.error("expected '[' for list, got '%s'", tok.lexeme, loc=tok.loc)

    ast_list = AstList()
    ast_list.loc = tok.loc

    tok = next(tokens)

    while tok.lexeme != "]":
        tok, term = parse_and_expr(tok, tokens, log)
        ast_list.terms.append(term)

        if tok.lexeme == "|":
            if len(ast_list.terms) > 1:
                raise log.error("do not mix ',' and '|' in list notation",
                                loc=tok.loc, extra_locs=[ast_list.loc])
            ast_linked_list = AstLinkedList()
            ast_linked_list.loc = ast_list.loc
            ast_linked_list.head = term
            tok, ast_linked_list.tail = parse_linked_list_tail(tok, tokens, log)
            return tok, ast_linked_list
        elif tok.lexeme == ",":
            tok = next(tokens)
            continue
        elif tok.lexeme != "]":
            raise log.error("expected ']' or another term for list, got '%s'", tok.lexeme,
                            loc=tok.loc, extra_locs=[ast_list.loc])

    return next(tokens), ast_list


def parse_linked_list_tail(tok, tokens, log):
    if tok.lexeme != "|":
        raise log.error("expected '|' before linked list tail, got '%s'", tok.lexeme, loc=tok.loc)

    tok = next(tokens)
    tok, term = parse_and_expr(tok, tokens, log)

    if tok.lexeme == "|":
        ast_linked_list = AstLinkedList()
        ast_linked_list.loc = tok.loc
        ast_linked_list.head = term
        tok, ast_linked_list.tail = parse_linked_list_tail(tok, tokens, log)
        return tok, ast_linked_list
    elif tok.lexeme == "]":
        return next(tokens), term
    else:
        raise log.error("expected ']' or '|' followed by another term, got '%s'",
                        tok.lexeme, loc=tok.loc)


def parse_atom(tok, tokens, log):
    if tok.token.variable:
        variable = AstVariable()
        variable.name = tok.lexeme
        variable.loc = tok.loc
        return next(tokens), variable
    elif tok.token.functor:
        return parse_literal(tok, tokens, log)
    elif tok.lexeme == "[":
        return parse_list(tok, tokens, log)
    elif tok.lexeme == "(":
        tok = next(tokens)
        tok, term = parse_term(tok, tokens, log)
        if tok.lexeme != ")":
            raise log.error("expected ')' after term, got '%s'", tok.lexeme,
                            loc=tok.loc, extra_locs=[term.loc])
        return next(tokens), term
    elif tok.token.numeric:
        const = AstConst()
        const.value = float(tok.lexeme)
        const.loc = tok.loc
        return next(tokens), const
    elif tok.token.boolean is not None:
        const = AstConst()
        const.value = tok.token.boolean
        const.loc = tok.loc
        return next(tokens), const
    elif tok.token.string:
        const = AstConst()
        const.value = agentspeak.parse_string(tok.lexeme)
        const.loc = tok.loc
        return next(tokens), const
    else:
        raise log.error("expected term, got '%s'", tok.lexeme, loc=tok.loc)


def parse_power(tok, tokens, log):
    tok, expr = parse_atom(tok, tokens, log)
    while tok.lexeme == "**":
        op = AstBinaryOp()
        op.left = expr
        op.operator = BinaryOp.op_pow
        op.loc = tok.loc
        tok = next(tokens)
        tok, op.right = parse_factor(tok, tokens, log)
        expr = op

    return tok, expr


def parse_factor(tok, tokens, log):
    if tok.token.unary_op:
        op = AstUnaryOp()
        op.operator = tok.token.unary_op
        op.loc = tok.loc
        tok = next(tokens)
        tok, op.operand = parse_factor(tok, tokens, log)
        return tok, op
    else:
        return parse_power(tok, tokens, log)


def parse_product(tok, tokens, log):
    tok, expr = parse_factor(tok, tokens, log)
    while tok.token.mult_op:
        op = AstBinaryOp()
        op.left = expr
        op.operator = tok.token.mult_op
        op.loc = tok.loc
        tok = next(tokens)
        tok, op.right = parse_factor(tok, tokens, log)
        expr = op

    return tok, expr


def parse_arith_expr(tok, tokens, log):
    tok, expr = parse_product(tok, tokens, log)
    while tok.token.add_op:
        op = AstBinaryOp()
        op.left = expr
        op.operator = tok.token.add_op
        op.loc = tok.loc
        tok = next(tokens)
        tok, op.right = parse_product(tok, tokens, log)
        expr = op

    return tok, expr


def parse_comparison(tok, tokens, log):
    comparisons = None
    tok, rightmost = parse_arith_expr(tok, tokens, log)
    while tok.token.comp_op:
        op = AstBinaryOp()
        op.left = rightmost
        op.operator = tok.token.comp_op
        op.loc = tok.loc
        tok = next(tokens)
        tok, rightmost = parse_arith_expr(tok, tokens, log)
        op.right = rightmost

        if comparisons is None:
            comparisons = op
        else:
            op_and = AstBinaryOp()
            op_and.left = comparisons
            op_and.operator = BinaryOp.op_and
            op_and.loc = op.loc
            op_and.right = op
            comparisons = op_and

    return tok, comparisons or rightmost


def parse_not_expr(tok, tokens, log):
    if tok.lexeme == "not":
        op = AstUnaryOp()
        op.operator = UnaryOp.op_not
        op.loc = tok.loc
        tok = next(tokens)
        tok, op.operand = parse_not_expr(tok, tokens, log)
        return tok, op

    return parse_comparison(tok, tokens, log)


def parse_and_expr(tok, tokens, log):
    tok, expr = parse_not_expr(tok, tokens, log)
    while tok.lexeme == "&":
        bin_op = AstBinaryOp()
        bin_op.left = expr
        bin_op.operator = BinaryOp.op_and
        bin_op.loc = tok.loc

        tok = next(tokens)
        tok, bin_op.right = parse_not_expr(tok, tokens, log)
        expr = bin_op

    return tok, expr


def parse_term(tok, tokens, log):
    tok, expr = parse_and_expr(tok, tokens, log)
    while tok.lexeme == "|":
        bin_op = AstBinaryOp()
        bin_op.left = expr
        bin_op.operator = BinaryOp.op_or
        bin_op.loc = tok.loc

        tok = next(tokens)
        tok, bin_op.right = parse_and_expr(tok, tokens, log)
        expr = bin_op

    return tok, expr


def parse_rule_or_belief(tok, tokens, log):
    if "." in tok.lexeme:
        log.warning("found '.' in assertion. should this have been an action?", loc=tok.loc)

    tok, belief_atom = parse_literal(tok, tokens, log)

    if tok.lexeme == ":-":
        # A rule with head and body.
        rule = AstRule()
        rule.head = belief_atom
        rule.loc = tok.loc

        tok = next(tokens)
        tok, rule.consequence = parse_term(tok, tokens, log)
        return tok, rule
    else:
        # Just the belief atom.
        return tok, belief_atom


def parse_initial_goal(tok, tokens, log):
    if tok.lexeme != "!":
        raise log.error("expected '!' for initial goal, got '%s'", tok.lexeme, loc=tok.loc)

    goal = AstGoal()
    goal.loc = tok.loc

    tok = next(tokens)
    tok, goal.atom = parse_literal(tok, tokens, log)
    return tok, goal


def parse_body(tok, tokens, log):
    body = AstBody()
    body.loc = tok.loc

    while tok.lexeme != "}":
        tok, formula = parse_body_formula(tok, tokens, log)
        body.formulas.append(formula)

        if tok.lexeme == ";":
            tok = next(tokens)
            if tok.lexeme == "}":
                break
            continue
        elif tok.lexeme == "}":
            break
        elif isinstance(formula, AstFormula):
            raise log.error("expected ';' or '}' after formula, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[formula.loc])
        else:
            # Block in brackets has ended.
            pass

    return tok, body


def parse_while(tok, tokens, log):
    if tok.lexeme != "while":
        raise log.error("expected 'while', got '%s'", tok.lexeme, loc=tok.loc)

    while_node = AstWhile()
    while_node.loc = tok.loc
    tok = next(tokens)

    if tok.lexeme != "(":
        raise log.error("expected '(' after while, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[while_node.loc])
    tok = next(tokens)

    tok, while_node.condition = parse_term(tok, tokens, log)

    if tok.lexeme != ")":
        raise log.error("expected ')' after while condition, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[while_node.loc, while_node.condition.loc])
    tok = next(tokens)

    if tok.lexeme != "{":
        raise log.error("expected '{' after while head, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[while_node.loc])
    tok = next(tokens)

    tok, while_node.body = parse_body(tok, tokens, log)

    if tok.lexeme != "}":
        raise log.error("expected '}' after while body, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[while_node.loc])
    tok = next(tokens)

    return tok, while_node


def parse_for(tok, tokens, log):
    for_node = AstFor()
    for_node.loc = tok.loc

    if tok.lexeme != "for":
        raise log.error("expected 'for', got '%s'", tok.lexeme, loc=tok.loc)
    tok = next(tokens)

    if tok.lexeme != "(":
        raise log.error("expected '(' after for, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[for_node.loc])
    tok = next(tokens)

    tok, for_node.generator = parse_term(tok, tokens, log)

    if tok.lexeme != ")":
        raise log.error("expected ')' after for generator, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[for_node.loc, for_node.generator.loc])
    tok = next(tokens)

    if tok.lexeme != "{":
        raise log.error("expected '{' after for head, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[for_node.loc])
    tok = next(tokens)

    tok, for_node.body = parse_body(tok, tokens, log)

    if tok.lexeme != "}":
        raise log.error("expected '}' after for body, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[for_node.loc])
    tok = next(tokens)

    return tok, for_node


def parse_if_then_else(tok, tokens, log):
    if_then_else = AstIfThenElse()
    if_then_else.loc = tok.loc

    if tok.lexeme != "if":
        raise log.error("expected 'if', got '%s'", tok.lexeme, loc=tok.loc)
    tok = next(tokens)

    if tok.lexeme != "(":
        raise log.error("expected '(' after if, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[if_then_else.loc])
    tok = next(tokens)

    tok, if_then_else.condition = parse_term(tok, tokens, log)

    if tok.lexeme != ")":
        raise log.error("expected ')' after if condition, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[if_then_else.loc, if_then_else.condition.loc])
    tok = next(tokens)

    if tok.lexeme != "{":
        raise log.error("expected '{' after if head, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[if_then_else.loc])
    tok = next(tokens)

    tok, if_then_else.if_body = parse_body(tok, tokens, log)

    if tok.lexeme != "}":
        raise log.error("expected '}' after if body, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[if_then_else.loc])
    tok = next(tokens)

    if tok.lexeme == "else":
        tok_else = tok
        tok = next(tokens)

        if tok.lexeme != "{":
            raise log.error("expected '{' after else, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[if_then_else.loc, tok_else.loc])
        tok = next(tokens)

        tok, if_then_else.else_body = parse_body(tok, tokens, log)

        if tok.lexeme != "}":
            raise log.error("expected '}' after else body, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[if_then_else.loc, tok_else.loc])
        tok = next(tokens)

    return tok, if_then_else


def parse_body_formula(tok, tokens, log):
    if tok.lexeme == "while":
        return parse_while(tok, tokens, log)
    elif tok.lexeme == "if":
        return parse_if_then_else(tok, tokens, log)
    elif tok.lexeme == "for":
        return parse_for(tok, tokens, log)
    else:
        formula = AstFormula()
        formula.loc = tok.loc

        if tok.token.formula_type:
            formula.formula_type = tok.token.formula_type
            tok = next(tokens)
        else:
            formula.formula_type = FormulaType.term

        tok, formula.term = parse_term(tok, tokens, log)
        return tok, formula


def parse_plan_body(tok, tokens, log):
    body = AstBody()

    while True:
        tok, formula = parse_body_formula(tok, tokens, log)
        body.formulas.append(formula)

        if tok.lexeme == ";":
            tok = next(tokens)
            continue
        elif tok.lexeme == ".":
            break
        elif isinstance(formula, AstFormula):
            raise log.error("expected ';' or '.' after formula, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[formula.loc])
        else:
            # Block in brackets has ended.
            pass

    return tok, body


def parse_event(tok, tokens, log):
    event = AstEvent()

    if not tok.token.trigger:
        raise log.error("expected plan trigger, got '%s'", tok.lexeme, loc=tok.loc)
    event.loc = tok.loc
    event.trigger = tok.token.trigger
    tok = next(tokens)

    if tok.token.goal_type:
        event.goal_type = tok.token.goal_type
        tok = next(tokens)
    else:
        event.goal_type = GoalType.belief

    tok, event.head = parse_literal(tok, tokens, log)
    return tok, event


def parse_plan(tok, tokens, log):
    plan = AstPlan()

    while tok.lexeme == "@":
        tok = next(tokens)
        tok, annotation = parse_literal(tok, tokens, log)
        plan.annotations.append(annotation)

    tok, event = parse_event(tok, tokens, log)
    plan.event = event
    plan.loc = event.loc

    if tok.lexeme == ":":
        tok = next(tokens)
        tok, plan.context = parse_term(tok, tokens, log)

    if tok.lexeme == "<-":
        body_loc = tok.loc
        tok = next(tokens)

        tok, plan.body = parse_plan_body(tok, tokens, log)
        plan.body.loc = body_loc

    return tok, plan


def parse_agent(filename, tokens, log, included_files, directive=None):
    included_files = included_files | frozenset([os.path.normpath(filename)])
    agent = AstAgent()
    last_plan = None

    while True:
        try:
            tok = next(tokens)
        except StopIteration:
            if directive:
                # TODO: Where was the directive started?
                raise log.error("end of file, but did not close directive '%s'", directive)
            return validate(agent, log)

        if tok.lexeme == "{":
            tok = next(tokens)
            if tok.lexeme == "include":
                include_loc = tok.loc
                tok = next(tokens)
                if tok.lexeme != "(":
                    raise log.error("expected '(' after include, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[include_loc])
                tok = next(tokens)
                if not tok.token.string:
                    raise log.error("expected filename to include, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[include_loc])
                include = agentspeak.parse_string(tok.lexeme)
                tok = next(tokens)
                if tok.lexeme != ")":
                    raise log.error("expected ')' after include filename, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[include_loc])
                tok = next(tokens)
                if tok.lexeme != "}":
                    raise log.error("expected '}' to close include directive, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[include_loc])

                # Resolve included path.
                include = os.path.join(os.path.dirname(filename), include)

                # Parse included file.
                if include in included_files:
                    log.error("infinite recursive include: '%s'", include, loc=include_loc)
                else:
                    try:
                        included_file = open(include)
                    except IOError as err:
                        if err.errno == errno.ENOENT:
                            log.error("include file not found: '%s'", include, loc=include_loc)
                        else:
                            raise
                    else:
                        included_tokens = agentspeak.lexer.TokenStream(included_file, 1)
                        included_agent = parse(include, included_tokens, log, included_files)
                        agent.beliefs += included_agent.beliefs
                        agent.rules += included_agent.rules
                        agent.goals += included_agent.goals
                        agent.plans += included_agent.plans
                        included_file.close()
            elif tok.lexeme == "begin":
                begin_loc = tok.loc
                tok = next(tokens)
                tok, sub_directive = parse_literal(tok, tokens, log)
                if tok.lexeme != "}":
                    raise log.error("expected '}' after begin, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[begin_loc])
                log.warning("directives are ignored as of yet", loc=sub_directive.loc)
                sub_agent = parse(filename, tokens, log, included_files, sub_directive)
                agent.beliefs += sub_agent.beliefs
                agent.rules += sub_agent.rules
                agent.goals += sub_agent.goals
                agent.plans += sub_agent.plans
            elif tok.lexeme == "end":
                end_loc = tok.loc
                tok = next(tokens)
                if tok.lexeme != "}":
                    raise log.error("expected '}' after end, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[end_loc])
                if not directive:
                    log.error("unexpected end", loc=end_loc)
                else:
                    return validate(agent, log)
            else:
                raise log.error("expected 'include', or 'begin' or 'end' after '{', got '%s'", tok.lexeme, loc=tok.loc)
        elif tok.token.functor:
            if last_plan is not None:
                log.warning("assertion after plan. should this have been part of '%s'?", last_plan.signature(), loc=tok.loc)
            tok, ast_node = parse_rule_or_belief(tok, tokens, log)
            if isinstance(ast_node, AstRule):
                if tok.lexeme != ".":
                    log.info("missing '.' after this rule", loc=ast_node.loc)
                    raise log.error("expected '.' after rule, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[ast_node.loc])
                agent.rules.append(ast_node)
            else:
                if tok.lexeme != ".":
                    log.info("missing '.' after this belief", loc=ast_node.loc)
                    raise log.error("expected '.' after belief, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[ast_node.loc])
                agent.beliefs.append(ast_node)
        elif tok.lexeme == "!":
            tok, ast_node = parse_initial_goal(tok, tokens, log)
            if tok.lexeme != ".":
                log.info("missing '.' after this goal", loc=ast_node.loc)
                raise log.error("expected '.' after initial goal, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[ast_node.loc])
            agent.goals.append(ast_node)
        elif tok.lexeme in ["@", "+", "-"]:
            tok, last_plan = parse_plan(tok, tokens, log)
            if tok.lexeme != ".":
                log.info("missing '.' after this plan", loc=last_plan.loc)
                raise log.error("expected '.' after plan, got '%s'", tok.lexeme, loc=tok.loc, extra_locs=[last_plan.loc])
            agent.plans.append(last_plan)
        else:
            log.error("unexpected token: '%s'", tok.lexeme, loc=tok.loc)


class FindVariablesVisitor(object):
    def visit_literal(self, ast_literal):
        for term in ast_literal.terms:
            for var in term.accept(self):
                yield var

        for annotation in ast_literal.annotations:
            for var in annotation.accept(self):
                yield var

    def visit_list(self, ast_list):
        for term in ast_list.terms:
            for var in term.accept(self):
                yield var

    def visit_const(self, ast_const):
        return
        yield

    def visit_variable(self, ast_variable):
        yield ast_variable

    def visit_unary_op(self, unary_op):
        for var in unary_op.operand.accept(self):
            yield

    def visit_binary_op(self, binary_op):
        for var in binary_op.left.accept(self):
            yield

        for var in binary_op.right.accept(self):
            yield


class FindOpVisitor(object):
    def visit_literal(self, ast_literal):
        for term in ast_literal.terms:
            for op in term.accept(self):
                yield op

        for annotation in ast_literal.annotations:
            for op in annotation.accept(self):
                yield op

    def visit_list(self, ast_list):
        for term in ast_list.terms:
            for op in term.accept(self):
                yield op

    def visit_linked_list(self, ast_linked_list):
        for op in ast_linked_list.head.accept(self):
            yield op
        for op in ast_linked_list.tail.accept(self):
            yield op

    def visit_const(self, ast_const):
        return
        yield

    def visit_variable(self, ast_variable):
        return
        yield

    def visit_unary_op(self, unary_op):
        yield unary_op

    def visit_binary_op(self, binary_op):
        yield binary_op


class NumericFoldVisitor(object):
    def __init__(self, log):
        self.log = log

    def visit_binary_op(self, ast_binary_op):
        if ast_binary_op.operator.value.numeric_op:
            left = ast_binary_op.left.accept(self)
            right = ast_binary_op.right.accept(self)
            if (isinstance(left, AstConst) and agentspeak.is_number(left.value) and
                    isinstance(right, AstConst) and agentspeak.is_number(right.value)):
                try:
                    const = AstConst()
                    const.loc = ast_binary_op.loc
                    const.value = ast_binary_op.operator.value.func(left.value, right.value)
                    return const
                except ZeroDivisionError as err:
                    self.log.error("%s", err, loc=ast_binary_op.loc, extra_locs=[left.loc, right.loc])
            else:
                ast_binary_op.left = left
                ast_binary_op.right = right
        else:
            self.log.error("unexpected operator '%s' in numeric context",
                           ast_binary_op.operator.value.lexeme,
                           loc=ast_binary_op.loc,
                           extra_locs=[ast_binary_op.left.loc, ast_binary_op.right.loc])

        return ast_binary_op

    def visit_unary_op(self, ast_unary_op):
        if ast_unary_op.operator.value.numeric_op:
            folded = ast_unary_op.operand.accept(self)
            if isinstance(folded, AstConst) and agentspeak.is_number(folded.value):
                const = AstConst()
                const.loc = ast_unary_op.loc
                const.value = ast_unary_op.operator.value.func(folded.value)
                return const
            else:
                ast_unary_op.operand = folded
        else:
            self.log.error("unexpected operator '%s' in numeric context",
                           ast_unary_op.operator.value.lexeme,
                           loc=ast_unary_op.loc,
                           extra_locs=[ast_unary_op.operand.loc])

        return ast_unary_op

    def visit_variable(self, ast_variable):
        return ast_variable

    def visit_const(self, ast_const):
        if ast_const.value is True or ast_const.value is False:
            self.log.error("boolean in numeric context", loc=ast_const.loc)
        elif isinstance(ast_const.value, str):
            self.log.error("string in numeric context", loc=ast_const.loc)

        return ast_const

    def visit_literal(self, ast_literal):
        self.log.error("did not expect literal in numeric context", loc=ast_literal.loc)
        return ast_literal

    def visit_list(self, ast_list):
        self.log.error("did not expect list in numeric context", loc=ast_list.loc)
        return ast_list


class BooleanFoldVisitor(object):
    def __init__(self, log):
        self.log = log

    def visit_binary_op(self, ast_binary_op):
        if ast_binary_op.operator.value.boolean_op:
            left = ast_binary_op.left.accept(self)
            right = ast_binary_op.right.accept(self)
            if (isinstance(left, AstConst) and isinstance(left.value, bool) and
                    isinstance(right, AstConst) and isinstance(right.value, bool)):
                const = AstConst()
                const.loc = ast_binary_op.loc
                const.value = ast_binary_op.operator.value.func(left.value, right.value)
                return const
            else:
                ast_binary_op.left = left
                ast_binary_op.right = right
        elif ast_binary_op.operator.value.comp_op:
            left = ast_binary_op.left.accept(TermFoldVisitor(self.log))
            right = ast_binary_op.right.accept(TermFoldVisitor(self.log))
            if isinstance(left, AstConst) and isinstance(right, AstConst):
                const = AstConst()
                const.loc = ast_binary_op.loc
                if agentspeak.is_number(left.value) and agentspeak.is_number(right.value):
                    const.value = ast_binary_op.operator.value.func(left.value, right.value)
                    return const
                elif isinstance(left.value, bool) and isinstance(right.value, bool):
                    const.value = ast_binary_op.operator.value.func(left.value, right.value)
                    return const
                elif isinstance(left.value, str) and isinstance(right.value, str):
                    const.value = ast_binary_op.operator.value.func(left.value, right.value)
                    return const

            ast_binary_op.left = left
            ast_binary_op.right = right
            return ast_binary_op
        else:
            self.log.error("unexpected operator '%s' in boolean context",
                           ast_binary_op.operator,
                           loc=ast_binary_op.loc,
                           extra_locs=[ast_binary_op.left.loc, ast_binary_op.right.loc])

        return ast_binary_op

    def visit_unary_op(self, ast_unary_op):
        if ast_unary_op.operator.value.boolean_op:
            folded = ast_unary_op.operand.accept(self)
            if isinstance(folded, AstConst) and isinstance(folded.value, bool):
                const = AstConst()
                const.loc = ast_unary_op.loc
                const.value = ast_unary_op.operator.value.func(folded.value)
                return const
            else:
                ast_unary_op.operand = folded
        else:
            self.log.error("unexpected operator '%s' in boolean context",
                           ast_unary_op.operator,
                           loc=ast_unary_op.loc,
                           extra_locs=[ast_unary_op.operand.loc])

        return ast_unary_op

    def visit_variable(self, ast_variable):
        return ast_variable

    def visit_const(self, ast_const):
        if isinstance(ast_const.value, str):
            self.log.error("string in boolean context", loc=ast_const.loc)
        elif agentspeak.is_number(ast_const.value):
            self.log.error("number '%s' in boolean context", ast_const.value, loc=ast_const.loc)

        return ast_const

    def visit_literal(self, ast_literal):
        self.log.error("literal in boolean context", loc=ast_literal.loc)
        return ast_literal

    def visit_list(self, ast_list):
        self.log.error("did not expect list in boolean context", loc=ast_list.loc)


class TermFoldVisitor(object):
    def __init__(self, log):
        self.log = log

    def visit_binary_op(self, ast_binary_op):
        if ast_binary_op.operator.value.numeric_op:
            return ast_binary_op.accept(NumericFoldVisitor(self.log))
        else:
            return ast_binary_op.accept(BooleanFoldVisitor(self.log))

    def visit_unary_op(self, ast_unary_op):
        if ast_unary_op.operator.value.boolean_op:
            return ast_unary_op.accept(BooleanFoldVisitor(self.log))
        else:
            return ast_unary_op.accept(NumericFoldVisitor(self.log))

    def visit_variable(self, ast_variable):
        return ast_variable

    def visit_const(self, ast_const):
        return ast_const

    def visit_literal(self, ast_literal):
        ast_literal.terms = [term.accept(self) for term in ast_literal.terms]
        ast_literal.annotations = [annotation.accept(self) for annotation in ast_literal.annotations]
        return ast_literal

    def visit_list(self, ast_list):
        ast_list.terms = [term.accept(self) for term in ast_list.terms]
        return ast_list

    def visit_linked_list(self, ast_linked_list):
        ast_linked_list.head = ast_linked_list.head.accept(self)
        ast_linked_list.tail = ast_linked_list.tail.accept(self)
        return ast_linked_list


class LogicalFoldVisitor(BooleanFoldVisitor):

    def visit_binary_op(self, ast_binary_op):
        if ast_binary_op.operator.value.query_op and not ast_binary_op.operator.value.boolean_op:
            ast_binary_op.left = ast_binary_op.left.accept(TermFoldVisitor(self.log))
            ast_binary_op.right = ast_binary_op.right.accept(TermFoldVisitor(self.log))
            return ast_binary_op
        else:
            return super(LogicalFoldVisitor, self).visit_binary_op(ast_binary_op)

    def visit_literal(self, ast_literal):
        return ast_literal.accept(TermFoldVisitor(self.log))


class ConstFoldVisitor(object):
    def __init__(self, log):
        self.log = log

    def visit_binary_op(self, ast_binary_op):
        return ast_binary_op.accept(TermFoldVisitor(self.log))

    def visit_unary_op(self, ast_unary_op):
        return ast_unary_op.accept(TermFoldVisitor(self.log))

    def visit_agent(self, ast_agent):
        ast_agent.rules = [rule.accept(self) for rule in ast_agent.rules]
        ast_agent.beliefs = [belief.accept(self) for belief in ast_agent.beliefs]
        ast_agent.goals = [goal.accept(self) for goal in ast_agent.goals]
        ast_agent.plans = [plan.accept(self) for plan in ast_agent.plans]
        return ast_agent

    def visit_if_then_else(self, ast_if_then_else):
        ast_if_then_else.condition = ast_if_then_else.condition.accept(LogicalFoldVisitor(self.log))
        ast_if_then_else.if_body = ast_if_then_else.if_body.accept(self)
        ast_if_then_else.else_body = ast_if_then_else.else_body.accept(self) if ast_if_then_else.else_body else None
        return ast_if_then_else

    def visit_for(self, ast_for):
        ast_for.generator = ast_for.generator.accept(LogicalFoldVisitor(self.log))
        ast_for.body = ast_for.body.accept(self)
        return ast_for

    def visit_while(self, ast_while):
        ast_while.condition = ast_while.condition.accept(LogicalFoldVisitor(self.log))
        ast_while.body = ast_while.body.accept(self)
        return ast_while

    def visit_body(self, ast_body):
        ast_body.formulas = [formula.accept(self) for formula in ast_body.formulas]
        return ast_body

    def visit_event(self, ast_event):
        ast_event.head = ast_event.head.accept(TermFoldVisitor(self.log))
        return ast_event

    def visit_plan(self, ast_plan):
        ast_plan.annotations = [annotation.accept(TermFoldVisitor(self.log)) for annotation in ast_plan.annotations]
        ast_plan.event = ast_plan.event.accept(self)
        ast_plan.context = ast_plan.context.accept(LogicalFoldVisitor(self.log)) if ast_plan.context else None
        ast_plan.body = ast_plan.body.accept(self) if ast_plan.body else None
        return ast_plan

    def visit_variable(self, ast_variable):
        return ast_variable

    def visit_const(self, ast_const):
        return ast_const

    def visit_formula(self, ast_formula):
        if ast_formula.formula_type == FormulaType.term:
            ast_formula.term = ast_formula.term.accept(LogicalFoldVisitor(self.log))
        else:
            if isinstance(ast_formula.term, (AstLiteral, AstVariable)):
                ast_formula.term = ast_formula.term.accept(TermFoldVisitor(self.log))
            else:
                self.log.error("expected literal or variable after '%s'", ast_formula.formula_type, loc=ast_formula.loc, extra_locs=[ast_formula.term.loc])

        return ast_formula

    def visit_goal(self, ast_goal):
        ast_goal.atom = ast_goal.atom.accept(TermFoldVisitor(self.log))
        return ast_goal

    def visit_rule(self, ast_rule):
        ast_rule.head = ast_rule.head.accept(TermFoldVisitor(self.log))
        ast_rule.consequence = ast_rule.consequence.accept(LogicalFoldVisitor(self.log))
        return ast_rule

    def visit_list(self, ast_list):
        term_visitor = TermFoldVisitor(self.log)
        ast_list.terms = [term.accept(term_visitor) for term in ast_list.terms]
        return ast_list

    def visit_literal(self, ast_literal):
        term_visitor = TermFoldVisitor(self.log)
        ast_literal.terms = [term.accept(term_visitor) for term in ast_literal.terms]
        ast_literal.annotations = [annotation.accept(term_visitor) for annotation in ast_literal.annotations]
        return ast_literal


def validate(ast_agent, log):
    ast_agent = ast_agent.accept(ConstFoldVisitor(log))

    for belief in ast_agent.beliefs:
        variables = list(belief.accept(FindVariablesVisitor()))
        if variables:
            names = sorted(set(variable.name for variable in variables))
            log.warning("implicit rule with unbound variables: %s (add ':- true' to acknowledge)",
                        ", ".join("'%s'" % name for name in names),
                        loc=belief.loc,
                        extra_locs=[variable.loc for variable in variables])

        for op in belief.accept(FindOpVisitor()):
            log.error("base belief can not contain this expression", loc=op.loc, extra_locs=[belief.loc])

    for rule in ast_agent.rules:
        for op in rule.head.accept(FindOpVisitor()):
            log.error("rule head is supposed to be unifiable, but contains non-const expression", loc=op.loc, extra_locs=[rule.loc])

    for plan in ast_agent.plans:
        for op in plan.event.head.accept(FindOpVisitor()):
            log.error("plan head is supposed to be unifiable, but contains non-const expression", loc=op.loc, extra_locs=[plan.loc])

        for annotation in plan.annotations:
            log.warning("plan annotations are ignored as of yet", loc=annotation.loc, extra_locs=[plan.loc])

        if plan.event.goal_type != GoalType.belief and plan.event.trigger == Trigger.removal:
            log.warning("recovery plans are ignored as of yet", loc=plan.loc)

    return ast_agent


def parse(filename, tokens, log, included_files=frozenset(), directive=None):
    try:
        return parse_agent(filename, tokens, log, included_files, directive=directive)
    except StopIteration:
        raise log.error("unexpected end of file", loc=tokens.peek() and tokens.peek().loc)


def main(source, hook):
    log = agentspeak.Log(agentspeak.get_logger(__name__), 3)

    tokens = agentspeak.lexer.TokenStream(source, log, 1)
    agent = parse(source.name, tokens, log)

    log.throw()

    hook(agent)


def repl(hook):
    lineno = 0
    tokens = []

    while True:
        try:
            log = agentspeak.Log(agentspeak.get_logger(__name__), 3)

            if not tokens:
                line = agentspeak.util.prompt("agentspeak.parser >>> ")
            else:
                line = agentspeak.util.prompt("agentspeak.parser ... ")

            lineno += 1

            tokens.extend(agentspeak.lexer.tokenize(agentspeak.StringSource("<stdin>", line), log, lineno))

            while tokens:
                token_stream = iter(tokens)
                try:
                    agent = parse_agent("<stdin>", token_stream, log, frozenset())
                except StopIteration:
                    log.throw()
                    break
                else:
                    log.throw()
                    hook(agent)
                    tokens = list(token_stream)
        except agentspeak.AggregatedError as error:
            print(str(error), file=sys.stderr)
            tokens = []
        except KeyboardInterrupt:
            print()
            sys.exit(0)


if __name__ == "__main__":
    try:
        args = sys.argv[1:]
        if args:
            for arg in args:
                with open(arg) as source:
                    main(source, print)
        elif sys.stdin.isatty():
            repl(print)
        else:
            main(sys.stdin, print)
    except agentspeak.AggregatedError as error:
        print(str(error), file=sys.stderr)
        sys.exit(1)
