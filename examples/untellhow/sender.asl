
!start.

+!start
   <- 
      .wait(5000);
      .print("Make the receiver forget about the plan");
      .send(receiver, untellHow, "@custom_tag").
