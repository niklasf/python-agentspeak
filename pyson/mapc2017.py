import asyncio
import logging

from lxml import etree

from heapq import heapify, heappop

import pyson
import pyson.runtime
import pyson.ext_stdlib


LOGGER = pyson.get_logger(__name__)


actions = pyson.Actions(pyson.ext_stdlib.actions)


PERCEPT_TAG = frozenset([pyson.Literal("source", (pyson.Literal("percept"), ))])


class Environment(pyson.runtime.Environment):
    def time(self):
        return asyncio.get_event_loop().time()

    def run(self):
        super(Environment, self).run()
        self.dispatch_wait_until()

    def dispatch_wait_until(self):
        earliest = None
        for agent in self.agents.values():
            for intention_stack in agent.intentions:
                wait = intention_stack[-1].wait_until
                if wait and (not earliest or wait < earliest):
                    earliest = wait

        if earliest:
            loop = asyncio.get_event_loop()
            loop.call_at(earliest, self.run)


class Agent(pyson.runtime.Agent, asyncio.Protocol):
    def __init__(self, env, name):
        super(Agent, self).__init__(env, name)
        self.action_id = None
        self.simulation_step = None

    def connect(self, username, password, host="localhost", port=12300):
        self.action_id = None
        self.username = username
        self.password = password

        if self.name != username:
            LOGGER.warning("username %r does not equal agent name %r", username, self.name)

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

    @actions.add(".goto", 0)
    @actions.add(".goto", 1)
    @actions.add(".goto", 2)
    @actions.add(".give", 3)
    @actions.add(".receive", 0)
    @actions.add(".store", 2)
    @actions.add(".retrieve", 2)
    @actions.add(".retrieve_delivered", 2)
    @actions.add(".assemble", 1)
    @actions.add(".assist_assemble", 1)
    @actions.add(".buy", 2)
    @actions.add(".deliver_job", 1)
    @actions.add(".bid_for_job", 2)
    @actions.add(".post_job")
    @actions.add(".dump", 2)
    @actions.add(".charge", 0)
    @actions.add(".recharge", 0)
    @actions.add(".continue", 0)
    @actions.add(".skip", 0)
    @actions.add(".abort", 0)
    @actions.add(".unknownAction", 0)
    @actions.add(".randomFail", 0)
    @actions.add(".noAction", 0)
    @actions.add(".gather", 0)
    def _mapc_action(self, term, intention):
        if self.action_id is None:
            LOGGER.warning("%s already did an action in this step", self.name)
            return

        message = etree.Element("message")
        action = etree.SubElement(message, "action", type=term.functor.lstrip("."), id=str(self.action_id))
        for param in term.args:
            p = pyson.grounded(param, intention.scope)
            if isinstance(p, float) and p.is_integer():
                p = int(p)
            etree.SubElement(action, "p").text = str(p)
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
        etree.SubElement(message, "auth-request", username=self.username, password=self.password)
        self.send_message(message)

    def connection_lost(self, exc):
        LOGGER.warning("socket connection lost (reason: %s)", exc)

        self.call(
            pyson.Trigger.removal,
            pyson.GoalType.belief,
            pyson.Literal("connected", (self.name, )),
            pyson.runtime.Intention())

        self.env.run()

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

        # Delay run until all agents are in a consistent state.
        if all(agent.simulation_step is None or agent.simulation_step == self.simulation_step for agent in self.env.agents.values()):
            if self.simulation_step is not None:
                LOGGER.debug("%s was the last agent to receive step %d", self.name, self.simulation_step)
            self.env.run()
        else:
            LOGGER.debug("%s will wait for other agents to be in step %d", self.name, self.simulation_step)

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
        old_beliefs = list(self.beliefs[group])
        new_beliefs = beliefs
        heapify(old_beliefs)
        heapify(new_beliefs)
        while len(old_beliefs) > 0 and len(new_beliefs) > 0:
            old_belief = old_beliefs[0]
            new_belief = new_beliefs[0]
            if old_belief == new_belief:
                heappop(old_beliefs)
                heappop(new_beliefs)
            elif old_belief < new_belief:
                self.call(pyson.Trigger.removal, pyson.GoalType.belief, old_belief,
                          pyson.runtime.Intention())
                heappop(old_beliefs)
            elif old_belief > new_belief:
                self.call(pyson.Trigger.addition, pyson.GoalType.belief, new_belief,
                          pyson.runtime.Intention())
                heappop(new_beliefs)

        while len(old_beliefs) > 0:
            self.call(pyson.Trigger.removal, pyson.GoalType.belief, old_beliefs[0],
                      pyson.runtime.Intention())
            heappop(old_beliefs)
        while len(new_beliefs) > 0:
            self.call(pyson.Trigger.addition, pyson.GoalType.belief, new_beliefs[0],
                      pyson.runtime.Intention())
            heappop(new_beliefs)

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
            tuple(tool.get("name") for tool in role.findall("./tool")))

        # Update item beliefs.
        item_beliefs = []

        for item in simulation.findall("./item"):
            tools = tuple(tool.get("name") for tool in item.findall("./tool"))
            parts = tuple(pyson.Literal("parts", (part.get("name"), int(part.get("amount")))) for part in item.findall("./item"))

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

        self_data = req.find("self")
        self._set_belief("charge", int(self_data.get("charge")))
        self._set_belief("load", int(self_data.get("load")))
        self._set_belief("lat", float(self_data.get("lat")))
        self._set_belief("lon", float(self_data.get("lon")))
        self._set_belief("routeLength", int(self_data.get("routeLength", 0)))

        route = []
        for wp in self_data.findall("./route"):
            route.append(
                pyson.Literal("wp", (
                    int(wp.get("i")), float(wp.get("lat")), float(wp.get("lon")),
                    PERCEPT_TAG)))
        self._set_belief("route", tuple(route))

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
        for item in self_data.findall("./items"):
            carried_items.append(
                pyson.Literal("item", (
                    item.get("name"), int(item.get("amount"))),
                    PERCEPT_TAG))
        self._replace_beliefs(("item", 2), carried_items)

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
            storage_items = []
            for item in storage.findall("item"):
                storage_items.append(
                    pyson.Literal("item", (
                        item.get("name"),
                        int(item.get("stored")),
                        int(item.get("delivered")))))
            storages.append(
                pyson.Literal("storage", (
                    storage.get("name"), float(storage.get("lat")), float(storage.get("lon")),
                    int(storage.get("totalCapacity")), int(storage.get("usedCapacity")),
                    tuple(storage_items)), PERCEPT_TAG))
        self._replace_beliefs(("storage", 6), storages)

        # Update workshops.
        workshops = []
        for workshop in req.findall("workshop"):
            workshops.append(
                pyson.Literal("workshop", (
                    workshop.get("name"), float(workshop.get("lat")), float(workshop.get("lon"))),
                    PERCEPT_TAG))
        self._replace_beliefs(("workshop", 3), workshops)

        # Update resource nodes.
        resource_nodes = []
        for node in req.findall("resourceNode"):
            resource_nodes.append(
                pyson.Literal("resourceNode", (
                    node.get("name"), float(node.get("lat")), float(node.get("lon")), node.get("resource")),
                    PERCEPT_TAG))
        self._replace_beliefs(("resourceNode", 4), resource_nodes)

        # Update job percepts.
        jobs = []
        auctions = []
        missions = []
        posteds = []
        for job in req.findall("job"):
            required = tuple(pyson.Literal("required", (item.get("name"), int(item.get("amount"))))
                             for item in job.findall("required"))

            jobs.append(
                pyson.Literal("job", (
                    job.get("id"), job.get("storage"), int(job.get("reward")),
                    int(job.get("start")),int(job.get("end")), required),
                    PERCEPT_TAG))

        for auction in req.findall("auction"):
            required = tuple(pyson.Literal("required", (item.get("name"), int(item.get("amount"))))
                             for item in auction.findall("required"))

            reward = int(auction.get("reward"))
            auctions.append(
                pyson.Literal("auction", (
                    auction.get("id"), auction.get("storage"), reward,
                    int(auction.get("start")),int(auction.get("end")), int(auction.get("fine")),
                    int(auction.get("lowestBid", str(reward + 1))), int(auction.get("auctionTime")), required),
                    PERCEPT_TAG))

        for mission in req.findall("mission"):
            required = tuple(pyson.Literal("required", (item.get("name"), int(item.get("amount"))))
                             for item in mission.findall("required"))

            missions.append(
                pyson.Literal("mission", (
                    mission.get("id"), mission.get("storage"), int(mission.get("reward")),
                    int(mission.get("start")), int(mission.get("end")), int(mission.get("fine")),
                    int(mission.get("lowestBid")), 0, required),
                    PERCEPT_TAG))

        for posted in req.findall("posted"):
            required = tuple(pyson.Literal("required", (item.get("name"), int(item.get("amount"))))
                             for item in posted.findall("required"))

            posteds.append(
                pyson.Literal("job", (
                    posted.get("id"), posted.get("storage"), int(posted.get("reward")),
                    int(posted.get("start")),int(posted.get("end")), required),
                    PERCEPT_TAG))

        self._replace_beliefs(("job", 5), jobs)
        self._replace_beliefs(("auction", 9), auctions)
        self._replace_beliefs(("mission", 9), missions)
        self._replace_beliefs(("posted", 5), posteds)


        # Update step.
        self._set_belief("timestamp", int(message.get("timestamp")))
        self._set_belief("deadline", int(req.get("deadline")))
        self.simulation_step = int(req.find("simulation").get("step"))
        self._set_belief("step", self.simulation_step)
