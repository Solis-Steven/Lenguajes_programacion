module Ejercicio03
    ( aplanar
    ) where

{-
    Esta funcion agrega elementos al final de una lista

    Parametros:
        a ([Int]) -- Elemento a agregar
        (x:s) ([Int])  -- Lista a la que se le quiere agregar el elemento
-}
append :: Int -> [Int] -> [Int]
append a [] = [a]
append a (x:xs) = x : append a xs

{-
    Esta funcion agrega los elementos de las sublistas de lista general, 
    a otra nueva lista

    Parametros:
        sublista ([Int]) -- Sub lista de la lista general
        listaAplanada ([Int])  -- Nueva lista que se esta construyendo
-}
recorrerSublista :: [Int] -> [Int] -> [Int]
recorrerSublista  sublista listaAplanada =
    -- Se comprueba si la sublista aun tiene elementos
    if length sublista /= 0 then 
        -- Si los tiene se agrega uno a uno a la nueva lista aplanada
        recorrerSublista  (tail sublista) (append (head sublista) listaAplanada)
    else
        -- Si ya no tiene se devuelve la nueva lista aplanada
        -- conteniendo los elementos de la sublista
        listaAplanada

{-
    Esta funcion envia cada una de las sublistas para ser recorridas
    y agregar sus elementos a una nueva lista

    Parametros:
        subconjunto ([[Int]]) -- Lista general que contiene sublistas
        conjunto ([Int])  -- Nueva lista aplanada que sera construida
-}
aplanar :: [[Int]] -> [Int] -> [Int]
aplanar lista listaAplanada =
    -- Se comprueba si aun hay mas sublistas en la lista general
    if length lista /= 0 then 
        {- Si aun se puede recorrer la lista general,
        se vuelve a llamar a aplanar pero con la cola para eliminar la cabez y
        seguir recorriendo la lista general. De igual forma, se envia la sublista
        que representa la cabeza para posteriorimente ser recorrida y agregar
        sus elementos a la nueva lista aplanada -}
        aplanar (tail lista) (recorrerSublista (head lista) listaAplanada)
    else
        -- Si ya no hay mas se devuelve la lista aplanada
        listaAplanada 


{-
Resultado que muestra el codigo:

Utilizando como lista a [[1,2,3], [4,5], [6]]:
[1,2,3,4,5,6]

Utilizando como lista a [[1,2], [3], [4,5], [6,7]]:
[1,2,3,4,5,6,7]
-}