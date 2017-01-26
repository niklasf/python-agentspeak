# -*- coding: utf-8 -*-
#
# NOTE: The optimization may change runtime behaviour when unifying variables with action predicates.
#

from __future__ import print_function

import enum
import sys
import itertools
import copy
import re

import pyson.lexer
import pyson.parser

from pyson import FormulaType, BinaryOp, UnaryOp
from pyson.parser import (AstNode, AstLiteral, AstVariable, AstConst, AstBinaryOp, AstUnaryOp,
    AstFormula, AstPlan, AstBody)

@enum.unique
class AstType(enum.Enum):
    LITERAL      = 1
    LIST         = 2
    RULE         = 3
    GOAL         = 4
    FORMULA      = 5
    CONST        = 6
    VARIABLE     = 7
    UNARY_OP     = 8
    BINARY_OP    = 9
    PLAN         = 10
    BODY         = 11
    WHILE        = 12
    FOR          = 13
    IF_THEN_ELSE = 14
    AGENT        = 15

class AstDummy(AstNode):
    def accept(self, visitor): return self
    
class CallbackVisitor(object):
    def __init__(self, callback):
        self.callback = callback
        callback.visitor_parent = self

    def resolve_single(self, ast_node):
        return self._cb_sing(ast_node)
        
    def _cb_sing(self, ast_node):
        r = ast_node.accept(self)
        if r is None or r == _IAC.KEEP_CURRENT:
            return ast_node
        elif r == _IAC.DELETE_NODE:
            # Can't delete nodes in this context
            assert False
        elif isinstance(r, list):
            # Can't expand a list in this context
            assert False
        elif isinstance(r, AstNode):
            return r
        else:
            assert False
    def _cb_sing_chk(self, ast_node):
        r = ast_node.accept(self)
        if r is None or r == _IAC.KEEP_CURRENT:
            return False, ast_node
        elif r == _IAC.DELETE_NODE:
            return True, []
        elif isinstance(r, list):
            return True, r
        elif isinstance(r, AstNode):
            return False, r
        else:
            assert False
    def _cb_map(self, lst):
        result = []
        for ast_node in lst:
            r = ast_node.accept(self)
            if r is None or r == _IAC.KEEP_CURRENT:
                result.append(ast_node)
            elif r == _IAC.DELETE_NODE:
                pass
            elif isinstance(r, list):
                result += r
            elif isinstance(r, AstNode):
                result.append(r)
            else:
                assert False
        return result
        
    def visit_binary_op(self, ast_binary_op):
        if self.callback.pre_ast_node(AstType.BINARY_OP, ast_binary_op): return ast_binary_op
        ast_binary_op.left  = self._cb_sing(ast_binary_op.left)
        ast_binary_op.right = self._cb_sing(ast_binary_op.right)
        return self.callback.on_ast_node(AstType.BINARY_OP, ast_binary_op)

    def visit_unary_op(self, ast_unary_op):
        if self.callback.pre_ast_node(AstType.UNARY_OP, ast_unary_op): return ast_unary_op
        ast_unary_op.operand = self._cb_sing(ast_unary_op.operand)
        return self.callback.on_ast_node(AstType.UNARY_OP, ast_unary_op)

    def visit_agent(self, ast_agent):
        if self.callback.pre_ast_node(AstType.AGENT, ast_agent): return ast_agent
        ast_agent.rules = self._cb_map(ast_agent.rules)
        ast_agent.beliefs = self._cb_map(ast_agent.beliefs)
        ast_agent.goals = self._cb_map(ast_agent.goals)
        ast_agent.plans = self._cb_map(ast_agent.plans)
        return self.callback.on_ast_node(AstType.AGENT, ast_agent)

    def visit_if_then_else(self, ast_if_then_else):
        if self.callback.pre_ast_node(AstType.IF_THEN_ELSE, ast_if_then_else): return ast_if_then_else
        ast_if_then_else.condition = self._cb_sing(ast_if_then_else.condition)
        ast_if_then_else.if_body = self._cb_sing(ast_if_then_else.if_body)
        if ast_if_then_else.else_body:
            ast_if_then_else.else_body = self._cb_sing(ast_if_then_else.else_body)
        return self.callback.on_ast_node(AstType.IF_THEN_ELSE, ast_if_then_else)

    def visit_for(self, ast_for):
        if self.callback.pre_ast_node(AstType.FOR, ast_for): return ast_for
        ast_for.generator = self._cb_sing(ast_for.generator)
        ast_for.body = self._cb_sing(ast_for.body)
        return self.callback.on_ast_node(AstType.FOR, ast_for)

    def visit_while(self, ast_while):
        if self.callback.pre_ast_node(AstType.WHILE, ast_while): return ast_while
        ast_while.condition = self._cb_sing(ast_while.condition)
        ast_while.body = self._cb_sing(ast_while.body)
        return self.callback.on_ast_node(AstType.WHILE, ast_while)

    def visit_body(self, ast_body):
        if self.callback.pre_ast_node(AstType.BODY, ast_body): return ast_body
        ast_body.formulas = self._cb_map(ast_body.formulas)
        return self.callback.on_ast_node(AstType.BODY, ast_body)

    def visit_plan(self, ast_plan):
        if self.callback.pre_ast_node(AstType.PLAN, ast_plan): return ast_plan
        ast_plan.annotations = self._cb_map(ast_plan.annotations)
        ast_plan.head = self._cb_sing(ast_plan.head)
        if ast_plan.context: ast_plan.context = self._cb_sing(ast_plan.context)
        if ast_plan.body: ast_plan.body = self._cb_sing(ast_plan.body)
        return self.callback.on_ast_node(AstType.PLAN, ast_plan)

    def visit_variable(self, ast_variable):
        if self.callback.pre_ast_node(AstType.VARIABLE, ast_variable): return ast_variable
        return self.callback.on_ast_node(AstType.VARIABLE, ast_variable)

    def visit_const(self, ast_const):
        if self.callback.pre_ast_node(AstType.CONST, ast_const): return ast_const
        return self.callback.on_ast_node(AstType.CONST, ast_const)

    def visit_formula(self, ast_formula):
        if self.callback.pre_ast_node(AstType.FORMULA, ast_formula): return ast_formula
        # Automatically expand into multiple formulas. This is done only here, because it is needed
        # only here.
        r, val = self._cb_sing_chk(ast_formula.term)
        if r:
            result = []
            for i in val:
                ast_fml = AstFormula()
                ast_fml.formula_type = ast_formula.formula_type
                ast_fml.term = i
                result.append(ast_fml)
            return _IAC.EXPAND_LIST(result)
        else:
            ast_formula.term = val
            return self.callback.on_ast_node(AstType.FORMULA, ast_formula)

    def visit_goal(self, ast_goal):
        if self.callback.pre_ast_node(AstType.GOAL, ast_goal): return ast_goal
        ast_goal.atom = self._cb_sing(ast_goal.atom)
        return self.callback.on_ast_node(AstType.GOAL, ast_goal)

    def visit_rule(self, ast_rule):
        if self.callback.pre_ast_node(AstType.RULE, ast_rule): return ast_rule
        ast_rule.head = self._cb_sing(ast_rule.head)
        ast_rule.consequence = self._cb_sing(ast_rule.consequence)
        return self.callback.on_ast_node(AstType.RULE, ast_rule)

    def visit_list(self, ast_list):
        if self.callback.pre_ast_node(AstType.LIST, ast_list): return ast_list
        ast_list.terms = self._cb_map(ast_list.terms)
        return self.callback.on_ast_node(AstType.LIST, ast_list)

    def visit_literal(self, ast_literal):
        if self.callback.pre_ast_node(AstType.LITERAL, ast_literal): return ast_literal
        ast_literal.terms = self._cb_map(ast_literal.terms)
        ast_literal.annotations = self._cb_map(ast_literal.annotations)
        return self.callback.on_ast_node(AstType.LITERAL, ast_literal)

