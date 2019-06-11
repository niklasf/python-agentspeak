#!/usr/bin/env python

from __future__ import print_function

import agentspeak
import agentspeak.runtime
import agentspeak.stdlib
import time
import sys
import os.path
import copy


# Initialize

N = int(sys.argv[1])
print(N, end=" ")

t1 = time.time()

env = agentspeak.runtime.Environment()

with open(os.path.join(os.path.dirname(__file__), "counting.asl")) as source:
    agents = env.build_agents(source, N, agentspeak.stdlib.actions)

t2 = time.time()
print(t2 - t1, end=" ")

env.run()

t3 = time.time()
print(t3 - t2, t3 - t1)
