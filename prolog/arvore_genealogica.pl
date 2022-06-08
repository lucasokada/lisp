pai(adao, cain).
pai(adao, abel).
pai(adao, seth).
pai(seth, enos).

avo(X, Y) :- pai(X, Z), pai(Z, Y). %regra com variáveis compartilhadas
irmao(X, Y) :- pai(Z, X), pai(Z, Y), X\=Y.

%quem são os filhos de adão?
%   ?- pai(adao, X).
%   X = cain ;
%   X = abel ;
%   X = seth.

%quem é pai?
%   ?- pai(X, _).
%   X = adao ;
%   X = adao ;
%   X = adao ;
%   X = seth.

%quem é o pai do pai de enos?
%   ?- pai(Y, enos), pai(X, Y).
%   Y = seth,
%   X = adao.

%   \= : genérico
%   \== : objeto
%   =\= : número