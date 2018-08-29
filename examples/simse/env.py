#!/usr/bin/env python

import os
import pyson
import pyson.stdlib
import pyson.runtime

actions = pyson.Actions(pyson.stdlib.actions)

class Issue:
    def __init__(self):
        self.type = "bug" # or feature
        self.klass = "Main" # or None
        self.priority = 1

    def as_term(self):
        return pyson.Literal("issue", (pyson.Literal(self.type), self.klass, self.priority), ())

class Patch:
    def __init__(self):
        self.removed = set()
        self.added = set()

class Environment(pyson.runtime.Environment):
    def __init__(self):
        super().__init__()
        self.issues = [Issue(), Issue()]

    @actions.add(".get_issue", 1)
    def get_issue(self, term, intention):
        issue = self.env.issues.pop()
        if pyson.unify(term.args[0], issue.as_term(), intention.scope, intention.stack):
            yield

    @actions.add(".make_patch", 2)
    def make_patch(self, term, intention):
        klass = pyson.grounded(term.args[0], intention.scope)

        patch = Patch()
        patch.removed.add(klass)
        patch.added.add(klass)

        if pyson.unify(term.args[1], patch, intention.scope, intention.stack):
            yield

env = Environment()

with open(os.path.join(os.path.dirname(__file__), "agent.asl")) as source:
    agent = env.build_agent(source, actions)

if __name__ == "__main__":
    env.run_agent(agent)
