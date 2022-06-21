!start.

+!start
    <-
        .print("Ask Plan");
        .send(agent4, tellHow, "@pred[me(3)] +!hello(N,C)[me(A)] <- .print(C, \" says hello to \", N).");
        .send(agent4, askHow, "+!hello(Q,F)");
        .print("Plan added ...");
        !hello(1,2)[me(10)].
