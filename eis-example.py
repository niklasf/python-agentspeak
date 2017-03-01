#!/usr/bin/env python

import asyncio
import pyson.eis
import pyson.runtime
import logging

logging.basicConfig(level=logging.DEBUG)

async def main():
    env = pyson.runtime.Environment()

    with open("agent1.asl") as source:
        agent1 = env.build_agent(source, pyson.eis.actions, agent_cls=pyson.eis.Agent)

    await agent1.connect("hello", "there")

    while env.run_agent(agent1):
        pass

if __name__ == "__main__":
    loop = asyncio.get_event_loop()
    try:
        loop.run_until_complete(main())
        loop.run_forever()
    finally:
        loop.close()
