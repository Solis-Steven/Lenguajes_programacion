module Ejercicio04
    ( aplanar2
    ) where

data Tree a 
    = Leaf a
    | Node [Tree a]

aplanar2 :: Tree a -> [a]
aplanar2 (Leaf x) = [x]
aplanar2 (Node xs) = xs >>= aplanar2