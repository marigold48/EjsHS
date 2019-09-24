
{-
Ejercicio 1.31.3. Definir la función productoRacional tal que (productoRacional x y) es
el producto de los números racionales x e y. Por ejemplo,
    productoRacional (2,3) (5,6) == (5,9)
-}

formaReducida (a,b) = (a `div` c, b `div` c)
    where 
        c = gcd a b

productoRacional (a,b) (c,d) = formaReducida (a*c, b*d)

main = do
    print (productoRacional (2,3) (5,6))
