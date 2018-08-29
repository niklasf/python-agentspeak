#committer.

!hello_world.
!hello_world.
!hello_world.

+!hello_world <-
    (commiter | Type = bug | Type = feature) & .get_issue(issue(Type, Patch, Priority));
    !handle_issue(issue(Type, Patch, Priority)).

+!handle_issue(issue(bug, Patch, Priority)) <-
    .print(Patch);
    !submit_patch(Patch, Priority).

+!handle_issue(issue(feature, Class, Priority)) <-
    .print("issue", Class).

+!handle_issue(issue(pr, Class, Priority)) : committer <-
    .print("Handling pull request").

+!handle_issue(_).

+!submit_patch(Patch, _) : committer <-
    .commit(Patch).

+!submit_patch(Patch, Priority) : not committer <-
    .print("Sending pr ...");
    .submit_issue(pr, Patch, Priority).
