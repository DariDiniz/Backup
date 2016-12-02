:- dynamic([flechas/1]).

start :-
    configinicial(5).

configuraflechas(X) :-
    imprime_antes,
    nl,
    retractall(flechas(_)),
    assert(flechas(X)),
    imprime_depois.

atira :-
    flechas(X),
    X > 0,
    imprime_antes,
    nl,
    writeln('Voce atirou com sucesso'),
    Y is X - 1,
    atiraflecha(Y),
    imprime_depois.

atira :-
    flechas(X),
    X  = 0,
    imprime_antes,
    nl,
    writeln('Voce nao conseguio atirar').

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

