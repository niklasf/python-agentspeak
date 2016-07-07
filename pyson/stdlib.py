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
import random


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

    builder = []
    memo = {}
    for arg in term.args:
        folded = arg.fold(scope).freeze(scope, memo)
        builder.append(str(folded) if folded.string is None else folded.string)

    with colorama.colorama_text():
        print(color[0], color[1], hex(id(agent)), colorama.Fore.RESET, colorama.Back.RESET, " ", " ".join(builder), sep="")

    yield


actions.add_function(".random", (), random.random)


@actions.add(".fail", 0)
def _fail(agent, term, scope):
    yield from []


@actions.add(".my_name", 1)
def _my_name(agent, term, scope):
    name = hex(id(agent))
    name_term = pyson.Term.make_string(name)

    choicepoint = object()
    agent.stack.append(choicepoint)

    if term.args[0].unify(name_term, scope, agent.stack):
        yield

    pyson.reroll(scope, agent.stack, choicepoint)


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
