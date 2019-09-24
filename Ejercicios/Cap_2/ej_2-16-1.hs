
{-
Ejercicio 2.16.1. Los polinomios pueden representarse de forma dispersa o densa. Por ejemplo,
el polinomio 
    6x**4 - 5x**2 + 4x - 7 se puede representar de forma dispersa por [6,0,-5,4,-7] y
de forma densa por [(4,6),(2,-5),(1,4),(0,-7)]. 

Definir la función densa :: [Int] -> [(Int,Int)]
tal que (densa xs) es la representación densa del polinomio cuya representación dispersa es xs.
Por ejemplo,
    densa [6,0,-5,4,-7] == [(4,6),(2,-5),(1,4),(0,-7)]
    densa [6,0,0,3,0,4] == [(5,6),(2,3),(0,4)]
-}

densa :: [Int] -> [(Int,Int)]
densa xs = [(x,y) | (x,y) <- zip [n-1,n-2..0] xs, y /= 0]
    where n = length xs

main = do
    print (densa [6,0,-5,4,-7])
    print (densa [6,0,0,3,0,4])
