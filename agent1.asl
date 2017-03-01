!hello.

+!hello <-
  .print("hello world").

+connected(Username) <-
  .print("Now connected as", Username).

-connected(_) <-
  .print("No longer connected").

+!message(Xml) <-
  .print("XML:", Xml);
  .dump;
  .disconnect.
