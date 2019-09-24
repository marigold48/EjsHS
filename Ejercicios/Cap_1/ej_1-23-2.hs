
{-
Ejercicio 1.23.2. Definir la función intercambia tal que (intercambia p) es el punto obtenido
intercambiando las coordenadas del punto p. Por ejemplo,
    intercambia (2,5) == (5,2)
    intercambia (5,2) == (2,5)
-}

intercambia (x,y) = (y,x)

main = do
    print (intercambia (2,5))
    print (intercambia (5,2))

