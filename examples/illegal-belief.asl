!p1(1,X).
// !p2(1,2).

+!p1(A, B) <-
  C = 5;
  +test(A, B, C).  # ok

+!p2(A, B) <-
  +test(A, B, C).  # C unbound

+!p3(A, B) <-
  X = Z + 1.



// a(1,3)[1,2] = a(X,Y)[Z]
