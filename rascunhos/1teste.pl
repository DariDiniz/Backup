fibo([_|1,0]).
fibon(N,S) :-
    N > 1,
    fibo([S|T]),
    S is S +
