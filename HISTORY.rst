=======
History
=======

0.2.2 (2024-03-21)
------------------

* Fixed annotations to be literals.
* Minor bug fixing.

0.2.1 (2024-01-24)
------------------

* Fixed bug in plan_to_str function.

0.2.0 (2023-10-25)
------------------

* Updated Agent's call function.
* Improved comments.
* Translated new example.
* Fixed error at plan_to_string.
* Changes in string processing.
* New examples rewritten for readability.
* Added askHow, tellHow and untellHow.
* Add example for calling asl from python
* Fixed exception name.
* Bump development status.
* Specify long_description_content_type.

0.1.0 (2019-06-11)
------------------

* Prepare publishing pre-alpha on pypi
* Update optimizer after refactoring
* Fix AstPlan.signature
* Move .raise to ext_stdlib
* Fix linked list in plan header


0.0.1 (2018-12-16)
------------------

* simse: also simulate junit4 again
* simse: rename results
* simse: run again
* simse: track ccg while simulating refactorings
* procedure != predicate
* fix arg count after agent/env injection
* update simse.asl
* stop adding features for swz workshop paper
* transpose issues.csv
* simse: transpose issue table
* fix _zip_specs
* request agent/environment injection
* @actions.{add_agent_method,add_agent_predicate,add_agent_procedure}
* raise arbitrary types
* better backtraces
* number of open issues
* Merge pull request #6 from lpmi-13/typofix
* fix simple typo
* simse: add new files
* simse: run multiple agents
* simse: submit patch as pr
* simse: make a patch
* simse: add agent.asl
* simse: create simple environment
* commit refactoring example output
* update GameController and mapdb snapshots
* snapshot.py: handle more expression types
* snapshot.py: handle super method invocations
* snapshot.py: declare and walk constructors
* fix exception due to filter evaluated as true
* fix waiting with multiple agents
* remove warning for deadlocks
* test unification in .wait
* more exhaustive test for .wait
* better debug output
* fix polling
* implement wake up
* events are now fully parsed
* fix plan pretty print
* attempt to parse event
* factor out AstEvent
* typecheck .wait
* handle optional arguments for wait
* refactor waiting
* Update snapshots after bugfix
* snapshot: Fix many commits detected as irrelevant
* Add old script: change-coupling.py
* authors for mapdb
* authors for junit4 snapshot
* do not choke on inner classes
* encapsulate java code walking in visitor
* WIP: extend refactorings with add_feature
* Add .geometric/2 to ext_stdlib
* prepare add_feature and bugfixes
* Fix include resolution
* Update counting example
* Resolve included files relative to current file
* JASON -> Jason
* Fix buglifespan example
* Merge pull request #5 from bitshift14/master
* Merge branch 'master' of https://github.com/bitshift14/pyson
* miscellaneous fixes and additions
* Redo mapdb simulation
* Redo GameController simulation
* Redo junit4 simulation
* Fix refactoring simulation
* Add snapshots of GameController and mapdb
* Allow passing custom names to build_agent
* Remove debugging for .wait
* Fix .wait in asyncio environment
* Optimize away some noops
* Fix missing pop_query after if and while
* Forgot to commit tests/asl/abolish.asl
* Fix lexer: inline comments should not be greedy
* Fix Python 2 compability in ext_stdlib
* Make if-at-plan-end test failures noticable
* WIP: Simulate refactorings
* Allow sending tagged messages
* Convert LinkedList to tuple if asked
* Ordering literals has been fixed
* Fix LinkedList.grounded
* Tweak display of exceptions
* Fix display of critical log level
* Integrate Python exceptions more nicely at runtime
* Forgot to commit linked list test
* Fix LinkedList.__hash__
* Lower LinkedList
* Start parsing linked lists
* Fix ambiguity with | in lists
* Fix nested for loops
* Merge branch 'bls'
* chmod +x communications example
* Mention literal comparison incompability
* Seperate examples and asl tests
* Simse: Count SLOC
* Simse: Snapshot WIP
* Make literal equality total
* Add a partial order for literals
* Add .count test case
* Fix .count
* Added a crash repro, due to differences in python2/python3 string handling
* Optimizer: Fixed an incompatibility with build_agent and made string detection more robust
* Merge branch 'master' of github.com:niklasf/pyson
* Fixed a Python2 incompatibility in optimizer (hopefully dealing with #2)
* Fixed a Python2 incompatibility in optimizer
* mapc2017: Delay run until agents are in a consistent state
* Update step last
* Fix build_agent_from_ast
* Bugfixes for mapc2017
* Merge branch 'master' of https://github.com/niklasf/pyson
* Integrated the optimizer with the standard library and made it executable
* Implement and test .send
* Test another ilf
* Update mapc2017 Agent class
* Register the prototype agent
* Implement and test .broadcast
* Use agent names instead of hex codes
* Register agents with unique names
* Make an extended stdlib with some common functions
* Start creating a refactorings example
* Merge pull request #1 from suyjuris/master
* Deleted temporary files
* Merge branch 'master' of https://github.com/niklasf/pyson
* Optimizer improvements: Better handling of belief queries, annotations, plan context, action side-effects, and loops
* Explicitly declare mapc2017 actions
* Make action override assertions more helpful
* Fixes for mapc2017.py
* Add a .gitignore
* Add storage items
* Make shop items available
* Forgot shops
* Test money belief
* Test parsing mapc2017 request-action.xml
* Update sample request-action.xml
* Remove stale rules_in_file
* Start adding job data
* Add dumps and charging stations
* Add storage percepts
* Add workshop percepts
* Update entities
* Test using an xml fixture
* Fix unification order
* Add carried items
* Diff belief groups
* Add item percepts
* Add tool data to roles
* Identify agents by name instead of id
* Annotate percepts
* Create 6 agents
* Support skip action
* Add warning for '.' in assertion
* Add warning for beliefs after plans
* Allow expression in replacement formula
* Use set_belief for auth response
* Nicer console output
* Improve logging in mapc2017
* The connector is specific to the scenario
* Now getting step info
* Create a nicer pyson_repr
* Make a couple of simulation parameters available
* Actually handle auth response
* Fix error handling in constant folder
* Show a proper error message in case of eof
* Create a peekable TokenStream
* Call removal plans only if something was removed
* Log outgoing messages
* Add more temporary example files
* Try to call message plans
* Use lxml to build authentication message
* Log indidual messages
* Improve logging
* Authenticate with password
* Add experimental disconnect action
* Start connecting to a simulation server
* Initial commit of the optimizer
* WIP buglifespan
* More RST tweaks
* Fix rst in README
* Add basic usage documentation
* Add .control_flow to dump cfg
* Combine multiple agent steps
* Freeze in _zip_specs
* Fix scope arg in call to _zip_specs
* Extend map reduce example
* Annotate messages with the source
* Consider annotations for plan selection
* Test simple communication
* Recursive unification with annotations
* Use unify_annotated for belief lookup
* Add annotations.asl to tox
* Add example with annotations
* Implement unification with annotations
* Add unify annotated
* Update README
* Fix is_atom docs
* Reduce time in .wait example
* Make unify commutative
* Distinguish procedures and predicates
* Remove env from agent calling convention again
* Enable parallel execution
* Experiment with map reduce runtime
* Allow subclassing Agent
* Reverse build_agent <-> build_agents dependency
* Test and fix unary operations
* Remove duplicate import of time
* Fix call to build_agent
* Fix undefined reference (scope) in pop_choicepoint
* Add failing test for while loops
* Minor coding style fixes courtesy of flake8
* .range was still using agent.stack
* .substring was still using agent.stack
* Update remove_belief to new calling convention
* Update to intention.stack in .member
* Fix call to _zip_specs
* Fix typo in .count: intetion -> intention
* Fix query call in .findall
* Add temporary hack to disable repl
* Update stdlib tests to new intention model
* Let tox also test all examples
* Adjust setup.py for all the platforms
* Fix typo: fork_join_xor -> for_join_xor
* Add tox.ini with unit tests
* Fix calling_intention
* Fix yield from replacement
* Add illegal belief example
* Fix missing intention.calling_term
* Start optimizer module
* Add Jason 2.0 fork join tokens to lexer
* Add example with .wait
* Fix error in case of tail recursion
* Allow calling .wait with grounded var
* .wait for millis, not seconds
* Implement rudimentary .wait
* Use str instead of repr for variable dump
* Prepare arbitrary intention selection
* Fix plan context execution
* Fix test goals once again
* Adjust actions to new signature
* Make stacks per intention
* Wording: variable not ground -> term not ground
* Fix string formatting in binary op error message
* Move query stack to intention level
* Fix calling of subplans
* Use repr when dumping variables
* Add locations to most instructions
* Use new environment in counting example
* Fix .findall
* Fix repl
* Move build_agnet to environment
* Annotate all instruction errors with locations
* Add env to simse example
* Lazily import plt
* Raise plan failure errors directly
* Inject environment state
* Lazily import stdlib
* More useful plan failure output
* Remove intention.last_result
* Reset repl on plan failure
* Make call_delayed a seperate instruction
* Add spark launch helper
* Add hand coded counting with flat map
* Yield in _stopMAS
* Let simse.py change the working directory
* Close included files after parsing
* Use fast initialization for simse example
* Add simple arithmetic test cases
* Compare different initiaization methods
* Fast initialization with many agents
* Make counting.py independent of working directory
* FileNotFoundError is Python 3 only
* Update counting benchmark
* Complete counting scenario with benchmarks and all
* Fix print colors with many agents
* Add counting example
* Remove debug print
* Fix failing if at plan end
* Remove debug print
* Fix parsing of empty lists
* Fix reference to pyson_repr
* Test and support longs in Python 2
* Fix parse_string in Python 2
* Fix token priority in Python 2
* Fix AstBinaryOp.__init__
* Fix concat tests
* Add Literal.__nonzero__
* Fix tests: tuples are the new lists
* Fix a few more super calls
* Add Python 2 requirement list
* Backport to Python 2
* Implement and test .count
* Remove .date and .time from TODO list
* Implement and test .time
* Implement and test .date
* Test and implement .findall
* Clarify .range, .dump and .unbind_all are non-standard
* Implement and test .member
* Implement and test .substring
* Implement and test .length
* Implement and test .sort
* Implement and test .nth
* Test min and max
* Formulate examples as tests
* Add --plot for demo
* Fix is_number
* Fix string formatting for exception
* Implement term type identification
* is_numeric -> is_number
* Map pyson list to Python tuples
* Add setup.py
* Work on adjusting stdlib
* Warn about recovery plans
* More direcory organization
* Move examples to their own dir, adjust subplans
* Adjust belief removal
* Alias pyson.runtime to pyson
* Adjust simse.py and add_function
* Remove debug output
* Test and fix unification
* Debug plan failure
* Adjust UnifyQuery
* Completely adjust BuildTermVisitor
* Adjust dump_variables
* Adjust test_belief
* Add Instruction.__repr__
* Adjust rerolling
* Complete adjustments of TermQuery
* Add Literal.literal_group
* Fix print action
* Preevaluating terms for actions is useless
* Adjust ActionQuery
* Fix unify in call
* Fix freezing in call
* Adjust make const
* Adjust make_variable
* AstBeliefAtom -> AstLiteral
* Fix typo: lexme -> lexeme
* Switch to new runtime type system
* Add UnaryExpr and BinaryExpr
* Test and fix unifying structures
* Start using Python builtin types
* Move pyson.prompt to pyson.util
* Document unimplemented JASON actions
* Add .stopMAS
* Implement and test concat
* Fix readline overwrites prompt
* Warn that directives are also unsupported
* Warn that plan annotations are unsupported
* Allow multiple annotations per plan
* What can we do with uniform distribution
* Start simse example
* Allow None results
* Move everything to a platform directory
