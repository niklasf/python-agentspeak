!start.

+!start
    <- 
        .send(agent1,tellHow, "+!hello <- .print(\"Hello World\").");

        .wait(1000);
        
        .send(agent1,achieve,hello);
        .print("Added").
