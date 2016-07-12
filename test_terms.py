#!/usr/bin/env python

import unittest
import pyson


class TermTest(unittest.TestCase):

    def test_unifies(self):
        self.assertFalse(pyson.unifies(True, 1))

        self.assertTrue(pyson.unifies(3, 3.0))
        self.assertTrue(pyson.unifies(True, True))
        self.assertTrue(pyson.unifies([1, 2], [1, pyson.Wildcard()]))
        self.assertTrue(pyson.unifies(["hello", 2], ["hello", pyson.Var()]))

if __name__ == "__main__":
    unittest.main()
