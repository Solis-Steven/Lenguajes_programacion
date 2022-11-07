%        A ---- C ---- x
%      /   \   /
%     /	    \ /
%   i        X
%     \     / \
%      \   /   \
%        b ---- d ---- f
%

% Conexiones de i
conectado(i,a,3).
conectado(i,b,2).

% Conexiones de a
conectado(a,i,5).
conectado(a,c,8).
conectado(a,d,10).

% Conexiones de b
conectado(b,i,5).
conectado(b,c,10).
conectado(b,d,8).

% Conexiones de c
conectado(c,a,7).
conectado(c,x,12).
conectado(c,b,3).

% Conexiones de d
conectado(d,b,1).
conectado(d,a,6).
conectado(d,f,4).

% Conexiones de x
conectado(x,c,8).

% Conexiones de f
conectado(f,d,2).

% Se busca la ruta entre dos nodos
% y ademas el peso de dicha ruta
ruta(Nodo_final , Nodo_final, _, [Nodo_final], 0).
ruta(Nodo_inicial, Nodo_final, Visitados, [Nodo_inicial | Resto_nodos], Peso) :-
    conectado(Nodo_inicial, Nodo, Peso2),
    not(member(Nodo, Visitados)),
    ruta(Nodo, Nodo_final, [Nodo_inicial | Visitados], Resto_nodos, P),
    Peso is P + Peso2.

% Busca la ruta mas corta entre
% todas las posibles rutas
buscar_ruta([], Ruta_final, Peso_final, Ruta_final, Peso_final) :- !.
buscar_ruta([[R, P] | T], _, Peso_actual, RutaCorta, Peso):-
    P =< Peso_actual,
    buscar_ruta(T, R, P, RutaCorta, Peso),
    !.
buscar_ruta([_ | T], Ra, Peso_actual, RutaCorta, Peso) :-
    buscar_ruta(T, Ra, Peso_actual, RutaCorta, Peso).

% Encuentra y lista todas las posibles rutas
% entre dos dos nodos
listaRutas(Nodo_inicial, Nodo_final, ListaRutas) :-
    findall([Ruta, Peso],
    ruta(Nodo_inicial, Nodo_final, [], Ruta, Peso),
    ListaRutas).

% LLama a las otras reglas para asi
% encontrar y mostrar la ruta mas
% corta entre los dos nodos dados
% (es la regla que se debe llamar)
rutaCorta(Nodo_inicial, Nodo_final) :-
    listaRutas(Nodo_inicial, Nodo_final, ListaRutas),
    buscar_ruta(ListaRutas, [] ,100, RutaCorta, Peso),
    imprimir(RutaCorta, Peso).

% Imprime la ruta mas corta
imprimir(Ruta, Peso) :-
    write('La ruta mas corta es: '),
    write(Ruta),
    write(' con peso de '),
    write(Peso).



