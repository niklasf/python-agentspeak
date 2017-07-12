import pyspark

import pyson
import pyson.runtime
import pyson.mapreduce
import pyson.ext_stdlib

env = pyson.mapreduce.Environment()

with open("spark.asl") as source:
    agent = env.build_agent(source, pyson.ext_stdlib.actions)

sc = pyspark.SparkContext()

agents = sc.parallelize([agent])

for agent in agents.map(pyson.mapreduce.step).collect():
    agent.dump()
