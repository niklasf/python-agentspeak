#!/usr/bin/env python

import pyson
import pyson.runtime
import pyson.stdlib

import os


actions = pyson.Actions(pyson.stdlib.actions)

@actions.add_function(".custom_action", (int, ))
def custom_action(x):
    return x ** 2


env = pyson.runtime.Environment()

with open(os.path.join(os.path.dirname(__file__), "agent.asl")) as source:
    agent = env.build_agent(source, actions)

env.run_agent(agent)
