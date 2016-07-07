odd(1) :- true.
odd(X) :- X > 0 & odd(X - 2).

!d.

+!a <- odd(5).
+!b <- odd(6).
+!c <- odd(7).
+!d <- ?odd(100).
+!d <- ?odd(101).
