#!/usr/bin/env python

import unittest
import pyson


class TermTest(unittest.TestCase):

    def test_unifies(self):
        self.assertFalse(pyson.unifies(True, 1))

        self.assertTrue(pyson.unifies(3, 3.0))
        self.assertTrue(pyson.unifies(True, True))
        self.assertTrue(pyson.unifies(5, pyson.Wildcard()))
        self.assertTrue(pyson.unifies((1, 2), (1, pyson.Wildcard())))
        self.assertTrue(pyson.unifies(("hello", 2), ("hello", pyson.Var())))

        self.assertTrue(pyson.unifies(pyson.Var(), pyson.Literal("beep")))
        self.assertTrue(pyson.unifies(pyson.Literal("boop"), pyson.Var()))

        X = pyson.Var()
        self.assertTrue(pyson.unifies(pyson.Literal("foo", (X, X)), pyson.Literal("foo", (1, 1))))
        self.assertFalse(pyson.unifies(pyson.Literal("bar", (X, X)), pyson.Literal("bar", (1, 2))))

    def test_unifies_annotated(self):
        X = pyson.Var()
        Y = pyson.Var()
        foo_a = pyson.Literal("foo", (), ("a", ))
        foo_ab = pyson.Literal("foo", (), ("a", "b"))
        foo_XY = pyson.Literal("foo", (), (X, Y))
        foo_XX = pyson.Literal("foo", (), (X, X))

        self.assertTrue(pyson.unifies_annotated(foo_a, foo_ab))
        self.assertTrue(pyson.unifies_annotated(foo_a, foo_XY))
        self.assertTrue(pyson.unifies_annotated(foo_a, foo_XX))
        self.assertTrue(pyson.unifies_annotated(foo_ab, foo_XY))
        self.assertTrue(pyson.unifies_annotated(foo_XY, foo_ab))
        self.assertTrue(pyson.unifies_annotated(foo_XX, foo_ab))
        self.assertTrue(pyson.unifies_annotated(foo_XX, foo_ab))

        self.assertFalse(pyson.unifies_annotated(foo_ab, foo_XX))
        self.assertFalse(pyson.unifies_annotated(foo_XY, foo_a))

    def test_parse_string(self):
        self.assertEqual(pyson.parse_string('"hello"'), "hello")
        self.assertEqual(pyson.parse_string('"line 1\nline 2"'), "line 1\nline 2")

    def test_is_number(self):
        self.assertTrue(pyson.is_number(1))
        self.assertTrue(pyson.is_number(-3.7))
        self.assertTrue(pyson.is_number(2 ** 128))

        self.assertFalse(pyson.is_number("a string"))
        self.assertFalse(pyson.is_number(False))
        self.assertFalse(pyson.is_number(True))


if __name__ == "__main__":
    unittest.main()
