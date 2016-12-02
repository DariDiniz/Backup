%Aluna: Dariany G. Gouveia Diniz
start:-
    read(Lc),
    coordenadas(Lc,X,Y).

confere(X,Y):-
    X > 0,
    Y > 0,
    !.
   
confere(X,Y):-
    write('Erro, os valores das coordenadas tem que ser maiores que 1. Digite as coordenadas novamente: '),
    read(Lc),
    coordenadas(Lc,X,Y),
    confere(X,Y).

coordenadas(Lc,X,Y):-
    x(Lc,X),
    last(Lc,Y),
    confere(X,Y),
    Xl is X + 1,
    Xo is X - 1,
    Yn is Y + 1,
    Ys is Y - 1,
    append([[X,Yn],[X,Ys]],[[Xl,Y],[Xo,Y]],A),
    delete(A,[_,0],B),
    delete(B,[0,_],C),
    write('As coordenadas das casas adjacentes são: '),
    write(C).

x([X|_],X).

