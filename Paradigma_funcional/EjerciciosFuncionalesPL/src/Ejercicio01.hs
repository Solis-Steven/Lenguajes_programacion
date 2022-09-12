module Ejercicio01
    ( compararSubcadena
    ) where

{-
    Esta funcion se encarga de verificar si una subcadena
    esta contenida en una cadena

    Parametros:
        subcadena (String) -- Sub cadena que se quiere comparar
        cadena (String)  -- Cadena donde se verifica si esta la subcadena
        indiceS (Int) -- Indice para recorrer la subcadena
        indiceC (Int) -- Indice para recorrer la cadena
-}
compararSubcadena :: String -> String -> Int -> Int -> Bool
compararSubcadena subcadena cadena indiceS indiceC = 
    -- Primero comparamos que las letras sean iguales
    if (subcadena !! indiceS) == (cadena !! indiceC) then
        -- En caso de ser iguales, verificamos si toda la subcadena fue igual
        if (indiceS + 1) > ((length subcadena) - 1) then True -- Si el indice es mayor es porque toda la subcadena esta
        else 
            -- Sino verificamos que aun se pueda recorrer la cadena
            if (indiceC + 1) > ((length cadena) - 1) then False -- Si ya no se puede es porque la subcadena no esta
            else
                -- Si se puede recorrer la cadena la seguimos recorriendo
                compararSubcadena subcadena cadena (indiceS + 1) (indiceC + 1)
    else
        -- Si las letras no son iguales verificamos si se puede recorrer la cadena
        if (indiceC + 1) > ((length cadena) - 1) then False -- Si ya no se puede devolvermos falso
        else 
            -- Si se puede reiniciamos el indice de la subcadena y seguimos
            -- recorriendo la cadena
            compararSubcadena subcadena cadena 0 (indiceC + 1)


{-
Resultado que muestra el codigo utilizando los datos
del ejemplo del enunciado:
["la casa","pintando la cerca"]

Utilizando como subcadena: "erro" y como
lista de cadenas: ["la casa", "el perro", "pintando la cerca", "un gran becerro"]:
Resultado: ["el perro","un gran becerro"]
-}