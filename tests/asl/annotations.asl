weather(sunny)[source(self)].

!test1.
!test2.
!test3.

+!test1 <-
  foo[a(1), b(X)] = foo[a(1), d(4), b(2), c(3)];
  X == 2;
  .print("OK, X =", X).

+!test2 : weather(sunny)[source(X)] <-
  X == self;
  .print("OK, X =", X).

+!test3 <-
  foo[outer[inner]] = foo[outer[X]];
  .print("OK, X =", X).
