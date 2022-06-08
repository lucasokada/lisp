% int fatorial(int n) {
%     if(n == 0) {
%         return 1;
%     } else {
%         int anterior = n - 1;

%         int result = (n * fatorial(n - 1));
%         return result;
%     }
% }

%fato
fatorial(0, 1).

%regra
fatorial(N, result) :- 
    anterior is N - 1,
    fatorial(anterior, result_parcial),
    result is N * result_parcial.

func :- 
    print('Qual seu nome?'),
    readln(Nome),
    format('Olá ~a', Nome),
    nl.
:- func.