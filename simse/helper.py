#!/usr/bin/env python

import collections
import random


def iter_choice(iterable):
    chosen = None

    for i, entry in enumerate(iterable):
        if chosen is None or random.randint(0, i) == i:
            chosen = entry

    return chosen


class ScheduleEntry:

    def __init__(self, f, start, interval, end):
        self.f = f
        self.start = start
        self.end = end
        self.interval = interval


class Schedule:

    def __init__(self):
        self.tick = 0
        self.entries = []

    def add(self, start=0, interval=None, end=None, f=None):
        def _add(f):
            self.entries.append(ScheduleEntry(f, start, interval, end))
            return f

        if f is None:
            return _add
        else:
            return _add(f)

    def run(self, steps):
        for _ in range(steps):
            for entry in self.entries:
                if entry.start and entry.start > self.tick:
                    continue
                if entry.end and entry.end < self.tick:
                    continue

                if entry.start == self.tick:
                    entry.f()
                elif entry.interval and (self.tick - entry.start) % entry.interval == 0:
                    entry.f()

            self.tick += 1


class Graph:

    def __init__(self):
        self.outgoing = collections.defaultdict(lambda: collections.defaultdict(int))
        self.ingoing = collections.defaultdict(lambda: collections.defaultdict(int))

    def out_degree(self, node):
        return len(self.outgoing[node])

    def in_degree(self, node):
        return len(self.ingoing[node])

    def degree(self, node):
        return self.out_degree(node) + self.in_degree(node)

    def nodes(self):
        s = set()
        s.update(self.outgoing)
        s.update(self.ingoing)
        return s

    def incr_edge(self, a, b, weight=1):
        self.outgoing[a][b] += weight
        self.ingoing[b][a] += weight
