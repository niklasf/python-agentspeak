!start.

+!start
    <- 
        .send(agent1,tellHow, "+!hello <- .print(\"Hello World\").");

        .print("Added plan hello");
        .wait(1000);

        .print("Send achieve hello");
        .send(agent1,achieve,hello);
        .print("Send achieve bye");
        .send(agent1,achieve,bye).
