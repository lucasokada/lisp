fibo(0, 1).
fibo(1, 1).

fibo(N, Resultado) :-
    N > 1,
    Anterior is N - 1,
    Antecessor is N - 2,
    fibo(Anterior, RAnterior),
    fibo(Antecessor, RAntecessor),
    Resultado is RAnterior + RAntecessor.