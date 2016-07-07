import unittest
import pyson


class TermTestCase(unittest.TestCase):

    def test_atom_unify(self):
        a = pyson.Term()
        a.functor = "hello"
        a.args.append(pyson.Term.make_variable())

        b = pyson.Term()
        b.functor = "hello"

        c = pyson.Term()
        c.functor = "world"

        b.args.append(c)

        self.assertTrue(a.unify(b, {}, []))

    def test_str(self):
        self.assertEqual(str(pyson.Term.make_numeric(5.3)), "5.3")
        self.assertEqual(str(pyson.Term.make_boolean(True)), "true")
        self.assertEqual(str(pyson.Term.make_belief("hello", (pyson.Term.make_belief("world"), ))), "hello(world)")

    def test_contains_check(self):
        X = pyson.Term.make_variable()

        g1 = pyson.Term()
        g1.functor = "g"
        g1.args.append(X)


        f = pyson.Term()
        f.functor = "f"
        f.args.append(X)

        g2 = pyson.Term()
        g2.functor = "g"
        g2.args.append(f)

        self.assertTrue(g1.unify(g2, {}, []))  # TODO: Assert false

    def test_freeze(self):
        a = pyson.Term()
        a.functor = "hello"
        a.args.append(pyson.Term.make_variable())

        b = a.freeze({}, {})
        self.assertEqual(b.functor, "hello")
        self.assertTrue(b.args[0].variable)

    def test_freeze_bound(self):
        a = pyson.Term()
        a.functor = "atom"

        scope = {}
        var = pyson.Term.make_variable()
        var.bind(a, scope)
        frozen = var.freeze(scope, {})
        self.assertEqual(frozen.functor, "atom")


if __name__ == "__main__":
    unittest.main()
