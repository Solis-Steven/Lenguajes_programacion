Miembro(N, [N | _]).
miembro(N, [_ | T]) :- miembro(N, T).

subConjunto([], []) :- !.
subConjunto([], [_|_]) :- !.
subConjunto([_|_], []) :- false.
subConjunto([H | T], L) :- miembro(H, L), subConjunto(T, L), !.
subConjunto([H | _], L) :- not(miembro(H, L)), false.


