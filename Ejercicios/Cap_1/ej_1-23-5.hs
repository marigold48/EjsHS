
{-
Ejercicio 1.23.5. Definir la función puntoMedio tal que (puntoMedio p1 p2) es el punto
medio entre los puntos p1 y p2. Por ejemplo,
    puntoMedio (0,2) (0,6) == (0.0,4.0)
    puntoMedio (-1,2) (7,6) == (3.0,4.0)
-}

puntoMedio (x1,y1) (x2,y2) = ((x1+x2)/2, (y1+y2)/2)

main = do
    print (puntoMedio ( 0,2) (0,6))
    print (puntoMedio (-1,2) (7,6))

