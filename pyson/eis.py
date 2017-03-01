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
        yield

    def send_message(self, message):
        xml = etree.tostring(message)
        LOGGER.debug("%s >> %s", self.username, xml.decode("utf-8"))
        self.transport.write(xml + b"\0")

    def connection_made(self, transport):
        LOGGER.debug("Connection made")

        self.transport = transport
        self.buffer = b""

        # Authenticate
        message = etree.Element("message")
        authentication = etree.SubElement(message, "authentication",
                                          username=self.username,
                                          password=self.password)
        self.send_message(message)

        self.call(
            pyson.Trigger.addition,
            pyson.GoalType.belief,
            pyson.Literal("connected", (self.username, )),
            pyson.runtime.Intention())

        self.run()

    def connection_lost(self, exc):
        LOGGER.warning("Connection lost (reason: %s)", exc)

        self.call(
            pyson.Trigger.removal,
            pyson.GoalType.belief,
            pyson.Literal("connected", (self.username, )),
            pyson.runtime.Intention())

        self.run()

    def data_received(self, data):
        self.buffer += data
        while b"\0" in self.buffer:
            xml, self.buffer = self.buffer.split(b"\0", 1)
            LOGGER.debug("%s << %s", self.username, xml.decode("utf-8"))
            self.message_received(etree.fromstring(xml))

    def message_received(self, message):
        self.call(
            pyson.Trigger.addition,
            pyson.GoalType.achievement,
            pyson.Literal("message", (message, )),
            pyson.runtime.Intention())

        self.run()
