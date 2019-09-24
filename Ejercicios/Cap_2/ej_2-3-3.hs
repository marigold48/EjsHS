
{-
Ejercicio 2.3.3. Definir la función triangulo tal que (triangulo n) es el triángulo aritmético
de altura n. Por ejemplo,
	triangulo 3 == [[1],[2,3],[4,5,6]]
	triangulo 4 == [[1],[2,3],[4,5,6],[7,8,9,10]]
-}

suma n = sum [1..n]

linea n = [suma (n-1)+1..suma n]

triangulo n = [linea m | m <- [1..n]]

main = do
    print (triangulo 3)
    print (triangulo 4)
