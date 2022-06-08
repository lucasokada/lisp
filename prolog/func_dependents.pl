% funcionario(codigo, nome, salario)
funcionario(1, ana, 1001.00).
funcionario(2, bia, 1200.00).
funcionario(3, ivo, 950.00).

%dependente(codigo, nome)
dependente(1, ary).
dependente(3, rai).
dependente(3, eva).

%Quem são os dependentes de ivo?
%   ?- dependente(Codigo, Nome), funcionario(Codigo, ivo, _).
%   Codigo = 3,
%   Nome = rai ;
%   Codigo = 3,
%   Nome = eva.

%Dependentes dos funcionarios que ganham menos que 1000.00:
%   dependente(Codigo, Nome), funcionario(Codigo, _, Salario), Salario < 1000.00.
%   Codigo = 3,
%   Nome = rai,
%   Salario = 950.0 ;
%   Codigo = 3,
%   Nome = eva,
%   Salario = 950.0.