!start.
+!start <-
  /*.print("about to broadcast ...");
  .broadcast(achieve, hello(42,56));
  .print("broadcasted.");
  .print("sending individual message ...");*/

  .send(receiver,askHow, "+!hello(M,N)");
  .wait(2000);
  !hello(2,3)[source(self)];
  .print("sent.").
