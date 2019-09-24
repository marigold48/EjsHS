
{-
Ejercicio 3.7.1. Definir por recursión la función
and' :: [Bool] -> Bool
60 Capítulo 3. Definiciones por recursión
tal que (and' xs) se verifica si todos los elementos de xs son verdadero. Por ejemplo,
    and' [1+2 < 4, 2:[3] == [2,3]] == True
    and' [1+2 < 3, 2:[3] == [2,3]] == False
-}

-- import Test.QuickCheck

and' :: [Bool] -> Bool
and' [] = True
and' (b:bs) = b && and' bs

main = do
    print (and' [1+2 < 4, 2:[3] == [2,3]])
    print (and' [1+2 < 3, 2:[3] == [2,3]])
