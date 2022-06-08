animal(cao).
animal(canario).
animal(cobra).
animal(morcego).
animal(gaivota).
reptil(cobra).
mamifero(cao).
mamifero(morcego).
com_asas(canario).
com_asas(morcego).
com_asas(gaivota).

% Todos os animais que sao aves:
%   ?- animal(X), com_asas(X), not(reptil(X)), not(mamifero(X)).
%   X = canario ;
%   X = gaivota.