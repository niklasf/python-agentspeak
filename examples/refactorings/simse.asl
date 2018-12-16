{include("snapshot_junit4.asl")}
//{include("snapshot_GameController.asl")}
// {include("snapshot_mapdb.asl")}

calls_outgoing(C1, M1, C2, M2) :- calls(C1, M1, C2, M2) & method(C2, M2, _, _, _) & C1 \== C2.

+!most_complex(Class, Method) <-
    .findall(m(Compl, C, M), method(C, M, _, Compl, _), L);
    .max(L, m(Compl, Class, Method)).

+!longest(Class, Method) <-
    .findall(m(Loc, C, M), method(C, M, Loc, _, _), L);
    .max(L, m(Loc, Class, Method)).

+!shortest(Class, Method) <-
    .findall(m(Loc, C, M), method(C, M, Loc, _, _), L);
    .min(L, m(Loc, Class, Method)).

+!most_dependent(Class, Method) <-
    for (method(CallerClass, CallerMethod, _, _, _)) {
        .count(calls_outgoing(CallerClass, CallerMethod, _, _), Count);
        +tmp_call_count(CallerClass, CallerMethod, Count);
    }
    .findall(c(Count, C, M), tmp_call_count(C, M, Count), L);
    .max(L, c(Count, Class, Method));
    .abolish(tmp_call_count(_, _, _)).

+!move_method(Class, Method, NewClass) : method(Class, Method, Loc, Complexity) &
                                         Class \== NewClass <-
    .inc_edge(Class, NewClass);
    -method(Class, Method, Loc, Complexity, Author);
    +method(NewClass, Method, Loc, Complexity, Author);
    while (calls(Class, Method, CalleeClass, CalleeMethod)) {
        -calls(Class, Method, CalleeClass, CalleeMethod);
        +calls(NewClass, Method, CalleeClass, CalleeMethod);
    }
    while (calls(CallerClass, CallerMethod, Class, Method)) {
        -calls(CallerClass, CallerMethod, Class, Method);
        +calls(CallerClass, CallerMethod, NewClass, Method);
    }.

+!move_method(Class, Method, NewClass) <-
    .print("useless move method:", Class, "::", Method, "-->", NewClass).

+!extract_method(Class, Method) : method(Class, Method, Loc, Complexity, Author) &
                                  Loc > 1 & Complexity > 1 <-
    // choose a random method name
    .randint(0, 999999, Suffix);
    .concat(Method, Suffix, ExtMethod);

    // update loc & complexity
    -method(Class, Method, Loc, Complexity, _);
    +method(Class, Method, Loc div 2, Complexity div 2, Author);

    // create new method and call
    +method(Class, ExtMethod, Loc - Loc div 2 + 3, Complexity - Complexity div 2, Author);
    +calls(Class, Method, Class, ExtMethod).

+!inline_method(Class, Method) : method(Class, Method, Loc, Complexity, Author) <-
    while (calls(CallerClass, CallerMethod, Class, Method)) {
        -calls(CallerClass, CallerMethod, Class, Method);
        -method(CallerClass, CallerMethod, CallerLoc, CallerComplexity, CallerAuthor);
        +method(CallerClass, CallerMethod, CallerLoc + Loc - 3, CallerComplexity + Complexity, Author);
        .inc_edge(CallerClass, Class);
    }
    -method(Class, Method, Loc, Complexity, _).

// Work    Feature  Bugfix  Reverse Eng
// junit4     1125     256          388

!start.

+!start <-
    for (.range(365 * 4, Day)) {
        .randint(0, 1125 + 256 + 388, W);
        !work(W);
        !stats(Day);
    }.

+!work(W) : W > 1125 + 256 <-
    .randint(0, 356 + 222 + 235, R);
    !refactor(R).

+!work(W) : W > 1125 <-
    true.
    // !bugfix.


+!work(W) <-
    true.
    // !add_feature.

+!stats(Day) <-
    .sum(Loc, method(_, _, Loc, _, _), TotalLoc);
    .sum(Complexity, method(_, _, _, Complexity, _), TotalComplexity);
    .count(method(_, _, _, _, _), MethodCount);
    AverageComplexity = TotalComplexity / MethodCount;
    .csv(Day, TotalLoc, AverageComplexity);
    .print("day", Day, "loc", TotalLoc, "complexity", AverageComplexity).

+!add_feature <-
    .print("Add feature!!!!!!");
    .geometric(1 / 4.01, NumClasses);
    for (.range(NumClasses, I)) {
        !new_class(Class);
        .min([NumClasses, 12], SplitIntoClasses);
        .geometric(1 / (12.94 / SplitIntoClasses), NumMethods);
        for (.range(NumMethods, J)) {
            .geometric(1 / 5.16, Loc);
            Complexity = 2.5 * Loc / 5.16;
            !new_method(Class, Method, Loc, Complexity);

            .geometric(1 / 1.23, NOI);
            for (.range(NOI, K)) {
                !random_method(CalleeClass, CalleeMethod);
                +calls(Class, Method, CalleeClass, CalleeMethod);
            }

            /* .geometric(1 / 1.23, NII); // TODO
            for (.range(NII, L)) {
                !random_method(CallerClass, CallerMethod);
                +calls(CallerClass, CallerMethod, Class, Method);
            } */
        }
    }.

+!new_class(Class) <-
    // choose a random class name
    .randint(0, 999999, Suffix);
    .concat("NewClass", Suffix, Class);
    +class(Class).
    // .print("Added class", Class).

+!new_method(Class, Method, Loc, Complexity) <-
    // choose a random method name
    .randint(0, 999999, Suffix);
    .concat("NewMethod", Suffix, Method);
    +method(Class, Method, Loc, Complexity, "todo@example.com").
    // .print("Added method", Class, "::", Method).

+!random_method(Class, Method) : method(Class, Method, _, _) <- true. // TODO

//                 Move  Extract  Inline
// junit4           356      222     235
// GameController    22       12       3
// mapdb            229      104     100

/* TODO: Optimize performance
+!refactor(R) : R > 222 + 235 <-
    !most_dependent(Class, Method);
    calls(Class, Method, C, M);
    .print("move method", C, "::", M, "-->", Class);
    !move_method(C, M, Class). */

+!refactor(R) : R > 235 <-
    !most_complex(Class, Method);
    .print("extract method", Class, "::", Method);
    !extract_method(Class, Method).

+!refactor(R) <-
    !shortest(Class, Method);
    .print("inline method", Class, "::", Method);
    !inline_method(Class, Method).
