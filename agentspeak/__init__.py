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

"""JASON-style AgentSpeak for Python."""

__author__ = "Niklas Fiekas"

__email__ = "niklas.fiekas@backscattering.de"

__version__ = "0.1.0"


import enum
import collections
import logging
import sys
import colorama
import operator
import hashlib
import numbers

try:
    from StringIO import StringIO  # Python 2
except ImportError:
    from io import StringIO  # Python 3


SourceLocation = collections.namedtuple("SourceLocation",
                                        "filename lineno startcol endcol line")


class StringSource(object):
    def __init__(self, name, string):
        self.name = name
        self.src = StringIO(string)

    def __iter__(self):
        return iter(self.src)


class LogHandler(logging.StreamHandler):
    """A :class:`logging.StreamHandler` with color support."""

    def __init__(self, stream):
        wrapper = colorama.AnsiToWin32(stream)
        if wrapper.should_wrap():
            stream = wrapper.stream

        super(LogHandler, self).__init__(stream)


class LogFormatter(logging.Formatter):
    """
    A log formatter that will use different colors for infos, warnings and
    errors.

    Optionally shows annotated source excerpts if a primary location *loc*
    or a list of secondary locations *extra_locs* are given as extras to the
    logger.
    """

    def formatMessage(self, record):
        b = []

        if record.levelno >= logging.INFO:
            b.append(colorama.Style.BRIGHT)

        # Add source location.
        loc = record.__dict__.get("loc")
        if loc:
            b.append("%s:%d:%d: " % (loc.filename, loc.lineno, loc.startcol + 1))

        # Add error level.
        if record.levelno >= logging.CRITICAL:
            b.append(colorama.Fore.RED + "critical: " + colorama.Fore.Reset)
        elif record.levelno >= logging.ERROR:
            b.append(colorama.Fore.RED + "error: " + colorama.Fore.RESET)
        elif record.levelno >= logging.WARNING:
            b.append(colorama.Fore.MAGENTA + "warning: " + colorama.Fore.RESET)
        elif record.levelno >= logging.INFO:
            b.append(colorama.Fore.BLACK + "info: " + colorama.Fore.RESET)
        else:
            b.append(colorama.Style.BRIGHT + "debug: " + colorama.Style.NORMAL)

        # Add log message.
        b.append(super(LogFormatter, self).formatMessage(record))
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
        super(AggregatedError, self).__init__("%d %s and %d %s" % (
            num_errors, "errors" if num_errors != 1 else "error",
            num_warnings, "warnings" if num_warnings != 1 else "warning"))

        self.num_errors = num_errors
        self.num_warnings = num_warnings


class AslError(Exception):
    pass


class Log(object):
    def __init__(self, logger, max_errors=None):
        self.logger = logger
        self.max_errors = max_errors
        self.num_errors = 0
        self.num_warnings = 0

    def exception(self, msg, *args, **kwargs):
        loc = kwargs.get("loc", None)
        extra_locs = kwargs.get("extra_locs", ())

        self.num_errors += 1
        self.logger.exception(msg, *args, extra={"loc": loc, "extra_locs": extra_locs})
        if self.max_errors is not None and self.num_errors >= self.max_errors:
            raise AggregatedError(self.num_errors, self.num_warnings)
        else:
            return AggregatedError(self.num_errors, self.num_warnings)

    def error(self, msg, *args, **kwargs):
        loc = kwargs.get("loc", None)
        extra_locs = kwargs.get("extra_locs", ())

        self.num_errors += 1
        self.logger.error(msg, *args, extra={"loc": loc, "extra_locs": extra_locs})
        if self.max_errors is not None and self.num_errors >= self.max_errors:
            raise AggregatedError(self.num_errors, self.num_warnings)
        else:
            return AggregatedError(self.num_errors, self.num_warnings)

    def warning(self, msg, *args, **kwargs):
        loc = kwargs.get("loc", None)
        extra_locs = kwargs.get("extra_locs", ())

        self.num_warnings += 1
        self.logger.warning(msg, *args, extra={"loc": loc, "extra_locs": extra_locs})

    def info(self, msg, *args, **kwargs):
        loc = kwargs.get("loc", None)
        extra_locs = kwargs.get("extra_locs", ())

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
    tellHow     = "+^"
    askHow      = "+?"


@enum.unique
class FormulaType(enum.Enum):
    term          = ""
    test          = "?"
    achieve       = "!"
    achieve_later = "!!"
    add           = "+"
    remove        = "-"
    replace       = "-+"


class Operator(object):
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


