import collections
import multiprocessing
import numbers
import functools

import agentspeak
import agentspeak.runtime
import agentspeak.stdlib

from agentspeak import pyson_str

actions = agentspeak.Actions(agentspeak.stdlib.actions)


class Counter:
    def __init__(self, name, value=0):
        self.name = name
        self.value = value

    def __repr__(self):
        return "Counter(%s, %f)" % (self.name, self.value)

    def flatmap(self):
        yield self.name, self

    def reduce(self, value):
        self.value += value
        return
        yield


@actions.add_function("mr.update_counter", (agentspeak.runtime.Agent, pyson_str, numbers.Number))
def _update_counter(agent, counter, delta):
    agent.emit(counter, delta)
    return True


@actions.add_function(".send", (agentspeak.runtime.Agent, pyson_str, agentspeak.Literal, None))
def _send(agent, recipient, ils, term):
    group = ils.literal_group()
    if group == ("tell", 0):
        frozen = agentspeak.grounded(term, {}).with_annotation(agentspeak.Literal("source", (agent.name,)))
        agent.emit(recipient, functools.partial(agentspeak.runtime.add_belief, frozen))
    elif group == ("achieve", 0):
        frozen = term.with_annotation(agentspeak.Literal("source", (agent.name,)))
        agent.emit(recipient, functools.partial(agentspeak.runtime.call,
                                                agentspeak.Trigger.addition,
                                                agentspeak.GoalType.achievement,
                                                frozen))
    else:
        raise agentspeak.PysonError("unsupported illocutionary force: %s/%d" % (group[0], group[1]))

    return True


class Agent(agentspeak.runtime.Agent):
    def __init__(self, name):
        self.name = name
        agentspeak.runtime.Agent.__init__(self)

        self.emitted = collections.deque()

    def __repr__(self):
        return "<Agent %r>" % (self.name,)

    def emit(self, k, v):
        self.emitted.append((k, v))

    def flatmap(self):
        more_work = True
        while more_work:
            more_work = self.step()

        while self.emitted:
            yield self.emitted.pop()

        yield self.name, self

    def reduce(self, partial):
        intention = agentspeak.runtime.Intention()
        partial(self, intention)

        return
        yield


class Environment(agentspeak.runtime.Environment):
    def __init__(self):
        self.process_pool = multiprocessing.Pool()
        self.rdd = collections.defaultdict(list)

    def create_agent(self, name, source, actions=actions):
        self.rdd[name] = [self.build_agent(source, actions, agent_cls=lambda: Agent(name))]

    def create_counter(self, name):
        self.rdd[name] = [Counter(name)]

    def mr(self):
        print("========================================================")
        rdd = collections.defaultdict(list)
        # for result in self.process_pool.imap_unordered(process, self.rdd.items()):
        for result in map(process, self.rdd.items()):
            print("result:", result)
            for key, value in result:
                if hasattr(value, "reduce"):
                    rdd[key].insert(0, value)
                else:
                    rdd[key].append(value)
        self.rdd = rdd


def process(chunk):
    result = []

    name, items = chunk
    reducer = None
    for item in items:
        if reducer is not None:
            result.extend(reducer.reduce(item))
        else:
            reducer = item

    if reducer is not None:
        result.extend(reducer.flatmap())

    return result
