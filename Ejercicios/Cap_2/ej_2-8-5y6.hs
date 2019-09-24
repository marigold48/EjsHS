
{-
Ejercicio 2.8.5. Definir la constante e como 2,71828459.
Solución:
e = 2.71828459

Ejercicio 2.8.6. Definir la función errorE' tal que (errorE' x) es el menor número de términos
de la serie anterior necesarios para obtener e con un error menor que x. Por ejemplo,
errorE' 0.1 == 3.0
errorE' 0.01 == 4.0
errorE' 0.001 == 6.0
errorE' 0.0001 == 7.0
-}

e = 2.71828459

factorial ::  Double -> Double
factorial n
  |n == 0 = 1
  | otherwise = n * factorial (n-1)

-- aproxE1 :: (Integral a) => a -> a
aproxE1 n = 1 + sum [ 1 / factorial k| k <- [1..n]] 

errorE1 x = head [n | n <- [0..], abs(aproxE1 n - e) < x]

main = do
    print (errorE1 0.1)
    print (errorE1 0.01)
    print (errorE1 0.001)
    print (errorE1 0.0001)
