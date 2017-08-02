!test_for_with_if.
!test_for_with_while.
!test_for_with_for.

+!test_for_with_if <-
  for(.member(I, [1, 2, 3])) {
    if(false) {
    }
    +reached_after_if(I);
  }
  ?reached_after_if(1);
  ?reached_after_if(2);
  ?reached_after_if(3).

+!test_for_with_while <-
  for(.member(I, [1, 2, 3])) {
    while(false) {
    }
    +reached_after_while(I);
  }
  ?reached_after_while(1);
  ?reached_after_while(2);
  ?reached_after_while(3).

+!test_for_with_for <-
  for(.member(I, [1, 2, 3])) {
    for (.member(_, [])) {
    }
    +reached_after_for(I);
  }
  ?reached_after_for(1);
  ?reached_after_for(2);
  ?reached_after_for(3).
