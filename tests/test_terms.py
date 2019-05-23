#!/usr/bin/env python

import agentspeak


def test_unifies():
    assert not agentspeak.unifies(True, 1)

    assert agentspeak.unifies(3, 3.0)
    assert agentspeak.unifies(True, True)
    assert agentspeak.unifies(5, agentspeak.Wildcard())
    assert agentspeak.unifies((1, 2), (1, agentspeak.Wildcard()))
    assert agentspeak.unifies(("hello", 2), ("hello", agentspeak.Var()))

    assert agentspeak.unifies(agentspeak.Var(), agentspeak.Literal("beep"))
    assert agentspeak.unifies(agentspeak.Literal("boop"), agentspeak.Var())

    X = agentspeak.Var()
    assert agentspeak.unifies(agentspeak.Literal("foo", (X, X)), agentspeak.Literal("foo", (1, 1)))
    assert not agentspeak.unifies(agentspeak.Literal("bar", (X, X)), agentspeak.Literal("bar", (1, 2)))


def test_unifies_annotated():
    X = agentspeak.Var()
    Y = agentspeak.Var()
    foo_a = agentspeak.Literal("foo", (), ("a",))
    foo_ab = agentspeak.Literal("foo", (), ("a", "b"))
    foo_XY = agentspeak.Literal("foo", (), (X, Y))
    foo_XX = agentspeak.Literal("foo", (), (X, X))

    assert agentspeak.unifies_annotated(foo_a, foo_ab)
    assert agentspeak.unifies_annotated(foo_a, foo_XY)
    assert agentspeak.unifies_annotated(foo_a, foo_XX)
    assert agentspeak.unifies_annotated(foo_ab, foo_XY)
    assert agentspeak.unifies_annotated(foo_XY, foo_ab)
    assert agentspeak.unifies_annotated(foo_XX, foo_ab)
    assert agentspeak.unifies_annotated(foo_XX, foo_ab)

    assert not agentspeak.unifies_annotated(foo_ab, foo_XX)


def test_parse_string():
    assert agentspeak.parse_string('"hello"') == "hello"
    assert agentspeak.parse_string('"line 1\nline 2"') == "line 1\nline 2"


def test_is_number():
    assert agentspeak.is_number(1)
    assert agentspeak.is_number(-3.7)
    assert agentspeak.is_number(2 ** 128)

    assert not agentspeak.is_number("a string")
    assert not agentspeak.is_number(False)
    assert not agentspeak.is_number(True)
