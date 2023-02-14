!start.

conocer(manolo).

+!start : true
   <- 
      .print("Preguntar Plan");
      .send(receiver, askHow, "+!hello");
      .print("Plan added...");
      .wait(1000);
      !hello
   .