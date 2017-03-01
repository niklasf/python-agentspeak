import asyncio

import pyson
import pyson.runtime
import pyson.stdlib

actions = pyson.Actions(pyson.stdlib.actions)

class Agent(pyson.runtime.Agent, asyncio.Protocol):
    def connect(self, username, password, host="localhost", port=12300):
        self.username = username
        self.password = password

        loop = asyncio.get_event_loop()
        return loop.create_connection(lambda: self, host, port)
