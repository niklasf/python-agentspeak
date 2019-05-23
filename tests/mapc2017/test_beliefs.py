#!/usr/bin/env python

import unittest
import logging
import os.path

from lxml import etree

import agentspeak
import agentspeak.runtime
import agentspeak.mapc2017


class BeliefTest(unittest.TestCase):

    def test_request_action(self):
        agent = agentspeak.mapc2017.Agent()
        with open(os.path.join(os.path.dirname(__file__), "request-action.xml")) as xml:
            agent.message_received(etree.parse(xml).getroot())

        term = agentspeak.Literal("money", (50000,))
        intention = agentspeak.runtime.Intention()
        self.assertTrue(agent.test_belief(term, intention))

        term = agentspeak.Literal("shop", ("shop1", 48.8217, 2.33207, 4, agentspeak.Var()))
        intention = agentspeak.runtime.Intention()
        self.assertTrue(agent.test_belief(term, intention))

        agent.dump()


if __name__ == "__main__":
    logging.basicConfig(level=logging.DEBUG)
    unittest.main()
