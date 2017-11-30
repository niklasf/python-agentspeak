#!/usr/bin/env python

import random
import collections
import itertools
import numpy.random

import pyson
import pyson.stdlib
import pyson.runtime

from helper import Schedule, Graph, iter_choice


# #############################################################################
# Parameters
# #############################################################################

# Apache POI
NUM_CREATORS = 1
NUM_MAINTAINERS = 0
NUM_MAJOR_DEVELOPERS = 5
NUM_MINOR_DEVELOPERS = 14

MAX_FILES = 4000
MAX_BUGS_PER_ROUND = 6

SIM_ROUNDS = 5250

CATEGORY_NAMES = ["c_01", "c_02", "c_03", "c_05", "c_06"]
ERROR_PRONE_CATEGORIES = ["c_01", "c_03", "c_05"]

ASSIGN_BUGS_TO_HIGH_DEGREE_MODULES = True
P_ASSIGN_BUGS_TO_HIGH_DEGREE_MODULES = 0.85

P_MAJOR_BUG = 0.255
P_NORMAL_BUG = 0.5025
P_MINOR_BUG = 0.2425

CATEGORY_PROBABILITY = 0.35

LAST_STAGE = 0.85
START_TICK_LAST_STAGE = int(SIM_ROUNDS * LAST_STAGE)


# #############################################################################
# Actions
# #############################################################################

actions = pyson.Actions(pyson.stdlib.actions)
actions.add_function(".randint", (int, int), random.randint)


# #############################################################################
# Classes
# #############################################################################

class Artifact:
    def __init__(self, creator, category):
        self.creator = creator
        self.category = category


class Bug:
    def __init__(self, severity, created, closed=None):
        self.severity = severity
        self.created = created
        self.closed = closed


class Developer:
    def __init__(self, name):
        self.active = True
        self.name = name

    def compute_change_probability(self):
        file_count = max(1, len(artifacts))

        c = MAX_FILES / file_count
        d = c * random.uniform(0.6, 0.95)

        d = max(d, 1.125)

        c = min(c, 4.5)
        d = min(d, 2.75)

        return c, d

    def get_random_day(self):
        return random.randint(1, 35)

    def get_module_to_change(self, category):
        p = random.random()

        if p < 0.6 and any(a for a in artifacts if a.creator == self.name and a.category == category):
            if p < 0.4125:
                return iter_choice(a for a in artifacts if a.creator == self.name and a.category == category)
            else:
                return iter_choice(a for a in artifacts if a.creator == self.name)
        elif p > 0.76 and any(a for a in artifacts if a.category == category):
            return iter_choice(a for a in artifacts if a.category == category)
        elif artifacts:
            return random.choice(artifacts)

    def get_random_bug(self):
        tickets = bugs.outgoing
        p_fix_type = random.random()

        if p_fix_type < 0.13:
            for bug in tickets:
                if bug.severity == "minor" and not bug.closed:
                    return bug
        if p_fix_type >= 0.775:
            for bug in tickets:
                if bug.severity == "major" and not bug.closed:
                    return bug
        for bug in tickets:
            if bug.severity == "normal" and not bug.closed:
                return bug

    def create_files(self, num_files, category):
        created = []

        for _ in range(num_files):
            artifact = Artifact(self.name, category)
            created.append(artifact)
            artifacts.append(artifact)

        return created

    def update_files(self, num_files, category):
        updated = []

        for _ in range(num_files):
            module = self.get_module_to_change(category)
            if module and module not in updated:
                updated.append(module)

        return updated

    def delete_files(self, num_files, category):
        # TODO
        pass

    def create_coupling(self, changed):
        if len(changed) > 25:
            return

        for a in changed:
            for b in changed:
                coupling.incr_edge(a, b)

    def intention_bugfix(self):
        # TODO
        pass

    def is_owner(self, bug):
        return any(module.creator == self.name for module in bugs.outgoing[bug])


