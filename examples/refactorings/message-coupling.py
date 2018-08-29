#!/usr/bin/env python

import sys
import networkx as nx
import networkx.algorithms.approximation as apxa

G = nx.Graph()

for line in open(sys.argv[1]):
    if line.startswith("method("):
        cols = line.lstrip("method(").split(", ")
        klass, method = cols[0].strip("\""), cols[1].strip("\"")
        node = klass # + "::" + method
        print(node, "is a node")
        G.add_node(node)
    if line.startswith("calls("):
        cols = line.lstrip("calls(").rstrip(").").split(", ")
        caller, calee = cols[0].strip("\""), cols[2].strip("\"")
        print(caller, "calls", calee, "(method call)")
        G.add_edge(caller, calee)

print("---")

print("Clustering:", nx.average_clustering(G))
print("Degree assortativity:", nx.degree_assortativity_coefficient(G))
print("Transitivity:", nx.transitivity(G))
