a(30).
a(20).
b(1, 2).
b(3, 4).
b(5, 6).

!t1.
!t2.

!test_count.

+!t1 <-
  .findall(X, a(X), L);
  .print(L).

+!t2 <-
  .findall(c(Y, X), b(X, Y), L);
  .print(L).

+!test_count <-
  .count(a(_), N1) & N1 == 2;
  .count(b(X, X), 0);
  .count(b(X, Y), 3);
  .print(".count ok").
