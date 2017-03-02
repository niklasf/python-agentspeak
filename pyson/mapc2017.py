import asyncio
import logging

from lxml import etree

import pyson
import pyson.runtime
import pyson.stdlib


LOGGER = pyson.get_logger(__name__)


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
        LOGGER.info("socket for %s connected", self.username)

        self.transport = transport
        self.buffer = b""

        # Authenticate
        message = etree.Element("message")
        authentication = etree.SubElement(message, "auth-request",
                                          username=self.username,
                                          password=self.password)
        self.send_message(message)

    def connection_lost(self, exc):
        LOGGER.warning("socket connection lost (reason: %s)", exc)

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
        if message.get("type") == "auth-response":
            self.handle_auth_response(message[0])
        elif message.get("type") == "sim-start":
            self.handle_sim_start(message[0])
        elif message.get("type") == "sim-end":
            self.handle_sim_end(message[0])
        elif message.get("type") == "request-action":
            self.handle_request_action(message)
        else:
            LOGGER.error("unknown message type: %r", message.get("type"))

        self.run()

    def _set_belief(self, name, *args):
        term = pyson.Literal(name, tuple(args))
        found = False

        for belief in list(self.beliefs[term.literal_group()]):
            if pyson.unifies(term, belief):
                found = True
            else:
                self.call(pyson.Trigger.removal, pyson.GoalType.belief, belief,
                          pyson.runtime.Intention())

        if not found:
            self.call(pyson.Trigger.addition, pyson.GoalType.belief, term,
                      pyson.runtime.Intention())

    def handle_auth_response(self, response):
        if response.get("result") != "ok":
            LOGGER.error("auth response for %s: %r", self.username, response.get("result"))
        else:
            self._set_belief("connected", self.username)


    def handle_sim_start(self, simulation):
        self._set_belief("id", simulation.get("id"))
        self._set_belief("map", simulation.get("map"))
        self._set_belief("seedCapital", int(simulation.get("seedCapital")))
        self._set_belief("steps", int(simulation.get("steps")))
        self._set_belief("team", simulation.get("team"))


        role = simulation.find("role")
        self._set_belief("role",
            pyson.Literal(role.get("name").lower()),
            int(role.get("speed")),
            int(role.get("load")),
            int(role.get("battery")))
        # TODO: Eismassim was also passing some tools?

        # TODO: Add item percepts

    def handle_sim_end(self, end):
        self._set_belief("ranking", int(end.get("ranking")))
        self._set_belief("score", int(end.get("score")))

    def handle_request_action(self, message):
        req = message[0]

        self._set_belief("timestamp", int(message.get("timestamp")))
        self._set_belief("deadline", int(req.get("deadline")))
        self._set_belief("step", int(req.find("simulation").get("step")))

        self_data = req.find("self")
        self._set_belief("charge", int(self_data.get("charge")))
        self._set_belief("load", int(self_data.get("load")))
        self._set_belief("lat", float(self_data.get("lat")))
        self._set_belief("lon", float(self_data.get("lon")))
        self._set_belief("routeLength", int(self_data.get("routeLength", 0)))

        self._set_belief("money", int(req.find("team").get("money")))

        # TODO: Last action

        # TODO: Carried items

        # TODO: Waypoints
