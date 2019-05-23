#!/usr/bin/env python

import agentspeak
import agentspeak.runtime
import agentspeak.stdlib

import os


env = agentspeak.runtime.Environment()

with open(os.path.join(os.path.dirname(__file__), "receiver.asl")) as source:
    agents = env.build_agents(source, 3, agentspeak.stdlib.actions)

with open(os.path.join(os.path.dirname(__file__), "sender.asl")) as source:
    agents.append(env.build_agent(source, agentspeak.stdlib.actions))

if __name__ == "__main__":
    env.run()
