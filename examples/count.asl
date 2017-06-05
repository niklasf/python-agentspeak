bel(1).
bel(2).

!test_bound(1).
!test_unbound(X).

+!test_bound(Arg) <-
  .count(bel(Arg), Cnt);
  Cnt == 1.

+!test_unbound(Arg) <-
  .count(bel(Arg), Cnt);
  Cnt == 2.
