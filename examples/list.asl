list_a([3, 1, 2]).
list_b([4, 5]).
list_c([]).

!test_unification.
!test_concat.
!test_min.
!test_max.
!test_nth.
!test_sort.
!test_length.
!test_member.

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

+!test_nth : list_a(A) <-
  .nth(0, A, R0) & R0 == 3;
  .nth(1, A, R1) & R1 == 1;
  .nth(2, A, R2) & R2 == 2;
  .print(R0, R1, R2).

+!test_sort : list_a(A) <-
  .sort(A, Sorted);
  .nth(2, Sorted, R) & R = 3;
  .print(Sorted).

+!test_length : list_a(A) & list_b(B) <-
  .length(A, LengthA) & LengthA == 3;
  .length(B, LengthB) & LengthB == 2;
  .length("hello", 5).

+!test_member : list_b(B) <-
  .member(X, B) & X \== 4;
  .member(Y, B) & Y == 4;
  for (.member(M, B)) {
    .print(M)
  }.
