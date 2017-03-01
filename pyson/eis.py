import asyncio
import logging

from lxml import etree

import pyson
import pyson.runtime
import pyson.stdlib

LOGGER = logging.getLogger(__name__)

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
        self.buffer = b""

        LOGGER.debug("Connection made")

        self.call(
            pyson.Trigger.addition,
            pyson.GoalType.achievement,
            pyson.Literal("connected"),
            pyson.runtime.Intention())

        message = etree.Element("message")
        authentication = etree.SubElement(message, "authentication",
                                          username=self.username,
                                          password=self.password)

        self.transport.write(etree.tostring(message) + b"\0")

        self.run()

    def connection_lost(self, exc):
        LOGGER.warning("Connection lost (reason: %s)", exc)

        self.call(
            pyson.Trigger.addition,
            pyson.GoalType.achievement,
            pyson.Literal("disconnected", (exc, )),
            pyson.runtime.Intention())

        self.run()

    def data_received(self, data):
        self.buffer += data
        while b"\0" in self.buffer:
            message, self.buffer = self.buffer.split(b"\0", 1)
            LOGGER.debug(message)
