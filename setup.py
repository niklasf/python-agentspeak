#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# This file is part of the python-agentspeak interpreter.
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

import setuptools
import os
import sys


def read_description():
    description = open(os.path.join(os.path.dirname(__file__), "README.rst")).read()
    return description


def dependencies():
    deps = ["colorama"]

    if sys.version_info < (3, 4):
        deps.append("enum34")

    return deps


setuptools.setup(
    name="agentspeak",
    version="0.2.0",
    author="Niklas Fiekas",
    author_email="niklas.fiekas@tu-clausthal.de",
    description="JASON-style AgentSpeak for Python.",
    long_description=read_description(),
    long_description_content_type="text/x-rst",
    license="GPL3",
    keywords="jason multi agent simulation agent-speak",
    url="https://github.com/niklasf/python-agentspeak",
    packages=["agentspeak"],
    install_requires=dependencies(),
    classifiers=[
        "Development Status :: 3 - Alpha",
        "Environment :: Console",
        "Intended Audience :: Developers",
        "Intended Audience :: Science/Research",
        "License :: OSI Approved :: GNU General Public License v3 (GPLv3)",
        "Operating System :: OS Independent",
        "Programming Language :: Python",
        "Programming Language :: Python :: 2",
        "Programming Language :: Python :: 2.7",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.3",
        "Programming Language :: Python :: 3.4",
        "Programming Language :: Python :: 3.5",
        "Programming Language :: Python :: 3.6",
        "Programming Language :: Python :: 3.7",
        "Programming Language :: Python :: 3.8",
        "Programming Language :: Python :: 3.9",
        "Programming Language :: Python :: 3.10",
        "Programming Language :: Other",
        "Topic :: Scientific/Engineering",
        "Topic :: Scientific/Engineering :: Artificial Intelligence",
        "Topic :: Software Development",
        "Topic :: Software Development :: Interpreters",
        "Topic :: Software Development :: Libraries",
    ],
)
