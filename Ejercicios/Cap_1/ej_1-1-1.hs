
{-
Ejercicio 1.1.1. Definir la función media3 tal que (media3 x y z) es la media aritmética de
los números x, y y z. Por ejemplo,
	media3 1 3 8 == 4.0
	media3 (-1) 0 7 == 2.0
	media3 (-3) 0 3 == 0.0
-}

media3 x y z = (x+y+z)/3

main = print (media3 1 3 8)