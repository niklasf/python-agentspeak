#!/usr/bin/env python

import os
import agentspeak
import agentspeak.stdlib
import agentspeak.runtime

actions = agentspeak.Actions(agentspeak.stdlib.actions)

class Issue:
    def __init__(self):
        self.type = "bug" # or feature, pr

        #self.klass = "Main" # or None
        self.author = None
        self.patch = None

        self.priority = 1

    def as_term(self):
        return agentspeak.Literal("issue", (agentspeak.Literal(self.type), self.patch, self.priority), ())

class Patch:
    def __init__(self):
        self.removed = set()
        self.added = set()

class Environment(agentspeak.runtime.Environment):
    def __init__(self):
        super().__init__()
        self.issues = [Issue(), Issue()]

    @actions.add(".get_issue", 1)
    def get_issue(self, term, intention):
        for issue in self.env.issues:
            if agentspeak.unify(term.args[0], issue.as_term(), intention.scope, intention.stack):
                self.env.issues.remove(issue)
                yield

    @actions.add(".make_patch", 2)
    def make_patch(self, term, intention):
        klass = agentspeak.grounded(term.args[0], intention.scope)

        patch = Patch()
        patch.removed.add(klass)
        patch.added.add(klass)

        if agentspeak.unify(term.args[1], patch, intention.scope, intention.stack):
            yield

    @actions.add(".commit", 1)
    def commit(self, term, intention):
        patch = agentspeak.grounded(term.args[0], intention.scope)
        print("Committing patch", patch)
        yield

    @actions.add(".submit_issue", 3)
    def submit_issue(self, term, intention):
        issue = Issue()
        issue.author = self.name
        issue.type = agentspeak.grounded(term.args[0], intention.scope)
        issue.patch = agentspeak.grounded(term.args[1], intention.scope)
        issue.priority = agentspeak.grounded(term.args[1], intention.scope)
        self.env.issues.insert(0, issue)
        yield

env = Environment()

with open(os.path.join(os.path.dirname(__file__), "agent.asl")) as source:
    env.build_agent(source, actions)
with open(os.path.join(os.path.dirname(__file__), "committer.asl")) as source:
    env.build_agent(source, actions)

if __name__ == "__main__":
    env.run()
