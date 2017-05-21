+!test1(X, Y1, Y2) <-
    .inf_mark_nosidef(".p");

    /* unary ops */
    .p(+A); /* warning */
    +p(A); /* no warning, A considered ground */
    A = p(1); .p(+A); /* warning */
    .p(+ - + - 8); /* optimized to constant */
    .p(X + X); /* nothing */
    
    /* unification */
    B = X+X; B = Y1; .p(Y1, B); /* changed into .p(B, B) */
    C = Y2; .p(Y2, C); /* changed into .p(Y2, Y2) */
    D = p(X+X, X, 3); .p(D); /* unify for X+X, inline D */
    E = p(X+X, X, 3); /* optimized away */
    Y2 = p(5); /* nothing */
    Y2 = q(5); /* warning */
    Y2 = p(5, 5); /* warning */
    p(p(3), 3) = p(p(3), 3); /* optimized away */
    p(p(7), 7) = p(p(X+X), 7); /* simplified */
    Y2 = 3; /* warning */
    3 = 4; /* warning */
    3 = X+X; /* nothing */
    X+X = X+X; /* nothing */
    p(_, 3) = p(X+X, 3); /* optimized away */
    
    /* binary ops */
    .p(F + F); /* warning */
    +p(F); /* no warning, F considered ground */
    G = p(5); .p(1 + G); /* warning */
    F = 3;
    .p(5 + F); /* constant propagation */
    
    /* other formula types */
    +p(p(H), 3); /* warning */
    +p(H); /* no warning, term considered ground */
    -I; /* warning */
    -p(J); J = 3; /* nothing, J considered unproven */
    
    /* if-then-else 1 */
    if (true)  {K = 1; .p(3)} else {K = 2}; .p(K); /* simplified */
    if (false) {L = 1} else {L = 2}; .p(L); /* optimized to .p(2) */
    if (J) {true} else {true}; /* warning */
    if (X == 5) {M = 1} else {M = 2}; .p(M); /* not optimized */
    if (X == 6) {N = 1} else {N = 1}; .p(N); /* optimized to .p(1) */
    if (X == 7) {O = 1} else {}; /* optimized away */

    /* term elimination */
    p(P, _) = p(X+X, 3); /* optimized away */
    p(Q, _) = p(X+X, 3); .p(Q); /* kept, but simplified */

    /* side-effects 1 */
    .inf_nosideef; /* optimized away */

    true.

+!test2 <-
    /* side-effects 2 */
    .inf_disable_local; /* plan is not optimized */
    true.
    
+!test3(X, Ha) :
    /* context */
    Ga = 17 /* optimized away */
<-
    .p(Ga); /* simplified */

    /* side-effects 3 */
    .inf_side_effect("AFFECT_PARAM_ALL", "EFFECT_CHANGE"); /* warning */
    .inf_side_effect("AFFECT_PARAM_ALL", "EFFECT_UNBIND"); /* warning */

    .inf_side_effect("AFFECT_PARAM_ALL", "EFFECT_BIND", A); /* optimized away */
    A = 1; /* kept, A was considered unproven */
    
    .inf_side_effect("AFFECT_PARAM_ALL", "EFFECT_DOBIND", B); /* optimized away */
    B = 2; /* kept, B was considered bound */

    C = 3; /* kept */
    .inf_side_effect("AFFECT_SCOPE", "EFFECT_CHANGE"); /* optimized away */
    3 = C; /* kept */

    /* lists */
    D = [E, 2, 3]; .p(D); /* kept, no value optimisations for lists */

    E = 2; /* kept, E was considered unproven */
    [F, 2] = [3, 2]; .p(F); /* simplified */
    p(5, 6) = [7, 8]; /* warning */
    5 = [9, 1]; /* warning */
    X+X = [2, 3]; /* warning */
    [2, 3] = [2, 3, 4]; /* warning */

    /* if-then-else 2 */
    if (G = X+X) {.p(3)} else {.p(4)} /* optimized */
    .p(G);
    if (G = X+2) {} /* optimized away */
    if (G = X+3) {} else {.p(5)} /* nothing */

    /* while and for */
    while (p(X)) {
        H = 3 /* optimized away */
    }
    .p(H); /* warning, H unbound */
    while (false) {H = 3} /* optimized away */

    /* boolean operators */
    I = true; /* optimized away */
    .p(I & (false | I)); /* simplified */

    /* belief queries */
    J = X+X & K = X+X; /* expanded into statements */
    .p(J, K);
    if (p(3) & L = 4) {.p(L)} /* simplified L to 4 */
    if (p(4) | M = 4) {.p(M)} /* nothing, M considered unproven */
    if ((p(N) & N = 4) | N = 4) {.p(N)} /* simplified N to 4 */
    if (p(O, P, _) = p(5, 6, 7)) {.p} /* simplified and expanded */
    if (not p(Q)) {.p(Q)} /* warning */

    Q = X+2 & p(Q) | true; /* kept, because of errors, else removed */
    if (R = X+3 & p(2)) {.p} /* simplified */
    if (S = X+3 & p(2)) {.p(S)} /* nothing */
    (T = X+3 | X+X > X+3) | true; /* simplified */
    true | (U = X+3 | X+X > X+3); /* simplified */
    not p(V) | true; /* kept, because of errors, else removed */
    
    /* variables in variables */
    if (X+X > 1) {W = p(Aa); Ca = p(Da)} /* nothing */
    W = p(1); /* kept, Aa is used later */
    Ca; /* kept, Da is used later */
    .p(Aa, Da);
    p(Ea, Fa);
    Fa | true; /* kept, Fa may bind Ea */
    Ea;

    /* annotations */
    p[1] = p; /* warning */
    p(X+1)[X+2, w(X+3)] = p(X+3)[X+4, w(X+5)]; /* split */
    
    /* standard library */
    Ia = 5;
    .unbind_all;
    .print(Ia); /* nothing, Ia considered unproven */

    true.