KEYWORDS = ["true", "false", "not", "div", "mod", "if", "else", "while", "for",
            "include", "begin", "end"]

def sanitize_functor(s):
    """Transliterates s into a valid functor."""
    alnum = "".join(ch if ch.isalnum() else "_" for ch in s).lstrip("_")
    functor = alnum[:1].lower() + alnum[1:] if alnum else ""
    while functor in KEYWORDS:
        functor += "_"
    return functor


def parse_string(s):
    """Parses a double quoted string."""
    assert s.startswith("\"") and s.endswith("\"")
    return s[1:-1].encode("utf-8").decode("unicode_escape")


def asl_str(term):
    """Converts the term to a string (similar to Python :func:`str`)."""
    if term is True:
        return "true"
    elif term is False:
        return "false"
    elif isinstance(term, tuple):
        return "[%s]" % (", ".join(asl_str(t) for t in term))
    elif isinstance(term, float) and term.is_integer():
        return str(int(term))
    else:
        return str(term)


def asl_repr(term):
    """
    Converts the term to its string representation
    (similar to Python :func:`repr`).
    """
    if term is True:
        return "true"
    elif term is False:
        return "false"
    elif isinstance(term, str):
        return "\"%s\"" % (term.encode("unicode_escape").decode("utf-8").replace("\"", "\\\""), )
    elif isinstance(term, tuple):
        return "[%s]" % (", ".join(asl_repr(t) for t in term))
    elif isinstance(term, float) and term.is_integer():
        return repr(int(term))
    else:
        try:
            return term.asl_repr()
        except AttributeError:
            return repr(term)


def is_number(term):
    """Checks if the given term is numeric."""
    return isinstance(term, numbers.Number) and not isinstance(term, bool)


def is_atom(term):
    """
    Checks if the given term is an atom
    (a literal with arity 0 and no annotations).
    """
    try:
        return term.is_atom()
    except AttributeError:
        return False


def is_string(term):
    """
    Checks if the given term is a string.
    """
    return isinstance(term, str)


def is_list(term):
    """
    Checks if the given term is a list (represented by a Python tuple).
    """
    return isinstance(term, (tuple, LinkedList))


def is_literal(term):
    """
    Checks if the given term is a literal.
    """
    return isinstance(term, Literal)


def is_structure(term):
    """
    Checks if the given term is a structure.
    """
    return is_literal(term) or is_list(term)


def reroll(scope, stack, choicepoint):
    while stack:
        t = stack.pop()
        if t is choicepoint:
            return
        else:
            # Ignores other choicepoints.
            scope.pop(t, None)


class Var(object):
    def unify(self, right, scope, stack):
        if self in scope:
            return unify(deref(self, scope), right, scope, stack)

        if isinstance(right, Wildcard):
            return True

        self.bind(evaluate(right, scope), scope, stack)
        return True

    def is_ground(self, scope):
        if self in scope:
            return is_ground(deref(self, scope), scope)

        return False

    def grounded(self, scope):
        if self in scope:
            return grounded(deref(self, scope), scope)

        raise AslError("term not ground")

    def freeze(self, scope, memo):
        if self in memo:
            return memo[self]

        if self in scope:
            return freeze(deref(self, scope), scope, memo)

        memo[self] = frozen = Var()
        return frozen

    def evaluate(self, scope):
        if self in scope:
            return evaluate(deref(self, scope), scope)

        return self

    def bind(self, term, scope, stack):
        if self is term:
            return

        if self in scope:
            raise RuntimeError("already bound")

        scope[self] = term
        stack.append(self)

    def asl_repr(self):
        return "_X_%s_%x" % (hashlib.md5(str(id(self)).encode("utf-8")).hexdigest()[0:3], id(self))

    __str__ = asl_repr

    def __repr__(self):
        return "<Var (%s)>" % str(self)


class Wildcard(Var):
    def unify(self, right, scope, stack):
        return True

    def is_ground(self, scope):
        return False

    def grounded(self, scope):
        raise AslError("wildcard is never ground")

    def freeze(self, scope, memo):
        return self

    def evaluate(self, scope):
        return self

    def bind(self, term, scope, stack):
        pass

    def asl_repr(self):
        return "_"

    __str__ = asl_repr

    def __repr__(self):
        return "<Wildcard at %s>" % hex(id(self))


