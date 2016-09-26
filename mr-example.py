import pyson
import pyson.mapreduce

env = pyson.mapreduce.Environment()
actions = pyson.Actions(pyson.mapreduce.actions)

a = pyson.StringSource("a.asl",
    """
    !go.

    +!go <-
      .print("Asking for the weather ...");
      .send(b, achieve, tell_weather(a)).

    +weather(Weather)[source(Source)] <-
      .print(Source, "says weather is", Weather).
    """)

b = pyson.StringSource("b.asl",
    """
    weather(sunny).

    +!tell_weather(To) : weather(Weather) <-
      .print("Telling", To, "about the", Weather, "weather");
      .send(To, tell, weather(Weather)).
    """)

env.create_agent("a", a, actions)
env.create_agent("b", b, actions)
env.create_counter("c")

print(env.rdd)

for _ in range(20):
    env.mr()
    print(env.rdd)

