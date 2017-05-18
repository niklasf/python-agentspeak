!test_floor.
!test_ceil.
!test_round.
!test_tail.

+!test_floor <-
  .floor(-3.7, -4);
  .floor(0, 0);
  .floor(2.9, 2).

+!test_ceil <-
  .ceil(-3.7, -3);
  .ceil(0, 0);
  .ceil(2.9, 3).

+!test_round <-
  .round(-3.7, -4);
  .round(0, 0);
  .round(2.9, 3).

+!test_tail <-
  L = [1, 2, 3, 4];
  .nth(0, L, 1);
  .tail(L, [2, 3, 4]).
