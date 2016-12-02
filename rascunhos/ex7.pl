%Criação de Predicados para a Série de Fibonacci
%Autora: Dariany Diniz
%Data: 28/09/2016
fibon(0,0).
fibon(1,1).

fibon(N,S) :-
    N > 1,
    N2 is N - 2,fibon(N2,S2),
    N1 is N - 1,fibon(N1,S1),
    S is S1 + S2.

fibos(S) :-
    fibo

