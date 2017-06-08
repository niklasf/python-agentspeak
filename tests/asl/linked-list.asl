!test_simple.
!test_multi.
!test_nth.

+!test_simple <-
  L = [1, 2, 3, 4];
  L = [A|B];
  A == 1;
  B == [2, 3, 4].

+!test_multi <-
  L = [1, 2, 3, 4];
  [A|B|C] = L;
  A == 1;
  B == 2;
  C == [3, 4].

+!test_nth <-
  Tail = [three, four];
  L = [one|two|Tail];
  .nth(0, L, one);
  .nth(1, L, two);
  .nth(2, L, three);
  .nth(3, L, four).