class Creator(Developer, pyson.runtime.Agent):

    actions = pyson.Actions(actions)

    def __init__(self, env, name, beliefs=None, rules=None, plans=None):
        Developer.__init__(self, name)
        pyson.runtime.Agent.__init__(self, env, name, beliefs, rules, plans)
        self.days = 6

    @actions.add(".do_work")
    def do_work(self, term, intention):
        category = random.choice(CATEGORY_NAMES)
        c, d = self.compute_change_probability()

        if schedule.tick >= START_TICK_LAST_STAGE:
            num_deleted = numpy.random.geometric(min(1, 1 / d * 2.2))
            num_updated = numpy.random.geometric(0.35)
            num_created = numpy.random.geometric(min(1, 1 / c))
        else:
            num_deleted = numpy.random.geometric(min(1, 1 / d * 1.6))
            num_updated = numpy.random.geometric(0.425)
            num_created = numpy.random.geometric(min(1, 1 / c * 1.7475))

        changed = []
        self.delete_files(num_deleted, category)
        changed += self.update_files(num_updated, category)
        changed += self.create_files(num_created, category)

        self.create_coupling(changed)

        self.bugfix()
        yield

    @actions.add(".do_update")
    def do_update(self, term, intention):
        num_updated = numpy.random.geometric(0.3275)
        category = random.choice(CATEGORY_NAMES)
        updated = self.update_files(num_updated, category)
        self.create_coupling(updated)
        yield

    def bugfix(self):
        bug = self.get_random_bug()
        if not bug:
            return

        p_fix = random.random()
        if p_fix <= 0.75:
            bug.closed = schedule.tick
        elif self.is_owner(bug) and p_fix <= 0.95:
            bug.closed = schedule.tick

class Maintainer(Developer):

    def __init__(self, name):
        super(Maintainer, self).__init__(name)
        self.days = 2

    def get_random_day(self):
        return random.randint(1, 45)

    def do_some_work(self):
        random_day = self.get_random_day()
        category = random.choice(CATEGORY_NAMES)
        c, d = self.compute_change_probability()

        if random_day <= self.days:
            if schedule.tick >= START_TICK_LAST_STAGE:
                num_deleted = numpy.random.geometric(min(1, 1 / d * 1.1))
                num_updated = numpy.random.geometric(0.15)
                num_created = numpy.random.geometric(1 / c * 0.95)
            else:
                num_deleted = numpy.random.geometric(min(1, 1 / d))
                num_updated = numpy.random.geometric(0.25)
                num_created = numpy.random.geometric(1 / c * 0.6)

            changed = []
            self.delete_files(num_deleted, category)
            changed += self.update_files(num_updated, category)
            changed += self.create_files(num_created, category)

            self.create_coupling(changed)

            self.bugfix()
        elif random_day <= 6:
            self.intention_bugfix()

    def bugfix(self):
        bug = self.get_random_bug()
        if not bug:
            return

        p_fix = random.random()
        if p_fix <= 0.75:
            bug.closed = schedule.tick
        elif self.is_owner(bug) and p_fix <= 0.90:
            bug.closed = schedule.tick

class MajorDeveloper(Developer):

    def __init__(self, name):
        super(MajorDeveloper, self).__init__(name)
        self.days = 2

    def get_random_day(self):
        return random.randint(1, 100)

    def do_some_work(self):
        random_day = self.get_random_day()
        category = random.choice(CATEGORY_NAMES)
        c, d = self.compute_change_probability()

        if random_day <= self.days:
            num_deleted = numpy.random.geometric(min(1, 1 / d * 0.95))
            num_updated = numpy.random.geometric(0.2)
            num_created = numpy.random.geometric(min(1, 1 / c * 1.3))

            changed = []
            self.delete_files(num_deleted, category)
            changed += self.update_files(num_updated, category)
            changed += self.create_files(num_created, category)

            self.create_coupling(changed)

            self.bugfix()
        elif random_day <= 5:
            num_updated = numpy.random.geometric(0.3275)
            updated = self.update_files(num_updated, category)
            self.create_coupling(updated)
        elif random_day <= 7:
            self.intention_bugfix()

    def bugfix(self):
        bug = self.get_random_bug()
        if not bug:
            return

        p_fix = random.random()
        if p_fix <= 0.075:
            bug.closed = schedule.tick
        elif self.is_owner(bug) and p_fix <= 0.25:
            bug.closed = schedule.tick

