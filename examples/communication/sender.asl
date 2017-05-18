!start.

+!start <-
  .print("about to broadcast ...");
  .broadcast(achieve, hello(42));
  .print("broadcasted.");

  .print("sending individual message ...");
  .send(receiver, achieve, hello(23));
  .print("sent.").
