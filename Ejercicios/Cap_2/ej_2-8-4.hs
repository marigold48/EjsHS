
{-
Ejercicio 2.8.4. El número e también se puede definir como la suma de la serie:
1/0! + 1/1! + 1/2! + 1/3! + . . .
Definir la función aproxE' tal que (aproxE' n) es la aproximación de e que se obtiene sumando
los términos de la serie hasta 1/n! . Por ejemplo,
aproxE' 10  == 2.718281801146385
aproxE' 100 == 2.7182818284590455
-}

factorial ::  Double -> Double
factorial n
  |n == 0 = 1
  | otherwise = n * factorial (n-1)

-- aproxE1 :: (Integral a) => a -> a
aproxE1 n = 1 + sum [ 1 / factorial k| k <- [1..n]] 

main = do
    print (aproxE1 10)
    print (aproxE1 100)
