import asyncio

import pyson
import pyson.runtime
import pyson.stdlib

actions = pyson.Actions(pyson.stdlib.actions)

class Agent(pyson.runtime.Agent, asyncio.Protocol):
    def __init__(self):
        super(Agent, self).__init__()

    def connect(self, username, password, host="localhost", port=12300):
        self.username = username
        self.password = password

        loop = asyncio.get_event_loop()
        return loop.create_connection(lambda: self, host, port)

    @actions.add(".disconnect", 0)
    def _disconnect(self, term, intention):
        self.transport.close()
        print("Closing !!!")
        yield

    def connection_made(self, transport):
        self.transport = transport

        self.call(
            pyson.Trigger.addition,
            pyson.GoalType.achievement,
            pyson.Literal("connected"),
            pyson.runtime.Intention())

        self.transport.write(b"<message><authentication username=\"%s\" password=\"%s\" /></message>\0" % (self.username.encode("utf-8"), self.password.encode("utf-8")))

        while self.step():
            print("Step in connection made ...")

    def connection_lost(self, exc):
        print("Connection lost")
        self.call(
            pyson.Trigger.addition,
            pyson.GoalType.achievement,
            pyson.Literal("disconnected", (exc, )),
            pyson.runtime.Intention())

        while self.step():
            print("Step in connection lost ...")
