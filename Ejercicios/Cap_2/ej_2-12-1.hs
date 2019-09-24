
{-
Ejercicio 2.12.1. Una terna pitagórica es una terna de números naturales (a, b, c) tal que a <
b < c y a2 + b2 = c2. Por ejemplo (3, 4, 5) es una terna pitagórica. Definir la función
ternasPitagoricas :: Integer -> [[Integer]]
tal que (ternasPitagoricas x) es la lista de las ternas pitagóricas cuya suma es x. Por
ejemplo,
    ternasPitagoricas 12 == [(3,4,5)]
    ternasPitagoricas 60 == [(10,24,26),(15,20,25)]
-}

ternasPitagoricas :: Integer -> [(Integer,Integer,Integer)]
ternasPitagoricas x = [(a,b,c) | a <- [1..x],
    b <- [a+1..x],
    c <- [x-a-b],
    a^2 + b^2 == c^2]

main = do
    print (ternasPitagoricas 12)
    print (ternasPitagoricas 60)
 
