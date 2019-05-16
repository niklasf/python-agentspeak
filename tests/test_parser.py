#!/usr/bin/env python

import pytest

import pyson
import pyson.lexer
import pyson.parser


def test_formula_type():
    src = pyson.StringSource("<test>", "+!plan <- ?true.")
    log = pyson.Log(pyson.get_logger(__name__), 3)
    tokens = pyson.lexer.TokenStream(src, log)
    pyson.parser.parse("<test>", tokens, log, frozenset())

    with pytest.raises(pyson.AggregatedError):
        log.throw()


def test_rule_head_not_unifiable():
    src = pyson.StringSource("<test>", "rule(X + 1) :- true.")
    log = pyson.Log(pyson.get_logger(__name__), 3)
    tokens = pyson.lexer.TokenStream(src, log)
    pyson.parser.parse("<test>", tokens, log, frozenset())

    with pytest.raises(pyson.AggregatedError):
        log.throw()


def test_unexpected_eof():
    src = pyson.StringSource("<test>", "a")
    log = pyson.Log(pyson.get_logger(__name__), 3)
    tokens = pyson.lexer.TokenStream(src, log)

    with pytest.raises(pyson.AggregatedError):
        pyson.parser.parse("<test>", tokens, log, frozenset())


def test_unify_return_value():
    src = pyson.StringSource("<test>", "+!p <- (X = 2) + 1 > 0.")
    log = pyson.Log(pyson.get_logger(__name__), 3)
    tokens = pyson.lexer.TokenStream(src, log)

    with pytest.raises(pyson.AggregatedError):
        pyson.parser.parse("<test>", tokens, log, frozenset())
        log.throw()
