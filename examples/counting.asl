init_count(0).
max_count(5).

!startcount.

+!startcount : init_count(X) & max_count(Y) <-
    +actual_count(X);
    !count.

+!count : actual_count(X) & max_count(Y) & X < Y <-
    NewCount = X + 1;
    .print(NewCount);
    -+actual_count(NewCount);
    !count.

+!count : actual_count(X) & max_count(Y) & X >= Y <-
    .my_name(Name);
    .print(Name, " terminated count").
