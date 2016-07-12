list_a([1,2,3]).
list_b([3,4]).

!p1.
!p2.

+!p1 : list_a([A, B, C]) & list_b([D, E]) <-
  .print(A, B, C, D, E).

+!p2 : list_a(A) & list_b(B) <-
  .concat(A, B, R);
  .print(R).
