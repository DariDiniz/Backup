start :-
    configinicial(5),
    assert(wvivo(1)).

configuraflechas(X) :-
    imprime_antes,
    nl,
    retractall(flechas(_)),
    assert(flechas(X)),
    imprime_depois.

atira :-
    wvivo(0),
    flechas(X),
    X > 0,
    imprime_antes,
    nl,
    writeln('Voce atirou com sucesso'),
    Y is X - 1,
    atiraflecha(Y),
    imprime_depois.

atira :-
    wvivo(1),
    flechas(X),
    X > 0,
    imprime_antes,
    nl,
    writeln('Voce atirou com sucesso'),
    random_between(1,10,R),
    mata(R),
    Y is X - 1,
    atiraflecha(Y),
    imprime_depois.

atira :-
    flechas(X),
    X  = 0,
    imprime_antes,
    nl,
    writeln('Voce nao tinha flechas, portanto nao conseguiu atirar').

imprime_antes :-
    flechas(X),
    write('Voce tinha '),
    write(X),
    write(' flecha(s).').

imprime_depois :-
    flechas(X),
    write('Voce tem agora '),
    write(X),
    write(' flecha(s).').

atiraflecha(X) :-    
    retractall(flechas(_)),
    assert(flechas(X)).

configinicial(X) :-
    retractall(flechas(_)),
    assert(flechas(X)).

mata(X) :-
    X =< 3,
    retractall(wvivo(_)),
    assert(wvivo(0)),
    write('Voce matou o wumpus'),
    nl.

mata(X) :-
    X >= 4,
    write('Voce nao matou o wumpus'),
    nl.

