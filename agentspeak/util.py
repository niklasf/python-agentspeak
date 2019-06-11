# -*- coding: utf-8 -*-
#
# This file is part of the python-agentspeak interpreter.
# Copyright (C) 2016-2019 Niklas Fiekas <niklas.fiekas@tu-clausthal.de>.
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

import colorama


try:
    input = raw_input  # Python 2
except NameError:
    pass  # Python 3


def indent(s, spaces=2):
    return "\n".join((" " * spaces + line) for line in s.splitlines())


def prompt(text):
    prefix = colorama.Fore.CYAN + text + colorama.Fore.RESET

    with colorama.colorama_text():
        try:
            import readline
            return input(prefix)
        except ImportError:
            print(prefix, end="")
            return input()
