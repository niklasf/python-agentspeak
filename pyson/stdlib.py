# -*- coding: utf-8 -*-
#
# This file is part of the Pyson AgentSpeak interpreter.
# Copyright (C) 2016 Niklas Fiekas <niklas.fiekas@tu-clausthal.de>.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

import pyson
import colorama
import time
import random
import sys


# TODO:
# * Communication
#   - .broadcast
#   - .send
# * List and String Manipulation
#   - .length
#   - .max
#   - .member
#   - .min
#   - .nth
#   - .sort
#   - .substring
# * Plan Library Manipulation
#   - .add_plan
#   - .plan_label
#   - .relevant_plans
#   - .remove_plan
# * BDI
#   - .current_intention
#   - .desire
#   - .drop_all_desires
#   - .drop_all_events
#   - .drop_all_intentions
#   - .drop_desire
#   - .drop_event
#   - .drop_intention
#   - .fail_goal
#   - .intend
#   - .succeed_goal
# * Term Type Identification
#   - .atom
#   - .ground
#   - .literal
#   - .list
#   - .number
#   - .string
#   - .structure
# * Misc
#   - .abolish
#   - .add_anot
#   - .at
#   - .count
#   - .create_agent
#   - .date
#   - .findall
#   - .kill_agent
#   - .perceive
#   - .time


actions = pyson.Actions()


COLORS = [(colorama.Back.GREEN, colorama.Fore.WHITE),
          (colorama.Back.MAGENTA, colorama.Fore.WHITE),
          (colorama.Back.YELLOW, colorama.Fore.BLACK),
          (colorama.Back.BLUE, colorama.Fore.WHITE),
          (colorama.Back.CYAN, colorama.Fore.BLACK),
          (colorama.Back.RED, colorama.Fore.WHITE)]


@actions.add(".print")
def _print(agent, term, scope, _color_map={}, _current_color=[0]):
    if agent in _color_map:
        color = _color_map[agent]
    else:
        color = COLORS[_current_color[0]]
        _current_color[0] += 1
        _color_map[agent] = color

    memo = {}
    text = " ".join(str(pyson.freeze(t, scope, memo)) for t in term.args)

    with colorama.colorama_text():
        print(color[0], color[1], hex(id(agent)), colorama.Fore.RESET, colorama.Back.RESET, " ", text, sep="")

    yield


@actions.add(".fail", 0)
def _fail(agent, term, scope):
    yield from []


@actions.add(".my_name", 1)
def _my_name(agent, term, scope):
    name = hex(id(agent))
    name_term = pyson.Term.make_string(name)

    if term.args[0].unify(name_term, scope, agent.stack):
        yield


@actions.add(".concat")
def _concat(agent, term, scope):
    args = [arg.grounded(scope) for arg in term.args[:-1]]

    if any(arg.list is None for arg in args):
        result = pyson.Term.make_string(
            "".join((str(arg) if arg.string is None else arg.string) for arg in args))
    else:
        result = pyson.Term.make_list([el for arg in args for el in arg.list])

    if term.args[-1].unify(result, scope, agent.stack):
        yield


@actions.add(".stopMAS")
def _stopMAS(agent, term, scope):
    sys.exit(0)


actions.add_function(".random", (), random.random)


@actions.add(".range", 2)
def _range_2(agent, term, scope):
    choicepoint = object()

    for i in range(int(term.args[1].numeric)):
        agent.stack.append(choicepoint)

        if term.args[0].unify(pyson.Term.make_numeric(i), scope, agent.stack):
            yield

        pyson.reroll(scope, agent.stack, choicepoint)


@actions.add(".dump", 0)
def _dump(agent, term, scope):
    agent.dump()
    yield


@actions.add(".unbind_all", 0)
def _unbind_all(agent, term, scope):
    scope.clear()
    yield
