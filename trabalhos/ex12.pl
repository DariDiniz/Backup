%Aluna: Dariany G. Gouveia Diniz
start:-
    read(Lc),
    x(Lc,X),
    last(Lc,Y),
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

