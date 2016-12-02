 /**************************************************************************
 *   ex5.pl                                   Version 20160908.204803      *
 *                                                                         *
 *   Trabalhando com listas                                                *
 *   Copyright (C) 2016         by Grupo Listas-Energetico                 *                                                                          *
 ***************************************************************************
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License.        *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program; if not, write to the                         *
 *   Free Software Foundation, Inc.,                                       *
 *   59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.             *
 ***************************************************************************
 *   To contact the author, please write to:                               * 
 *   Grupo Listas-Energetico                                               *                                            *
 *   Email: github.com                                                     *
 *   Webpage: http://www.upe.br                                            *
 *   Phone: +55 (81) 99863-3415                                            *
 ***************************************************************************/

 /**
 * @file ex5.pl
 * @ingroup GroupUnique
 * @brief Trabalhando com listas
 * @details A simple example of PROLOG source documented with doxygen.
 *
 * @version 20160908.204803
 * @date 2016-09-0
 * @author Grupo Listas-Energetico <<github.com>>            
 * @par Webpage
 * <<a href="http://www.upe.br">www.upe.br</a>>
 * @copyright (c) 2016 GNU GPL v2
 * @note This program is free software: you can redistribute it
 * and/or modify it under the terms of the
 * GNU General Public License as published by
 * the Free Software Foundation version 2 of the License.
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * You should have received a copy of the GNU General Public License
 * along with this program.
 * If not, write to the Free Software Foundation, Inc.,
 * 59 Temple Place - Suite 330, Boston, MA. 02111-1307, USA.
 * Or read it online at <<http://www.gnu.org/licenses/>>.
 *
 * @todo Now that you have the template, hands on! Programme!
 * @warning Be carefull not to lose your mind in small things.
 * @bug This file right now does nothing usefull.
 *
 */

/* ---------------------------------------------------------------------- */
/* Facts and Rules */
 /* @ingroup GroupUnique
 * @brief main is det
 * @details Initializes memory and other tasks
 * @retval TRUE If it can prove main.
 * @retval FALSE If main cant be proven.
 */

 main :-
     writeln('Initializing...').

%adiciona
adiciona(E, Li,[E|Li]).

%remove
remove(X,[X|Li],Li).
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


/* ---------------------------------------------------------------------- */
/**
 * @ingroup GroupUnique
 * @brief help is det
 * @details Shows a help message on how to use ex5
* @return TRUE always.
 */
help :-
    writeln('ex5 - Trabalhando com listas'),
    writeln('Usage:'),
    writeln('$swipl -s ex5.pl'),
    /* Stand alone scripts, invert: comment above, uncomment bellow. */
    /* writeln('$./ex5'), */
    writeln('Clauses:'),
    writeln('  main.       Starts the main program.'),
    writeln('  copyright.  Shows version and copyright information.'),
    writeln('  help.       Shows this help message.'),
    /* add more options here */
    writeln('  Exit status:'),
    writeln('    TRUE if ok'),
    writeln('    FALSE if some error occurred.'),
    writeln('  Todo:'),
    writeln('    Read options from OS'),
    writeln('  Author:'),
    writeln('    Written by Grupo Listas-Energetico <github.com>').

/* ---------------------------------------------------------------------- */
/* * * @ingroup GroupUnique
 * @brief copyright is det
 * @details Shows version and copyright information.
 * @return TRUE always.
 */

  copyright :-
      writeln('ex5 - Version 20160908.204803'),
      writeln('Copyright (C) 2016 Grupo Listas-Energetico <github.com>, GNU GPL version 2 <http://gnu.org/licenses/gpl.html>. This is free software: you are free to change and redistribute it. There is NO WARRANTY, to the extent permitted by law. USE IT AS IT IS. The author takes no responsability to any damage this software may inflige in your data.').
  
/* ----------------------------------------------------------------------- */
/* vi: set ai et ts=4 sw=4 tw=0 wm=0 fo=croql : PL config for Vim modeline */
/* Template by Dr. Beco <rcb at beco dot cc>       Version 20150620.224740 */

