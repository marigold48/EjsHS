
{-
Ejercicio 2.11.3. Definir la función
conjetura :: Int -> Bool
tal que (conjetura n) se verifica si todas las ternas pitagóricas cuyas componentes están entre
1 y n tiene un número impar de números pares. Por ejemplo,
    conjetura 10 == True
-}

pitagoricas :: Int -> [(Int,Int,Int)]
pitagoricas n = [(x,y,z) | x <- [1..n],
    y <- [1..n],
    z <- [1..n],
    x^2 + y^2 == z^2]


numeroDePares :: (Int,Int,Int) -> Int
numeroDePares (x,y,z) = sum [1 | n <- [x,y,z], even n]

conjetura :: Int -> Bool
conjetura n = and [odd (numeroDePares t) | t <- pitagoricas n]

main = do
    print (conjetura 10)
 