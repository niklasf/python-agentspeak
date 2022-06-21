+!hello(N) <-
  .wait(800);
  .print("Hello", N);
  !hello(N)
.

+!greet(N) <-
  .wait(800);
  .print("Hello", N);
  !greet(N)
.

+!greet(N, M) <-
    .wait(800);
    .print("Hello", N, "-", M);
    !greet(N, M)
.
