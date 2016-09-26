!test.

+!test <-
    foo[a(1), b(X)] = foo[a(1), d(4), b(2), c(3)];
    X == 2;
    .print("OK").
