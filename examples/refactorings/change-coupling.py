#!/usr/bin/env python

import logging
import sys
import git
import collections
import os
import itertools
import networkx as nx
import networkx.algorithms.approximation as apxa
#import matplotlib.pyplot as plt


ENDINGS = ['4th', 'forth', 'fr', 'frt', 'fth', 'f83', 'fb', 'fpm', 'e4', 'rx', 'ft', 'ada', 'adb', 'ads', 'pad', 'agda', 'as', 'awk', 'bat', 'btm', 'cmd', 'c', 'ec', 'pgc', 'cc', 'cpp', 'cxx', 'c++', 'pcc', 'cfc', 'coffee', 'cs', 'csh', 'css', 'cu', 'cuh', 'd', 'dart', 'dts', 'dtsi', 'el', 'lisp', 'lsp', 'scm', 'ss', 'rkt', 'erl', 'hrl', 'fs', 'fsx', 'vert', 'tesc', 'tese', 'geom', 'frag', 'comp', 'go', 'h', 'hh', 'hpp', 'hxx', 'hbs', 'handlebars', 'hs', 'html', 'idr', 'lidr', 'ini', 'jai', 'java', 'jl', 'js', 'jsx', 'kt', 'kts', 'lds', 'lean', 'hlean', 'less', 'lua', 'm', 'ml', 'mli', 'nb', 'wl', 'sh', 'asa', 'asp', 'asax', 'ascx', 'asmx', 'aspx', 'master', 'sitemap', 'webinfo', 'in', 'clj', 'cljs', 'cljc', 'f', 'for', 'ftn', 'f77', 'pfo', 'f03', 'f08', 'f90', 'f95', 'makefile', 'mk', 'mm', 'nim', 'php', 'pl', 'qcl', 'qml', 'cshtml', 'mustache', 'oz', 'p', 'pro', 'pas', 'hex', 'ihex', 'json', 'markdown', 'md', 'rst', 'text', 'txt', 'polly', 'proto', 'arr', 'py', 'r', 'rake', 'rb', 'rhtml', 'rs', 's', 'asm', 'sass', 'scss', 'sc', 'scala', 'sls', 'sml', 'sql', 'styl', 'swift', 'tcl', 'tex', 'sty', 'toml', 'ts', 'tsx', 'thy', 'uc', 'uci', 'upkg', 'v', 'vim', 'xml', 'yaml', 'yml', 'y', 'zsh']


def mine_repo(base_path):
    repo = git.Repo(base_path)
    commits = collections.defaultdict(set)

    for subdir, dirs, files in os.walk(base_path):
        for filename in files:
            ext = os.path.splitext(filename)[1][1:]
            if ext not in ENDINGS:
                continue

            relpath = os.path.relpath(os.path.join(subdir, filename), base_path)
            for entry in repo.blame_incremental("HEAD", relpath):
               commits[entry.commit.hexsha].add(filename)

    return commits


def cc_graph(commits):
    G = nx.Graph()

    for group in commits.values():
        for a, b in itertools.combinations(group, 2):
            if G.has_edge(a, b):
                G[a][b]["weight"] += 1
            else:
                G.add_edge(a, b, weight=1)

    return G


def yield_repos(fixtures):
    for user in os.listdir(fixtures):
        if not os.path.isdir(os.path.join(fixtures, user)):
            continue

        for repo in os.listdir(os.path.join(fixtures, user)):
            if os.path.isdir(os.path.join(fixtures, user, repo)):
                yield user, repo


def main(fixtures):
    out_file = open("cc.tsv", "a")
    print("Repo", "Average clustering", "Degree assortativity", "Transitivity", sep="\t")
    print("Repo", "Average clustering", "Degree assortativity", "Transitivity", sep="\t", file=out_file)

    #nx.draw(G, with_labels=True)
    #plt.show()

    repos = yield_repos(fixtures)
    any(repo == "cuberite" for user, repo in repos)

    for user, repo in repos:
        print("Mining", user, repo, file=sys.stderr)

        try:
            path = os.path.join(fixtures, user, repo)
            commits = mine_repo(path)
            G = cc_graph(commits)
        except KeyboardInterrupt:
            print("Skipping", user, repo, file=sys.stderr)
        else:
            try:
                out = [repo, nx.average_clustering(G), nx.degree_assortativity_coefficient(G), nx.transitivity(G)]
            except:
                logging.exception("exception while computing graph coefficients")
            else:
                out = [str(o) for o in out]
                print("\t".join(out))
                print("\t".join(out), file=out_file, flush=True)


if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO)
    main(sys.argv[1])
