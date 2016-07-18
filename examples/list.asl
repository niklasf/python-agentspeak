list_a([3, 1, 2]).
list_b([4, 5]).

!test_unification.
!test_concat.
!test_min.
!test_max.

+!test_unification : list_a([A, B, C]) & list_b([D, E]) <-
  .print(A, B, C, D, E).

+!test_concat : list_a(A) & list_b(B) <-
  .concat(A, B, R);
  .print(R).

+!test_min : list_a(A) <-
  .min(A, R);
  .print("min = ", R);
  R == 1.

+!test_max : list_a(A) <-
  .max(A, R);
  .print("max = ", R);
  R == 3.
