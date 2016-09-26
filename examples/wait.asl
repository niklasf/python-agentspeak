!keep_waiting.
!finish.

+!keep_waiting : done <-
  .print("Done!").

+!keep_waiting <-
  .random(R);
  .print("Gonna wait", R, "secs");
  .wait(R * 100);
  !!keep_waiting.

+!finish <-
  .print("Gonna add done in 5 secs");
  .wait(500);
  +done;
  .print("Added done").
