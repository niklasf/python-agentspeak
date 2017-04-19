#!/usr/bin/env python

import unittest
import logging
import os.path

from lxml import etree

import pyson.mapc2017


class BeliefTest(unittest.TestCase):

    def test_request_action(self):
        agent = pyson.mapc2017.Agent()
        with open(os.path.join(os.path.dirname(__file__), "request-action.xml")) as xml:
            agent.message_received(etree.parse(xml).getroot())

        agent.dump()


if __name__ == "__main__":
    logging.basicConfig(level=logging.DEBUG)
    unittest.main()
