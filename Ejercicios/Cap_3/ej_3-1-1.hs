
{-
Ejercicio 3.1.1. Definir por recursión la función
potencia :: Integer -> Integer -> Integer
tal que (potencia x n) es x elevado al número natural n. Por ejemplo,
potencia 2 3 == 8
-}

import Test.QuickCheck

potencia :: Integer -> Integer -> Integer
potencia m 0 = 1
potencia m n = m*(potencia m (n-1))

main = do
    print (potencia 2 3)
