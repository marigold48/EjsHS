
{-
Ejercicio 1.24.1. Definir la función sumaComplejos tal que (sumaComplejos x y) es la suma
de los números complejos x e y. Por ejemplo,
    sumaComplejos (2,3) (5,6) == (7,9)
-}

sumaComplejos (a,b) (c,d) = (a+c, b+d)

main = do
    print (sumaComplejos (2,3) (5,6))

