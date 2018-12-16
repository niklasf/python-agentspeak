#!/usr/bin/python3

import argparse
import sys
import requests
import github
import datetime
import os

class Issue:
    def __init__(self, opened, closed):
        self.opened = opened
        self.closed = closed

    def open_at(self, date):
        #print(self.opened, date, self.opened <= date)
        return self.opened <= date and (self.closed is None or date <= self.closed)

def get_issues(reponame):
    api = github.Github(os.environ["GITHUB_API_TOKEN"])

    repo = api.get_repo(reponame)
    issues = repo.get_issues(state="all")
    for issue in issues:
        yield Issue(issue.created_at, issue.closed_at)


def main(argv):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("repo", nargs="+")
    args = parser.parse_args(sys.argv[1:])

    # Collect results.
    results = {}

    for repo in args.repo:
        results[repo] = []

        issues = list(get_issues(repo))
        if issues:
            date = min(issue.opened for issue in issues)
            while date <= datetime.datetime.today():
                open_at = sum(1 for issue in issues if issue.open_at(date))
                results[repo].append(open_at)
                date += datetime.timedelta(1)

    # Print results.
    for repo in args.repo:
        print(repo, end="\t")

    print()

    for day in range(max(len(days) for days in results.values())):
        for repo in args.repo:
            if day < len(results[repo]):
                print(results[repo][day], end="\t")
            else:
                print(end="\t")
        print()


if __name__ == "__main__":
    main(sys.argv)
