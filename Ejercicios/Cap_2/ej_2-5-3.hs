
{-
Ejercicio 2.5.3. Definir la función todosPares tal que (todosPares n) se verifica si todos los
números abundantes menores o iguales que n son pares. Por ejemplo,
	todosPares 10 == True
	todosPares 100 == True
	todosPares 1000 == False
-}

divisores :: Int -> [Int]
divisores n = [m | m <- [1..n-1], n `mod` m == 0]

numeroAbundante :: Int -> Bool
numeroAbundante n = n < sum (divisores n)

numerosAbundantesMenores :: Int -> [Int]
numerosAbundantesMenores n = [x | x <- [1..n], numeroAbundante x]

todosPares :: Int -> Bool
todosPares n = and [even x | x <- numerosAbundantesMenores n]

main = do
    print (todosPares   10)
    print (todosPares  100)
    print (todosPares 1000)
