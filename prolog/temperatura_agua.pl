if(Condicao, Then, Else) :- Condicao, !, Then.
if(_, _, Else) :- Else.

temperaturaAgua(N) :- if(N >= 100,
    (print("Se a água tiver a temperatura de 100°C, a água ferve."),
    print("A temperatura da água é de 100°C."),
    print("Logo, a água ferve.").),
    print("Se a água tiver a temperatura de 100°C, a água ferve."),
    print("A temperatura da água é de 50°C").
).