module Main (main) where

import Ejercicio01
import Ejercicio02
import Ejercicio03

main :: IO ()
main = do
    let cadena = ["la casa", "el perro", "pintando la cerca", "un gran becerro"]
    let subcadena = "erro"
    
    print(filter(\x -> compararSubcadena subcadena x 0 0) cadena) -- Ejercicio01
    print(sub_conjunto [2, 5, 6, 7] [0, 2, 4, 6, 8, 10] 0 0) -- Ejercicio02
    print(aplanar [[1,2], [3], [4,5], [6,7]] []) -- Ejercicio03
