
{-
Ejercicio 2.5.1. Definir la función numeroAbundante tal que (numeroAbundante n) se verifica
si n es un número abundante. Por ejemplo,
	numeroAbundante 5 == False
	numeroAbundante 12 == True
	numeroAbundante 28 == False
	numeroAbundante 30 == True
-}

divisores :: Int -> [Int]
divisores n = [m | m <- [1..n-1], n `mod` m == 0]

numeroAbundante :: Int -> Bool
numeroAbundante n = n < sum (divisores n)

main = do
    print (numeroAbundante  5)
    print (numeroAbundante 12)
    print (numeroAbundante 28)
    print (numeroAbundante 30)
