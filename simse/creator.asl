!go.

+!go <-
  .print("Creator initialized").

+!tick <-
  .randint(1, 35, Day);
  !day(Day).

+!day(Day) : Day <= 6 <-
  .do_work.

+!day(Day) : Day <= 15 <-
  .do_update.

+!day(Day) : Day <= 18 <-
  // .intention_bugfix;
  true.

+!day(Day).
