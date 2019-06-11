#!/usr/bin/env python

import unittest

import agentspeak
import agentspeak.lexer
import agentspeak.parser


class ParserTest(unittest.TestCase):

    def test_formula_type(self):
        src = agentspeak.StringSource("<test>", "+!plan <- ?true.")
        log = agentspeak.Log(agentspeak.get_logger(__name__), 3)
        tokens = agentspeak.lexer.TokenStream(src, log)
        agentspeak.parser.parse("<test>", tokens, log, frozenset())

        with self.assertRaises(agentspeak.AggregatedError):
            log.throw()

    def test_rule_head_not_unifiable(self):
        src = agentspeak.StringSource("<test>", "rule(X + 1) :- true.")
        log = agentspeak.Log(agentspeak.get_logger(__name__), 3)
        tokens = agentspeak.lexer.TokenStream(src, log)
        agentspeak.parser.parse("<test>", tokens, log, frozenset())

        with self.assertRaises(agentspeak.AggregatedError):
            log.throw()

    def test_unexpected_eof(self):
        src = agentspeak.StringSource("<test>", "a")
        log = agentspeak.Log(agentspeak.get_logger(__name__), 3)
        tokens = agentspeak.lexer.TokenStream(src, log)

        with self.assertRaises(agentspeak.AggregatedError):
            agentspeak.parser.parse("<test>", tokens, log, frozenset())

    def test_unify_return_value(self):
        src = agentspeak.StringSource("<test>", "+!p <- (X = 2) + 1 > 0.")
        log = agentspeak.Log(agentspeak.get_logger(__name__), 3)
        tokens = agentspeak.lexer.TokenStream(src, log)

        with self.assertRaises(agentspeak.AggregatedError):
            agentspeak.parser.parse("<test>", tokens, log, frozenset())
            log.throw()


if __name__ == "__main__":
    unittest.main()