class CallbackReverseVisitor(CallbackVisitor):
    def _cb_map(self, lst):
        lst.reverse()
        tmp = super(CallbackReverseVisitor, self)._cb_map(lst)
        tmp.reverse()
        return tmp
    
    def visit_binary_op(self, ast_binary_op):
        if self.callback.pre_ast_node(AstType.BINARY_OP, ast_binary_op): return ast_binary_op
        ast_binary_op.right = self._cb_sing(ast_binary_op.right)
        ast_binary_op.left  = self._cb_sing(ast_binary_op.left)
        return self.callback.on_ast_node(AstType.BINARY_OP, ast_binary_op)

    def visit_agent(self, ast_agent):
        if self.callback.pre_ast_node(AstType.AGENT, ast_agent): return ast_agent
        ast_agent.plans = self._cb_map(ast_agent.plans)
        ast_agent.goals = self._cb_map(ast_agent.goals)
        ast_agent.beliefs = self._cb_map(ast_agent.beliefs)
        ast_agent.rules = self._cb_map(ast_agent.rules)
        return self.callback.on_ast_node(AstType.AGENT, ast_agent)

    def visit_if_then_else(self, ast_if_then_else):
        if self.callback.pre_ast_node(AstType.IF_THEN_ELSE, ast_if_then_else): return ast_if_then_else
        if ast_if_then_else.else_body:
            ast_if_then_else.else_body = self._cb_sing(ast_if_then_else.else_body)
        ast_if_then_else.if_body = self._cb_sing(ast_if_then_else.if_body)
        ast_if_then_else.condition = self._cb_sing(ast_if_then_else.condition)
        return self.callback.on_ast_node(AstType.IF_THEN_ELSE, ast_if_then_else)

    def visit_for(self, ast_for):
        if self.callback.pre_ast_node(AstType.FOR, ast_for): return ast_for
        ast_for.body = self._cb_sing(ast_for.body)
        ast_for.generator = self._cb_sing(ast_for.generator)
        return self.callback.on_ast_node(AstType.FOR, ast_for)

    def visit_while(self, ast_while):
        if self.callback.pre_ast_node(AstType.WHILE, ast_while): return ast_while
        ast_while.body = self._cb_sing(ast_while.body)
        ast_while.condition = self._cb_sing(ast_while.condition)
        return self.callback.on_ast_node(AstType.WHILE, ast_while)
    
    def visit_plan(self, ast_plan):
        if self.callback.pre_ast_node(AstType.PLAN, ast_plan): return ast_plan
        if ast_plan.body: ast_plan.body = self._cb_sing(ast_plan.body)
        if ast_plan.context: ast_plan.context = self._cb_sing(ast_plan.context)
        ast_plan.head = self._cb_sing(ast_plan.head)
        ast_plan.annotations = self._cb_map(ast_plan.annotations)
        return self.callback.on_ast_node(AstType.PLAN, ast_plan)

    def visit_rule(self, ast_rule):
        if self.callback.pre_ast_node(AstType.RULE, ast_rule): return ast_rule
        ast_rule.consequence = self._cb_sing(ast_rule.consequence)
        ast_rule.head = self._cb_sing(ast_rule.head)
        return self.callback.on_ast_node(AstType.RULE, ast_rule)

    def visit_literal(self, ast_literal):
        if self.callback.pre_ast_node(AstType.LITERAL, ast_literal): return ast_literal
        ast_literal.annotations = self._cb_map(ast_literal.annotations)
        ast_literal.terms = self._cb_map(ast_literal.terms)
        return self.callback.on_ast_node(AstType.LITERAL, ast_literal)
        
