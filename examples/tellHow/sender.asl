!start.

+!start
   <- 
      .print("Telling plan to slave");

      .send(receiver, tellHow, "+!hello(N) <- .print(\"I'm a plan called \", N).");
      .send(receiver, achieve, hello(john));
      .send(receiver, achieve, hello(jack)).
