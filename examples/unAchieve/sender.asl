!start.

+!start <-
  .print("start achievement ...");
  .send(receiver, achieve, hello(1));
  .print("started.");
  .print("start achievement ...");
  .send(receiver, achieve, greet(2));
  .print("started.");
  .print("start achievement ...");
  .send(receiver, achieve, greet(3));
  .print("started.");
  .wait(3000);
  .print("start achievement ...");
  .send(receiver, achieve, greet(3, 2));
  .print("started.");
  .wait(5000);
  .print("cancel achievent ...");
  .send(receiver, unachieve, greet(N, M));
  .print("cancelled.");
  .send(receiver, unachieve, hello(N));
  .wait(1000).
