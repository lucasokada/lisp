%pais(Nome, Area, Populaçao)
pais(brasil, 9, 220).
pais(china, 12, 2000).
pais(eua, 9, 330).
pais(india, 3, 1000).

%densidade demografica do brasil:
%   ?- pais(brasil, Area, Populacao), Densidade is Populacao/Area.
%   Area = 9,
%   Populacao = 220,
%   Densidade = 24.444444444444443.

%populacao do eua é maior que a populacao da india?
%   ?- pais(eua, _, X), pais(india, _, Y), X > Y.
%   false.