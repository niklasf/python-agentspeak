+!test1(X, Y1, Y2) <-
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
    
    /* if-then-else */
    if (true)  {K = 1; .p(3)} else {K = 2}; .p(K); /* simplified */
    if (false) {L = 1} else {L = 2}; .p(L); /* optimized to .p(2) */
    if (J) {true} else {true}; /* warning */
    if (X == 5) {M = 1} else {M = 2}; .p(M); /* not optimized */
    if (X == 6) {N = 1} else {N = 1}; .p(N); /* optimized to .p(1) */
    if (X == 7) {O = 1} else {}; /* optimized away */
    p(P, _) = p(X+X, 3); /* optimized away */
    p(Q, _) = p(X+X, 3); .p(Q); /* kept, but simplified */
    
    true.
    