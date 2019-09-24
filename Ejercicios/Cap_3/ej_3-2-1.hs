
{-
Ejercicio 3.2.1. Definir por recursión la función
replicate' :: Int -> a -> [a]
tal que (replicate' n x) es la lista formado por n copias del elemento x. Por ejemplo,
    replicate' 3 2 == [2,2,2]
-}

import Test.QuickCheck

replicate' :: Int -> a -> [a]
replicate' 0 _ = []
replicate' n x = x : replicate' (n-1) x

main = do
    print (replicate' 3 2)
