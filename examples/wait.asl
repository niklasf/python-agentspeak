!keep_waiting.
!finish.

+!keep_waiting : done <-
  .print("Done!").

+!keep_waiting <-
  .random(R);
  .print("Gonna wait", R, "secs");
  .wait(R * 1000);
  !!keep_waiting.

+!finish <-
  .print("Gonna add done in 5 secs");
  .wait(5000);
  +done;
  .print("Added done").
