
{-
Ejercicio 2.5.4. Definir la constante primerAbundanteImpar que calcule el primer número
natural abundante impar. Determinar el valor de dicho número.
-}

divisores :: Int -> [Int]
divisores n = [m | m <- [1..n-1], n `mod` m == 0]

numeroAbundante :: Int -> Bool
numeroAbundante n = n < sum (divisores n)

primerAbundanteImpar :: Int
primerAbundanteImpar = head [x | x <-[1..], numeroAbundante x, odd x]

main = do
    print (primerAbundanteImpar)
