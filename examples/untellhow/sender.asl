
!start.

+!start : true
   <- 
      .print("Making receiver forget the plan");
      .wait(1000);
      .send(receiver, untellHow, "@custom_tag +!hello").
