+connected(Username) <-
  .print("Now authenticated as", Username).

-connected(_) <-
  .print("No longer connected");
  .dump.

+step(Step) <-
  .print("before wait");
  .wait(1000);
  .print("after wait");
  .skip.
