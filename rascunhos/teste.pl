%soma
soma(Li, E) :-
    sum_list(Li, E).

%somal
somal([A1|Z1], [A2|Z2], [Af|Zf]) :-
    Af is A1 + A2,
    !,
    somal(Z1, Z2, Zf).
somal([], Z2, Z2):-
    !.
somal(Z1, [], Z1).


%adiciona
adiciona(E, Li,[E|Li]).

%remove
remove(X,[X|C],C).
remove(X,[Y|C],[Y|D]):-
    remove(X,C,D).

%primeiro
primeiro([E|_],E).

%ultimo
ultimo([Li],Li).
ultimo([_|E],Li):-
    last(E,Li).

%maior
maior(Li,E):-
    max_list(Li,E).

%menor
menor(Li,E):-
    min_list(Li,E).

%soma
soma([],0).
soma([X|Li],E):-    
    soma(Li,R),
    E is R + X.

%ordena
ordena(Li, Lf):-
    msort(Li,Lf).

%interseccao
interseccao(Li,Lj,Lk):-
    intersection(Li,Lj,Lk).

%somal
somal([A1|Z1],[A2|Z2],[Af|Zf]):-
    Af is A1 + A2,
    !,
    somal(Z1, Z2, Zf).
somal([], Z2, Z2):-    
    !.       
somal(Z1, [], Z1).    

%media
media(Li,E) :-
    sum_list(Li,S),
    length(Li,N),
    E is S/N.

%tamanho da lista
tamanho(Li,N) :-
    length(Li,N).

%inverte a lista
inverte(Li, Lf) :-
    reverse(Li, Lf).

%confere se e membro
membro(E, Li) :-
    member(E, Li).

%retorno de um elemento aleatorio da lista
aleatorio(E, Li) :-
    random_member(E, Li).


