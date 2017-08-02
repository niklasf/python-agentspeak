+connected(Username) <-
  .print("Now authenticated as", Username).

-connected(_) <-
  .print("No longer connected");
  .dump.

+step(Step) <-
  .print("Step:", Step);
  .skip.
