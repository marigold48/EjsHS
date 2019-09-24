
{-
Ejercicio 2.6.1. Definir la función
euler1 :: Integer -> Integer
tal que (euler1 n) es la suma de todos los múltiplos de 3 ó 5 menores que n. Por ejemplo,
	euler1 10 == 23
Calcular la suma de todos los múltiplos de 3 ó 5 menores que 1000.
-}

euler1 :: Integer -> Integer
euler1 n = sum [x | x <- [1..n-1], multiplo x 3 || multiplo x 5]
    where multiplo x y = mod x y == 0

main = do
    print (euler1 1000)
