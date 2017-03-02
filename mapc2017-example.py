#!/usr/bin/env python

import asyncio
import pyson.mapc2017
import pyson.runtime
import logging


pyson.get_logger("pyson.mapc2017").setLevel(logging.DEBUG)


async def main():
    env = pyson.runtime.Environment()

    with open("agent1.asl") as source:
        agent1 = env.build_agent(source, pyson.mapc2017.actions, agent_cls=pyson.mapc2017.Agent)
    with open("agent1.asl") as source:
        agent2 = env.build_agent(source, pyson.mapc2017.actions, agent_cls=pyson.mapc2017.Agent)
    with open("agent1.asl") as source:
        agent3 = env.build_agent(source, pyson.mapc2017.actions, agent_cls=pyson.mapc2017.Agent)
    with open("agent1.asl") as source:
        agent4 = env.build_agent(source, pyson.mapc2017.actions, agent_cls=pyson.mapc2017.Agent)
    with open("agent1.asl") as source:
        agent5 = env.build_agent(source, pyson.mapc2017.actions, agent_cls=pyson.mapc2017.Agent)
    with open("agent1.asl") as source:
        agent6 = env.build_agent(source, pyson.mapc2017.actions, agent_cls=pyson.mapc2017.Agent)

    await agent1.connect("agentA1", "1")
    await agent2.connect("agentA2", "1")
    await agent3.connect("agentA3", "1")
    await agent4.connect("agentA4", "1")
    await agent5.connect("agentA5", "1")
    await agent6.connect("agentA6", "1")


if __name__ == "__main__":
    loop = asyncio.get_event_loop()
    try:
        loop.run_until_complete(main())
        loop.run_forever()
    finally:
        loop.close()
