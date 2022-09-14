module Main (main) where

import Ejercicio01
import Ejercicio02
import Ejercicio03
import Ejercicio04

main :: IO ()
main = do
    data Tree a 
        = Leaf a
        | Node [Tree a]
    let cadena = ["la casa", "el perro", "pintando la cerca", "un gran becerro"]
    let subcadena = "erro"
    let lista = Node [ 
            Node [Leaf 1]
            , Leaf 2
            , Node [Node [Leaf 3, Leaf 4], Leaf 5]
            , Node [Node [Node []]]
            , Node [Node [Node [Leaf 6]]]
            , Leaf 7
            , Leaf 8
            , Node []
                ]
    
    print(filter(\x -> compararSubcadena subcadena x 0 0) cadena) -- Ejercicio01
    print(sub_conjunto [2, 5, 6, 7] [0, 2, 4, 6, 8, 10] 0 0) -- Ejercicio02
    print(aplanar [[1,2], [3], [4,5], [6,7]] []) -- Ejercicio03
    print(aplanar2 lista) -- Ejercicio04
