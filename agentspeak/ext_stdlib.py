import math
import random

from agentspeak import asl_str

import agentspeak.stdlib
import agentspeak.optimizer


actions = agentspeak.Actions(agentspeak.stdlib.actions)


@actions.add(".raise", 0)
def _raise(agent, term, intention):
    raise RuntimeError


@actions.add_procedure(".raise", (None, ))
def _raise(err):
    raise RuntimeError(err)


@actions.add_function(".tail", (tuple, ))
def _tail(l):
    return l[1:]


actions.add_function(".floor", (float, ), math.floor)
actions.add_function(".ceil", (float, ), math.ceil)
actions.add_function(".round", (float, ), round)

actions.add_function(".randint", (int, int, ), random.randint)

@actions.add(".sum", 3)
@agentspeak.optimizer.function_like
def _sum(agent, term, intention):
    pattern = agentspeak.evaluate(term.args[0], intention.scope)
    query = agentspeak.runtime.TermQuery(term.args[1])
    total = 0

    for _ in query.execute(agent, intention):
        total += agentspeak.grounded(pattern, intention.scope)

    if agentspeak.unify(total, term.args[2], intention.scope, intention.stack):
        yield

@actions.add(".csv")
@agentspeak.optimizer.no_scope_effects
def _csv(agent, term, intention, _files={}):
    if agent in _files:
        f = _files[agent]
    else:
        f = open("%s.csv" % agent.name, "w")
        _files[agent] = f

    memo = {}
    txt = ",".join(asl_str(agentspeak.freeze(t, intention.scope, memo)) for t in term.args)

    f.write(txt)
    f.write("\n")
    f.flush()

    yield

try:
    import numpy
except ImportError:
    pass
else:
    actions.add_function(".geometric", (float, ), numpy.random.geometric)
