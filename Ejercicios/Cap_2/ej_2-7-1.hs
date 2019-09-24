
{-
Ejercicio 2.7.1. Definir la función
circulo :: Int -> Int
tal que (circulo n) es la cantidad de pares de números naturales (x,y) que se encuentran
dentro del círculo de radio n. Por ejemplo,
    circulo 3 == 9
    circulo 4 == 15
    circulo 5 == 22
-}


circulo0a :: Int -> [(Int,Int)]
circulo0a n =  [(x,y) | x <- [0..n], y <- [0..n], x^2+y^2 < n^2]

circulo1 n = length (circulo0a n)

-- La eficiencia puede mejorarse con
raizCuadradaEntera :: Int -> Int
raizCuadradaEntera n = truncate (sqrt (fromIntegral n))

circulo0b :: Int -> [(Int,Int)]
circulo0b n = [(x,y) | x <- [0..m], y <- [0..m], x+y < n^2]
    where m = raizCuadradaEntera n

circulo2 n = length (circulo0b n)
-- PUTADA : Salen resultados diferentes !!!!


main = do

    print (raizCuadradaEntera 17)

    print (circulo1 3) -- 9
    print (circulo0a 3) -- 4
    print (circulo2 3) -- 4
    print (circulo0b 3) -- 4
