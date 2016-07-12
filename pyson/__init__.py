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

"""JASON-style AgentSpeak for Python."""

__author__ = "Niklas Fiekas"

__email__ = "niklas.fiekas@backscattering.de"

__version__ = "0.0.1"


import enum
import collections
import logging
import sys
import colorama
import io
import operator
import itertools
import functools
import hashlib


SourceLocation = collections.namedtuple("SourceLocation",
                                        "filename lineno startcol endcol line")


class StringSource:
    def __init__(self, name, string):
        self.name = name
        self.src = io.StringIO(string)

    def __iter__(self):
        return iter(self.src)


class LogHandler(logging.StreamHandler):
    """A :class:`logging.StreamHandler` with color support."""

    def __init__(self, stream):
        wrapper = colorama.AnsiToWin32(stream)
        if wrapper.should_wrap():
            stream = wrapper.stream

        super().__init__(stream)


class LogFormatter(logging.Formatter):
    """
    A log formatter that will use different colors for infos, warnings and
    errors.

    Optionally shows annotated source excerpts if a primary location *loc*
    or a list of secondary locations *extra_locs* are given as extras to the
    logger.
    """
    def format(self, record):
        b = []
        b.append(colorama.Style.BRIGHT)

        # Add source location.
        loc = record.__dict__.get("loc")
        if loc:
            b.append("%s:%d:%d: " % (loc.filename, loc.lineno, loc.startcol + 1))

        # Add error level.
        if record.levelno >= logging.ERROR:
            b.append(colorama.Fore.RED + "error: " + colorama.Fore.RESET)
        elif record.levelno >= logging.WARNING:
            b.append(colorama.Fore.MAGENTA + "warning: " + colorama.Fore.RESET)
        elif record.levelno >= logging.INFO:
            b.append(colorama.Fore.BLACK + "info: " + colorama.Fore.RESET)

        # Add log message.
        b.append(super().format(record))
        b.append(colorama.Style.NORMAL)

        # Add source annotation.
        if loc and loc.line:
            b.append("\n")
            b.append(loc.line.rstrip())
            b.append("\n")

            under_line = [" " for _ in loc.line]

            # Extra locations underlined with ~~~.
            for extra_loc in record.__dict__.get("extra_locs", ()):
                if not extra_loc or extra_loc.filename != loc.filename or extra_loc.lineno != loc.lineno:
                    continue

                for col in range(extra_loc.startcol, max(extra_loc.endcol, extra_loc.startcol + 1)):
                    if col < len(under_line):
                        under_line[col] = "~"

            # Main location underlined with ^^^.
            for col in range(loc.startcol, max(loc.endcol, loc.startcol + 1)):
                if col < len(under_line):
                    under_line[col] = "^"

            b.append(colorama.Style.BRIGHT)
            b.append("".join(under_line).rstrip())
            b.append(colorama.Style.NORMAL)

        return "".join(b)


def get_logger(name, _singleton={}):
    if name in _singleton:
        return _singleton[name]

    logger = logging.getLogger(name)
    logger.setLevel(logging.INFO)
    handler = LogHandler(sys.stderr)
    handler.setFormatter(LogFormatter())
    logger.addHandler(handler)

    _singleton[name] = logger
    return logger


class AggregatedError(Exception):
    def __init__(self, num_errors, num_warnings):
        super().__init__("%d %s and %d %s" % (
            num_errors, "errors" if num_errors != 1 else "error",
            num_warnings, "warnings" if num_warnings != 1 else "warning"))

        self.num_errors = num_errors
        self.num_warnings = num_warnings


class PysonError(Exception):
    pass


class Log:
    def __init__(self, logger, max_errors):
        self.logger = logger
        self.max_errors = max_errors
        self.num_errors = 0
        self.num_warnings = 0

    def error(self, msg, *args, loc=None, extra_locs=()):
        self.num_errors += 1
        self.logger.error(msg, *args, extra={"loc": loc, "extra_locs": extra_locs})
        if self.num_errors >= self.max_errors:
            raise AggregatedError(self.num_errors, self.num_warnings)
        else:
            return AggregatedError(self.num_errors, self.num_warnings)

    def warning(self, msg, *args, loc=None, extra_locs=()):
        self.num_warnings += 1
        self.logger.warning(msg, *args, extra={"loc": loc, "extra_locs": extra_locs})

    def info(self, msg, *args, loc=None, extra_locs=()):
        self.logger.info(msg, *args, extra={"loc": loc, "extra_locs": extra_locs})

    def throw(self):
        if self.num_errors:
            raise AggregatedError(self.num_errors, self.num_warnings)


