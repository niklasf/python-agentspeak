#!/usr/bin/env python

import unittest
import agentspeak


class TermTest(unittest.TestCase):

    def test_unifies(self):
        self.assertFalse(agentspeak.unifies(True, 1))

        self.assertTrue(agentspeak.unifies(3, 3.0))
        self.assertTrue(agentspeak.unifies(True, True))
        self.assertTrue(agentspeak.unifies(5, agentspeak.Wildcard()))
        self.assertTrue(agentspeak.unifies((1, 2), (1, agentspeak.Wildcard())))
        self.assertTrue(agentspeak.unifies(("hello", 2), ("hello", agentspeak.Var())))

        self.assertTrue(agentspeak.unifies(agentspeak.Var(), agentspeak.Literal("beep")))
        self.assertTrue(agentspeak.unifies(agentspeak.Literal("boop"), agentspeak.Var()))

        X = agentspeak.Var()
        self.assertTrue(agentspeak.unifies(agentspeak.Literal("foo", (X, X)), agentspeak.Literal("foo", (1, 1))))
        self.assertFalse(agentspeak.unifies(agentspeak.Literal("bar", (X, X)), agentspeak.Literal("bar", (1, 2))))

    def test_unifies_annotated(self):
        X = agentspeak.Var()
        Y = agentspeak.Var()
        foo_a = agentspeak.Literal("foo", (), ("a", ))
        foo_ab = agentspeak.Literal("foo", (), ("a", "b"))
        foo_XY = agentspeak.Literal("foo", (), (X, Y))
        foo_XX = agentspeak.Literal("foo", (), (X, X))

        self.assertTrue(agentspeak.unifies_annotated(foo_a, foo_ab))
        self.assertTrue(agentspeak.unifies_annotated(foo_a, foo_XY))
        self.assertTrue(agentspeak.unifies_annotated(foo_a, foo_XX))
        self.assertTrue(agentspeak.unifies_annotated(foo_ab, foo_XY))
        self.assertTrue(agentspeak.unifies_annotated(foo_XY, foo_ab))
        self.assertTrue(agentspeak.unifies_annotated(foo_XX, foo_ab))
        self.assertTrue(agentspeak.unifies_annotated(foo_XX, foo_ab))

        self.assertFalse(agentspeak.unifies_annotated(foo_ab, foo_XX))
        self.assertFalse(agentspeak.unifies_annotated(foo_XY, foo_a))

    def test_parse_string(self):
        self.assertEqual(agentspeak.parse_string('"hello"'), "hello")
        self.assertEqual(agentspeak.parse_string('"line 1\nline 2"'), "line 1\nline 2")

    def test_is_number(self):
        self.assertTrue(agentspeak.is_number(1))
        self.assertTrue(agentspeak.is_number(-3.7))
        self.assertTrue(agentspeak.is_number(2 ** 128))

        self.assertFalse(agentspeak.is_number("a string"))
        self.assertFalse(agentspeak.is_number(False))
        self.assertFalse(agentspeak.is_number(True))


if __name__ == "__main__":
    unittest.main()