class UnaryExpr(object):
    def __init__(self, unary_op, operand):
        self.unary_op = unary_op
        self.operand = operand

    def unify(self, right, scope, stack):
        return unify(self.evaluate(scope), right, scope, stack)

    def evaluate(self, scope):
        operand = evaluate(self.operand, scope)

        if self.unary_op.boolean_op and not isinstance(operand, bool):
            raise AslError("bad operand type for unary %s: %r" % (self.unary_op.lexeme, type(operand)))
        elif self.unary_op.numeric_op and not is_number(operand):
            raise AslError("bad operand type for binary %s: %r" % (self.unary_op.lexeme, type(operand)))

        return self.unary_op.func(operand)

    def is_ground(self, scope):
        return is_ground(self.operand, scope)

    def grounded(self, scope):
        return grounded(self.evaluate(scope), scope)

    def freeze(self, scope, memo):
        return freeze(self.evaluate(scope), scope, memo)

    def asl_repr(self):
        return "(%s %s)" % (self.unary_op.lexeme, asl_repr(self.operand))

    __str__ = asl_repr

    def __repr__(self):
        return "<UnaryExpr %s>" % str(self)


class BinaryExpr(object):
    def __init__(self, binary_op, left, right):
        self.binary_op = binary_op
        self.left = left
        self.right = right

    def unify(self, right, scope, stack):
        return unify(self.evaluate(scope), right, scope, stack)

    def evaluate(self, scope):
        left = evaluate(self.left, scope)
        right = evaluate(self.right, scope)

        if self.binary_op.boolean_op and (not isinstance(left, bool) or not isinstance(right, bool)):
            raise AslError("bad operand types for binary op: %r %s %r" % (type(left), self.binary_op.lexeme, type(right)))
        elif self.binary_op.numeric_op and (not is_number(left) or not is_number(right)):
            raise AslError("bad operand types for binary op: %r %s %r" % (type(left), self.binary_op.lexeme, type(right)))
        elif self.binary_op.comp_op:
            left = grounded(left, scope)
            right = grounded(right, scope)

        return self.binary_op.func(left, right)

    def is_ground(self, scope):
        return is_ground(self.left, scope) and is_ground(self.right, scope)

    def grounded(self, scope):
        return grounded(self.evaluate(scope), scope)

    def freeze(self, scope, memo):
        return freeze(self.evaluate(scope), scope, memo)

    def asl_repr(self):
        return "(%s %s %s)" % (asl_repr(self.left), self.binary_op.lexeme, asl_repr(self.right))

    __str__ = asl_repr

    def __repr__(self):
        return "<BinaryExpr %s>" % str(self)


class Literal(object):
    def __init__(self, functor, args=(), annots=frozenset()):
        self.functor = functor
        self.args = tuple(args)
        self.annots = frozenset(annots)

    def with_annotation(self, annot):
        return Literal(self.functor, self.args, self.annots | frozenset([annot]))

    def literal_group(self):
        return (self.functor, len(self.args))

    def unify(self, right, scope, stack):
        right = evaluate(right, scope)

        if isinstance(right, Var):
            return right.unify(self, scope, stack)

        try:
            if self.functor != right.functor:
                return False

            if len(self.args) != len(right.args):
                return False
        except AttributeError:
            return False

        return all(unify(l, r, scope, stack) for l, r in zip(self.args, right.args))

    def unify_annotated(self, right, scope, stack):
        right = evaluate(right, scope)

        if isinstance(right, Var):
            choicepoint = object()
            if right.unify(self, scope, stack):
                yield
            reroll(scope, stack, choicepoint)
            return

        choicepoint = object()
        stack.append(choicepoint)
        if self.unify(right, scope, stack):
            closed_right_annots = set()
            for left_annot in self.annots:
                found_right = False

                for right_annot in right.annots:
                    if right_annot in closed_right_annots:
                        continue

                    for _ in unify_annotated(left_annot, right_annot, scope, stack):
                        found_right = True
                        closed_right_annots.add(right_annot)
                        break

                    if found_right:
                        break

                if not found_right:
                    reroll(scope, stack, choicepoint)
                    return
            yield
        reroll(scope, stack, choicepoint)

    def is_atom(self):
        return not self.args and not self.annots

    def is_ground(self, scope):
        return (all(is_ground(arg, scope) for arg in self.args) and
                all(is_ground(annot, scope) for annot in self.annots))

    def grounded(self, scope):
        return Literal(
            self.functor,
            (grounded(arg, scope) for arg in self.args),
            (grounded(annot, scope) for annot in self.annots))

    def freeze(self, scope, memo):
        return Literal(
            self.functor,
            (freeze(arg, scope, memo) for arg in self.args),
            (freeze(annot, scope, memo) for annot in self.annots))

    def __bool__(self):
        return True

    __nonzero__ = __bool__

    def __len__(self):
        return len(self.args)

    def asl_repr(self):
        builder = []
        builder.append(self.functor)
        if self.args:
            builder.append("(")
            builder.append(", ".join(asl_repr(arg) for arg in self.args))
            builder.append(")")
        if self.annots:
            builder.append("[")
            builder.append(", ".join(asl_repr(annot) for annot in self.annots))
            builder.append("]")
        return "".join(builder)

    __str__ = asl_repr

    def __repr__(self):
        return "Literal(%s, %r, %r)" % (self.functor, self.args, self.annots)

    def __eq__(self, other):
        return not self.__ne__(other)

    def __ne__(self, other):
        return not is_literal(other) or self.functor != other.functor or self.args != other.args or self.annots != other.annots

    def __lt__(self, other):
        if is_literal(other) and self.is_atom() and other.is_atom():
            return self.functor < other.functor
        if not is_literal(other) or self.functor != other.functor or len(self.args) != len(other.args):
            return NotImplemented
        return self.args < other.args

    def __le__(self, other):
        if is_literal(other) and self.is_atom() and other.is_atom():
            return self.functor <= other.functor
        if not is_literal(other) or self.functor != other.functor or len(self.args) != len(other.args):
            return NotImplemented
        return self.args <= other.args

    def __gt__(self, other):
        if is_literal(other) and self.is_atom() and other.is_atom():
            return self.functor > other.functor
        if not is_literal(other) or self.functor != other.functor or len(self.args) != len(other.args):
            return NotImplemented
        return self.args > other.args

    def __ge__(self, other):
        if is_literal(other) and self.is_atom() and other.is_atom():
            return self.functor >= other.functor
        if not is_literal(other) or self.functor != other.functor or len(self.args) != len(other.args):
            return NotImplemented
        return self.args >= other.args

    def __hash__(self):
        return hash((self.functor, self.args, self.annots))


