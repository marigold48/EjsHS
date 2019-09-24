
{-
Ejercicio 2.1.1. Definir, por comprensión, la función
sumaDeCuadrados :: Integer -> Integer
tal que sumaDeCuadrados n) es la suma de los cuadrados de los primeros n números; es decir,
1^2 + 2^2 + . . . + n^2. Por ejemplo,
    sumaDeCuadrados 3 == 14
    sumaDeCuadrados 100 == 338350
-}

sumaDeCuadrados :: Integer -> Integer
sumaDeCuadrados n = sum [x^2 | x <- [1..n]]

main = do
    print ( sumaDeCuadrados 3)
    print ( sumaDeCuadrados 100)
