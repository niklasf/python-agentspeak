+connected(Username) <-
  .print("Now authenticated as", Username);
  +step("Hello there").

-connected(_) <-
  .print("No longer connected");
  .dump.

+step(Step) : Step \== "Hello there" <-
  .print("Step:", Step);
  .skip.
