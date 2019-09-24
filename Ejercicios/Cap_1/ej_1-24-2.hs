
{-
Ejercicio 1.24.2. Definir la función productoComplejos tal que (productoComplejos x y)
es el producto de los números complejos x e y. Por ejemplo,
    productoComplejos (2,3) (5,6) == (-8,27)
-}

productoComplejos (a,b) (c,d) = (a*c-b*d, a*d+b*c)

main = do
    print (productoComplejos (2,3) (5,6))

