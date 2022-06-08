not(X) :- X, !, fail.
not(_) :- true.

% Operadores ! e fail são usados para controle de backtracking

if(Condicao, Then, Else) :- Condicao, !, Then.
if(_, _, Else) :- Else.

par(N) :- if(N mod 2 =:= 0, print("Par"), print("Impar")).