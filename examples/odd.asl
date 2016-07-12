odd(1) :- true.
odd(X) :- X > 0 & odd(X - 2).

!a.
!b.
!c.

+!a <- odd(5).
+!b <- odd(7).
+!c <- ?odd(101).
