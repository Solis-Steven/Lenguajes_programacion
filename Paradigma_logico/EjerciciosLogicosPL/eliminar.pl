eliminar(_, [], []).
eliminar(E, [E | T], T) :- !.
eliminar(E, [H | T], L) :- eliminar(E, T, N), append([H], N, L).
