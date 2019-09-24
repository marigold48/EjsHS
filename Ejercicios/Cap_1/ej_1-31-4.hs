
{-
Ejercicio 1.31.4. Definir la función igualdadRacional tal que (igualdadRacional x y) se
verifica si los números racionales x e y son iguales. Por ejemplo,
    igualdadRacional (6,9) (10,15) == True
    igualdadRacional (6,9) (11,15) == False
-}

formaReducida (a,b) = (a `div` c, b `div` c)
    where 
        c = gcd a b

igualdadRacional (a,b) (c,d) =
    formaReducida (a,b) == formaReducida (c,d)

main = do
    print ( igualdadRacional (6,9) (10,15))
    print ( igualdadRacional (6,9) (11,15))
