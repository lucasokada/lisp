:- dynamic lampada/1.

liga :-
    retract(lampada(_)),
    asserta(lampada('ligada')).

desliga :-
    retract(lampada(_)),
    asserta(lampada('desligada')).