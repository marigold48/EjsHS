
{-
Ejercicio 2.12.2. Definir la constante euler9 tal que euler9 es producto abc donde (a, b, c) es
la única terna pitagórica tal que a + b + c = 1000. Calcular el valor de euler9.
Solución:
-}

ternasPitagoricas :: Integer -> [(Integer,Integer,Integer)]
ternasPitagoricas x = [(a,b,c) | a <- [1..x],
    b <- [a+1..x],
    c <- [x-a-b],
    a^2 + b^2 == c^2]

euler9 = a*b*c
    where (a,b,c) = head (ternasPitagoricas 1000)

main = do
    print (euler9)
 
{-
ghci> euler9
31875000
-}