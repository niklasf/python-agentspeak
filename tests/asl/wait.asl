!alpha.
!beta.
!gamma.

+!alpha <-
  .print("Waiting on beta");
  .wait("+done(beta)", 500);
  +done(alpha);
  .print("Alpha done").

+!beta <-
  .print("Waiting on alpha");
  .wait("+done(alpha)");
  +done(beta);
  .print("Beta done").

+!gamma <-
  .wait("+done(X)");
  .print("Someone is done").
