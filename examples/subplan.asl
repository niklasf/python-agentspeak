foo(2).
foo(3).

!init.

+!subplan(X) : foo(X) <-
  .print("subplan:", X).

+!init <-
  .print("init");
  !subplan(X);
  .print("init:", X).
