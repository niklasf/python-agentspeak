iterations(0).

!test.

+!test <-
  for (.member(I, [1, 2, 3])) {
    for (.member(J, [1, 2, 3, 4, 5])) {
      .print(I, J);

      ?iterations(X);
      -+iterations(X + 1);
    }
  };
  iterations(15).
