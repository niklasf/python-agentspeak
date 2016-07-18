a(30).
a(20).
b(1, 2).
b(3, 4).
b(5, 6).

!t1.
!t2.

+!t1 <-
  .findall(X, a(X), L);
  .print(L).

+!t2 <-
  .findall(c(Y, X), b(X, Y), L);
  .print(L).
