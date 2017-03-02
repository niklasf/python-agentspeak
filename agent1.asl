+connected(Username) <-
  .print("Now connected as", Username).

-connected(_) <-
  .print("No longer connected").

+team(_) <-
  .dump.

+step(Step) <-
  .print(Step).
