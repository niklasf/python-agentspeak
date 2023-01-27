
!start.

+!start
   <- 
      .wait(5000);
      .print("Making receiver forget the plan");
      .send(receiver, untellHow, "@custom_tag +!plan1").
