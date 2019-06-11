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

import agentspeak.lexer
import agentspeak.parser
import agentspeak.runtime

from agentspeak import FormulaType, BinaryOp, UnaryOp
from agentspeak.parser import (AstNode, AstLiteral, AstVariable, AstConst,
                               AstBinaryOp, AstUnaryOp,
                               AstFormula, AstPlan, AstBody, AstList)

def _is_str_type(s):
    try:
        return isinstance(s, unicode)
    except NameError:
        return isinstance(s, str)

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

class CallbackVisitor(object):
    def __init__(self, callback):
        self.callback = callback
        callback.visitor_parent = self

    def resolve_single(self, ast_node):
        return self._cb_sing(ast_node)
    def resolve_list(self, ast_node):
        return self._cb_map(ast_node)
    def resolve_maybe(self, ast_node):
        r = self._cb_map([ast_node])
        assert len(r) < 2
        if r:
            return r[0]
        else:
            return None
    def forward(self, ast_node):
        c = ast_node.accept(self)
        if c is None:
            return ast_node
        else:
            return c
        
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
        code = self.callback.pre_ast_node(AstType.BINARY_OP, ast_binary_op)
        if code is not None: return code
        ast_binary_op.left  = self._cb_sing(ast_binary_op.left)
        ast_binary_op.right = self._cb_sing(ast_binary_op.right)
        return self.callback.on_ast_node(AstType.BINARY_OP, ast_binary_op)

    def visit_unary_op(self, ast_unary_op):
        code = self.callback.pre_ast_node(AstType.UNARY_OP, ast_unary_op)
        if code is not None: return code
        ast_unary_op.operand = self._cb_sing(ast_unary_op.operand)
        return self.callback.on_ast_node(AstType.UNARY_OP, ast_unary_op)

    def visit_agent(self, ast_agent):
        code = self.callback.pre_ast_node(AstType.AGENT, ast_agent)
        if code is not None: return code
        ast_agent.rules = self._cb_map(ast_agent.rules)
        ast_agent.beliefs = self._cb_map(ast_agent.beliefs)
        ast_agent.goals = self._cb_map(ast_agent.goals)
        ast_agent.plans = self._cb_map(ast_agent.plans)
        return self.callback.on_ast_node(AstType.AGENT, ast_agent)

    def visit_if_then_else(self, ast_if_then_else):
        code = self.callback.pre_ast_node(AstType.IF_THEN_ELSE, ast_if_then_else)
        if code is not None: return code
        ast_if_then_else.condition = self._cb_sing(ast_if_then_else.condition)
        ast_if_then_else.if_body = self._cb_sing(ast_if_then_else.if_body)
        if ast_if_then_else.else_body:
            ast_if_then_else.else_body = self._cb_sing(ast_if_then_else.else_body)
        return self.callback.on_ast_node(AstType.IF_THEN_ELSE, ast_if_then_else)

    def visit_for(self, ast_for):
        code = self.callback.pre_ast_node(AstType.FOR, ast_for)
        if code is not None: return code
        ast_for.generator = self._cb_sing(ast_for.generator)
        ast_for.body = self._cb_sing(ast_for.body)
        return self.callback.on_ast_node(AstType.FOR, ast_for)

    def visit_while(self, ast_while):
        code = self.callback.pre_ast_node(AstType.WHILE, ast_while)
        if code is not None: return code
        ast_while.condition = self._cb_sing(ast_while.condition)
        ast_while.body = self._cb_sing(ast_while.body)
        return self.callback.on_ast_node(AstType.WHILE, ast_while)

    def visit_body(self, ast_body):
        code = self.callback.pre_ast_node(AstType.BODY, ast_body)
        if code is not None: return code
        ast_body.formulas = self._cb_map(ast_body.formulas)
        return self.callback.on_ast_node(AstType.BODY, ast_body)

    def visit_plan(self, ast_plan):
        code = self.callback.pre_ast_node(AstType.PLAN, ast_plan)
        if code is not None: return code
        ast_plan.annotations = self._cb_map(ast_plan.annotations)
        ast_plan.event.head = self._cb_sing(ast_plan.event.head)
        if ast_plan.context: ast_plan.context = self._cb_sing(ast_plan.context)
        if ast_plan.body: ast_plan.body = self._cb_sing(ast_plan.body)
        return self.callback.on_ast_node(AstType.PLAN, ast_plan)

    def visit_variable(self, ast_variable):
        code = self.callback.pre_ast_node(AstType.VARIABLE, ast_variable)
        if code is not None: return code
        return self.callback.on_ast_node(AstType.VARIABLE, ast_variable)

    def visit_const(self, ast_const):
        code = self.callback.pre_ast_node(AstType.CONST, ast_const)
        if code is not None: return code
        return self.callback.on_ast_node(AstType.CONST, ast_const)

    def visit_formula(self, ast_formula):
        code = self.callback.pre_ast_node(AstType.FORMULA, ast_formula)
        if code is not None: return code
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
        code = self.callback.pre_ast_node(AstType.GOAL, ast_goal)
        if code is not None: return code
        ast_goal.atom = self._cb_sing(ast_goal.atom)
        return self.callback.on_ast_node(AstType.GOAL, ast_goal)

    def visit_rule(self, ast_rule):
        code = self.callback.pre_ast_node(AstType.RULE, ast_rule)
        if code is not None: return code
        ast_rule.head = self._cb_sing(ast_rule.head)
        ast_rule.consequence = self._cb_sing(ast_rule.consequence)
        return self.callback.on_ast_node(AstType.RULE, ast_rule)

    def visit_list(self, ast_list):
        code = self.callback.pre_ast_node(AstType.LIST, ast_list)
        if code is not None: return code
        ast_list.terms = self._cb_map(ast_list.terms)
        return self.callback.on_ast_node(AstType.LIST, ast_list)

    def visit_literal(self, ast_literal):
        code = self.callback.pre_ast_node(AstType.LITERAL, ast_literal)
        if code is not None: return code
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
        code = self.callback.pre_ast_node(AstType.BINARY_OP, ast_binary_op)
        if code is not None: return code
        ast_binary_op.right = self._cb_sing(ast_binary_op.right)
        ast_binary_op.left  = self._cb_sing(ast_binary_op.left)
        return self.callback.on_ast_node(AstType.BINARY_OP, ast_binary_op)

    def visit_agent(self, ast_agent):
        code = self.callback.pre_ast_node(AstType.AGENT, ast_agent)
        if code is not None: return code
        ast_agent.plans = self._cb_map(ast_agent.plans)
        ast_agent.goals = self._cb_map(ast_agent.goals)
        ast_agent.beliefs = self._cb_map(ast_agent.beliefs)
        ast_agent.rules = self._cb_map(ast_agent.rules)
        return self.callback.on_ast_node(AstType.AGENT, ast_agent)

    def visit_if_then_else(self, ast_if_then_else):
        code = self.callback.pre_ast_node(AstType.IF_THEN_ELSE, ast_if_then_else)
        if code is not None: return code
        if ast_if_then_else.else_body:
            ast_if_then_else.else_body = self._cb_sing(ast_if_then_else.else_body)
        ast_if_then_else.if_body = self._cb_sing(ast_if_then_else.if_body)
        ast_if_then_else.condition = self._cb_sing(ast_if_then_else.condition)
        return self.callback.on_ast_node(AstType.IF_THEN_ELSE, ast_if_then_else)

    def visit_for(self, ast_for):
        code = self.callback.pre_ast_node(AstType.FOR, ast_for)
        if code is not None: return code
        ast_for.body = self._cb_sing(ast_for.body)
        ast_for.generator = self._cb_sing(ast_for.generator)
        return self.callback.on_ast_node(AstType.FOR, ast_for)

    def visit_while(self, ast_while):
        code = self.callback.pre_ast_node(AstType.WHILE, ast_while)
        if code is not None: return code
        ast_while.body = self._cb_sing(ast_while.body)
        ast_while.condition = self._cb_sing(ast_while.condition)
        return self.callback.on_ast_node(AstType.WHILE, ast_while)
    
    def visit_plan(self, ast_plan):
        code = self.callback.pre_ast_node(AstType.PLAN, ast_plan)
        if code is not None: return code
        if ast_plan.body: ast_plan.body = self._cb_sing(ast_plan.body)
        if ast_plan.context: ast_plan.context = self._cb_sing(ast_plan.context)
        ast_plan.event.head = self._cb_sing(ast_plan.event.head)
        ast_plan.annotations = self._cb_map(ast_plan.annotations)
        return self.callback.on_ast_node(AstType.PLAN, ast_plan)

    def visit_rule(self, ast_rule):
        code = self.callback.pre_ast_node(AstType.RULE, ast_rule)
        if code is not None: return code
        ast_rule.consequence = self._cb_sing(ast_rule.consequence)
        ast_rule.head = self._cb_sing(ast_rule.head)
        return self.callback.on_ast_node(AstType.RULE, ast_rule)

    def visit_literal(self, ast_literal):
        code = self.callback.pre_ast_node(AstType.LITERAL, ast_literal)
        if code is not None: return code
        ast_literal.annotations = self._cb_map(ast_literal.annotations)
        ast_literal.terms = self._cb_map(ast_literal.terms)
        return self.callback.on_ast_node(AstType.LITERAL, ast_literal)
        
