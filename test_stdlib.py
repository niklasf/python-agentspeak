#!/usr/bin/env python

import unittest

import pyson
import pyson.stdlib
import pyson.runtime


class StdlibTest(unittest.TestCase):

    def test_concat_strings(self):
        agent = pyson.runtime.Agent()
        scope = {}
        X = pyson.Term.make_variable()

        term = pyson.Term.make_belief(".concat", (
            pyson.Term.make_string("hello"),
            pyson.Term.make_string(" "),
            pyson.Term.make_string("world"),
            X))

        next(pyson.stdlib._concat(agent, term, scope))

        self.assertEqual(X.grounded(scope).string, "hello world")

    def test_concat_lists(self):
        agent = pyson.runtime.Agent()
        scope = {}
        X = pyson.Term.make_variable()

        one = pyson.Term.make_numeric(1)
        two = pyson.Term.make_numeric(2)
        three = pyson.Term.make_numeric(3)

        term = pyson.Term.make_belief(".concat", (
            pyson.Term.make_list([one, two]),
            pyson.Term.make_list([three]),
            X))

        next(pyson.stdlib._concat(agent, term, scope))

        self.assertEqual(X.grounded(scope).list, [one, two, three])


if __name__ == "__main__":
    unittest.main()