@enum.unique
class Trigger(enum.Enum):
    addition = "+"
    removal  = "-"


@enum.unique
class GoalType(enum.Enum):
    achievement = "!"
    test        = "?"
    belief      = ""


@enum.unique
class FormulaType(enum.Enum):
    term          = ""
    test          = "?"
    achieve       = "!"
    achieve_later = "!!"
    add           = "+"
    remove        = "-"
    replace       = "-+"


class Operator:
    def __init__(self, lexeme, func=None,
                 numeric=False, comp=False, boolean=False, query=False):
        self.lexeme = lexeme
        self.func = func

        self.numeric_op = numeric
        self.comp_op = comp
        self.boolean_op = boolean
        self.query_op = query


@enum.unique
class UnaryOp(enum.Enum):
    op_not = Operator("not", operator.not_, boolean=True, query=True)
    op_pos = Operator("+", operator.pos, numeric=True)
    op_neg = Operator("-", operator.neg, numeric=True)


@enum.unique
class BinaryOp(enum.Enum):
    op_pow       = Operator("**", operator.pow, numeric=True)

    op_mul       = Operator("*", operator.mul, numeric=True)
    op_truediv   = Operator("/", operator.truediv, numeric=True)
    op_floordiv  = Operator("div", operator.floordiv, numeric=True)
    op_mod       = Operator("mod", operator.mod, numeric=True)

    op_add       = Operator("+", operator.add, numeric=True)
    op_sub       = Operator("-", operator.sub, numeric=True)

    op_unify     = Operator("=", query=True)
    op_decompose = Operator("=..", query=True)

    op_lt        = Operator("<", operator.lt, comp=True)
    op_le        = Operator("<=", operator.le, comp=True)
    op_ne        = Operator("\\==", operator.ne, comp=True)
    op_eq        = Operator("==", operator.eq, comp=True)
    op_ge        = Operator(">=", operator.ge, comp=True)
    op_gt        = Operator(">", operator.gt, comp=True)

    op_and       = Operator("&", operator.__and__, boolean=True, query=True)
    op_or        = Operator("|", operator.__or__, boolean=True, query=True)


def is_numeric(value):
    return isinstance(value, (int, float)) and not isinstance(value, bool)


def parse_string(s):
    assert s.startswith("\"") and s.endswith("\"")
    return bytes(s[1:-1], "utf-8").decode("unicode_escape")


def stringify_string(s):
    return "\"%s\"" % (s.encode("unicode_escape").decode("utf-8").replace("\"", "\\\""), )


def reroll(scope, stack, choicepoint):
    while stack:
        t = stack.pop()
        # DEBUG: print("unbind:", t)
        if t is choicepoint:
            return
        elif isinstance(t, Term):
            t.unbind(scope)


class Wildcard:
    def left_unify(self, right, scope, stack):
        return True

    def right_unify(self, right, scope, stack):
        return True

    def __str__(self):
        return "_"

    def __repr__(self):
        return "<Wildcard at %s>" % hex(id(self))


class Var:
    def left_unify(self, right, scope, stack):
        if self in scope:
            return unify(deref(self, scope), right, scope, stack)

        if isinstance(right, Wildcard):
            return True

        self.bind(evaluate(right, scope), scope, stack)
        return True

    def right_unify(self, left, scope, stack):
        if self in scope:
            return unify(left, deref(self), scope, stack)

        return self.left_unify(left, scope, stack)

    def bind(self, term, scope, stack):
        if self is term:
            return

        if self in scope:
            raise RuntimeError("already bound")

        scope[self] = term
        stack.append(self)

    def __str__(self):
        return "_X_%s_%x" % (hashlib.md5(str(id(self)).encode("utf-8")).hexdigest()[0:3], id(self))

    def __repr__(self):
        return "<Var %s>" % str(self)


