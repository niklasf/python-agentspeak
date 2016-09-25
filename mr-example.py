import pyson
import pyson.mapreduce

env = pyson.mapreduce.Environment()
actions = pyson.Actions(pyson.mapreduce.actions)

a = pyson.StringSource("a.asl",
    """
    !go.

    +!go <-
        mr.update_counter(c, 1);
        .print("hello from a").
    """)

b = pyson.StringSource("b.asl",
    """
    !go.

    +!go <-
        mr.update_counter(c, 1);
        .print("hello from b").
    """)

env.create_agent("a", a, actions)
env.create_agent("b", b, actions)
env.create_counter("c")

print(env.rdd)

for _ in range(6):
    env.mr()
    print(env.rdd)

