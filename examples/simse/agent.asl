knowledge("Main", 0.8).

!hello_world.
!hello_world.

+!hello_world <-
    .get_issue(Issue);
    .random(Rand);
    !handle_issue(Issue, Rand).

+!handle_issue(issue(bug, Class, Priority), Rand) : knowledge(Class, Knowledge) <-
    -+knowledge(Class, Knowledge + 1);
    if (Knowledge > Rand) {
        .print("...")
    }
    .print("bug", Class, Knowledge).

+!handle_issue(issue(feature, Class, Priority)) <-
    .print("issue", Class).