class Literal:
    def __init__(self, functor, args=(), annots=()):
        self.functor = functor
        self.args = args
        self.annots = annots

    def left_unify(self, right, scope, stack):
        right = evaluate(right, scope)

        try:
            if self.functor != right.functor:
                return False

            if len(self.args) != len(right.args):
                return False
        except AttributeError:
            return False

        return all(unify(l, r, scope, stack) for l, r in zip(self.args, right.args))

    def right_unify(self, left, scope, stack):
        # TODO: Check annotations
        return self.left_unify(left, scope, stack)

    def is_atom(self):
        return not self.args and not self.annots

    def is_structure(self):
        return True

    def __bool__(self):
        return True

    def __len__(self):
        return len(self.args)

    def __str__(self):
        builder = []
        builder.append(self.functor)
        if self.args:
            builder.append("(")
            builder.append(", ".join(str(arg) for arg in self.args))
            builder.append(")")
        if self.annots:
            builder.append("[")
            builder.append(", ".join(str(annot) for annot in self.annots))
            builder.append("]")
        return "".join(builder)

    def __repr__(self):
        return "Literal(%s, %r, %r)" % (self.functor, self.args, self.annots)


def deref(term, scope):
    while term in scope:
        term = scope[term]
    return term


def evaluate(term, scope):
    if hasattr(term, "evaluate"):
        return term.evaluate(scope)
    else:
        return term


def unify(left, right, scope, stack):
    if hasattr(left, "left_unify"):
        return left.left_unify(right, scope, stack)
    elif hasattr(right, "right_unify"):
        return right.right_unify(left, scope, stack)
    elif isinstance(left, bool) or isinstance(right, bool):
        return left is right
    elif isinstance(left, (tuple, list)) and isinstance(right, (tuple, list)):
        if len(left) != len(right):
            return False

        return all(unify(l, r, scope, stack) for l, r in zip(left, right))
    else:
        return left == right


def unifies(left, right):
    scope = {}
    stack = collections.deque()
    return unify(left, right, scope, stack)


