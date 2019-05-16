#!/usr/bin/env python

import pyson
import pyson.stdlib
import pyson.runtime


def test_concat_strings():
    env = pyson.runtime.Environment()
    agent = pyson.runtime.Agent(env, "agent")
    intention = pyson.runtime.Intention()
    X = pyson.Var()

    term = pyson.Literal(".concat", ("hello", " ", "world", X))
    next(pyson.stdlib._concat(agent, term, intention))

    assert X.grounded(intention.scope) == "hello world"


def test_concat_lists():
    env = pyson.runtime.Environment()
    agent = pyson.runtime.Agent(env, "agent")
    intention = pyson.runtime.Intention()
    X = pyson.Var()

    term = pyson.Literal(".concat", ((1, 2), (3,), X))
    next(pyson.stdlib._concat(agent, term, intention))

    assert X.grounded(intention.scope) == (1, 2, 3)
