foo(2).

!init.

+!subplan(X) : foo(X) <-
  .print("subplan:", X).

+!init <-
  .print("init");
  !subplan(X);
  .print("subplan returned:", X);
  X == 2.
