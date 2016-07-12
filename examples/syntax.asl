/*
 * An agent file with all syntactical constructs for parser testing.
 */

// Initial beliefs

round(apple).
round(world).
weight(apple, 0.25).
weight(world, 5.9721986e24).
negative(-1).
grounded(not not true).

// Rules.

even(Number) :- not odd(Number).

// Initial plans.

!hello(world).
!ungrounded(X, Y).

// Plans

+!hello(W) <-
  .print("Hello", W).

+!ungrounded(X, 8) <-
  .print("ungrounded:", X, 8).

+!always_successful.

+!with_context(X) : weight(X, Weight) <-
  if (Weight > 4) {
    .print("if");
  } else {
    .print("else")
  }.

+!with_context(X) : true <-
  .print("Previous plan not applicable -> weight not known").

+!enumerate <-
  .print("Round things:");
  for (round(Thing)) {
    .print(Thing);
  }.

+!loop(Z) : true <-
  while (.buy(Z)) {
    ?inventory(Count);
    NewCount = Count + 1;
    -+inventory(NewCount);
  }.

@annotation(foo, bar(Baz))
+!subplans <-
  !immediately;
  !!later.

-!subplans <-
  .print("subplans failed").

+inventory(NewCount) <-
  .print("Inventory belief updated: ", NewCount).

// Include something

{include("/dev/null")}

// Apply a transformation

{begin myTransformation(13)}
  +!plan <-
    +foo;
    +bar;
    +baz(-(2 ** 10 - 2 * 3) mod 5 div 2).
{end}

// Optional semicolons left out

-tricky <-
  for (foo(F)) {
    for (bar(B)) {
    }
    for (jar(J)) {
    }
  }
  for (baz(Z)) {
  }.
