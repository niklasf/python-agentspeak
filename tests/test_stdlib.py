#!/usr/bin/env python

import agentspeak
import agentspeak.stdlib
import agentspeak.runtime


def test_concat_strings():
    env = agentspeak.runtime.Environment()
    agent = agentspeak.runtime.Agent(env, "agent")
    intention = agentspeak.runtime.Intention()
    X = agentspeak.Var()

    term = agentspeak.Literal(".concat", ("hello", " ", "world", X))
    next(agentspeak.stdlib._concat(agent, term, intention))

    assert X.grounded(intention.scope) == "hello world"


def test_concat_lists():
    env = agentspeak.runtime.Environment()
    agent = agentspeak.runtime.Agent(env, "agent")
    intention = agentspeak.runtime.Intention()
    X = agentspeak.Var()

    term = agentspeak.Literal(".concat", ((1, 2), (3,), X))
    next(agentspeak.stdlib._concat(agent, term, intention))

    assert X.grounded(intention.scope) == (1, 2, 3)
