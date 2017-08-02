b(1, 2)[source(foo)].
b(2, 2)[source(percept)].
b(3, 4)[source(percept)].

!test.

+!test <-
    .abolish(b(_, _)[source(foo)]);
    .abolish(b(X, X));
    ?b(A, B);
    A == 3;
    B == 4.
