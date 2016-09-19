from __future__ import print_function

import pyson.lexer
import pyson.parser

import sys


class MyVisitor:
    def __init__(self, log):
        self.log = log

    def visit_agent(self, ast_agent):
        for plan in ast_agent.plans:
            plan.accept(self)

    def visit_plan(self, ast_plan):
        self.log.error("test abc", loc=ast_plan.loc, extra_locs=[])


def main(source):
    log = pyson.Log(pyson.get_logger(__name__), 3)

    tokens = pyson.lexer.tokenize(source, log, 1)
    agent = pyson.parser.parse(tokens, log, frozenset(source.name))


    agent.accept(MyVisitor(log))
    # TODO

    log.throw()

    return agent


if __name__ == "__main__":
    try:
        args = sys.argv[1:]
        if args:
            for arg in args:
                with open(arg) as source:
                    print(main(source))
        else:
            print(main(sys.stdin))
    except pyson.AggregatedError as error:
        print(str(error), file=sys.stderr)
        sys.exit(0)