class Term:
    def __init__(self):
        self.variable = False
        self.wildcard = False

        self.unary_op = None
        self.operand = None

        self.binary_op = None
        self.left = None
        self.right = None

        self.functor = None
        self.args = []
        self.annotations = []

        self.numeric = None
        self.string = None
        self.list = None
        self.boolean = None

    def deref(self, scope):
        if self.variable and not self.wildcard and self in scope:
            return scope[self]
        else:
            return self

    def fold(self, scope):
        if self.unary_op:
            operand = self.operand.fold(scope)
            if self.unary_op.boolean_op:
                if operand.boolean is None:
                    raise PysonError("expected boolean for %s" % self.unary_op)

                term = Term()
                term.boolean = operand.func(operand.boolean)
                return term
            elif self.unary_op.numeric_op:
                if operand.numeric is None:
                    raise PysonError("expected number for %s" % self.unary_op)

                term = Term()
                term.numeric = operand.func(operand.numeric)
                return term
        elif self.binary_op:
            left = self.left.fold(scope)
            right = self.right.fold(scope)
            if self.binary_op.boolean_op:
                if left.boolean is None or right.boolean is None:
                    raise PysonError("expected booleans for %s", self.binary_op)

                term = Term()
                term.boolean = self.binary_op.func(left.boolean, right.boolean)
                return term
            elif self.binary_op.numeric_op:
                if left.numeric is None or right.numeric is None:
                    raise PysonError("expected numbers for %s", self.binary_op)

                term = Term()
                term.numeric = self.binary_op.func(left.numeric, right.numeric)
                return term
            else:
                term = Term()
                if self.binary_op.lexeme == "<":
                    term.boolean = left.lt(right)
                elif self.binary_op.lexeme == "<=":
                    term.boolean = left.lt(right) or left.eq(right)
                elif self.binary_op.lexeme == "==":
                    term.boolean = left.eq(right)
                elif self.binary_op.lexeme == "\\==":
                    term.boolean = not left.eq(right)
                elif self.binary_op.lexeme == ">=":
                    term.boolean = not left.lt(right)
                elif self.binary_op.lexeme == ">":
                    term.boolean = not left.lt(right) and not left.eq(right)
                return term
        elif self.variable and not self.wildcard and self in scope:
            return scope[self].fold(scope)
        else:
            return self

    def unify(self, term, scope, stack):
        if self.wildcard or term.wildcard:
            return True

        if self.variable and self in scope:
            return scope[self].unify(term, scope, stack)

        if term.variable and term in scope:
            return self.unify(scope[term], scope, stack)

        if self.unary_op or self.binary_op:
            return self.fold(scope).unify(term, scope, stack)

        if term.unary_op or term.binary_op:
            return self.unify(term.fold(scope), scope, stack)

        if self.variable:
            self.bind(term, scope)
            stack.append(self)
            return True

        if term.variable:
            term.bind(self, scope)
            stack.append(term)
            return True

        if self.numeric is not None:
            return self.numeric == term.numeric

        if self.string is not None:
            return self.string == term.string

        if self.boolean is not None:
            return self.boolean == term.boolean

        if self.list is not None:
            if term.list is None:
                return False

            if len(self.list) != len(term.list):
                return False

            return all(left.unify(right, scope, stack) for left, right in zip(self.list, term.list))

        if self.functor is not None:
            if self.functor != term.functor:
                return False

            if len(self.args) != len(term.args):
                return False

            if any(not left.unify(right, scope, stack) for left, right in zip(self.args, term.args)):
                return False

            # TODO: Check annotations.

            return True

        return False

    def bind(self, term, scope):
        if self is term:
            return

        if self in scope:
            raise RuntimeError("already bound")

        scope[self] = term

    def unbind(self, scope):
        try:
            del scope[self]
        except KeyError:
            pass

    def freeze(self, scope, memo):
        if self in memo:
            return memo[self]

        if self.variable and self in scope:
            return scope[self].freeze(scope, memo).fold(scope)

        if self.variable and not self.wildcard:
            memo[self] = term = Term()
            term.variable = True
            return term
        elif self.list is not None:
            memo[self] = term = Term()
            term.list = [t.freeze(scope, memo) for t in self.list]
            return term
        elif self.functor is not None:
            memo[self] = term = Term()
            term.functor = self.functor
            term.args = [t.freeze(scope, memo) for t in self.args]
            term.annotations = [t.freeze(scope, memo) for t in self.annotations]
            return term
        else:
            return self

    def grounded(self, scope):
        if self.variable:
            if not self.wildcard and self in scope:
                return scope[self].grounded(scope)
            else:
                raise PysonError("term not grounded")
        elif self.unary_op or self.binary_op:
            folded = self.fold(scope)
            if folded.unary_op or folded.binary_op:
                raise PysonError("term not grounded")
            else:
                return folded.grounded(scope)
        elif self.list is not None:
            term = Term()
            term.list = [t.grounded(scope) for t in self.list]
            return term
        elif self.functor is not None:
            term = Term()
            term.functor = self.functor
            term.args = [t.grounded(scope) for t in self.args]
            term.annotations = [t.grounded(scope) for t in self.annotations]
            return term
        else:
            return self

    def __str__(self):
        if self.variable and self.wildcard:
            return "_"
        elif self.variable:
            return "_X_%s_%x" % (hashlib.md5(str(id(self)).encode("utf-8")).hexdigest()[0:2], id(self))
        elif self.functor is not None:
            b = []
            b.append(self.functor)
            if self.args:
                b.append("(")
                b.append(", ".join(str(t) for t in self.args))
                b.append(")")
            if self.annotations:
                b.append("[")
                b.append(", ".join(str(t) for t in self.annotations))
                b.append("]")
            return "".join(b)
        elif self.numeric is not None:
            return str(self.numeric)
        elif self.string is not None:
            return stringify_string(self.string)
        elif self.boolean is not None:
            return "true" if self.boolean else "false"
        elif self.list is not None:
            return "[%s]" % (", ".join(str(t) for t in self.list))
        elif self.unary_op is not None:
            return "(%s %s)" % (self.unary_op.lexeme, self.operand)
        elif self.binary_op is not None:
            return "(%s %s %s)" % (self.left, self.binary_op.lexeme, self.right)

    def __eq__(self, other):
        if self.wildcard:
            return other.wildcard
        elif self.variable:
            return self is other
        else:
            return (self.functor == other.functor and
                    self.args == other.args and
                    self.annotations == other.annotations and
                    self.numeric == other.numeric and
                    self.string == other.string and
                    self.boolean == other.boolean and
                    self.list == other.list and
                    self.unary_op == other.unary_op and
                    self.operand == other.operand and
                    self.binary_op == other.binary_op and
                    self.left == other.left and
                    self.right == other.right)

    def __ne__(self, other):
        return not self.__eq__(other)

    def __hash__(self):
        if self.wildcard:
            return hash("_")
        elif self.variable:
            return hash(id(self))
        elif self.functor:
            return hash((self.functor, tuple(self.args), tuple(self.annotations)))
        elif self.list is not None:
            return hash(tuple(self.list))
        elif self.numeric is not None:
            return hash(self.numeric)
        elif self.string is not None:
            return hash(self.string)
        elif self.boolean is not None:
            return hash(self.boolean)
        elif self.unary_op:
            return hash((self.unary_op, self.operand))
        elif self.binary_op:
            return hash((self.left, self.binary_op, self.right))
        else:
            assert False

    def eq(self, other):
        if self.numeric is not None and other.numeric is not None:
            return self.numeric == other.numeric
        elif self.boolean is not None and other.boolean is not None:
            return self.boolean == other.boolean
        elif self.string is not None and other.string is not None:
            return self.string == other.string
        elif self.list is not None and other.list is not None:
            return self.list == other.list
        elif self.functor is not None and other.functor is not None:
            return self.functor == other.functor and self.args == other.args
        else:
            raise PysonError("not comparable: %s == %s" % (self, other))

    def lt(self, other):
        if self.numeric is not None and other.numeric is not None:
            return self.numeric < other.numeric
        elif self.boolean is not None and other.boolean is not None:
            return self.boolean < other.boolean
        elif self.string is not None and other.string is not None:
            return self.string < other.string
        elif self.list is not None and other.list is not None:
            return self.list < other.list
        elif self.functor is not None and other.functor is not None:
            return (self.functor, self.args) < (other.functor, other.args)
        else:
            raise PysonError("not comparable: %s < %s" % (self, other))

    @classmethod
    def make_variable(cls):
        term = cls()
        term.variable = True
        return term

    @classmethod
    def make_numeric(cls, numeric):
        term = cls()
        term.numeric = numeric
        return term

    @classmethod
    def make_string(cls, string):
        term = cls()
        term.string = string
        return term

    @classmethod
    def make_boolean(cls, boolean):
        term = cls()
        term.boolean = boolean
        return term

    @classmethod
    def make_belief(cls, functor, args=(), annotations=()):
        term = cls()
        term.functor = functor
        term.args = list(args)
        term.annotations = list(annotations)
        return term

    @classmethod
    def make_list(cls, args):
        term = cls()
        term.list = list(args)
        return term


