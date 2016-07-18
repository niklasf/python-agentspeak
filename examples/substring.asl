!test_found.
!test_not_found.


+!test_found : .substring("foo", "foo bar baz foo", Pos) & Pos > 2 <-
  .print("Pos:", Pos).


+!test_not_found : .substring("foo", "hello", _) <- .fail.
+!test_not_found <- .print("foo not contained in hello").