class LinkedList(object):
    def __init__(self, head, tail):
        self.head = head
        self.tail = tail

    def unify(self, right, scope, stack):
        right = evaluate(right, scope)

        if isinstance(right, Var):
            return right.unify(self, scope, stack)
        elif isinstance(right, tuple):
            return (len(right) >= 1 and
                    unify(self.head, right[0], scope, stack) and
                    unify(self.tail, right[1:], scope, stack))
        else:
            try:
                return (unify(self.head, right.head, scope, stack) and
                        unify(self.tail, right.tail, scope, stack))
            except AttributeError:
                return False

    def is_ground(self, scope):
        return is_ground(self.head, scope) and is_ground(self.tail, scope)

    def grounded(self, scope):
        return LinkedList(grounded(self.head, scope), grounded(self.tail, scope))

    def freeze(self, scope, memo):
        return LinkedList(
            freeze(self.head, scope, memo),
            freeze(self.tail, scope, memo))

    def __bool__(self):
        return True

    __nonzero__ = __bool__

    def __len__(self):
        return 1 + len(self.tail)

    def asl_repr(self):
        builder = []
        builder.append("[")
        builder.append(asl_repr(self.head))
        builder.append("|")
        builder.append(asl_repr(self.tail))
        builder.append("]")
        return "".join(builder)

    __str__ = asl_repr

    def __repr__(self):
        return "LinkedList(%s, %s)" % (self.head, self.tail)

    def __iter__(self):
        yield self.head
        for item in self.tail:
            yield item

    def __eq__(self, other):
        return not self.__ne__(other)

    def __ne__(self, other):
        return not is_list(other) or tuple(self) != tuple(other)

    def __lt__(self, other):
        return tuple(self) < tuple(other) if is_list(other) else NotImplemented

    def __le__(self, other):
        return tuple(self) <= tuple(other) if is_list(other) else NotImplemented

    def __gt__(self, other):
        return tuple(self) > tuple(other) if is_list(other) else NotImplemented

    def __ge__(self, other):
        return tuple(self) >= tuple(other) if is_list(other) else NotImplemented

    def __hash__(self):
        try:
            return hash(tuple(self))
        except TypeError:
            return hash((self.head, self.tail))


def deref(term, scope):
    """
    Dereferences a variable.
    """
    while term in scope:
        term = scope[term]
    return term


def evaluate(term, scope):
    """
    Evaluates expressions and dereferences variables. Does not recursively
    evaluate structures.
    """
    if hasattr(term, "evaluate"):
        return term.evaluate(scope)
    else:
        return term


