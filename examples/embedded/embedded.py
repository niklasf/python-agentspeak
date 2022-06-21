#!/usr/bin/env python

import os

import agentspeak.runtime
import agentspeak.stdlib

actions = agentspeak.Actions(agentspeak.stdlib.actions)


@actions.add_function(".custom_action", (int,))
def custom_action(x):
    return x ** 2


env = agentspeak.runtime.Environment()

with open(os.path.join(os.path.dirname(__file__), "agent.asl")) as source:
    agent = env.build_agent(source, actions)

if __name__ == "__main__":
    env.run_agent(agent)
