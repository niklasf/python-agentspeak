#!/usr/bin/env python

import os
import pyson
import pyson.stdlib
import pyson.runtime

actions = pyson.Actions(pyson.stdlib.actions)

class Environment(pyson.runtime.Environment):
    def __init__(self):
        super().__init__()
        pass

    @actions.add_function(".get_issue", ())
    def get_issue(self):
        pass

env = Environment()

with open(os.path.join(os.path.dirname(__file__), "agent.asl")) as source:
    agent = env.build_agent(source, actions)

if __name__ == "__main__":
    env.run_agent(agent)
