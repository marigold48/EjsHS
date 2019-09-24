
{-
Ejercicio 1.23.4. Definir la función distancia tal que (distancia p1 p2) es la distancia
entre los puntos p1 y p2. Por ejemplo,
    distancia (1,2) (4,6) == 5.0
-}

distancia (x1,y1) (x2,y2) = sqrt((x1-x2)^2+(y1-y2)^2)

main = do
    print (distancia (1,2) (4,6))

