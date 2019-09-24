
{-
Ejercicio 1.31.2. Definir la función sumaRacional tal que (sumaRacional x y) es la suma
de los números racionales x e y. Por ejemplo,
    sumaRacional (2,3) (5,6) == (3,2)
-}

formaReducida (a,b) = (a `div` c, b `div` c)
    where 
        c = gcd a b

sumaRacional (a,b) (c,d) = formaReducida (a*d+b*c, b*d)

main = do
    print (sumaRacional (2,3) (5,6))
