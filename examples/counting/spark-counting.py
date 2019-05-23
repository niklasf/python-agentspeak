#!/usr/bin/env python

from __future__ import print_function

import pyspark
import agentspeak
import agentspeak.runtime
import agentspeak.stdlib
import sys
import time
import os

# Initialize

N = int(sys.argv[1])
print("N:", N)

t1 = time.time()

sc = pyspark.SparkContext("local", "agentspeak")

source = open(os.path.join(os.path.dirname(__file__), "counting.asl"))

def init_agents():
    for i in range(N):
        print("-------->", i)
        yield agentspeak.runtime.build_agent(source, agentspeak.stdlib.actions)

agents = sc.parallelize(init_agents())

t2 = time.time()

def run_step(agent):
    if agent.step():
        return [agent]
    else:
        return []

steps = 0

while True:
    steps += 1
    agents = agents.flatMap(run_step)
    if agents.count():
        agents.first().dump()
    else:
        break

t3 = time.time()
print(t2 - t1, t3 - t1, "STEPS:", steps)
