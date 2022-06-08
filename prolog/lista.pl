if(Condicao, Then, Else) :- Condicao, !, Then.
if(_, _, Else) :- Else.

par(N, R) :- if(N mod 2 =:= 0, R is 1, R is 0).

countInteiros([]) :- nl.
countInteiros([X|Y], Z) :- if(integer(X), Z is Z + 1, _), nl, countInteiros(Y, Z).

countInteirosPares([]) :- nl.
countInteirosPares([X|Y], Z) :- if((integer(X), par(N,R), R is 1), Z is Z + 1, _), nl, countInteirosPares(Y, Z).

countInteirosImpares([]) :- nl.
countInteirosImpares([X|Y], Z) :- if((integer(X), par(N,R), R is 0), Z is Z + 1, _), nl, countInteirosImpares(Y, Z).

contagemInteiros(lista_entrada, L) :- 
    X is 0,
    length(lista_entrada, X),
    append(X, L, L),
    Z is 0,
    countInteiros(lista_entrada, Z),
    append(Z, L, L),
    K is 0,
    countInteirosPares(lista_entrada, K),
    append(K, L, L),
    M is 0,
    countInteirosImpares(lista_entrada, M),
    append(M, L, L).

