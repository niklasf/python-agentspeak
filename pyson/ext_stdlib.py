import math

import pyson.stdlib


actions = pyson.Actions(pyson.stdlib.actions)


@actions.add_function(".tail", (tuple, ))
def _tail(l):
    return l[1:]


actions.add_function(".floor", (float, ), math.floor)
actions.add_function(".ceil", (float, ), math.ceil)
actions.add_function(".round", (float, ), round)