def _convert(spec, term):
    if spec is bool:
        if term.boolean is None:
            raise PysonError("boolean required")
        return term.boolean
    elif spec is str:
        if term.string is None:
            raise PysonError("string required")
        return term.string
    elif spec is int:
        if term.numeric is None:
            raise PysonError("integer required")
        return int(term.numeric)
    elif spec is float:
        if term.numeric is None:
            raise PysonError("float required")
        return float(term.numeric)
    elif spec is Term:
        return term


class Actions:
    def __init__(self, parent=None):
        self.parent = parent
        self.actions = {}
        self.variadic_actions = {}

    def add(self, functor, arity=None, f=None):
        def _add(f):
            if arity is None:
                assert functor not in self.variadic_actions
                self.variadic_actions[functor] = f
            else:
                assert (functor, arity) not in self.actions
                self.actions[(functor, arity)] = f
            return f

        if f is None:
            return _add
        else:
            return _add(f)

    def add_function(self, functor, arg_specs, f=None):
        if not isinstance(arg_specs, (tuple, list)):
            arg_specs = (arg_specs, )

        def _add_function(f):
            def wrapper(agent, term, scope):
                converted_args = [_convert(spec, arg) for spec, arg in zip(arg_specs, term.args)]
                result = f(*converted_args)

                if result is None:
                    return
                elif isinstance(result, bool):
                    result_term = Term.make_boolean(result)
                elif is_numeric(result):
                    result_term = Term.make_numeric(result)
                elif isinstance(result, str):
                    result_term = Term.make_string(result)
                elif isinstance(result, Term):
                    result_term = result
                else:
                    raise PysonError("function result '%s' has unsupported type" % result)

                choicepoint = object()
                agent.stack.append(choicepoint)

                if term.args[-1].unify(result_term, scope, agent.stack):
                    yield

                reroll(scope, agent.stack, choicepoint)

            return self.add(functor, len(arg_specs) + 1, wrapper)

        if f is None:
            return _add_function
        else:
            return _add_function(f)

    def lookup(self, functor, arity):
        group = (functor, arity)
        if group in self.actions:
            return self.actions[group]
        elif functor in self.variadic_actions:
            return self.variadic_actions[functor]
        elif self.parent:
            return self.parent.lookup(functor, arity)
        else:
            raise KeyError("no such action: '%s/%d'" % (functor, arity))
