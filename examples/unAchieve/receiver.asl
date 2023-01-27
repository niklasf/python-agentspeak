+!plan1(N) <-
  .wait(800);
  .print("Plan1", N);
  !plan1(N)
.

+!plan2(N) <-
  .wait(800);
  .print("Plan2", N);
  !plan2(N)
.

+!plan3(N, M) <-
    .wait(800);
    .print("Plan3", N, "-", M);
    !plan3(N, M)
.
