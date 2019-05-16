#!/usr/bin/env python

import pyson


def test_unifies():
    assert not pyson.unifies(True, 1)

    assert pyson.unifies(3, 3.0)
    assert pyson.unifies(True, True)
    assert pyson.unifies(5, pyson.Wildcard())
    assert pyson.unifies((1, 2), (1, pyson.Wildcard()))
    assert pyson.unifies(("hello", 2), ("hello", pyson.Var()))

    assert pyson.unifies(pyson.Var(), pyson.Literal("beep"))
    assert pyson.unifies(pyson.Literal("boop"), pyson.Var())

    X = pyson.Var()
    assert pyson.unifies(pyson.Literal("foo", (X, X)), pyson.Literal("foo", (1, 1)))
    assert not pyson.unifies(pyson.Literal("bar", (X, X)), pyson.Literal("bar", (1, 2)))


def test_unifies_annotated():
    X = pyson.Var()
    Y = pyson.Var()
    foo_a = pyson.Literal("foo", (), ("a",))
    foo_ab = pyson.Literal("foo", (), ("a", "b"))
    foo_XY = pyson.Literal("foo", (), (X, Y))
    foo_XX = pyson.Literal("foo", (), (X, X))

    assert pyson.unifies_annotated(foo_a, foo_ab)
    assert pyson.unifies_annotated(foo_a, foo_XY)
    assert pyson.unifies_annotated(foo_a, foo_XX)
    assert pyson.unifies_annotated(foo_ab, foo_XY)
    assert pyson.unifies_annotated(foo_XY, foo_ab)
    assert pyson.unifies_annotated(foo_XX, foo_ab)
    assert pyson.unifies_annotated(foo_XX, foo_ab)

    assert not pyson.unifies_annotated(foo_ab, foo_XX)


def test_parse_string():
    assert pyson.parse_string('"hello"') == "hello"
    assert pyson.parse_string('"line 1\nline 2"') == "line 1\nline 2"


def test_is_number():
    assert pyson.is_number(1)
    assert pyson.is_number(-3.7)
    assert pyson.is_number(2 ** 128)

    assert not pyson.is_number("a string")
    assert not pyson.is_number(False)
    assert not pyson.is_number(True)
