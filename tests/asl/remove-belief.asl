did_not_say("hello world").

!go.

+!go <-
  -did_not_say(X);
  .ground(X);
  .print(X).
