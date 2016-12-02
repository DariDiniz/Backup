## Listas em PROLOG 

### Introdução 

* Criar predicatos para trabalhar com listas, conforme indicado nos itens abaixo.

### Predicados:

* Seja
    - `E` : algum elemento da lista
    - `Li` : alguma lista inicial (ou `Lj`, etc.)
    - `Lf` : a lista resultante (lista final)

* Considere ainda que:
    - `?` : o argumento pode ser de entrada ou saída (variável ligada ou livre).
    - `+` : o argumento deve ser dado (variável ligada, argumento de entrada).
    - `-` : o argumento deve ser de saída (variável livre).

Crie os seguintes predicados:

* `adiciona(E+, Li+, Lf-)` : adiciona o elemento `E` na lista `Li`, resultando na lista `Lf`.
* `remove(E+, Li+, Lf-)` : remove o elemento `E` da lista `Li`, resultando na lista `Lf`.
* `primeiro(Li+, E-)` : retorna em `E` o primeiro elemento da lista `Li`.
* `ultimo(Li+, E-)` : retorna em `E` o último elemento da lista `Li`.
* `maior(Li+, E-)` : retorna em `E` o maior elemento da lista `Li`.
* `menor(Li+, E-)` : retorna em `E` o menor elemento da lista `Li`.
* `soma(Li+, E-)` : retorna em `E` o valor da soma dos inteiros na lista `Li`.
* `media(Li+, E-)` : retorna em `E` o valor da média dos inteiros na lista `Li`. 
* `ordena(Li+, Lf-)` : Dada a lista `Li`, cria a lista `Lf` a partir dela, em ordem alfabética ou crescente.
* `somal(Li+, Lj+, Lf-)` : Soma cada elemento da lista `Li` com o correspondente em `Lj`, colocando o resultado na lista `Lf`.
* `interseccao(Li?, Lj?, Lk?)` : Opera tal que `Lk` é a intersecção das listas `Li` e `Lj`.

### Orientação

* Autor: Prof. Dr. Ruben Carlo Benante
* Email: rcb@upe.br
* Data: 2016-09-07
* Licensa: GNU/GPL v2.0

