
@custom_tag[value(45)]
+!hello : me(100) <-
    .print("This is plan2").

@custom_tag[value(45)]
+!hello <-
    .print("This is plan").

@custom_tag[value(45)]
-!hello <-
    .print("This is no longer the plan").
