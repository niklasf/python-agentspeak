!test_date.

+!test_date : .date(Y, M, D) <-
  .concat(Y, "-", M, "-", D, R);
  .print("Date:", R).
