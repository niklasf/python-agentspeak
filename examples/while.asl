a(1).
a(2).
a(3).

!consume.

+!consume <-
  while(a(X)) {
    .print(X);
    -a(X);
  }.
