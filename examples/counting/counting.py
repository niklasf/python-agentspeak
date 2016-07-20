#!/usr/bin/env python

from __future__ import print_function

import pyson
import pyson.runtime
import pyson.stdlib
import time
import sys
import os.path
import copy


# Initialize

N = int(sys.argv[1])
print(N, end=" ")

t1 = time.time()

with open(os.path.join(os.path.dirname(__file__), "counting.asl")) as source:
    prototype = pyson.runtime.build_agent(source, pyson.stdlib.actions)

agents = []

while len(agents) < N:
    agents.append(copy.deepcopy(prototype))

t2 = time.time()
print(t2 - t1, end=" ")


# Run

def run():
    more_work = True
    while more_work:
        more_work = False
        for agent in agents:
            more_work |= agent.step()

run()

t3 = time.time()
print(t3 - t2, t3 - t1)
