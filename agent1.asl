+connected(Username) <-
  .print("Now authenticated as", Username).

-connected(_) <-
  .print("No longer connected").

+step(Step) : not pause <-
  .print("Step:", Step);
  +pause;
  -+step(Step + 1);
  -pause.
