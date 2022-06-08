%   bool soma(int *x, int *y, int *result) {
%       *result = *x + *y;
%       return TRUE;
%   }

soma(X, Y, Result) :- Result is X + Y. %chegou no ponto, retorna TRUE

%consultas:
%   ?- soma(4, 23, X).
%   X = 27.
%   
%   ?- soma(1, 2, 3).
%   true.
%   
%   ?- soma(2, 2, 1).
%   false.
