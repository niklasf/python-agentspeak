me(100).

!plan1.


@plan_tag[value(45)]
+!plan1 : me(100) <-
    .print("This is plan1 with me(100)");
    .wait(800);
    !plan1.

+!plan1 <-
    .print("This is plan1 without me(100)");
    .print("Ending example").

