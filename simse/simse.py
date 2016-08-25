#!/usr/bin/env python

from __future__ import print_function

import pyson
import pyson.runtime
import pyson.stdlib
import math
import random
import sys
import os
import os.path

# Actions

files = set()

actions = pyson.Actions(pyson.stdlib.actions)

actions.add_function(".sin", float, math.sin)

@actions.add_function(".f", float)
def f(val):
    return val * 3


@actions.add_function(".add_file", ())
def add_file():
    global files
    filename = "".join(random.choice("abcdefghij") for _ in range(10))
    files.add(filename)
    return filename


@actions.add_function(".should_add", ())
def should_add():
    print("should add?")
    global files
    return random.random() > len(files) / 500


@actions.add_function(".delete_file", ())
def delete_file():
    global files
    for filename in files:
        files.remove(filename)
        return filename


# Agents

env = pyson.runtime.Environment()

os.chdir(os.path.dirname(__file__))

with open("developer.asl") as source:
    agents = pyson.runtime.build_agents(source, 4, actions)

with open("maintainer.asl") as source:
    maintainer = pyson.runtime.build_agent(source, actions)
    agents.append(maintainer)


# Run

def run():
    more_work = True
    while more_work:
        more_work = False
        for agent in agents:
            more_work |= agent.step(env)


result_file = open("result.csv", "w")

plot = "--plot" in sys.argv

if plot:
    plt.ion()
    fig = plt.figure()
    plt.axis([0, 5 * 365, 0, 600])

for day in range(5 * 365):
    term = pyson.Literal("day", (day, ))
    print(term)

    for agent in agents:
        agent.call(pyson.Trigger.addition,
                   pyson.GoalType.achievement,
                   env, term, {}, delayed=True)

    run()

    print(len(files))

    if plot:
        import matplotlib.pyplot as plt
        plt.scatter(day, len(files))
        plt.show()
        plt.pause(0.001)

    print(day, len(files), sep=",", file=result_file)


result_file.close()


# Debug

pyson.runtime.repl(maintainer, actions)
