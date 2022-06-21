me(100).

!start.


+!start
    <-
        .print("Ask Plan");
        .send(agent2, askHow, "+!hello");
        .print("Plan added");

        !hello;
        -me(100);
        !hello
.
