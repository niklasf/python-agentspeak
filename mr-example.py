import pyson
import pyson.mapreduce

env = pyson.mapreduce.Environment()
actions = pyson.Actions(pyson.mapreduce.actions)

a = pyson.StringSource("a.asl",
    """
    +weather(Weather)[source(Source)] <-
        .print(Source, "says weather is", Weather).
    """)

b = pyson.StringSource("b.asl",
    """
    !go.

    +!go <-
        .send(a, tell, weather(rainy));
        .print("b is done").
    """)

env.create_agent("a", a, actions)
env.create_agent("b", b, actions)
env.create_counter("c")

print(env.rdd)

for _ in range(10):
    env.mr()
    print(env.rdd)

