
{-
Ejercicio 1.8.2. Definir la función rota tal que (rota n xs) es la lista obtenida poniendo los
n primeros elementos de xs al final de la lista. Por ejemplo,
rota 1 [3,2,5,7] == [2,5,7,3]
rota 2 [3,2,5,7] == [5,7,3,2]
rota 3 [3,2,5,7] == [7,3,2,5]
-}

rota n xs = drop n xs ++ take n xs

main = print (rota 3 [3,2,5,7])

