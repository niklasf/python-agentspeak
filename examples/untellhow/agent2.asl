me(100).

!hello.


@custom_tag[value(45)]
+!hello : me(100) <-
    .print("This is plan2");
    .wait(2000);
    !hello.

@custom_tag
+!hello <-
    .print("This is the plan");
    .wait(2000);
    !hello.

