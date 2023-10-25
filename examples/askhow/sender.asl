!start.

meet(george).

+!start
   <- 
      .print("Ask Plan");
      .send(receiver, askHow, "+!plan1");
      .print("Plan added...");
      .wait(1000);
      !plan1(scarlett)
   .
