#!/usr/bin/env python

import unittest

import agentspeak
import agentspeak.runtime
import agentspeak.stdlib


class StdlibTest(unittest.TestCase):

    def test_concat_strings(self):
        env = agentspeak.runtime.Environment()
        agent = agentspeak.runtime.Agent(env, "agent")
        intention = agentspeak.runtime.Intention()
        X = agentspeak.Var()

        term = agentspeak.Literal(".concat", ("hello", " ", "world", X))
        next(agentspeak.stdlib._concat(agent, term, intention))

        self.assertEqual(X.grounded(intention.scope), "hello world")

    def test_concat_lists(self):
        env = agentspeak.runtime.Environment()
        agent = agentspeak.runtime.Agent(env, "agent")
        intention = agentspeak.runtime.Intention()
        X = agentspeak.Var()

        term = agentspeak.Literal(".concat", ((1, 2), (3, ), X))
        next(agentspeak.stdlib._concat(agent, term, intention))

        self.assertEqual(X.grounded(intention.scope), (1, 2, 3))


if __name__ == "__main__":
    unittest.main()
