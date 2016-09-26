weather(sunny)[source(self)].

!test1.
!test2.

+!test1 <-
  foo[a(1), b(X)] = foo[a(1), d(4), b(2), c(3)];
  X == 2;
  .print("OK, X =", X).

+!test2 : weather(sunny)[source(X)] <-
  .print("OK, X =", X).
