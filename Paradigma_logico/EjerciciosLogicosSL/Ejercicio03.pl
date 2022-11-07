aplanar([], []).
aplanar([H | T], L) :- aplanar(T, L1), append(H, L1, L).
