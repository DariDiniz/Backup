%ex13.pl
%Aluna: Dariany G. G. Diniz

start:-
    write('Digite a posicao inicial na forma [X,Y]. Onde X e Y representam coluna e linha respectivamente.'),
    nl,
    read(Lo),
    write('Digite a posicao final na forma [X,Y]. Onde X e Y representam coluna e linha respectivamente.'),
    nl,
    read(Lf),
    write('Digite o angulo da sua posicao na forma A'),
    nl,
    read(A),
    x(Lo,Xo),
    x(Lf,Xf),
    last(Lo,Yo),
    last(Lf,Yf),
    conta(Xo,Yo,Xf,Yf,Xr,Yr),
    verifica_angulo(A,R),
    verificax(Xr,Rx),
    verificay(Yr,Ry),
    compara_angulo(R,Rx),
    compara_angulo(R,Ry),
    calculo(R,Rx,Cx),
    calculo(R,Ry,Cy),
    resultado(Cx,Cy).
 
x([X|_],X).

conta(Xo,Yo,Xf,Yf,Xr,Yr):-
    Xr is Xf - Xo,
    Yr is Yf - Yo.

verifica_angulo(A,R):-
    A = 0,
    R is 2.

verifica_angulo(A,R):-
    A = 360,
    R is 2.

verifica_angulo(A,R):-
    A = 90,
    R is 1.

verifica_angulo(A,R):-
    A = 180,
    R is 4.

verifica_angulo(A,R):-
    A = 270,
    R is 3.

verificax(Xr,Rx):-
    Xr > 0,
    Rx is 1.

verificax(Xr,Rx):-
    Xr < 0,
    Rx is 3.

verificax(Xr,Rx):-
    Xr = 0,
    Rx is 0.

verificay(Yr,Ry):-
    Yr > 0,
    Ry is 2.

verificay(Yr,Ry):-
    Yr < 0,
    Ry is 4.

verificay(Yr,Ry):-
    Yr = 0,
    Ry is 0.

compara_angulo(R,Z):-
    Z =:= 0; R =\= Z.

compara_angulo(R,Z):-
    R =:= Z,
    write('goforward').

calculo(R,Rx,Cx):-
    B is R - Rx,
    Cx is abs(B).

resultado(Cx,Cy):-
    Cx < Cy,
    write('turnright').

resultado(Cx,Cy):-
    Cx > Cy; Cx =:= Cy,
    write('turnleft').

