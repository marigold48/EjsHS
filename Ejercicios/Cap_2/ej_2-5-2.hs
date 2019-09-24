
{-
Ejercicio 2.5.2. Definir la función numerosAbundantesMenores tal que (numerosAbundantesMenores n)
es la lista de números abundantes menores o iguales que n. Por ejemplo,
	numerosAbundantesMenores 50 == [12,18,20,24,30,36,40,42,48]
-}

divisores :: Int -> [Int]
divisores n = [m | m <- [1..n-1], n `mod` m == 0]

numeroAbundante :: Int -> Bool
numeroAbundante n = n < sum (divisores n)

numerosAbundantesMenores :: Int -> [Int]
numerosAbundantesMenores n = [x | x <- [1..n], numeroAbundante x]
main = do
    print (numerosAbundantesMenores 50)
