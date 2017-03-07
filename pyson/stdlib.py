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

from __future__ import print_function
from __future__ import division

import pyson
import pyson.runtime
import colorama
import random
import time
import datetime
import collections

from pyson import pyson_str


# TODO:
# * Communication
#   - .broadcast
#   - .send
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
# * Misc
#   - .abolish
#   - .add_anot
#   - .at
#   - .create_agent
#   - .kill_agent
#   - .perceive


actions = pyson.Actions()


COLORS = [(colorama.Back.GREEN, colorama.Fore.WHITE),
          (colorama.Back.MAGENTA, colorama.Fore.WHITE),
          (colorama.Back.YELLOW, colorama.Fore.BLACK),
          (colorama.Back.BLUE, colorama.Fore.WHITE),
          (colorama.Back.CYAN, colorama.Fore.BLACK),
          (colorama.Back.RED, colorama.Fore.WHITE)]


@actions.add(".print")
def _print(agent, term, intention, _color_map={}, _current_color=[0]):
    if agent in _color_map:
        color = _color_map[agent]
    else:
        color = COLORS[_current_color[0]]
        _current_color[0] = (_current_color[0] + 1) % len(COLORS)
        _color_map[agent] = color

    memo = {}
    text = " ".join(pyson_str(pyson.freeze(t, intention.scope, memo)) for t in term.args)

    try:
        name = agent.name
    except AttributeError:
        name = hex(id(agent))

    with colorama.colorama_text():
        print(color[0], color[1], name, colorama.Fore.RESET, colorama.Back.RESET, " ", text, sep="")

    yield


@actions.add(".fail", 0)
def _fail(agent, term, intention):
    return
    yield


@actions.add(".my_name", 1)
def _my_name(agent, term, intention):
    name = hex(id(agent))

    if pyson.unify(term.args[0], name, intention.scope, intention.stack):
        yield


@actions.add(".concat")
def _concat(agent, term, intention):
    args = [pyson.grounded(arg, intention.scope) for arg in term.args[:-1]]

    if all(isinstance(arg, (tuple, list)) for arg in args):
        result = tuple(el for arg in args for el in arg)
    else:
        result = "".join(str(arg) for arg in args)

    if pyson.unify(term.args[-1], result, intention.scope, intention.stack):
        yield


actions.add_function(".random", (), random.random)


actions.add_function(".min", (tuple, ), min)
actions.add_function(".max", (tuple, ), max)
actions.add_function(".length", (None, ), len)


@actions.add_function(".nth", (int, tuple))
def _nth(index, l):
    assert index >= 0
    return l[index]


@actions.add_function(".sort", (tuple, ))
def _sort(l):
    return tuple(sorted(l))


@actions.add(".substring", 3)
def _substring(agent, term, intention):
    needle = pyson_str(pyson.grounded(term.args[0], intention.scope))
    haystack = pyson_str(pyson.grounded(term.args[1], intention.scope))

    choicepoint = object()

    pos = haystack.find(needle)
    while pos != -1:
        intention.stack.append(choicepoint)

        if pyson.unify(term.args[2], pos, intention.scope, intention.stack):
            yield

        pyson.reroll(intention.scope, intention.stack, choicepoint)
        pos = haystack.find(needle, pos + 1)


@actions.add(".member", 2)
def _member(agent, term, intention):
    choicepoint = object()

    for member in pyson.evaluate(term.args[1], intention.scope):
        intention.stack.append(choicepoint)

        if pyson.unify(term.args[0], member, intention.scope, intention.stack):
            yield

        pyson.reroll(intention.scope, intention.stack, choicepoint)


actions.add_predicate(".atom", (None, ), pyson.is_atom)
actions.add_predicate(".literal", (None, ), pyson.is_literal)
actions.add_predicate(".list", (None, ), pyson.is_list)
actions.add_predicate(".number", (None, ), pyson.is_number)
actions.add_predicate(".string", (None, ), pyson.is_string)
actions.add_predicate(".structure", (None, ), pyson.is_structure)


@actions.add(".ground", 1)
def _ground(agent, term, intention):
    if pyson.is_ground(term, intention.scope):
        yield


@actions.add(".findall", 3)
def _findall(agent, term, intention):
    pattern = pyson.evaluate(term.args[0], intention.scope)
    query = pyson.runtime.TermQuery(term.args[1])
    result = []

    memo = {}

    for _ in query.execute(agent, intention):
        result.append(pyson.freeze(pattern, intention.scope, memo))

    if pyson.unify(tuple(result), term.args[2], intention.scope, intention.stack):
        yield


@actions.add(".count", 2)
def _count(agent, term, intention):
    lookup = pyson.evaluate(term.args[0], intention.scope)
    relevant_beliefs = agent.beliefs[lookup.literal_group()]

    count = 0

    for belief in relevant_beliefs:
        if pyson.unify(lookup, belief, {}, collections.deque()):
            count += 1

    if pyson.unify(count, term.args[1], intention.scope, intention.stack):
        yield


@actions.add(".date", 3)
def _date(agent, term, intention):
    date = datetime.datetime.now()

    if (pyson.unify(term.args[0], date.year, intention.scope, intention.stack) and
        pyson.unify(term.args[1], date.month, intention.scope, intention.stack) and
        pyson.unify(term.args[2], date.day, intention.scope, intention.stack)):

        yield


@actions.add(".time", 3)
def _time(agent, term, intention):
    time = datetime.datetime.now()

    if (pyson.unify(term.args[0], time.hour, intention.scope, intention.stack) and
        pyson.unify(term.args[1], time.minute, intention.scope, intention.stack) and
        pyson.unify(term.args[2], time.second, intention.scope, intention.stack)):

        yield


@actions.add(".wait", 1)
def _wait(agent, term, intention):
    millis = pyson.grounded(term.args[0], intention.scope)
    intention.wait_until = time.time() + millis / 1000
    yield


# Custom actions for debugging:


@actions.add(".range", 2)
def _range_2(agent, term, intention):
    choicepoint = object()

    for i in range(int(pyson.grounded(term.args[1], intention.scope))):
        intention.stack.append(choicepoint)

        if pyson.unify(term.args[0], i, intention.scope, intention.stack):
            yield

        pyson.reroll(intention.scope, intention.stack, choicepoint)


@actions.add(".dump", 0)
def _dump(agent, term, intention):
    agent.dump()
    yield


@actions.add(".unbind_all", 0)
def _unbind_all(agent, term, intention):
    intention.scope.clear()
    yield


@actions.add(".control_flow", 0)
def _control_flow(agent, term, intention):
    out = open("control_flow.dot", "w")
    print("digraph control_flow {", file=out)
    for plans in agent.plans.values():
        for plan in plans:
            print("  \"%s %s\" -> \"%s\";" % (plan.name(), plan.context, plan.body), file=out)
            closed_instrs = set()
            open_instrs = set([plan.body])
            while open_instrs:
                instr = open_instrs.pop()

                if instr.success:
                    print("  \"%s\" -> \"%s\";" % (instr, instr.success), file=out)

                if instr.failure:
                    print("  \"%s\" -> \"%s\" [label=\"failure\"];" % (instr, instr.failure), file=out)

                closed_instrs.add(instr)
                if instr.success and instr.success not in closed_instrs:
                    open_instrs.add(instr.success)
                if instr.failure and instr.failure not in closed_instrs:
                    open_instrs.add(instr.failure)
    print("}", file=out)
    out.close()
    print("Graph dumped to control_flow.dot")
    yield