class MinorDeveloper(Developer):

    def __init__(self, name):
        super(MinorDeveloper, self).__init__(name)
        self.days = 1

    def get_random_day(self):
        return random.randint(1, 100)

    def do_some_work(self):
        random_day = self.get_random_day()
        category = random.choice(CATEGORY_NAMES)
        c, d = self.compute_change_probability()

        if random_day <= self.days:
            num_deleted = numpy.random.geometric(min(1, 1 / d * 0.975))
            num_updated = numpy.random.geometric(0.25)
            num_created = numpy.random.geometric(1 / c * 0.9)

            changed = []
            self.delete_files(num_deleted, category)
            changed += self.update_files(num_updated, category)
            changed += self.create_files(num_created, category)

            self.create_coupling(changed)

            self.bugfix()
        elif random_day <= 3:
            num_updated = numpy.random.geometric(0.26)
            updated = self.update_files(num_updated, category)
            self.create_coupling(updated)
        elif random_day <= 4:
            self.intention_bugfix()

    def bugfix(self):
        bug = self.get_random_bug()
        if not bug:
            return

        p_fix = random.random()
        if p_fix <= 0.05:
            bug.closed = schedule.tick
        elif self.is_owner(bug) and p_fix <= 0.25:
            bug.closed = schedule.tick


# #############################################################################
# Initialization
# #############################################################################

env = pyson.runtime.Environment()
schedule = Schedule()
coupling = Graph()
bugs = Graph()
developers = []
artifacts = []

for i in range(NUM_CREATORS):
    developers.append(env.build_agent(
        open("creator.asl"),
        Creator.actions,
        Creator))

for i in range(NUM_MAINTAINERS):
    developers.append(Maintainer("maintainer%d" % i))

for i in range(NUM_MAJOR_DEVELOPERS):
    developers.append(MajorDeveloper("major%d" % i))

for i in range(NUM_MINOR_DEVELOPERS):
    developers.append(MinorDeveloper("minor%d" % i))


# #############################################################################
# Simulation logic
# #############################################################################

@schedule.add(start=20, interval=2)
def create_bug():
    num_modules = len(artifacts)
    num_modules_to_add_bug = random.randint(0, min(num_modules, MAX_BUGS_PER_ROUND))

    for _ in range(num_modules_to_add_bug):
        if random.random() > CATEGORY_PROBABILITY:
            selected_artifacts = list(artifacts)
        else:
            selected_artifacts = [a for a in artifacts if a.category in ERROR_PRONE_CATEGORIES]

        if not selected_artifacts:
            return

        if ASSIGN_BUGS_TO_HIGH_DEGREE_MODULES and random.random() < P_ASSIGN_BUGS_TO_HIGH_DEGREE_MODULES:
            selected_artifacts.sort(key=coupling.degree)
            module = iter_choice(itertools.islice(selected_artifacts, 0, 50))
        else:
            module = random.choice(selected_artifacts)

        d = random.random()
        if d <= P_MAJOR_BUG:
            bugs.incr_edge(Bug("major", schedule.tick), module)
        elif d >= 1 - P_MINOR_BUG:
            bugs.incr_edge(Bug("minor", schedule.tick), module)
        else:
            bugs.incr_edge(Bug("normal", schedule.tick), module)

@schedule.add(interval=365)
def debug():
    print("Bugs:", sum(1 for bug in bugs.outgoing if not bug.closed))

@schedule.add(interval=1)
def do_some_work():
    for developer in developers:
        if developer.active:
            if isinstance(developer, pyson.runtime.Agent):
                developer.call(
                    pyson.Trigger.addition,
                    pyson.GoalType.achievement,
                    pyson.Literal("tick"),
                    pyson.runtime.Intention())

                env.run_agent(developer)
            else:
                developer.do_some_work()


if __name__ == "__main__":
    schedule.run(SIM_ROUNDS)
