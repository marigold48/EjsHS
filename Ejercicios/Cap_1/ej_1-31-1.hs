
{-
Ejercicio 1.31.1. Definir la función formaReducida tal que (formaReducida x) es la forma
reducida del número racional x. Por ejemplo,
    formaReducida (4,10) == (2,5)
-}

formaReducida (a,b) = (a `div` c, b `div` c)
    where 
        c = gcd a b

main = do
    print (formaReducida (4,10))
