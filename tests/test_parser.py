#!/usr/bin/env python

import unittest

import pyson
import pyson.lexer
import pyson.parser


class ParserTest(unittest.TestCase):

    def test_formula_type(self):
        src = pyson.StringSource("<test>", "+!plan <- ?true.")
        log = pyson.Log(pyson.get_logger(__name__), 3)
        tokens = pyson.lexer.TokenStream(src, log)
        pyson.parser.parse("<test>", tokens, log, frozenset())

        with self.assertRaises(pyson.AggregatedError):
            log.throw()

    def test_rule_head_not_unifiable(self):
        src = pyson.StringSource("<test>", "rule(X + 1) :- true.")
        log = pyson.Log(pyson.get_logger(__name__), 3)
        tokens = pyson.lexer.TokenStream(src, log)
        pyson.parser.parse("<test>", tokens, log, frozenset())

        with self.assertRaises(pyson.AggregatedError):
            log.throw()

    def test_unexpected_eof(self):
        src = pyson.StringSource("<test>", "a")
        log = pyson.Log(pyson.get_logger(__name__), 3)
        tokens = pyson.lexer.TokenStream(src, log)

        with self.assertRaises(pyson.AggregatedError):
            pyson.parser.parse("<test>", tokens, log, frozenset())

    def test_unify_return_value(self):
        src = pyson.StringSource("<test>", "+!p <- (X = 2) + 1 > 0.")
        log = pyson.Log(pyson.get_logger(__name__), 3)
        tokens = pyson.lexer.TokenStream(src, log)

        with self.assertRaises(pyson.AggregatedError):
            pyson.parser.parse("<test>", tokens, log, frozenset())
            log.throw()


if __name__ == "__main__":
    unittest.main()
