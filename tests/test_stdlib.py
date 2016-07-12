#!/usr/bin/env python

import unittest

import pyson
import pyson.stdlib
import pyson.runtime


class StdlibTest(unittest.TestCase):

    def test_concat_strings(self):
        agent = pyson.runtime.Agent()
        scope = {}
        X = pyson.Var()

        term = pyson.Literal(".concat", ("hello", " ", "world"))
        next(pyson.stdlib._concat(agent, term, scope))

        self.assertEqual(X.grounded(scope), "hello world")

    def test_concat_lists(self):
        agent = pyson.runtime.Agent()
        scope = {}
        X = pyson.Var()

        term = pyson.Literal(".concat", ([1, 2], [3]))
        next(pyson.stdlib._concat(agent, term, scope))

        self.assertEqual(X.grounded(scope), [1, 2, 3])


if __name__ == "__main__":
    unittest.main()