def unify(left, right, scope, stack):
    """
    Unifies the two given terms. Variable bindings are done in *scope* and
    appended to *stack*.
    """
    if hasattr(left, "unify"):
        return left.unify(right, scope, stack)
    elif hasattr(right, "unify"):
        return right.unify(left, scope, stack)
    elif isinstance(left, bool) or isinstance(right, bool):
        return left is right
    elif isinstance(left, tuple) and isinstance(right, tuple):
        if len(left) != len(right):
            return False

        return all(unify(l, r, scope, stack) for l, r in zip(left, right))
    else:
        return left == right


def unifies(left, right):
    """Tests if the two given terms are unifiable."""
    scope = {}
    stack = collections.deque()
    return unify(left, right, scope, stack)


def unify_annotated(left, right, scope, stack):
    if hasattr(left, "unify_annotated"):
        for _ in left.unify_annotated(right, scope, stack):
            yield
    else:
        choicepoint = object()
        stack.append(choicepoint)
        if unify(left, right, scope, stack):
            yield
        reroll(scope, stack, choicepoint)


def unifies_annotated(left, right):
    scope = {}
    stack = collections.deque()
    for _ in unify_annotated(left, right, scope, stack):
        return True
    return False


def is_ground(term, scope):
    if hasattr(term, "is_ground"):
        return term.is_ground(scope)
    elif isinstance(term, tuple):
        return all(is_ground(t, scope) for t in term)
    else:
        return True


def grounded(term, scope):
    if hasattr(term, "grounded"):
        return term.grounded(scope)
    elif isinstance(term, tuple):
        return tuple(grounded(t, scope) for t in term)
    else:
        return term


def freeze(term, scope, memo):
    if hasattr(term, "freeze"):
        return term.freeze(scope, memo)
    elif isinstance(term, tuple):
        return tuple(freeze(t, scope, memo) for t in term)
    else:
        return term


def _zip_specs(specs, agent, args, scope):
    import agentspeak.runtime

    result = []
    memo = {}

    args = iter(args)

    for spec in specs:
        if spec is agentspeak.runtime.Environment:
            result.append(agent.env)
        elif spec is agentspeak.runtime.Agent:
            result.append(agent)
        else:
            arg = freeze(next(args), scope, memo)

            if spec is None:
                pass
            elif spec is int:
                arg = int(arg)
            elif spec is float:
                arg = float(arg)
            elif spec is asl_str:
                arg = asl_str(arg)
            elif spec is tuple:
                arg = tuple(arg)
            elif not isinstance(arg, spec):
                raise AslError("spec '%s' does not match '%s'" % (spec, type(arg)))

            result.append(arg)

    return result


def _count_specs(specs):
    import agentspeak.runtime

    count = 0
    for spec in specs:
        if spec is agentspeak.runtime.Environment:
            continue
        elif spec is agentspeak.runtime.Agent:
            continue
        else:
            count += 1
    return count


class Actions(object):
    def __init__(self, parent=None):
        self.parent = parent
        self.actions = {}
        self.variadic_actions = {}

    def add(self, functor, arity=None, f=None):
        def _add(f):
            if arity is None:
                assert functor not in self.variadic_actions, "%s/* already exists" % (functor, )
                self.variadic_actions[functor] = f
            else:
                assert (functor, arity) not in self.actions, "%s/%d already exists" % (functor, arity)
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
            def wrapper(agent, term, intention):
                result = f(*_zip_specs(arg_specs, agent, term.args, intention.scope))

                if unify(term.args[-1], result, intention.scope, intention.stack):
                    yield

            return self.add(functor, _count_specs(arg_specs) + 1, wrapper)

        # Marker for the optimizer
        _add_function.is_function = True

        if f is None:
            return _add_function
        else:
            return _add_function(f)

    def add_predicate(self, functor, arg_specs, f=None):
        if not isinstance(arg_specs, (tuple, list)):
            arg_specs = (arg_specs, )

        def _add_predicate(f):
            def wrapper(agent, term, intention):
                if f(*_zip_specs(arg_specs, agent, term.args, intention.scope)):
                    yield

            return self.add(functor, _count_specs(arg_specs), wrapper)

        # Marker for the optimizer
        _add_predicate.is_procedure = True

        if f is None:
            return _add_predicate
        else:
            return _add_predicate(f)

    def add_procedure(self, functor, arg_specs, f=None):
        if not isinstance(arg_specs, (tuple, list)):
            arg_specs = (arg_specs, )

        def _add_procedure(f):
            def wrapper(agent, term, intention):
                f(*_zip_specs(arg_specs, agent, term.args, intention.scope))
                yield

            return self.add(functor, _count_specs(arg_specs), wrapper)

        # Marker for the optimizer
        _add_procedure.is_procedure = True

        if f is None:
            return _add_procedure
        else:
            return _add_procedure(f)

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
