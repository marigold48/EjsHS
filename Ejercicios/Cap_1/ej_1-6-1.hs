
{-
Ejercicio 1.6.1. Definir la función maxTres tal que (maxTres x y z) es el máximo de x, y y
z. Por ejemplo,
	maxTres 6 2 4 == 6
	maxTres 6 7 4 == 7
	maxTres 6 7 9 == 9
-}

maxTres x y z = max x (max y z)

main = print (maxTres 6 2 4)

