// https://en.wikipedia.org/wiki/Prolog#Execution

mother_child(trude, sally).

father_child(tom, sally).
father_child(tom, erica).
father_child(mike, tom).

sibling(X, Y)      :- parent_child(Z, X) & parent_child(Z, Y) & not X = Y.

parent_child(X, Y) :- father_child(X, Y).
parent_child(X, Y) :- mother_child(X, Y).

!p1.
!p2.
!p3.


+!p1 <-
  .print("1. Siblings:");
  sibling(A, B);
  .print(A, B).

+!p2 <-
  .print("2. Siblings:");
  for (sibling(A, B)) {
    .print(A, B)
  }.

+!p3 <-
  .print("3. Siblings:");
  ?sibling(A, B);
  .print(A, B).
