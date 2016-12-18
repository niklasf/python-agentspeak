pyson - JASON-style AgentSpeak for Python
=========================================

Setup
-----

.. code::

    python setup.py develop

Hello world
-----------

```
!hello_world.

+!hello_world <-
  .print("Hello world!").
```

Usage
-----

Run a standalone agent program:

```
$ python -m pyson examples/hello_world.asl
```

Run an interactive console:

```
$ python -m pyson
```

See `examples/embedded` for an an example that interfaces with custom Python
code.

Jason compability
-----------------

pyson should be mostly equivalent to [Jason](http://jason.sourceforge.net/),
with a couple of minor differences:

* Plan annotations are ignored as of yet.
* Standard library does not yet contain syntactic transformations with
  `{begin ...}` and `{end}`.
* Standard library does not yet contain introspective and plan-manipulation
  actions.
