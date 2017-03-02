#!/usr/bin/env python

import asyncio
import pyson.mapc2017
import pyson.runtime
import logging


#pyson.get_logger("pyson.mapc2017").setLevel(logging.DEBUG)


async def main():
    env = pyson.runtime.Environment()

    with open("agent1.asl") as source:
        agent1 = env.build_agent(source, pyson.mapc2017.actions, agent_cls=pyson.mapc2017.Agent)

    await agent1.connect("agentA1", "1")


if __name__ == "__main__":
    loop = asyncio.get_event_loop()
    try:
        loop.run_until_complete(main())
        loop.run_forever()
    finally:
        loop.close()
