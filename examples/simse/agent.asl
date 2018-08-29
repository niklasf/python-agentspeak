!hello_world.
!hello_world.

+!hello_world <-
    .get_issue(Issue);
    !handle_issue(Issue).

+!handle_issue(issue(bug, Class, Priority)) <-
    .random(Rand);

    #if (Knowledge > Rand) {
    #    .print("...")
    #}
    #.print("bug", Class, Knowledge).

    .make_patch(Class, Patch);
    .print(Patch).

+!handle_issue(issue(feature, Class, Priority)) <-
    .print("issue", Class).
