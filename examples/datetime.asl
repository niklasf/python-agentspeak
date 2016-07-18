!test_date.
!test_time.

+!test_date : .date(Y, M, D) <-
  .concat(Y, "-", M, "-", D, Date);
  .print("Date:", Date).

+!test_time : .time(H, M, S) <-
  .concat(H, ":", M, ":", S, Time);
  .print("Time:", Time).
