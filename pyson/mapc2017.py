import asyncio
import logging

from lxml import etree

import pyson
import pyson.runtime
import pyson.stdlib


LOGGER = pyson.get_logger(__name__)


actions = pyson.Actions(pyson.stdlib.actions)


PERCEPT_TAG = frozenset([pyson.Literal("source", (pyson.Literal("percept"), ))])


class Agent(pyson.runtime.Agent, asyncio.Protocol):
    def __init__(self):
        super(Agent, self).__init__()
        self.action_id = None

    def connect(self, name, password, host="localhost", port=12300):
        self.action_id = None
        self.name = name
        self.password = password

        loop = asyncio.get_event_loop()
        return loop.create_connection(lambda: self, host, port)

    @actions.add(".disconnect", 0)
    def _disconnect(self, term, intention):
        self.transport.close()
        yield

    @actions.add(".stopMAS", 0)
    def _stop_mas(self, term, intention):
        asyncio.get_event_loop().stop()
        yield

    @actions.add(".skip", 0)
    def _skip(self, term, intention):
        if self.action_id is None:
            LOGGER.warning("%s already did an action in this step", self.name)
            return

        message = etree.Element("message")
        etree.SubElement(message, "action", type="skip", id=str(self.action_id))
        self.send_message(message)
        self.action_id = None
        yield

    def send_message(self, message):
        xml = etree.tostring(message)
        LOGGER.debug("%s >> %s", self.name, xml.decode("utf-8"))
        self.transport.write(xml + b"\0")

    def connection_made(self, transport):
        LOGGER.info("socket for %s connected", self.name)

        self.transport = transport
        self.buffer = b""

        # Authenticate
        message = etree.Element("message")
        etree.SubElement(message, "auth-request", username=self.name, password=self.password)
        self.send_message(message)

    def connection_lost(self, exc):
        LOGGER.warning("socket connection lost (reason: %s)", exc)

        self.call(
            pyson.Trigger.removal,
            pyson.GoalType.belief,
            pyson.Literal("connected", (self.name, )),
            pyson.runtime.Intention())

        self.run()

    def data_received(self, data):
        self.buffer += data
        while b"\0" in self.buffer:
            xml, self.buffer = self.buffer.split(b"\0", 1)
            LOGGER.debug("%s << %s", self.name, xml.decode("utf-8"))
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
        term = pyson.Literal(name, tuple(args), PERCEPT_TAG)

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

    def _replace_beliefs(self, group, beliefs):
        for old_belief in list(self.beliefs[group]):
            for new_belief in beliefs:
                if pyson.unifies(new_belief, old_belief):
                    break
            else:
                self.call(pyson.Trigger.removal, pyson.GoalType.belief, old_belief,
                          pyson.runtime.Intention())

        for new_belief in beliefs:
            for old_belief in self.beliefs[group]:
                if pyson.unifies(new_belief, old_belief):
                    break
            else:
                self.call(pyson.Trigger.addition, pyson.GoalType.belief, new_belief,
                          pyson.runtime.Intention())

    def handle_auth_response(self, response):
        if response.get("result") != "ok":
            LOGGER.error("auth response for %s: %r", self.name, response.get("result"))
        else:
            self._set_belief("connected", self.name)


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
            int(role.get("battery")),
            tuple(pyson.Literal(tool.text) for tool in role.findall("./tool")))

        # Update item beliefs.
        item_beliefs = []

        for item in simulation.findall("./item"):
            tools = tuple(pyson.Literal(tool.text) for tool in item.findall("./tool"))
            parts = tuple(pyson.Literal("parts", (pyson.Literal(part.get("name")), int(part.get("amount")))) for part in item.findall("./item"))

            item_beliefs.append(
                pyson.Literal("item", (
                    item.get("name"), int(item.get("volume")), tools, parts),
                    PERCEPT_TAG))

        self._replace_beliefs(("item", 4), item_beliefs)

    def handle_sim_end(self, end):
        self._set_belief("ranking", int(end.get("ranking")))
        self._set_belief("score", int(end.get("score")))

    def handle_request_action(self, message):
        req = message[0]

        if self.action_id is not None:
            LOGGER.warning("%s: action id %d was not used", self.name, self.action_id)
        self.action_id = int(req.get("id"))

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

        action = self_data.find("action")
        if action is not None:
            self._set_belief("lastAction", pyson.Literal(action.get("type")))
            self._set_belief("lastActionResult", pyson.Literal(action.get("result")))
            # TODO: Action parameters
        else:
            self._replace_beliefs(("lastAction", 1), [])
            self._replace_beliefs(("lastActionResult", 1), [])

        # Update carried items.
        carried_items = []
        for item in self_data.findall("./item"):
            carried_items.append(
                pyson.Literal("item", (
                    item.get("name"), int(item.get("amount"))),
                    PERCEPT_TAG))
        self._replace_beliefs(("item", 2), carried_items)

        # TODO: Waypoints

        # Update entities.
        entities = []
        for entity in req.findall("entity"):
            entities.append(
                pyson.Literal("entity", (
                    pyson.Literal(entity.get("name")), entity.get("team"),
                    float(entity.get("lat")), float(entity.get("lon")),
                    pyson.Literal(entity.get("role").lower())), PERCEPT_TAG))
        self._replace_beliefs(("entity", 5), entities)

        # Update charging station pecepts
        charging_stations = []
        for station in req.findall("chargingStation"):
            charging_stations.append(
                pyson.Literal("chargingStation", (
                    station.get("name"), float(station.get("lat")), float(station.get("lon")),
                    int(station.get("rate"))), PERCEPT_TAG))
        self._replace_beliefs(("chargingStation", 4), charging_stations)

        # Update dumps.
        dumps = []
        for dump in req.findall("dump"):
            dumps.append(
                pyson.Literal("dump", (
                    dump.get("name"), float(dump.get("lat")), float(dump.get("lon"))),
                    PERCEPT_TAG))
        self._replace_beliefs(("dump", 4), dumps)

        # Update shops.
        shops = []
        for shop in req.findall("shop"):
            shop_items = []
            for item in shop.findall("item"):
                shop_items.append(
                    pyson.Literal("item", (
                        item.get("name"),
                        int(item.get("price")),
                        int(item.get("amount")))))
            shops.append(
                pyson.Literal("shop", (
                    shop.get("name"), float(shop.get("lat")), float(shop.get("lon")),
                    int(shop.get("restock")), tuple(shop_items)), PERCEPT_TAG))
        self._replace_beliefs(("shop", 5), shops)

        # Update storage percepts.
        storages = []
        for storage in req.findall("storage"):
            storage_items = tuple() # TODO: Stored items
            storages.append(
                pyson.Literal("storage", (
                    storage.get("name"), float(storage.get("lat")), float(storage.get("lon")),
                    int(storage.get("totalCapacity")), int(storage.get("usedCapacity")),
                    storage_items), PERCEPT_TAG))
        self._replace_beliefs(("storage", 6), storages)

        # Update workshops.
        workshops = []
        for workshop in req.findall("workshop"):
            workshops.append(
                pyson.Literal("workshop", (
                    workshop.get("name"), float(workshop.get("lat")), float(workshop.get("lon"))),
                    PERCEPT_TAG))
        self._replace_beliefs(("workshop", 3), workshops)

        # Update job percepts.
        jobs = []
        auctions = []
        for job in req.findall("job"):
            required = tuple(pyson.Literal("required", (item.get("name"), int(item.get("amount"))))
                             for item in job.findall("item"))

            # TODO: Auctions

            jobs.append(
                pyson.Literal("job", (
                    job.get("id"), job.get("storage"),
                    int(job.get("reward")), int(job.get("end")), required),
                    PERCEPT_TAG))
        self._replace_beliefs(("jobs", 5), jobs)
        self._replace_beliefs(("jobs", 9), auctions)
