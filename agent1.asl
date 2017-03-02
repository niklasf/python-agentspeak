+connected(Username) <-
  .print("Now authenticated as", Username).

-connected(_) <-
  .print("No longer connected").

+step(Step) <-
  .print("Step:", Step).
