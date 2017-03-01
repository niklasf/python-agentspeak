!hello.

+!hello <-
  .print("hello world").

+connected <-
  .print("Now connected").

-connected <-
  .print("No longer connected").

+!message(Xml) <-
  .print("XML:", Xml);
  .dump;
  .disconnect.
