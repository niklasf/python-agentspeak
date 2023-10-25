!start.

+!start <-
  .print("start plan1(1) achievement ...");
  .send(receiver, achieve, plan1(1));
  .print("start plan1(2) achievement ...");
  .send(receiver, achieve, plan1(2));
  .print("start plan2(3) achievement ...");
  .send(receiver, achieve, plan2(3));
  .wait(2000);
  .print("start plan3(3,2) achievement ...");
  .send(receiver, achieve, plan3(3, 2));
  .wait(3000);
  .print("cancel achievents ...");
  .send(receiver, unachieve, plan3(N, M));
  .print("plan3(N,M) cancelled.");
  .wait(1000);
  .send(receiver, unachieve, plan1(N));
  .print("plan1(N) cancelled.");
  .wait(1000);
  .send(receiver, unachieve, plan2(N));
  .print("plan2(N) cancelled.").
