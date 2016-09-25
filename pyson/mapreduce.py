import collections
import multiprocessing

import pyson
import pyson.runtime
import pyson.stdlib


actions = pyson.Actions(pyson.stdlib.actions)


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


@actions.add("mr.update_counter", 2)
def _update_counter(env, agent, term, intention):
    name = pyson.pyson_str(pyson.grounded(term.args[0], intention.scope))
    delta = pyson.grounded(term.args[1], intention.scope)
    agent.emit(name, delta)
    yield


class Agent(pyson.runtime.Agent):
    def __init__(self, name):
        self.name = name
        pyson.runtime.Agent.__init__(self)

        self.emitted = collections.deque()

    def __repr__(self):
        return "<Agent %r>" % (self.name, )

    def emit(self, k, v):
        self.emitted.append((k, v))

    def flatmap(self):
        self.step(None)

        while self.emitted:
            yield self.emitted.pop()

        yield self.name, self


class Environment(pyson.runtime.Environment):
    def __init__(self):
        self.process_pool = multiprocessing.Pool(1)
        self.rdd = collections.defaultdict(list)

    def create_agent(self, name, source, actions=actions):
        self.rdd[name] = [self.build_agent(source, actions, agent_cls=lambda: Agent(name))]

    def create_counter(self, name):
        self.rdd[name] = [Counter(name)]

    def step(self):
        print("========================================================")
        rdd = collections.defaultdict(list)
        for result in self.process_pool.imap_unordered(process, self.rdd.items()):
        #for result in map(process, self.rdd.items()):
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
