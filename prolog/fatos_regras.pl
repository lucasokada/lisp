% fatos
ancestral_descendente(alice, bob).
ancestral_descendente(bob, charles).

% regra
descende(X, Y) :- ancestral_descendente(X, Y);
    ancestral_descendente(X, Y), ancestral_descendente(Z, Y).

%----------------------------------------------------------------------

% fato
homem(socrates).

% regra
mortal(X) :- homem(X).

%----------------------------------------------------------------------

%regra - alice gosta de todas as frutas
gosta(alice, Toda) :- fruta(Toda).

%fato - maçã = fruta
fruta(maca).

%regra - daniel gosta de quem gosta de qualquer fruta
gosta(daniel, Quem) :- gosta(Quem, Qualquer), fruta(Qualquer).

%consultas:
%alice gosta de maca?
    % ?- gosta(alice, maca).
    % true.

%daniel gosta de alice?
    % ?- gosta(daniel, alice).
    % true.

%alice gosta de que?
    % ?- gosta(alice, Que).
    % Que = maca.