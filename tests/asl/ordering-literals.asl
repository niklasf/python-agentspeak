offer(38, gold).
offer(23, silver).
offer(34, wood).

!test.

+!test <-
  .findall(a(X, Y), offer(X, Y), L);
  .min(L, a(Price, Item));
  Price == 23;
  Item == silver.
