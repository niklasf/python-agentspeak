Jason-style AgentSpeak for Python
=================================
.. image:: https://img.shields.io/pypi/v/agentspeak.svg
    :target: https://pypi.python.org/pypi/agentspeak

.. image:: https://img.shields.io/pypi/pyversions/agentspeak.svg
    :target: https://pypi.python.org/pypi/agentspeak

.. image:: https://img.shields.io/pypi/l/agentspeak
    :target: https://opensource.org/licenses/gpl-3-0
    :alt: GPL 3 License

.. image:: https://pepy.tech/badge/agentspeak
    :target: https://pepy.tech/project/agentspeak
    :alt: Downloads

.. image:: https://img.shields.io/pypi/format/agentspeak.svg
    :target: https://pypi.python.org/pypi/agentspeak



A Python-based interpreter for the agent-oriented programming language JASON.

`python-agentspeak` is a Python-based interpreter for the agent-oriented programming language JASON. This library makes it easy to create and manage intelligent agents, offering syntax and functionalities similar to JASON in a Python environment.

Key Features
------------
* Jason-style AgentSpeak interpretation
* Easy integration with existing Python code
* Support for complex agent constructions

Setup
-----

.. code::

    pip install agentspeak

Requirements
------------
* Python 3.6 or higher
* Additional dependencies are automatically installed

Usage example
-------------

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
