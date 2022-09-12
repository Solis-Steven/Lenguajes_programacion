module Ejercicio02
    ( sub_conjunto
    ) where

{-
    Esta funcion se encarga de verificar si un subconjunto
    esta contenida en un conjunto

    Parametros:
        subconjunto ([Int]) -- Sub cadena que se quiere comparar
        conjunto ([Int])  -- Conjunto donde se verifica si esta el subconjunto
        indiceS (Int) -- Indice para recorrer el subconjunto
        indiceC (Int) -- Indice para recorrer el conjunto
-}
sub_conjunto :: [Int] -> [Int] -> Int -> Int -> Bool
sub_conjunto subconjunto conjunto indiceS indiceC  = 
    if subconjunto == [] then True -- Si el subconjunto es vacio si esta dentro del conjunto
    else
        if indiceS > ((length subconjunto) - 1) then True -- Indica que todos los elementos del subconjunto estan
        else if indiceC > ((length conjunto) - 1) then False -- Indica que al menos un elemento del subconjunto no esta
        else
            -- Si encuentra que son iguales, va a pasar a buscar el siguiente elemento del subconjunto
            if (subconjunto !! indiceS) == (conjunto !! indiceC) then
                sub_conjunto subconjunto conjunto (indiceS + 1) 0
            else
                -- En caso de aun no encontrar ninguno igula, sigue recorriendo el conjunto
                sub_conjunto subconjunto conjunto indiceS (indiceC + 1)
            
{-
Resultado que muestra el codigo:

Utilizando como subconjunto a [1, 2, 3, 4] y
como conjunto a [0, 8, 1, 5, 2, 3, 7]: False

Utilizando como subconjunto a [1, 2, 3] y
como conjunto a [0, 8, 1, 5, 2, 3, 7]: True

Utilizando como subconjunto a [2, 5, 6, 7] y
como conjunto a [0, 2, 4, 6, 8, 10]: False
-}