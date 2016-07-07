#!/usr/bin/env python

import pyson
import pyson.runtime
import pyson.stdlib
import math

# Actions

actions = pyson.Actions(pyson.stdlib.actions)

@actions.add(".my_action")
def my_action(agent, term, scope):
    print("hello world!")
    yield

actions.add_function(".sin", float, math.sin)

@actions.add_function(".f", float)
def f(val):
    return val * 3


# Agents

with open("maintainer.asl") as source:
    maintainer = pyson.runtime.build_agent(source, actions)

developers = []
for _ in range(4):
    with open("developer.asl") as source:
        developers.append(pyson.runtime.build_agent(source, actions))


agents = [maintainer] + developers


# Run

def run():
    more_work = True
    while more_work:
        more_work = False
        for agent in agents:
            more_work |= agent.step()


for day in range(14):
    term = pyson.Term.make_belief("day", (pyson.Term.make_numeric(day), ))
    print(term)

    for agent in agents:
        agent.call(pyson.Trigger.addition, pyson.GoalType.achievement,
                        term, {}, delayed=True)

    run()


# Debug

pyson.runtime.repl(maintainer, actions)
