#committer.

!hello_world.

+!hello_world <-
    (committer | Type = bug | Type = feature) & .get_issue(issue(Author, Type, Patch, Priority));
    !handle_issue(issue(Author, Type, Patch, Priority)).

+!handle_issue(issue(bug, Author, Patch, Priority)) <-
    .print(Patch);
    !submit_patch(Patch, Priority).

+!handle_issue(issue(feature, Author, Patch, Priority)) <-
    .print("issue", Patch).

+!handle_issue(issue(pr, Author, Patch, Priority)) : committer <-
    .print("Handeling pull request of ", Author);
    .random(Random);
    if (Random < 0.5) {
        .commit(Patch)
    } else {
    }.

+!handle_issue(_).

+!submit_patch(Patch, _) : committer <-
    .commit(Patch).

+!submit_patch(Patch, Priority) : not committer <-
    .print("Sending pr ...");
    .submit_issue(pr, Patch, Priority).