class DefaultCallback(object):
    def __init__(self):
        self.visitor_parent = None
        
    def pre_ast_node(self, type, ast_obj): pass
    def on_ast_node (self, type, ast_obj): pass

class TypedCallback(DefaultCallback):
    def on_ast_node (self, type, ast_obj):
        return {
            AstType.LITERAL      : self.on_literal,
            AstType.LIST         : self.on_list,
            AstType.RULE         : self.on_rule,
            AstType.GOAL         : self.on_goal,
            AstType.FORMULA      : self.on_formula,
            AstType.CONST        : self.on_const,
            AstType.VARIABLE     : self.on_variable,
            AstType.UNARY_OP     : self.on_unary_op,
            AstType.BINARY_OP    : self.on_binary_op,
            AstType.PLAN         : self.on_plan,
            AstType.BODY         : self.on_body,
            AstType.WHILE        : self.on_while,
            AstType.FOR          : self.on_for,
            AstType.IF_THEN_ELSE : self.on_if_then_else,
            AstType.AGENT        : self.on_agent
        }[type](ast_obj)

    def on_literal     (self, ast_literal     ): pass
    def on_list        (self, ast_list        ): pass
    def on_rule        (self, ast_rule        ): pass
    def on_goal        (self, ast_goal        ): pass
    def on_formula     (self, ast_formula     ): pass
    def on_const       (self, ast_const       ): pass
    def on_variable    (self, ast_variable    ): pass
    def on_unary_op    (self, ast_unary_op    ): pass
    def on_binary_op   (self, ast_binary_op   ): pass
    def on_plan        (self, ast_plan        ): pass
    def on_body        (self, ast_body        ): pass
    def on_while       (self, ast_while       ): pass
    def on_for         (self, ast_for         ): pass
    def on_if_then_else(self, ast_if_then_else): pass
    def on_agent       (self, ast_agent       ): pass

