{include("snapshot.asl")}

!start.

outgoing_invocation(Class, OtherMethod)
  :- method(Method, Class) & call(Method, OtherMethod)
     & method(OtherMethod, OtherClass) & Class \== OtherClass.

+!move_method(Method, ClassTo)
    : method(Method, ClassFrom) <-
  -method(Method, ClassFrom);
  +method(Method, ClassTo).

+!start <-
  .dump;

  for (outgoing_invocation(C1, OtherMethod)) {
    .print("- outgoing invocation", C1, OtherMethod);
  };

  .print("moving ...");
  !move_method(ma, b);
  .dump;

  for (outgoing_invocation(C, O)) {
    .print("- outgoing invocation", C, O);
  }.
