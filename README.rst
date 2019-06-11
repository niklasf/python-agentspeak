Jason-style AgentSpeak for Python
=================================

A Python-based interpreter for the agent-oriented programming language JASON.

Setup
-----

.. code::

    pip install agentspeak

Hello world
-----------

.. code::

    !hello_world.

    +!hello_world <-
      .print("Hello world!").

Usage
-----

Run a standalone agent program:

.. code::

    $ python -m agentspeak examples/hello_world.asl

Run an interactive console:

.. code::

    $ python -m agentspeak

See :code:`examples/embedded` for an example that interfaces with custom
Python code.

Jason compability
-----------------

python-agentspeak should be mostly equivalent to Jason_.

* Plan annotations are ignored as of yet.
* Standard library does not yet contain syntactic transformations with
  :code:`{begin ...}` and :code:`{end}`.
* Standard library does not yet contain introspective and plan-manipulation
  actions.
* Jason 2.0 fork join operators not yet supported.
* Literals are only comparable if they have the same signature.

.. _Jason: http://jason.sourceforge.net/
