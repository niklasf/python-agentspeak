#!/usr/bin/env python

import pytest

import agentspeak
import agentspeak.lexer
import agentspeak.parser


def test_formula_type():
    src = agentspeak.StringSource("<test>", "+!plan <- ?true.")
    log = agentspeak.Log(agentspeak.get_logger(__name__), 3)
    tokens = agentspeak.lexer.TokenStream(src, log)
    agentspeak.parser.parse("<test>", tokens, log, frozenset())

    with pytest.raises(agentspeak.AggregatedError):
        log.throw()


def test_rule_head_not_unifiable():
    src = agentspeak.StringSource("<test>", "rule(X + 1) :- true.")
    log = agentspeak.Log(agentspeak.get_logger(__name__), 3)
    tokens = agentspeak.lexer.TokenStream(src, log)
    agentspeak.parser.parse("<test>", tokens, log, frozenset())

    with pytest.raises(agentspeak.AggregatedError):
        log.throw()


def test_unexpected_eof():
    src = agentspeak.StringSource("<test>", "a")
    log = agentspeak.Log(agentspeak.get_logger(__name__), 3)
    tokens = agentspeak.lexer.TokenStream(src, log)

    with pytest.raises(agentspeak.AggregatedError):
        agentspeak.parser.parse("<test>", tokens, log, frozenset())


def test_unify_return_value():
    src = agentspeak.StringSource("<test>", "+!p <- (X = 2) + 1 > 0.")
    log = agentspeak.Log(agentspeak.get_logger(__name__), 3)
    tokens = agentspeak.lexer.TokenStream(src, log)

    with pytest.raises(agentspeak.AggregatedError):
        agentspeak.parser.parse("<test>", tokens, log, frozenset())
        log.throw()