class DumpingCallback(DefaultCallback):
    def __init__(self):
        self.nesting = -1
    
    def pre_ast_node(self, typ, ast_obj):
        self.nesting += 1
        s = str(ast_obj).replace('\n', ' ') + ' '
        s += self.add_info(typ, ast_obj)
        maxlen = 100 - self.nesting
        s = re.sub('  +', ' ', s, maxlen//2)
        if len(s) > maxlen: s = s[:maxlen-4] + ' ...'
        print('%s%-12s %s' % (' '*self.nesting, type(ast_obj).__name__, s))
    
    def on_ast_node (self, typ, ast_obj):
        self.nesting -= 1
    
    def add_info(self, typ, ast_obj):
        if typ == AstType.VARIABLE:
            if hasattr(ast_obj, 'bound_status'):
                return '[bound=%s]' % _IC.get_str(ast_obj.bound_status)
        return ''

@enum.unique
class InferenceConst(enum.Enum):
    UNPROVEN       = 1
    PROVEN_UNBOUND = 2
    PROVEN_BOUND   = 3
    PROVEN_VALUE   = 4
    
    @classmethod
    def get_str(cls, val):
        return {
            cls.UNPROVEN       : 'unprov',
            cls.PROVEN_UNBOUND : 'unbound',
            cls.PROVEN_BOUND   : 'bound',
            cls.PROVEN_VALUE   : 'bound_val'
        }[val]

_IC = InferenceConst

@enum.unique
class InferenceAstCmd(enum.Enum):
    KEEP_CURRENT = 1
    DELETE_NODE  = 2
    
    @staticmethod
    def REPLACE_NODE(n):
        return n
    
    @staticmethod
    def EXPAND_LIST(l):
        if len(l) == 0:
            return _IAC.DELETE_NODE
        elif len(l) == 1:
            return l[0]
        else:
            return list(l)
    
_IAC = InferenceAstCmd

inference_unique_counter = itertools.count()
        
class InferenceInitCallback(TypedCallback):
    '''Initialize all values in the ast used by the optimizer. This is currently unused, but serves
       as documentation.
    '''
    
    def on_variable(self, ast_variable):
        # Information on whether the variable is bound
        ast_variable.bound_status = _IC.UNPROVEN
        # Contains the value if bound_status == PROVEN_VALUE, else undefined value. The value is
        # always a node in the AST, it may be either an AstConst or a reference to an AstVariable.
        # The latter means that the two variables hold the same value, even if it is not known
        # which. The graph of such references is a tree, the root holding the actual status.
        ast_variable.bound_value  = None

class InferenceScopedState(object):
    def __init__(self, ast_plan):
        # Holds the bound_status of all variables
        self.status = {i.name: _IC.PROVEN_UNBOUND for i in collect_variables(ast_plan)}
        # Holds the values for the PROVEN_VALUE variables, may or may not contain anything for the
        # others
        self.values = {}

    def copy(self):
        return copy.deepcopy(self)
    
    def merge(self, other):
        '''Let's call A a state implied by B iff A holds whenever B does. (For example, every
           variable that is PROVEN_BOUND in B must be either PROVEN_BOUND or UNPROVEN in A.) Two
           states A and B merge into a state C, where C is implied by both A and B. The state C is
           written into self.
        '''
        
        for i in self.status:
            if i not in other.status:
                other.status[i] = _IC.PROVEN_UNBOUND
        
        for i in other.status:
            if i not in self.status:
                self.status[i] = _IC.PROVEN_UNBOUND
            
            s1, s2 = self.status[i], other.status[i]
            if (s1, s2) ==    (_IC.PROVEN_VALUE,   _IC.PROVEN_VALUE  ):
                if nodes_equal(self.deref(self.get_var_ast(i)), other.deref(other.get_var_ast(i))):
                    self.status[i] = _IC.PROVEN_VALUE
                else:
                    self.status[i] = _IC.PROVEN_BOUND
            elif (s1, s2) in ((_IC.PROVEN_VALUE,   _IC.PROVEN_BOUND  ),
                              (_IC.PROVEN_BOUND,   _IC.PROVEN_VALUE  ),
                              (_IC.PROVEN_BOUND,   _IC.PROVEN_BOUND  )):
                self.status[i] = _IC.PROVEN_BOUND
            elif (s1, s2) ==  (_IC.PROVEN_UNBOUND, _IC.PROVEN_UNBOUND):
                self.status[i] = _IC.PROVEN_UNBOUND
            else:
                self.status[i] = _IC.UNPROVEN
        
    def deref(self, ast_node):
        '''Dereference the node as far as possible and return the result. The result cannot both be
           an AstVariable and PROVEN_VALUE, by definition.
        '''
        ast_node = copy.copy(ast_node)
        while (isinstance(ast_node, AstVariable)
                and ast_node.bound_status == _IC.PROVEN_VALUE):
            ast_node = copy.copy(ast_node.bound_value)
            if isinstance(ast_node, AstVariable):
                ast_node.bound_status = self.status[ast_node.name]
                ast_node.bound_value  = self.values.get(ast_node.name, None)
        if isinstance(ast_node, AstLiteral):
            ast_node.terms = [self.deref(i) for i in ast_node.terms]
        return ast_node
        
    def get_var_ast(self, var):
        ast_node = AstVariable()
        ast_node.name = var
        ast_node.bound_status = self.status[var]
        ast_node.bound_value = self.values.get(var, None)
        return ast_node
    
def nodes_equal(ast_node1, ast_node2):
    '''Checks whether the two nodes are equal. They must be dereferenced beforehand.'''
    assert isinstance(ast_node1, (AstConst, AstLiteral, AstVariable))
    assert isinstance(ast_node2, (AstConst, AstLiteral, AstVariable))
    
    if type(ast_node1) != type(ast_node2):
        return False
    elif isinstance(ast_node1, AstConst):
        return ast_node1.value == ast_node2.value
    elif isinstance(ast_node1, AstVariable):
        return ast_node1.name == ast_node2.name
    elif isinstance(ast_node1, AstLiteral):
        return (ast_node1.functor == ast_node2.functor
            and all(nodes_equal(i, j)
                for i, j in zip(ast_node1.terms, ast_node2.terms)))
    else:
        assert False
        
class InferenceCallback(DefaultCallback):
    @classmethod
    def apply(cls, ast_node, log):
        return ast_node.accept(CallbackVisitor(cls(log)))
        
    def __init__(self, log):
        self.agent = None
        self.log = log
        
    def pre_ast_node(self, typ, ast_obj):
        if typ == AstType.AGENT:
            assert self.agent is None
            self.agent = ast_obj
        elif typ == AstType.PLAN:
            self.infer_plan(ast_obj)
            return True
        else:
            return True
    
    def infer_plan(self, ast_plan):
        self.state = s = InferenceScopedState(ast_plan)
        
        if ast_plan.body is None: return
        
        for ast_var in collect_variables(ast_plan.body):
            s.status[ast_var.name] = _IC.PROVEN_UNBOUND
        
        for ast_var in collect_variables(ast_plan.head):
            if ast_var.name == '_':
                s.status[ast_var.name] = _IC.PROVEN_UNBOUND
            else:
                s.status[ast_var.name] = _IC.UNPROVEN
        
        TermGroundingCb.apply(ast_plan.body, s, self.log)
        UselessTermEliminatorCb.apply(ast_plan, self.log)

class TermGroundingCb(DefaultCallback):
    # TODO: lists?
    
    @classmethod
    def apply(cls, ast_node, state, log):
        return ast_node.accept(CallbackVisitor(cls(state, log)))

    def __init__(self, state, log):
        self.state = state
        self.log = log
        
    def pre_ast_node(self, typ, ast_node):
        if typ == AstType.IF_THEN_ELSE:
            return self.pre_ast_if_then_else(ast_node)
        return False
    
    def on_ast_node(self, typ, ast_node):
        if typ == AstType.VARIABLE:
            ast_node.bound_status = self.state.status[ast_node.name]
            ast_node.bound_value  = self.state.values.get(ast_node.name, None)
            ast_node = self.state.deref(ast_node)
            return ast_node
        elif typ == AstType.CONST:
            return _IAC.KEEP_CURRENT
        elif typ == AstType.LITERAL:
            return _IAC.KEEP_CURRENT
        elif typ == AstType.UNARY_OP:
            return self.on_unary_op(ast_node)
        elif typ == AstType.BINARY_OP:
            return self.on_binary_op(ast_node)
        elif typ == AstType.FORMULA:
            return self.on_formula(ast_node)
        elif typ == AstType.BODY:
            return _IAC.KEEP_CURRENT
        elif typ == AstType.IF_THEN_ELSE:
            # The pre_ast_if_the_else already handles runtime evaluated ifs
            assert isinstance(ast_node.condition, AstDummy)
            return _IAC.EXPAND_LIST(ast_node.if_body.formulas)
        else:
            assert False
    
    def pre_ast_if_then_else(self, ast_node):
        condition =  self.visitor_parent.resolve_single(ast_node.condition)
        if isinstance(condition, AstConst):
            if   condition.value is True:
                ast_node.condition = AstDummy()
                ast_node.else_body = None
                return False
            elif condition.value is False:
                ast_node.condition = AstDummy()
                ast_node.if_body = ast_node.else_body
                ast_node.else_body = None
                return False
            else:
                self.log.warning('non-boolean term %s in boolean context (inferred)',
                    condition.value, loc=ast_node.loc)
        
        # Traverse both branches separately, then merge the scopes.
        tmp_state = self.state.copy()
        ast_node.if_body   = self.visitor_parent.resolve_single(ast_node.if_body  )
        self.state, tmp_state = tmp_state, self.state
        ast_node.else_body = self.visitor_parent.resolve_single(ast_node.else_body)
        self.state.merge(tmp_state)
        
        return True
    
    def on_unary_op(self, ast_node):
        if ast_node.operator.value.numeric_op:
            opr = ast_node.operand
            
            if isinstance(opr, AstVariable):
                if opr.bound_status == _IC.PROVEN_UNBOUND:
                    self.log.warning('term in unary %s is not ground (inferred)',
                        ast_node.operator.value.lexeme, loc=ast_node.loc)
                        
                if opr.bound_status != _IC.PROVEN_BOUND:
                    opr.bound_status = _IC.PROVEN_BOUND
                self.update_var(opr)
                return _IAC.KEEP_CURRENT
            elif isinstance(opr, AstLiteral):
                self.log.warning('term in unary %s is literal (inferred)',
                    ast_node.operator.value.lexeme, loc=ast_node.loc)
                return _IAC.KEEP_CURRENT
            elif isinstance(opr, AstConst):
                # constant propagation
                ast_node_new = AstConst()
                ast_node_new.value = ast_node.operator.value.func(opr.value)
                return ast_node_new
            elif isinstance(opr, (AstBinaryOp, AstUnaryOp)):
                return _IAC.KEEP_CURRENT
            else:
                assert False
        else:
            for i in collect_variables(ast_node):
                if i.bound_status == _IC.PROVEN_UNBOUND:
                    i.bound_status = _IC.UNPROVEN
                    self.update_var(i)
            return _IAC.KEEP_CURRENT
    
    def on_binary_op(self, ast_node):
        if ast_node.operator == BinaryOp.op_unify:
            return self.symbolic_unify(ast_node)
        elif ast_node.operator.value.numeric_op or ast_node.operator.value.comp_op:
            return self.symbolic_binary_op(ast_node)
        else:
            # TODO: Correctly handle the other operators
            for i in collect_variables(ast_node):
                if i.bound_status == _IC.PROVEN_UNBOUND:
                    i.bound_status = _IC.UNPROVEN
                    self.update_var(i)
            return _IAC.KEEP_CURRENT
            
    def on_formula(self, ast_node):
        if ast_node.formula_type == FormulaType.term:
            t = ast_node.term
            if isinstance(t, AstConst):
                if   t.value is True:
                    return _IAC.DELETE_NODE
                elif t.value is False:
                    self.log.warning('term always false (inferred)', loc=ast_node.loc)
                else:
                    self.log.warning('non-boolean term %s in boolean context (inferred)',
                        t.value, loc=ast_node.loc)
            elif isinstance(t, (AstLiteral, AstVariable)):
                self.symbolic_belief_query(t)
            elif isinstance(t, (AstBinaryOp, AstUnaryOp)):
                if t.operator.value.numeric_op:
                    # Maybe this should be handled by the parser instead
                    self.log.warning('numeric operator %s in boolean context (inferred)',
                        t.operator.value.lexeme, loc=ast_node.loc)
            else:
                assert False
        elif ast_node.formula_type in (FormulaType.add, FormulaType.replace, FormulaType.achieve,
                FormulaType.achieve_later):
            if isinstance(ast_node.term, (AstLiteral, AstVariable)):
                self.require_term_ground(ast_node, ast_node.term)
            else:
                assert False
        elif ast_node.formula_type in (FormulaType.remove, FormulaType.test, FormulaType.replace):
            self.symbolic_belief_query(ast_node.term)
        else:
            assert False
                
    def symbolic_belief_query(self, ast_node):
        if   isinstance(ast_node, AstVariable):
            if ast_node.bound_status == _IC.PROVEN_UNBOUND:
                self.log.warning('term not ground (inferred)', loc=ast_node.loc)
            ast_node.bound_status = _IC.PROVEN_BOUND
        elif isinstance(ast_node, AstLiteral):
            for ast_node in collect_literal_variables(ast_node):
                if ast_node.bound_status == _IC.PROVEN_UNBOUND:
                    ast_node.bound_status = _IC.UNPROVEN
        else:
            assert False
    
    def update_var(self, ast_var):
        if ast_var.name == '_': return
        self.state.status[ast_var.name] = ast_var.bound_status
        self.state.values[ast_var.name] = ast_var.bound_value
        
    def require_term_ground(self, ast_root, ast_node):
        if   isinstance(ast_node, AstVariable):
            if ast_node.bound_status == _IC.PROVEN_UNBOUND:
                self.log.warning('term not ground (inferred)', loc=ast_root.loc)
            ast_node.bound_status = _IC.PROVEN_BOUND
            self.update_var(ast_node)
        elif isinstance(ast_node, AstLiteral):
            for i in ast_node.terms:
                self.require_term_ground(ast_root, i)
        elif isinstance(ast_node, (AstConst, AstBinaryOp, AstUnaryOp)):
            pass
        else:
            assert False
    
    def symbolic_unify(self, ast_node):
        '''Symbolically execute the unify ast_node. This ensures that ast_node.always_true is set,
           and updates the states of the variables. If two predicates of known type are unified,
           this is expanded to multiple unifications over the arguments. If a unify is useless
           (e.g. two equal constants are unified) it is removed.
        '''
        ast_node.left  = l = self.state.deref(ast_node.left)
        ast_node.right = r = self.state.deref(ast_node.right)
        ast_node.always_true = False
        result = self._symbolic_unify_helper(ast_node, l, r)
        if isinstance(l, AstVariable): self.update_var(l)
        if isinstance(r, AstVariable): self.update_var(r)
        
        if result is True:
            return _IAC.DELETE_NODE
        elif result is False:
            return _IAC.REPLACE_NODE(ast_node)
        elif isinstance(result, list):
            return _IAC.EXPAND_LIST(result)
        else:
            assert False
        
    def _symbolic_unify_helper(self, ast_node, l, r, level = 0):
        assert level < 2
        
        def var_unify(l, r, level = 0):
            '''Update the status of the variables l and r. Return True if the unify can be
               optimized away (only the case when two identical constants are unified).
            '''
            assert level < 2
            
            # TODO: variables with the same name
            
            lbsrbs = l.bound_status, r.bound_status
            if   lbsrbs in ((_IC.PROVEN_BOUND,   _IC.PROVEN_BOUND  ),
                            (_IC.PROVEN_BOUND,   _IC.PROVEN_UNBOUND),
                            (_IC.PROVEN_BOUND,   _IC.UNPROVEN      ),
                            (_IC.UNPROVEN,       _IC.UNPROVEN      )):
                r.bound_status = _IC.PROVEN_VALUE
                r.bound_value = l
                return False
            elif lbsrbs in ((_IC.PROVEN_UNBOUND, _IC.PROVEN_UNBOUND),
                            (_IC.PROVEN_UNBOUND, _IC.UNPROVEN      )):
                l.bound_status = _IC.PROVEN_VALUE
                l.bound_value = r
                return False
            else:
                # Commutative
                return var_unify(r, l, level+1)
                
            assert False
        
        if   isinstance(l, AstVariable) and isinstance(r, AstVariable):
            return var_unify(l, r) 
        elif isinstance(l, AstVariable) and isinstance(r, (AstLiteral, AstConst)):
            r, add_unifies = self.constify_literal(r)
            ast_node.always_true = l.bound_status == _IC.PROVEN_UNBOUND
            l.bound_status = _IC.PROVEN_VALUE
            l.bound_value = r
            return add_unifies + [ast_node]
        elif isinstance(l, AstVariable) and isinstance(r, (AstUnaryOp, AstBinaryOp)):
            assert l.bound_status in (_IC.PROVEN_BOUND, _IC.PROVEN_UNBOUND, _IC.UNPROVEN)
            ast_node.always_true = l.bound_status == _IC.PROVEN_UNBOUND
            l.bound_status = _IC.PROVEN_BOUND
            return False
        elif isinstance(l, AstLiteral) and isinstance(r, AstLiteral):
            if l.functor != r.functor:
                self.log.warning('trying to unify two different literals (inferred): %s and %s',
                    l.functor, r.functor, loc=ast_node.loc)
                return False
            elif len(l.terms) != len(r.terms):
                self.log.warning('trying to unify literals with a different number of arguments '
                    '(inferred): %s and %s', len(l.terms), len(r.terms), loc=ast_node.loc)
                return False
            else:
                always_true, ops = True, []
                for i, j in zip(l.terms, r.terms):
                    ast_node_sub = AstBinaryOp()
                    ast_node_sub.operator = BinaryOp.op_unify
                    ast_node_sub.left = i
                    ast_node_sub.right = j
                    ast_node_sub.always_true = False
                    result = self._symbolic_unify_helper(ast_node_sub, i, j)
                    if result is True:
                        pass
                    elif result is False:
                        ops.append(ast_node_sub)
                    else:
                        assert isinstance(result, list)
                        ops += result
                    always_true = always_true and ast_node.always_true
                    
                ast_node.always_true = always_true
                return ops
        elif isinstance(l, AstLiteral) and isinstance(r, AstConst):
            self.log.warning('trying to unify a literal with a constant (inferred)',
                loc=ast_node.loc)
            return False
        elif isinstance(l, AstLiteral) and isinstance(r, (AstUnaryOp, AstBinaryOp)):
            self.log.warning('trying to unify a literal with a scalar (inferred)',
                loc=ast_node.loc)
            return False
        elif isinstance(l, AstConst) and isinstance(r, AstConst):
            if l.value != r.value:
                self.log.warning('trying to unify two constants with different values (inferred): '
                    '%s and %s', l.value, r.value, loc=ast_node.loc)
                return False
            else:
                ast_node.always_true = True
                return True
        elif isinstance(l, AstConst) and isinstance(r, (AstUnaryOp, AstBinaryOp)):
            return False
        elif isinstance(l, (AstUnaryOp, AstBinaryOp)) and isinstance(r, (AstUnaryOp, AstBinaryOp)):
            return False
        else:
            # Commutative
            return self._symbolic_unify_helper(ast_node, r, l, level+1)
            
    def constify_literal(self, ast_node):
        '''Return an AstNode, which is either an AstVariable, AstConst or AstLiteral and only has
           children of those types. Also return a list of AstNode, which contain the unification
           operations needed.
        '''
        if   isinstance(ast_node, (AstVariable, AstConst)):
            return ast_node, []
        elif isinstance(ast_node, AstLiteral):
            result = []
            for i, term in enumerate(ast_node.terms):
                a, b = self.constify_literal(term)
                ast_node.terms[i] = a
                result += b
            return ast_node, result
        else:
            ast_var = AstVariable()
            ast_var.name = '_Inf_%d' % next(inference_unique_counter)
            ast_var.bound_status = _IC.PROVEN_BOUND
            ast_var.bound_value  = None
            self.update_var(ast_var)
            ast_uni = AstBinaryOp()
            ast_uni.operator = BinaryOp.op_unify
            ast_uni.left = ast_var
            ast_uni.right = ast_node
            ast_uni.always_true = True
            return ast_var, [ast_uni]
    
    def symbolic_binary_op(self, ast_node):
        l, r = self.state.deref(ast_node.left), self.state.deref(ast_node.right)
        ast_node.left, ast_node.right = l, r
    
        for i, pos in zip((l, r), ('left', 'right')):
            if isinstance(i, AstVariable):
                if i.bound_status == _IC.PROVEN_UNBOUND:
                    self.log.warning('%s term in binary %s is not ground (inferred)',
                        pos, ast_node.operator.value.lexeme, loc=ast_node.loc)
                        
                if i.bound_status != _IC.PROVEN_BOUND:
                    i.bound_status = _IC.PROVEN_BOUND
                self.update_var(i)
            elif isinstance(i, AstLiteral):
                self.log.warning('%s term in binary %s is literal (inferred)',
                    pos, ast_node.operator.value.lexeme, loc=ast_node.loc)
        
        expected_types = (AstVariable, AstLiteral, AstConst, AstBinaryOp, AstUnaryOp)
        
        if isinstance(l, AstConst) and isinstance(r, AstConst):
            # Constant propagation
            ast_node_new = AstConst()
            ast_node_new.value = ast_node.operator.value.func(l.value, r.value)
            return ast_node_new
        elif isinstance(l, expected_types) and isinstance(r, expected_types):
            return _IAC.KEEP_CURRENT
        else:
            assert False
        
class UselessTermEliminatorCb(DefaultCallback):
    @classmethod
    def apply(cls, ast_plan, log):
        assert isinstance(ast_plan, AstPlan)
        self = cls(log)
        self.used_vars.update(i.name for i in collect_variables(ast_plan.head))
        return ast_plan.body.accept(CallbackReverseVisitor(self))

    def __init__(self, log):
        self.log = log
        self.used_vars = set()
        
    def update_used(self, ast_node):
        self.used_vars.update(i.name for i in collect_variables(ast_node) if i.name != '_')
        
    def pre_ast_node(self, typ, ast_node):
        #DBGprint(typ, ast_node, self.used_vars)
        if typ == AstType.FORMULA:
            if (ast_node.formula_type == FormulaType.term and isinstance(ast_node.term, AstBinaryOp)
                    and ast_node.term.operator == BinaryOp.op_unify and ast_node.term.always_true):
                t = ast_node.term
                #DBGprint(t, self.used_vars, list(self.collect_unify_written_vars(t.left, t.right)))
                keep = any(i.name in self.used_vars
                    for i in self.collect_unify_written_vars(t.left, t.right)
                )
                
                if keep:
                    # TODO: This may not be needed, check that
                    self.update_used(ast_node.term)
                    return True
                else:
                    # This is working around the fact that the CallbackVisitor only supports tree
                    # operations when executing on_* actions.
                    ast_node.term = AstDummy()
                    return False
            else:
                self.update_used(ast_node.term)
                return True
        elif typ in (AstType.BODY, AstType.IF_THEN_ELSE, AstType.WHILE, AstType.FOR):
            return False
        else:
            self.update_used(ast_node)
            return True
        
    def on_ast_node(self, typ, ast_node):
        if typ == AstType.IF_THEN_ELSE:
            return self.on_ast_node_if_then_else(ast_node)
        elif typ == AstType.FORMULA and isinstance(ast_node.term, AstDummy):
            return _IAC.DELETE_NODE
        else:
            return _IAC.KEEP_CURRENT
            
    def on_ast_node_if_then_else(self, ast_node):
        # Simplify the if, if possible
        if not ast_node.if_body.formulas:
            ast_node.if_body = None
        if not ast_node.else_body.formulas:
            ast_node.else_body = None
        if not ast_node.if_body and not ast_node.else_body:
            # TODO: What about side_effects?
            return _IAC.DELETE_NODE
        
        return _IAC.KEEP_CURRENT
            
    def collect_unify_written_vars(self, ast_l, ast_r):
        # The validity of the unification is already checked by the earlier stages, no additional
        # warnings are needed.
        if isinstance(ast_l, AstVariable):
            yield ast_l
            if isinstance(ast_r, AstVariable):
                yield ast_r
            else:
                pass
        elif isinstance(ast_l, AstLiteral):
            if   isinstance(ast_r, AstVariable):
                yield ast_r
            elif isinstance(ast_r, AstLiteral):
                for l, r in zip(ast_l.terms, ast_r.terms):
                    for i in self.collect_unify_written_vars(l, r):
                        yield i
            else:
                pass
        else:
            if isinstance(ast_r, AstVariable):
                yield ast_r
            else:
                pass
        

def collect_variables(ast_node):
    vars = []
    class Collector(DefaultCallback):
        def pre_ast_node(self, typ, ast_node):
            if typ == AstType.VARIABLE:
                vars.append(ast_node)
    ast_node.accept(CallbackVisitor(Collector()))
    return vars
    

def collect_literal_variables(ast_node):
    if isinstance(ast_node, AstVariable):
        yield ast_node
    elif isinstance(ast_node, AstLiteral):
        for i in ast_node.terms:
            for j in collect_literal_variables(i):
                yield j
    else:
        return

def dump_tokens(tokens):
    assert(all(isinstance(i, pyson.lexer.TokenInfo) for i in tokens))

    maxwid = max(len(i.name) for i in pyson.lexer.TokenType)
    for i in tokens:
        print('%*s  %s' % (maxwid, pyson.lexer.TokenType(i.token).name, i.lexeme))

def dump(*a):
    v = CallbackVisitor(DumpingCallback())
    for i in a: i.accept(v)

def main(source):
    log = pyson.Log(pyson.get_logger(__name__), 3)

    tokens = list(pyson.lexer.tokenize(source, log, 1))
    #print_tokens(tokens)
    agent = pyson.parser.parse(tokens, log, frozenset(source.name))
    dump(agent)
    print('--------')
    InferenceCallback.apply(agent, log)
    #agent.accept(CallbackVisitor(DumpingCallback()))
    print('--------')

    #agent.accept(MyVisitor(log))
    # TODO

    log.throw()

    return agent


if __name__ == "__main__":
    try:
        args = sys.argv[1:]
        if args:
            for arg in args:
                with open(arg) as source:
                    print(main(source))
        else:
            print(main(sys.stdin))
    except pyson.AggregatedError as error:
        print(str(error), file=sys.stderr)
        sys.exit(0)