class DefaultCallback(object):
    @classmethod
    def apply(cls, ast_node, *a):
        return CallbackVisitor(cls(*a)).resolve_single(ast_node)

    def __init__(self):
        self.visitor_parent = None
        
    def pre_ast_node(self, type, ast_obj): return
    def on_ast_node (self, type, ast_obj): return _IAC.KEEP_CURRENT

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
        s = []
        if hasattr(ast_obj, 'bound_status'):
            s.append('bound=%s' % _IC.get_str(ast_obj.bound_status))
            if ast_obj.bound_status == _IC.PROVEN_VALUE:
                s.append('val=%s' % ast_obj.bound_value)
        if hasattr(ast_obj, 'contained_vars'):
            s.append('subvars=%s' % ast_obj.contained_vars)
        if hasattr(ast_obj, 'always_true'):
            s.append('istrue=%s' % ast_obj.always_true)
        if hasattr(ast_obj, 'vars_read'):
            s.append('read=%s' % ast_obj.vars_read)
        if hasattr(ast_obj, 'vars_written'):
            s.append('write=%s' % ast_obj.vars_written)
        
        if s:
            return '[%s]' % ', '.join(s)
        else:
            return ''

@enum.unique
class InferenceConst(enum.Enum):
    # What is known about a variable
    UNPROVEN        = 1   # Nothing
    PROVEN_UNBOUND  = 2   # The variable is not bound
    PROVEN_BOUND    = 3   # The variable is bound
    PROVEN_VALUE    = 4   # The variable is bound, with known value
    
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
        # Holds the potential variables a variable may contain (e.g. X = p(Q, 1); X now holds Q)
        self.subvars = {}

    def copy(self):
        return copy.deepcopy(self)
    
    def merge(self, other):
        '''Let's call A a state implied by B iff A holds whenever B does. (For example, every
           variable that is PROVEN_BOUND in B must be either PROVEN_BOUND or UNPROVEN in A.) Two
           states X and Y merge into a state Z, where Z is implied by both X and Y. The state Z is
           written into self.

           The implies relation is a partial ordering on the set of states. Since it works
           component-wise, the longest ordered sequence has a length of at most k*n, where n is the
           number of components and k the number of states of a single component.
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

        for i in self.status:
            if i in other.subvars:
                self.subvars[i] = self.subvars.get(i, set()) | other.subvars.get(i, set())
        
    def deref(self, ast_node):
        '''Dereference the node as far as possible and return the result. The result cannot both be
           an AstVariable and PROVEN_VALUE, by definition.
        '''
        ast_node = copy.copy(ast_node)
        while (isinstance(ast_node, AstVariable)
                and ast_node.bound_status == _IC.PROVEN_VALUE):
            ast_node = copy.copy(ast_node.bound_value)
            if isinstance(ast_node, AstVariable):
                ast_node.bound_status    = self.status[ast_node.name]
                ast_node.bound_value     = self.values.get(ast_node.name, None)
                ast_node.contained_vars  = self.subvars.get(ast_node.name, set())
        if isinstance(ast_node, AstLiteral):
            ast_node.terms = [self.deref(i) for i in ast_node.terms]
            ast_node.annotations = [self.deref(i) for i in ast_node.annotations]
        return ast_node

    def contain_each_other(self, names):
        '''Update the state, such that the specified variables all contain each other'''
        if not isinstance(names, list): names = list(names)
        if len(names) <= 1: return
        root = names.pop()
        if root not in self.subvars:
            self.subvars[root] = set()
        self.subvars[root].update(names)
        for i in names:
            if i not in self.subvars:
                self.subvars[i] = set()
            self.subvars[i].add(root)
    
    def get_var_ast(self, var):
        ast_node = AstVariable()
        ast_node.name = var
        ast_node.bound_status    = self.status[var]
        ast_node.bound_value     = self.values.get(var, None)
        ast_node.contained_vars  = self.subvars.get(ast_node.name, set())
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
                for i, j in zip(ast_node1.terms, ast_node2.terms))
            and len(ast_node1.annotations) == len(ast_node2.annotations) == 0
        )
    else:
        assert False


class InferenceEvilnessConst(object):
    # What variables can be changed by an action
    _AFFECT_ANY       = 4   # Internal, intended for querying
    _AFFECT_PARAM_ANY = 5   # Internal, intended for querying
    _AFFECT_PARAM     = 6   # Internal, use AFFECT_PARAM to specify a specific parameter
    AFFECT_PARAM_ALL  = 7   # All variables that are parameters
    AFFECT_SCOPE      = 8   # All variables in scope
    AFFECT_UNIVERSE   = 9   # Everything
    
    @classmethod
    def AFFECT_PARAM(cls, par):
        return (cls._AFFECT_PARAM, par, par)
    
    @classmethod
    def AFFECT_PARAM_INTERVAL(cls, fr, to_and_including_the_index):
        '''The to_and_including_the_index argument specifies the end point of the interval, WHICH IS
           INCLUDED IN THE INTERVAL. (Contrary to usual python semantics.) It is much easier to
           implement this way.
        '''
        return (cls._AFFECT_PARAM, fr, to_and_including_the_index)
    
    EFFECT_CHANGE        = 10  # The values of bound variables may change
    EFFECT_DOBIND        = 12  # Unbound variables will definitely be bound
    EFFECT_BIND          = 13  # Unbound variables may be bound
    EFFECT_REQUIRE_BOUND = 13  # The variables are required to be bound
    EFFECT_UNBIND        = 14  # Bound variables may be unbound
    EFFECT_ALL           = 15  # May kill your cat

_IEC = InferenceEvilnessConst

def expand_affect(af, arity):
    if isinstance(af, tuple):
        af, af_fr, af_to = af
        assert af == _IEC._AFFECT_PARAM
        return af, (af_fr if af_fr >= 0 else af_fr + arity), (af_to if af_to >= 0 else af_to + arity)
    else:
        assert af != _IEC._AFFECT_PARAM
        return af, None, None

class Evilness(object):
    def __init__(self, affect=None, effect=None, evils=[]):
        assert (affect is None) == (effect is None)

        self.evils = copy.copy(evils)

        if affect is not None:
            self.add_evil(affect, effect)

    def add_evil(self, affect, effect):
        self.evils.append((affect, effect))

    def query(self, affect, effect, arity):
        for af, ef in self.evils:
            if self.affect_contains(af, affect, arity) and ef == effect:
                return True
        return False

    def check_arity_makes_sense(self, arity, log, name):
        for af, _ in self.evils:
            af, af_fr, af_to = expand_affect(af, arity)
            if af == _IEC._AFFECT_PARAM and arity != -1 and not (0 <= af_fr <= af_to < arity):
                raise log.error("action %s has an evilness with parameters that aren't there (indic"
                                "es %d to %d, arity %d)", name, af_fr, af_to, arity)

    def affect_contains(self, af1, af2, arity):
        af1, af1_fr, af1_to = expand_affect(af1, arity)
        af2, af2_fr, af2_to = expand_affect(af2, arity)
        
        if af1 >= af2:
            if af1 == af2 == _IEC._AFFECT_PARAM:
                # assume the checks in check_arity_makes_sense hold
                return af1_fr <= af2_fr <= af2_to <= af1_to
            else:
                return True
        return False
        
    def find(self, affect, arity):
        result = []
        for af, ef in self.evils:
            if self.affect_contains(af, affect, arity):
                result.append(ef)
        return result
    
    def find_disregard_arity(self, affect):
        return self.find(affect, 0)

    @classmethod
    def default_function_like(cls):
        return cls(evils = 
            [(_IEC.AFFECT_PARAM_INTERVAL(0, -1), _IEC.EFFECT_REQUIRE_BOUND),
             (_IEC.AFFECT_PARAM(-1),             _IEC.EFFECT_DOBIND)       ]
        )
    
    @classmethod
    def default_rule_like(cls):
        return cls(_IEC.AFFECT_PARAM_ALL, _IEC.EFFECT_BIND)
    
    @classmethod
    def default_no_scope_effects(cls):
        return cls(_IEC.AFFECT_PARAM_ALL, _IEC.EFFECT_BIND)

    @classmethod
    def default_all_bound(cls):
        return cls(_IEC.AFFECT_PARAM_ALL, _IEC.EFFECT_REQUIRE_BOUND)

def optimize_away(f=None):
    def _(f): f.optimize_away = True; return f
    return _ if f is None else _(f)
def no_scope_effects(f=None):
    def _(f): f.evilness = Evilness.default_no_scope_effects(); return f
    return _ if f is None else _(f)
def rule_like(f=None):
    def _(f): f.evilness = Evilness.default_rule_like(); return f
    return _ if f is None else _(f)
def function_like(f=None):
    def _(f): f.evilness = Evilness.default_function_like(); return f
    return _ if f is None else _(f)
def all_bound(f=None):
    def _(f): f.evilness = Evilness.default_all_bound(); return f
    return _ if f is None else _(f)

def side_effect(affect, effect, f = None):
    def _(f):
        if not hasattr(f, 'evilness'):
            f.evilness = Evilness()
        f.evilness.add_evil(affect, effect)
        return f
    return _ if f is None else _(f)

class InferenceOptions(object):
    def __init__(self, preserve_errors=False):
        # Whether the optimizer is prohibited from removing statements that may cause errors, but
        # have no additional effect. Disables most of the eliminations that remove terms without
        # side-effects.
        # THIS OPTION IS NOT SUPPORTED VERY WELL AND THE OPTIMIZER MAY CHANGE
        # THE BEHAVIOUR OF PROGRAMS WITH REGARDS TO ERRORS.
        self.preserve_errors = preserve_errors
    
            
class InferenceCallback(DefaultCallback):        
    def __init__(self, log, actions, options = InferenceOptions()):
        # Logging facilities
        self.log = log

        self.options = options
        
        # The agent. Set in init_agent.
        self.agent = None
        # Contains a mapping from names of actions to their Evilness
        self.action_table = {}
        # Contains a list of names of actions that can be safely removed
        self.actions_optimize_away_list = []

        for (name, arity), f in actions.actions.items():
            self.register_action(name, f, arity)
        for name, f in actions.variadic_actions.items():
            self.register_action(name, f, -1)
    
    def pre_ast_node(self, typ, ast_obj):
        if typ == AstType.AGENT:
            return self.init_agent(ast_obj)
        elif typ == AstType.PLAN:
            self.infer_plan(ast_obj)
            return _IAC.KEEP_CURRENT
        else:
            return _IAC.KEEP_CURRENT

    def init_agent(self, ast_agent):
        assert self.agent is None
        self.agent = ast_agent

        for ast_action in collect_actions(ast_agent):
            if ast_action.functor == '.inf_mark_nosidef':
                self.handle_inf_mark_nosidef(ast_action)
            elif self.get_action_evilness(ast_action).find_disregard_arity(_IEC.AFFECT_UNIVERSE):
                self.log.warning("action %s has unbounded side-effects, optimisations are disabled",
                    ast_action.functor, loc=ast_action.loc)
                return _IAC.KEEP_CURRENT

            return

    def handle_inf_mark_nosidef(self, ast_action):
        if len(ast_action.terms) != 1:
            raise self.log.error("wrong number of arguments for %s (need 1, got %d)",
                                 ast_action.functor, len(ast_action.terms), loc=ast_action.loc)
        elif not (isinstance(ast_action.terms[0], AstConst)
                  and _is_str_type(ast_action.terms[0].value)):
            raise self.log.error("expected string as first argument to %s",
                ast_action.functor, loc=ast_action.loc)
        else:
            self.action_table[ast_action.terms[0].value, -1] = Evilness()
        
        
    def infer_plan(self, ast_plan):
        self.state = s = InferenceScopedState(ast_plan)
        
        if ast_plan.body is None: return
        
        for ast_var in collect_variables(ast_plan.body):
            s.status[ast_var.name] = _IC.PROVEN_UNBOUND
            
        for ast_action in collect_actions(ast_plan):
            # Do not optimize
            if self.action_evil_query(ast_action, _IEC._AFFECT_ANY, _IEC.EFFECT_ALL):
                # This could probably be handled with more finesse
                self.log.warning("action %s has unbounded side-effects, plan %s will not be optimized",
                    ast_action.functor, ast_plan.signature(), loc=ast_action.loc)
                return

            # Warnings
            if (self.action_evil_query(ast_action, _IEC._AFFECT_PARAM_ANY, _IEC.EFFECT_CHANGE)
                and not self.action_evil_query(ast_action, _IEC.AFFECT_SCOPE, _IEC.EFFECT_CHANGE)):
                # Bound variables are resolved to their values, they are never in the parameters
                self.log.warning("the combination of AFFECT_PARAM, EFFECT_CHANGE has no effect",
                    loc=ast_action.loc)
            if (self.action_evil_query(ast_action, _IEC._AFFECT_PARAM_ANY, _IEC.EFFECT_UNBIND)
                and not self.action_evil_query(ast_action, _IEC.AFFECT_SCOPE, _IEC.EFFECT_UNBIND)):
                # Bound variables are resolved to their values, they are never in the parameters
                self.log.warning("the combination of AFFECT_PARAM, EFFECT_UNBIND has no effect",
                    loc=ast_action.loc)
        
        TermGroundingCb.apply(ast_plan, s, self)
        UselessTermEliminatorCb.apply(ast_plan, self)

    def action_evil_query(self, ast_literal, af, ef):
        return self.get_action_evilness(ast_literal).query(af, ef, len(ast_literal.terms))

    def get_action_evilness(self, ast_literal):
        if ast_literal.functor == '.inf_side_effect':
            return self.handle_inf_side_effect(ast_literal)
        else:
            return self.get_evilness(ast_literal.functor, len(ast_literal.terms))

    def get_evilness(self, name, arity):
        if (name, arity) in self.action_table:
            return self.action_table[name, arity]
        elif (name, -1) in self.action_table:
            return self.action_table[name, -1]
        else:
            return Evilness(_IEC.AFFECT_UNIVERSE, _IEC.EFFECT_ALL)

    def handle_inf_side_effect(self, ast_literal):
        is_str = lambda x: isinstance(x, AstConst) and _is_str_type(x.value)
        
        if len(ast_literal.terms) < 2:
            raise self.log.error('.inf_side_effect expects at least 2 arguments', loc=ast_literal.loc)
        elif not is_str(ast_literal.terms[0]):
            raise self.log.error('.inf_side_effect expects a string as its first argument', loc=ast_literal.loc)
        elif not is_str(ast_literal.terms[1]):
            raise self.log.error('.inf_side_effect expects a string as its second argument', loc=ast_literal.loc)

        af_str, ef_str = ast_literal.terms[0].value, ast_literal.terms[1].value

        if af_str == 'AFFECT_PARAM':
            raise self.log.error('.inf_side_effect does not support AFFECT_PARAM, use AFFECT_PARAM_ALL instead',
                loc=ast_literal.loc)
        elif not af_str.startswith('AFFECT_') or not hasattr(_IEC, af_str):
            raise self.log.error('.inf_side_effect: invalid affect \'%s\'', af_str, loc=ast_literal.loc)
        elif not ef_str.startswith('EFFECT_') or not hasattr(_IEC, ef_str):
            raise self.log.error('.inf_side_effect: invalid effect \'%s\'', ef_str, loc=ast_literal.loc)

        af = getattr(_IEC, af_str)
        ef = getattr(_IEC, ef_str)

        return Evilness(af, ef)
        

    def is_optimize_away(self, name, arity):
        return ((name, arity) in self.actions_optimize_away_list
            or  (name,    -1) in self.actions_optimize_away_list)

    def register_action(self, name, action, arity):
        evilness = getattr(action, 'evilness', None)
        optimize_away = getattr(action, 'optimize_away', False)

        if evilness is None and getattr(action, 'is_function', True):
            evilness = Evilness.default_function_like()
        
        if evilness is None and getattr(action, 'is_procedure', True):
            evilness = Evilness.default_all_bound()

        if evilness is not None:
            self.action_table[name, arity] = evilness
            evilness.check_arity_makes_sense(arity, self.log, name)
        else:
            self.log.warn('no side effects found for action %s/%s', name, arity)

        if optimize_away and name not in self.actions_optimize_away_list:
            self.actions_optimize_away_list.append((name, arity))
        

class TermGroundingCb(DefaultCallback):
    def __init__(self, state, inf_cb):
        self.state = state
        self.log = inf_cb.log
        self.inf_cb = inf_cb
        
    def pre_ast_node(self, typ, ast_node):
        if   typ == AstType.PLAN:
            return self.pre_ast_plan(ast_node)
        elif typ == AstType.IF_THEN_ELSE:
            return self.pre_ast_if_then_else(ast_node)
        elif typ in (AstType.WHILE, AstType.FOR):
            return self.pre_ast_loop(ast_node)
        else:
            return
    
    def on_ast_node(self, typ, ast_node):
        if typ == AstType.VARIABLE:
            ast_node.bound_status   = self.state.status[ast_node.name]
            ast_node.bound_value    = self.state.values.get(ast_node.name, None)
            ast_node.contained_vars = self.state.subvars.get(ast_node.name, set())
            ast_node = self.state.deref(ast_node)
            return ast_node
        elif typ == AstType.LIST:
            return _IAC.KEEP_CURRENT
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
        else:
            assert False
    
    def pre_ast_plan(self, ast_plan):
        # Hacky, but it should do the right thing
        ast_plan.event.head = self.visitor_parent.resolve_single(ast_plan.event.head)
        self.symbolic_belief_query(ast_plan.event.head)
        
        if ast_plan.context:
            loc = ast_plan.context.loc
            ast_plan.context = self.visitor_parent.resolve_single(ast_plan.context)
            ast_plan.context = self.symbolic_belief_query(ast_plan.context)

        if ast_plan.body:
            ast_plan.body = self.visitor_parent.resolve_single(ast_plan.body)

        return _IAC.REPLACE_NODE(ast_plan)

    def pre_ast_if_then_else(self, ast_node):
        ast_node.condition = self.visitor_parent.resolve_single(ast_node.condition)
        ast_node.condition = self.symbolic_belief_query(ast_node.condition)

        if isinstance(ast_node.condition, AstConst):
            if   ast_node.condition.value is True:
                formulas = self.visitor_parent.resolve_list(ast_node.if_body.formulas)
                return _IAC.EXPAND_LIST(formulas)
            elif ast_node.condition.value is False:
                formulas = self.visitor_parent.resolve_list(ast_node.else_body.formulas)
                return _IAC.EXPAND_LIST(formulas)
            else:
                self.log.warning('non-boolean term %s in boolean context (inferred)',
                    ast_node.condition.value, loc=ast_node.loc)
        elif ast_node.condition.always_true:
            # Can't inline the if, because of implicit cut
            ast_node.else_body = None
        
        # Traverse both branches separately, then merge the scopes.
        tmp_state = self.state.copy()
        ast_node.if_body = self.visitor_parent.resolve_single(ast_node.if_body)
        self.state, tmp_state = tmp_state, self.state
        if ast_node.else_body:
            ast_node.else_body = self.visitor_parent.resolve_single(ast_node.else_body)            
        self.state.merge(tmp_state)
        
        return _IAC.KEEP_CURRENT

    def pre_ast_loop(self, ast_node):
        # Diagram of while
        # +-> push_query, <cond>
        # |   push_choicepoint
        # |   next_or_fail       --+
        # |   pop_query            |
        # |   <body>               |
        # +-- pop_choicepoint      |
        #     noop               <-+
        #
        # Diagram of for
        # +-> push_query, <cond>
        # |   next_or_fail       --+
        # +-- <body>               |
        #     noop               <-+
        #

        tmp_state = self.state.copy()
        ast_node.condition = self.visitor_parent.resolve_single(ast_node.condition)
        ast_node.condition = self.symbolic_belief_query(ast_node.condition)
        if isinstance(ast_node.condition, AstConst):
            if   ast_node.condition.value is True:
                pass
            elif ast_node.condition.value is False:
                return _IAC.DELETE_NODE
            else:
                self.log.warning('non-boolean term %s in boolean context (inferred)',
                    ast_node.condition.value, loc=ast_node.loc)

        # No changes to the variables persist after an iteration, so there is no need for anything
        # complicated here.
        ast_node.body = self.visitor_parent.resolve_single(ast_node.body)
        self.state = tmp_state
        return _IAC.KEEP_CURRENT
    
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
        elif ast_node.operator.value.query_op:
            if ast_node.operator == UnaryOp.op_not:
                opr = ast_node.operand

                if isinstance(opr, AstConst):
                    # constant propagation
                    ast_node_new = AstConst()
                    ast_node_new.value = not opr.value
                    return ast_node_new
                else:
                    return ast_node
            else:
                assert False
        else:
            assert False
    
    def on_binary_op(self, ast_node):
        if   ast_node.operator.value.numeric_op or ast_node.operator.value.comp_op:
            return self.symbolic_binary_op(ast_node)
        elif ast_node.operator.value.boolean_op:
            # This includes the 'and' and 'or' operators, which is no harm
            return self.symbolic_binary_boolean_op(ast_node)
        elif ast_node.operator.value.query_op:
            # This is handled via the symbolic_belief_query recursion. Only includes the unify
            # operator.
            return _IAC.KEEP_CURRENT
        else:
            assert False
            
    def on_formula(self, ast_node):
        if ast_node.formula_type == FormulaType.term:
            t = ast_node.term
            if isinstance(t, AstConst):
                if   t.value is True:
                    return _IAC.DELETE_NODE
                elif t.value is False:
                    # A warning is later emitted by UselessTermEliminatorCb
                    pass
                else:
                    self.log.warning('non-boolean term %s in boolean context (inferred)',
                        t.value, loc=ast_node.loc)
            elif isinstance(t, AstLiteral):
                if '.' in t.functor:
                    evilness = self.inf_cb.get_action_evilness(t)
                    capture_scope = False
                    for ef in evilness.find_disregard_arity(_IEC.AFFECT_SCOPE):
                        capture_scope = True
                        for name in self.state.status:
                            self.state.status[name] = self.apply_evilness(t, ef, self.state.status[name])
                    if capture_scope:
                        # This could be made more fine-grained
                        t.scope_info = set(self.state.status.keys())

                    for i, ast_var in enumerate(t.terms):
                        if not isinstance(ast_var, AstVariable): continue
                        for ef in evilness.find(_IEC.AFFECT_PARAM(i), len(t.terms)):
                            name = ast_var.name
                            self.state.status[name] = self.apply_evilness(t, ef, self.state.status[name])

                    for ef in evilness.find(_IEC.AFFECT_SCOPE, len(t.terms)):
                        for name in self.state.status.keys():
                            self.state.status[name] = self.apply_evilness(t, ef, self.state.status[name])
                else:
                    ast_node.term = self.symbolic_belief_query(t)
            elif isinstance(t, AstVariable):
                ast_node.term = self.symbolic_belief_query(t)
            elif isinstance(t, (AstBinaryOp, AstUnaryOp)):
                #  This should be handled by the parser instead
                assert not t.operator.value.numeric_op

                ast_node.term = self.symbolic_belief_query(t)
            else:
                assert False

            return _IAC.EXPAND_LIST(self.expand_and_into_list(ast_node))
        elif ast_node.formula_type in (FormulaType.add, FormulaType.replace, FormulaType.achieve,
                FormulaType.achieve_later):
            if isinstance(ast_node.term, (AstLiteral, AstVariable)):
                self.require_term_ground(ast_node, ast_node.term)
            else:
                assert False
        elif ast_node.formula_type in (FormulaType.remove, FormulaType.test, FormulaType.replace):
            ast_node.term = self.symbolic_belief_query(ast_node.term)
        else:
            assert False

    def expand_and_into_list(self, ast_node):
        def f(t):
            if isinstance(t, AstBinaryOp) and t.operator == BinaryOp.op_and:
                return f(t.left) + f(t.right)
            else:
                return [t]

        result = []
        for i in f(ast_node.term):
            node = AstFormula()
            node.formula_type = FormulaType.term
            node.term = i
            result.append(node)
        return result
    
    def symbolic_belief_query(self, ast_node):
        ast_node.always_true = False
        
        if isinstance(ast_node, (AstVariable, AstLiteral)):
            # This is also used for the head of a plan, if you change it make sure that that does
            # not break!
            
            ast_node.vars_written = []
            ast_node.vars_read = []
            
            if isinstance(ast_node, AstVariable):
                self.require_term_ground(ast_node, ast_node)
                ast_node.vars_read.append(ast_node.name)
                
            for ast_var in self.collect_contained_variables(ast_node):
                if ast_var.bound_status == _IC.PROVEN_UNBOUND:
                    ast_var.bound_status = _IC.UNPROVEN
                    self.update_var(ast_var)
                else:
                    ast_node.vars_read.append(ast_var.name)
                    
                if ast_var.bound_status in (_IC.PROVEN_UNBOUND, _IC.UNPROVEN):
                    ast_node.vars_written.append(ast_var.name)

            self.state.contain_each_other(i.name for i in collect_literal_variables_all(ast_node))
                
            return ast_node
        elif isinstance(ast_node, AstBinaryOp):
            if   ast_node.operator == BinaryOp.op_and:
                ast_node.left  = self.symbolic_belief_query(ast_node.left )
                ast_node.right = self.symbolic_belief_query(ast_node.right)
                ast_node.always_true = ast_node.left.always_true and ast_node.right.always_true;
                return ast_node
            elif ast_node.operator == BinaryOp.op_or:
                # Cannot do always_true optimization because that would change the tree. Terms with
                # irrelevant side-effects are removed in UselessTermEliminatorCb
                tmp_state = self.state.copy()
                ast_node.left  = self.symbolic_belief_query(ast_node.left )
                self.state, tmp_state = tmp_state, self.state
                ast_node.right = self.symbolic_belief_query(ast_node.right)
                self.state.merge(tmp_state)
                ast_node.always_true = ast_node.left.always_true or ast_node.right.always_true;
                return ast_node
            elif ast_node.operator == BinaryOp.op_unify:
                lst = self.symbolic_unify(ast_node)
                if not lst:
                    node = AstConst()
                    node.value = True
                    node.always_true = True
                    return node
                else:
                    while len(lst) > 1:
                        node = AstBinaryOp()
                        node.operator = BinaryOp.op_and
                        node.right = lst.pop()
                        node.left = lst.pop()
                        node.always_true = node.left.always_true and node.right.always_true
                        lst.append(node)
                    return lst[0]
            elif ast_node.operator.value.comp_op:
                # Comparison operators do not affect the scope
                return ast_node
            else:
                assert False
        elif isinstance(ast_node, AstUnaryOp):
            if ast_node.operator == UnaryOp.op_not:
                tmp_state = self.state.copy()
                ast_node.operand  = self.symbolic_belief_query(ast_node.operand)
                self.state = tmp_state
                
                if ast_node.operand.always_true:
                    node = AstConst()
                    node.value = False
                    node.always_true = False
                    return node
                else:
                    # Not operator does not effect the scope
                    return ast_node
            else:
                assert False
        elif isinstance(ast_node, AstConst):
            ast_node.always_true = bool(ast_node.value)
            return ast_node
        else:
            assert False

    def collect_contained_variables(self, *lst):
        result = []
        for i in lst:
            if isinstance(i, AstVariable):
                for varname in i.contained_vars:
                    result.append(varname)
            elif isinstance(i, AstLiteral):
                for ast_var in collect_literal_variables_all(i):
                    result.append(ast_var.name)
                    for varname in ast_var.contained_vars:
                        result.append(varname)
                result = list(set(result))
            else:
                assert False

        i = 0
        while i < len(result):
            for varname in self.state.subvars.get(result[i], set()):
                if varname not in result:
                    result.append(varname)
            i += 1
        return [self.state.get_var_ast(varname) for varname in result]

    def update_var(self, ast_var):
        if ast_var.name == '_': return
        self.state.status[ast_var.name] = ast_var.bound_status
        self.state.values[ast_var.name] = ast_var.bound_value
        
        if ast_var.bound_status == _IC.PROVEN_VALUE:
            ast_var.contained_vars = {
                i.name for i in collect_literal_variables_all(ast_var.bound_value)
            }
        elif ast_var.bound_status == _IC.PROVEN_UNBOUND:
            ast_var.contained_vars = set()
        self.state.subvars[ast_var.name] = ast_var.contained_vars
        
    def require_term_ground(self, ast_root, ast_node):
        if   isinstance(ast_node, AstVariable):
            if ast_node.bound_status == _IC.PROVEN_UNBOUND:
                self.log.warning('term not ground (inferred)', loc=ast_root.loc)
            if ast_node.bound_status in (_IC.PROVEN_UNBOUND, _IC.UNPROVEN):
                ast_node.bound_status = _IC.PROVEN_BOUND
            self.update_var(ast_node)
        elif isinstance(ast_node, AstLiteral):
            for i in ast_node.terms:
                self.require_term_ground(ast_root, i)
            for i in ast_node.annotations:
                self.require_term_ground(ast_root, i)
        elif isinstance(ast_node, (AstConst, AstBinaryOp, AstUnaryOp)):
            pass
        else:
            assert False

    def apply_evilness(self, ast_node, ef, state):
        if   ef == _IEC.EFFECT_CHANGE:
            if state == _IC.PROVEN_VALUE:
                return _IC.PROVEN_BOUND
        elif ef == _IEC.EFFECT_DOBIND:
            if state in (_IC.PROVEN_UNBOUND, _IC.UNPROVEN):
                return _IC.PROVEN_BOUND
        elif ef == _IEC.EFFECT_BIND:
            if state == _IC.PROVEN_UNBOUND:
                return _IC.UNPROVEN
        elif ef == _IEC.EFFECT_UNBIND:
            if state in (_IC.PROVEN_BOUND, _IC.PROVEN_VALUE):
                return _IC.UNPROVEN
        elif ef == _IEC.EFFECT_REQUIRE_BOUND:
            if state == _IC.PROVEN_UNBOUND:
                self.log.warning('term not ground (inferred)', loc=ast_node.loc)
                
            if state in (_IC.PROVEN_UNBOUND, _IC.UNPROVEN):
                return _IC.PROVEN_BOUND
        elif ef == _IEC.EFFECT_ALL:
            # This should not have been optimized
            assert False
        else:
            assert False
        return state

    def symbolic_unify(self, ast_node):
        '''Symbolically execute the unify ast_node. This ensures that always_true and vars_written hold
           values (for all returned nodes), and updates the states of the variables. If two
           predicates of known type are unified, this is expanded to multiple unifications over the
           arguments. If a unify is useless (e.g. two equal constants are unified) it is
           removed. Return a list of equivalent unifications (may be empty).
        '''
        
        ast_node.left  = l = self.state.deref(ast_node.left)
        ast_node.right = r = self.state.deref(ast_node.right)
        ast_node.always_true = False
        ast_node.vars_written = []
        ast_node.vars_read = []
        result = self._symbolic_unify_helper(ast_node, l, r)

        for i in result:
            if isinstance(i.left,  AstVariable): self.update_var(i.left )
            if isinstance(i.right, AstVariable): self.update_var(i.right)

        return result
        
    def _symbolic_unify_helper(self, ast_node, l, r, level = 0):
        assert level < 2
        
        def var_unify(l, r, level = 0):
            '''Update the status of the variables l and r.'''
            assert level < 2
            
            # TODO: variables with the same name
            
            lbsrbs = l.bound_status, r.bound_status
            if   lbsrbs in ((_IC.PROVEN_BOUND,   _IC.PROVEN_BOUND  ),
                            (_IC.PROVEN_BOUND,   _IC.PROVEN_UNBOUND),
                            (_IC.PROVEN_BOUND,   _IC.UNPROVEN      ),
                            (_IC.UNPROVEN,       _IC.UNPROVEN      )):
                r.bound_status = _IC.PROVEN_VALUE
                r.bound_value = l
            elif lbsrbs in ((_IC.PROVEN_UNBOUND, _IC.PROVEN_UNBOUND),
                            (_IC.PROVEN_UNBOUND, _IC.UNPROVEN      )):
                l.bound_status = _IC.PROVEN_VALUE
                l.bound_value = r
            else:
                # Commutative
                var_unify(r, l, level+1)
                
        def list_unify(l, r):
            ops = []
            for i, j in zip(l.terms, r.terms):
                ast_node_sub = AstBinaryOp()
                ast_node_sub.operator = BinaryOp.op_unify
                ast_node_sub.left = i
                ast_node_sub.right = j
                ast_node_sub.always_true = False
                ast_node_sub.vars_written = []
                ast_node_sub.vars_read = []
                ops += self._symbolic_unify_helper(ast_node_sub, i, j)
            return ops

        def exclude_unbound(lst):
            return [i for i in lst if self.state.status[i] != _IC.PROVEN_UNBOUND]
        
        def exclude_bound(lst):
            return [i for i in lst if self.state.status[i] in (_IC.PROVEN_UNBOUND, _IC.UNPROVEN)]
        
        if   isinstance(l, AstVariable) and isinstance(r, AstVariable):
            ast_node.always_true = _IC.PROVEN_UNBOUND in (l.bound_status, r.bound_status)
            ast_node.vars_written = (exclude_bound(l.contained_vars | r.contained_vars)
                + [i.name for i, j in ((r, l), (l, r)) if j.bound_status != _IC.PROVEN_UNBOUND])
            ast_node.vars_read = exclude_unbound(l.contained_vars | r.contained_vars | {r.name, l.name})
            r.contained_vars = (l.contained_vars | r.contained_vars) - {r.name}
            l.contained_vars = (l.contained_vars | r.contained_vars) - {l.name}
            var_unify(l, r)
            return [ast_node]
        elif isinstance(l, AstVariable) and isinstance(r, (AstLiteral, AstConst)):
            r, add_unifies = self.constify_literal(r)
            ast_node.always_true = l.bound_status == _IC.PROVEN_UNBOUND
            if l.bound_status != _IC.PROVEN_BOUND:   ast_node.vars_written.append(l.name)
            if l.bound_status != _IC.PROVEN_UNBOUND: ast_node.vars_read   .append(l.name)
            l.bound_status = _IC.PROVEN_VALUE
            l.bound_value = r
            l.contained_vars |= set(i.name for i in collect_literal_variables_all(r)) - {l}
            
            return add_unifies + [ast_node]
        elif isinstance(l, AstVariable) and isinstance(r, (AstUnaryOp, AstBinaryOp, AstList)):
            ast_node.always_true = l.bound_status == _IC.PROVEN_UNBOUND
            if l.bound_status != _IC.PROVEN_BOUND:
                ast_node.vars_written.append(l.name)
            l.bound_status = _IC.PROVEN_BOUND
            # TODO: Is it possible to unify variables from inside a list? If yes, add them to contained vars.
            return [ast_node]
        elif isinstance(l, AstLiteral) and isinstance(r, AstLiteral):
            if l.functor != r.functor:
                self.log.warning('trying to unify two different literals (inferred): %s and %s',
                    l.functor, r.functor, loc=ast_node.loc)
                return [ast_node]
            elif len(l.terms) != len(r.terms):
                self.log.warning('trying to unify literals with a different number of arguments '
                    '(inferred): %s and %s', len(l.terms), len(r.terms), loc=ast_node.loc)
                return [ast_node]
            elif len(l.annotations) > len(r.annotations):
                assert level == 0
                self.log.warning('trying to unify literals where the left side has more annotations'
                    ' than the right (inferred): left %s and right %s', len(l.annotations),
                    len(r.annotations), loc=ast_node.loc)
                return [ast_node]
            else:
                ops = list_unify(l, r)
                if len(l.annotations):
                    # Some more optimizations are possible here, by preresolving restrictions on
                    # possible matches
                    ast_node_sub = AstBinaryOp()
                    ast_node_sub.operator = BinaryOp.op_unify
                    ast_node_sub.left = AstLiteral()
                    ast_node_sub.left.functor = '_inf_dummy'
                    ast_node_sub.left.annotations = ast_node.left.annotations
                    ast_node_sub.right = AstLiteral()
                    ast_node_sub.right.functor = '_inf_dummy'
                    ast_node_sub.right.annotations = ast_node.right.annotations
                    ast_node_sub.always_true = False
                    varlst = self.collect_contained_variables(ast_node.left, ast_node.right)
                    ast_node_sub.vars_written = exclude_bound  (varlst)
                    ast_node_sub.vars_read    = exclude_unbound(varlst)
                    ops.append(ast_node_sub)
                return ops
        elif isinstance(l, AstLiteral) and isinstance(r, AstConst):
            self.log.warning('trying to unify a literal with a constant (inferred)',
                loc=ast_node.loc)
            return [ast_node]
        elif isinstance(l, AstLiteral) and isinstance(r, (AstUnaryOp, AstBinaryOp)):
            self.log.warning('trying to unify a literal with a scalar (inferred)',
                loc=ast_node.loc)
            return [ast_node]
        elif isinstance(l, AstLiteral) and isinstance(r, AstList):
            self.log.warning('trying to unify a literal with a list (inferred)',
                loc=ast_node.loc)
            return [ast_node]
        elif isinstance(l, AstConst) and isinstance(r, AstConst):
            if l.value != r.value:
                self.log.warning('trying to unify two constants with different values (inferred): '
                    '%s and %s', l.value, r.value, loc=ast_node.loc)
                return [ast_node]
            else:
                ast_node.always_true = True
                return []
        elif isinstance(l, AstConst) and isinstance(r, (AstUnaryOp, AstBinaryOp)):
            return [ast_node]
        elif isinstance(l, AstConst) and isinstance(r, AstList):
            self.log.warning('trying to unify a constant with a list (inferred)',
                loc=ast_node.loc)
            return [ast_node]
        elif isinstance(l, (AstUnaryOp, AstBinaryOp)) and isinstance(r, (AstUnaryOp, AstBinaryOp)):
            return [ast_node]
        elif isinstance(l, (AstUnaryOp, AstBinaryOp)) and isinstance(r, AstList):
            self.log.warning('trying to unify a scalar with a list (inferred)',
                loc=ast_node.loc)
            return [ast_node]
        elif isinstance(l, AstList) and isinstance(r, AstList):
            if len(l.terms) != len(r.terms):
                self.log.warning('trying to unify lists with a different number of arguments '
                    '(inferred): %s and %s', len(l.terms), len(r.terms), loc=ast_node.loc)
                return [ast_node]
            else:
                return list_unify(l, r)
        else:
            # Commutative (actually not, but we do not handle annotations with enough finesse to
            # notice)
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
            ast_var.bound_status   = _IC.PROVEN_BOUND
            ast_var.bound_value    = None
            ast_var.contained_vars = set()
            self.update_var(ast_var)
            ast_uni = AstBinaryOp()
            ast_uni.operator = BinaryOp.op_unify
            ast_uni.left = ast_var
            ast_uni.right = ast_node
            ast_uni.always_true = True
            ast_uni.vars_written = {ast_var.name}
            ast_uni.vars_read = set()
            return ast_var, [ast_uni]
    
    def symbolic_binary_boolean_op(self, ast_node):
        l, r = self.state.deref(ast_node.left), self.state.deref(ast_node.right)
        ast_node.left, ast_node.right = l, r
        lb = isinstance(l, AstConst)

        # Doing constant propagation here is safe for both query and boolean contexts. In the latter
        # case this is all we can do.
        
        if   ast_node.operator == BinaryOp.op_or:
            # Assume values can only be boolean
            if   lb and l.value is True:
                return _IAC.REPLACE_NODE(l)
            elif lb and l.value is False:
                return _IAC.REPLACE_NODE(r)
            else:
                return _IAC.KEEP_CURRENT
        elif ast_node.operator == BinaryOp.op_and:
            if   lb and l.value is False:
                return _IAC.REPLACE_NODE(l)
            elif lb and l.value is True:
                return _IAC.REPLACE_NODE(r)
            else:
                return _IAC.KEEP_CURRENT
        else:
            assert False
            
    def symbolic_binary_op(self, ast_node):
        l, r = self.state.deref(ast_node.left), self.state.deref(ast_node.right)
        ast_node.left, ast_node.right = l, r
    
        for i, pos in zip((l, r), ('left', 'right')):
            if isinstance(i, AstVariable):
                if i.bound_status == _IC.PROVEN_UNBOUND:
                    self.log.warning('%s term in binary %s is not ground (inferred)',
                        pos, ast_node.operator.value.lexeme, loc=ast_node.loc)
                        
                if i.bound_status in (_IC.UNPROVEN, _IC.PROVEN_UNBOUND):
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
    def apply(cls, ast_plan, inf_cb):
        assert isinstance(ast_plan, AstPlan)
        return CallbackReverseVisitor(cls(inf_cb)).resolve_single(ast_plan)

    def __init__(self, inf_cb):
        self.inf_cb = inf_cb
        self.log = inf_cb.log
        self.used_vars = set()
        
    def update_used(self, ast_node):
        self.used_vars.update(i.name for i in collect_variables(ast_node) if i.name != '_')
    def update_usedone(self, ast_var):
        if ast_var.name != '_':
            self.used_vars.add(ast_var.name)
        
    def pre_ast_node(self, typ, ast_node):
        if typ == AstType.PLAN:
            return self.pre_ast_plan(ast_node)
        elif typ == AstType.FORMULA:
            return self.pre_ast_formula(ast_node)
        elif typ == AstType.IF_THEN_ELSE:
            return self.pre_ast_if_then_else(ast_node)
        elif typ in (AstType.WHILE, AstType.FOR):
            return self.pre_ast_loop(ast_node)
        elif typ ==  AstType.BODY:
            return
        else:
            assert False

    def pre_ast_plan(self, ast_plan):
        self.update_used(ast_plan.event.head)
        
        if ast_plan.body:
            ast_plan.body = self.visitor_parent.resolve_maybe(ast_plan.body)
            
        if ast_plan.context:
            ast_plan.context = self.clean_belief_query(ast_plan.context, False)
            if   ast_plan.context is True:
                ast_plan.context = None
            elif ast_plan.context is False:
                self.log.warning('plan context is always false (inferred)', loc=loc)
                ast_plan.context = AstNode()
                ast_plan.context.value = False
                ast_plan.body = None
        
        assert ast_plan.event.head is not None
        return _IAC.REPLACE_NODE(ast_plan)
            
    def pre_ast_formula(self, ast_node):
        if   ast_node.formula_type == FormulaType.term:
            if isinstance(ast_node.term, AstLiteral) and '.' in ast_node.term.functor:
                if self.inf_cb.is_optimize_away(ast_node.term.functor, len(ast_node.term.terms)):
                    return _IAC.DELETE_NODE

                if hasattr(ast_node.term, 'scope_info'):
                    self.used_vars |= ast_node.term.scope_info
                pass
            else:
                ast_node.term = self.clean_belief_query(ast_node.term, False)
                if ast_node.term is True:
                    return _IAC.DELETE_NODE
                elif ast_node.term is False:
                    self.log.warning('term always false (inferred)', loc=ast_node.loc)
                    node = AstConst()
                    node.value = False
                    return _IAC.REPLACE_NODE(node)
                else:
                    return _IAC.REPLACE_NODE(ast_node)
        elif ast_node.formula_type in (FormulaType.add, FormulaType.replace, FormulaType.achieve,
                FormulaType.achieve_later):
            pass
        elif ast_node.formula_type in (FormulaType.remove, FormulaType.test, FormulaType.replace):
            ast_node.term = self.clean_belief_query(ast_node.term, False)
            # It should not have optimized away the literal
            assert isinstance(ast_node.term, AstNode)
            return _IAC.REPLACE_NODE(ast_node)
        else:
            assert False

        self.update_used(ast_node.term)
        return _IAC.KEEP_CURRENT

    def pre_ast_if_then_else(self, ast_node):
        tmp_state, tmp_state2 = self.used_vars.copy(), self.used_vars.copy()
        ast_node.if_body = self.visitor_parent.resolve_maybe(ast_node.if_body)
        tmp_state, self.used_vars = self.used_vars, tmp_state
        if ast_node.else_body is not None:
            ast_node.else_body = self.visitor_parent.resolve_maybe(ast_node.else_body)
        self.used_vars |= tmp_state

        ast_node.condition = self.clean_belief_query(ast_node.condition, False)
        if ast_node.condition is True:
            formulas = self.visitor_parent.resolve_list(ast_node.if_body.formulas)
            return _IAC.EXPAND_LIST(formulas)
        elif ast_node.condition is False:
            formulas = self.visitor_parent.resolve_list(ast_node.else_body.formulas)
            return _IAC.EXPAND_LIST(formulas)

        if ast_node.if_body   is not None and not ast_node.if_body  .formulas:
            ast_node.if_body   = None
        if ast_node.else_body is not None and not ast_node.else_body.formulas:
            ast_node.else_body = None

        if ast_node.if_body is None and ast_node.else_body is None:
            self.used_vars = tmp_state2
            ast_node.condition = self.clean_belief_query(ast_node.condition, True)

            # Cannot be False, due to ignore_truth
            if ast_node.condition is True:
                return _IAC.DELETE_NODE
            else:
                ast_node.if_body = AstBody()
                return _IAC.REPLACE_NODE(ast_node)
        elif ast_node.if_body is None:
            ast_node.if_body = AstBody()
            return _IAC.REPLACE_NODE(ast_node)
        else:
            return _IAC.REPLACE_NODE(ast_node)

    def pre_ast_loop(self, ast_node):
        ast_node.condition = self.clean_belief_query(ast_node.condition, False)
        if ast_node.condition is True:
            ast_node.condition = AstConst()
            ast_node.condition.value = True
        elif ast_node.condition is False:
            return _IAC.DELETE_NODE

        tmp_state, self.used_vars = self.used_vars, set()
        ast_node.body = self.visitor_parent.resolve_single(ast_node.body)
        self.used_vars |= tmp_state

        return ast_node

        
    def on_ast_node(self, typ, ast_node):
        assert typ == AstType.BODY
        return _IAC.KEEP_CURRENT
        
    def clean_belief_query(self, ast_node, ignore_truth):
        '''Return a belief query that has as equivalent set of solutions. If ignore_truth is specified,
           sets that differ only in whether they contain the empty solution (side-effect free
           solution) are considered equivalent. A return value of True is equivalent to the set
           containing only the empty solution, False is equivalent to the empty set. With ignore_truth,
           only True is used.
        '''
        
        if isinstance(ast_node, (AstVariable, AstLiteral)):
            # There is no way to be sure that the variable contains a literal
            if ignore_truth and not self.inf_cb.options.preserve_errors:
                for varname in ast_node.vars_written:
                    if varname in self.used_vars: break
                else:
                    return True

            for ast_var in collect_literal_variables_all(ast_node):
                if ast_var.name not in ast_node.vars_read and ast_var.name not in self.used_vars:
                    ast_var.name = '_'
              
            self.used_vars.update(ast_node.vars_read)
            return ast_node
        elif isinstance(ast_node, AstBinaryOp):
            if   ast_node.operator == BinaryOp.op_and:
                if ignore_truth:
                    # Try whether both sides are without side-effects
                    # This may be exponential
                    tmp_state = self.used_vars.copy()
                    right = self.clean_belief_query(ast_node.right, True)
                    left  = self.clean_belief_query(ast_node.left,  True)
                    if right is True and left is True:
                        return True
                    self.used_vars = tmp_state

                ast_node.right = self.clean_belief_query(ast_node.right, False)
                ast_node.left  = self.clean_belief_query(ast_node.left,  False)
                if ast_node.right is True:
                    return ast_node.left
                elif ast_node.left is True:
                    return ast_node.right
                elif ast_node.left is False or ast_node.right is False:
                    return False
                else:
                    return ast_node
            elif ast_node.operator == BinaryOp.op_or:
                if ignore_truth:
                    tmp_state = self.used_vars.copy()
                    ast_node.right = self.clean_belief_query(ast_node.right, True)
                    tmp_state, self.used_vars = self.used_vars, tmp_state
                    ast_node.left = self.clean_belief_query(ast_node.left, True)
                    self.used_vars |= tmp_state
                    
                    if ast_node.right is True:
                        return ast_node.left
                    elif ast_node.left is True:
                        return ast_node.right
                    else:
                        return ast_node
                else:
                    tmp_state = self.used_vars.copy()
                    ast_node.right = self.clean_belief_query(ast_node.right, False)
                    if ast_node.right is True:
                        ast_node.left = self.clean_belief_query(ast_node.left, True)
                        if ast_node.left is True or ast_node.left is False:
                            return True
                        else:
                            ast_node.right = AstConst()
                            ast_node.right.value = True
                            return ast_node
                    elif ast_node.right is False:
                        return self.clean_belief_query(ast_node.left, False)
                    else:
                        tmp_state, self.used_vars = self.used_vars, tmp_state
                        ast_node.left  = self.clean_belief_query(ast_node.left, False)
                        if ast_node.left is True:
                            # We have a fresh state, due to True meaning no side-effects
                            ast_node.right = self.clean_belief_query(ast_node.right, True)
                            return ast_node.right
                        elif ast_node.left is False:
                            # No need to merge, as False means no side-effects
                            self.used_vars = tmp_state
                            return ast_node.right
                        else:
                            self.used_vars |= tmp_state
                            return ast_node                
            elif ast_node.operator == BinaryOp.op_unify:
                # TODO: Can unify error?
                no_side_effects = not (self.used_vars & set(ast_node.vars_written))
                if no_side_effects and (ast_node.always_true or ignore_truth):
                    return True
                elif no_side_effects:
                    # TODO: Could replace unify with equality, except that equality cannot compare
                    # literals
                    #ast_node.operator = BinaryOp.op_eq
                    self.update_used(ast_node)
                    return ast_node
                else:
                    self.update_used(ast_node)
                    return ast_node
            elif ast_node.operator.value.comp_op:
                if ignore_truth:
                    return True
                else:
                    self.update_used(ast_node)
                    return ast_node
            else:
                assert False
        elif isinstance(ast_node, AstUnaryOp):
            if ast_node.operator == UnaryOp.op_not:
                if ignore_truth and not self.inf_cb.options.preserve_errors:
                    return True
                else:
                    tmp_state, self.used_vars = self.used_vars, set()
                    ast_node.operand = self.clean_belief_query(ast_node.operand, ignore_truth)
                    self.used_vars |= tmp_state
                    if ast_node.operand is True or ast_node.operand is False:
                        return (not ast_node.operand) or ignore_truth
                    else:
                        return ast_node
            else:
                assert False
        elif isinstance(ast_node, AstConst):
            if ignore_truth and not self.inf_cb.options.preserve_errors:
                return True
            elif ast_node.value is True or ast_node.value is False:
                return ast_node.value or ignore_truth
            else:
                return ast_node
        else:
            assert False
        

def collect_type(ast_node, typ):
    vars = []
    class Collector(DefaultCallback):
        def pre_ast_node(self, node_typ, node):
            if node_typ == typ:
                vars.append(node)
    Collector.apply(ast_node)
    return vars
            
def collect_variables(ast_node):
    return collect_type(ast_node, AstType.VARIABLE)

def collect_actions(ast_node):
    for i in collect_type(ast_node, AstType.LITERAL):
        if '.' in i.functor:
            yield i

def collect_literal_variables_all(ast_node):
    if isinstance(ast_node, AstVariable):
        yield ast_node
    elif isinstance(ast_node, AstLiteral):
        for i in ast_node.terms:
            for j in collect_literal_variables_all(i):
                yield j
        for i in ast_node.annotations:
            for j in collect_literal_variables_all(i):
                yield j
    elif isinstance(ast_node, list):
        for i in ast_node:
            for j in collect_literal_variables_all(i):
                yield j
    else:
        return
            
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
    assert(all(isinstance(i, agentspeak.lexer.TokenInfo) for i in tokens))

    maxwid = max(len(i.name) for i in agentspeak.lexer.TokenType)
    for i in tokens:
        print('%*s  %s' % (maxwid, agentspeak.lexer.TokenType(i.token).name, i.lexeme))

def dump(*a):
    v = CallbackVisitor(DumpingCallback())
    for i in a: i.accept(v)



def init_optimizer_actions(actions):
    @actions.add(".inf_mark_nosidef", 1)
    @no_scope_effects
    @optimize_away
    def _inf_mark_nosidef(agent, term, intention): yield

    @actions.add(".inf_nosideef", 0)
    @no_scope_effects
    @optimize_away
    def _inf_nosideef(agent, term, intention): yield

    @actions.add(".inf_side_effect")
    @no_scope_effects
    @optimize_away
    def _inf_side_effect(agent, term, intention): yield

    @actions.add(".inf_disable_global", 0)
    @side_effect(_IEC.AFFECT_UNIVERSE, _IEC.EFFECT_ALL)
    @optimize_away
    def _inf_disable_global(agent, term, intention): yield

    @actions.add(".inf_disable_local", 0)
    @side_effect(_IEC.AFFECT_SCOPE, _IEC.EFFECT_ALL)
    @optimize_away
    def _inf_disable_local(agent, term, intention): yield

_LOGGER = agentspeak.get_logger(__name__)

def build_agent_optimized(env, source, actions, agent_cls=agentspeak.runtime.Agent):
    log = agentspeak.Log(_LOGGER, 3)
    tokens = agentspeak.lexer.TokenStream(source, log)
    ast_agent = agentspeak.parser.parse(source.name, tokens, log)
    ast_agent = InferenceCallback.apply(ast_agent, log, agentspeak.stdlib.actions)
    log.throw()

    _, agent = env.build_agent_from_ast(source, ast_agent, actions)
    return agent

def main():
    import agentspeak.stdlib

    env = agentspeak.runtime.Environment()
    try:
        args = sys.argv[1:]
        if args:
            for arg in args:
                with open(arg) as source:
                    agent = build_agent_optimized(env, source, agentspeak.stdlib.actions)
                    env.run_agent(agent)
                    break
        elif sys.stdin.isatty():
            LOGGER.error('agentspeak.optimizer does not support a REPL.')
            sys.exit(1)
        else:
            env.run_agent(env.build_agent(sys.stdin, agentspeak.stdlib.actions))
    except agentspeak.AggregatedError as error:
        print(str(error), file=sys.stderr)
        sys.exit(1)
    except agentspeak.AslError as error:
        LOGGER.error("%s", error)
        sys.exit(1)

if __name__ == "__main__":
    main()
