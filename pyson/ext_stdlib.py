import math
import random

from pyson import pyson_str

import pyson.stdlib
import pyson.optimizer


actions = pyson.Actions(pyson.stdlib.actions)


@actions.add_function(".tail", (tuple, ))
def _tail(l):
    return l[1:]


actions.add_function(".floor", (float, ), math.floor)
actions.add_function(".ceil", (float, ), math.ceil)
actions.add_function(".round", (float, ), round)

actions.add_function(".randint", (int, int, ), random.randint)

@actions.add(".sum", 3)
@pyson.optimizer.function_like
def _sum(agent, term, intention):
    pattern = pyson.evaluate(term.args[0], intention.scope)
    query = pyson.runtime.TermQuery(term.args[1])
    total = 0

    for _ in query.execute(agent, intention):
        total += pyson.grounded(pattern, intention.scope)

    if pyson.unify(total, term.args[2], intention.scope, intention.stack):
        yield

@actions.add(".csv")
@pyson.optimizer.no_scope_effects
def _csv(agent, term, intention, _files={}):
    if agent in _files:
        f = _files[agent]
    else:
        f = open("%s.csv" % agent.name, "w")
        _files[agent] = f

    memo = {}
    txt = ",".join(pyson_str(pyson.freeze(t, intention.scope, memo)) for t in term.args)

    f.write(txt)
    f.write("\n")
    f.flush()

    yield
