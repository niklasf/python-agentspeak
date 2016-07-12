#!/usr/bin/env python

import unittest

import pyson
import pyson.lexer
import pyson.parser


class ParserTest(unittest.TestCase):

    def test_formula_type(self):
        src = pyson.StringSource("<test>", "+!plan <- ?true.")
        log = pyson.Log(pyson.get_logger(__name__), 3)
        tokens = pyson.lexer.tokenize(src, log)
        pyson.parser.parse(tokens, log, frozenset())

        with self.assertRaises(pyson.AggregatedError):
            log.throw()


if __name__ == "__main__":
    unittest.main()
