
{-
Ejercicio 2.11.1. Una terna (x, y, z) de enteros positivos es pitagórica si x2 + y2 = z2. Usando
una lista por comprensión, definir la función
pitagoricas :: Int -> [(Int,Int,Int)]
tal que (pitagoricas n) es la lista de todas las ternas pitagóricas cuyas componentes están
entre 1 y n. Por ejemplo,
    pitagoricas 10 == [(3,4,5),(4,3,5),(6,8,10),(8,6,10)]
-}
pitagoricas :: Int -> [(Int,Int,Int)]
pitagoricas n = [(x,y,z) | x <- [1..n],
    y <- [1..n],
    z <- [1..n],
    x^2 + y^2 == z^2]

main = do
    print (pitagoricas 10)
 