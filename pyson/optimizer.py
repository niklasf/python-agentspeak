from __future__ import print_function

import pyson.lexer
import pyson.parser

import sys


def main(source):
    log = pyson.Log(pyson.get_logger(__name__), 3)

    tokens = pyson.lexer.tokenize(source, log, 1)
    agent = pyson.parser.parse(tokens, log, frozenset(source.name))

    log.throw()

    # TODO

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
