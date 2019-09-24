
{-
Ejercicio 2.3.2. Los triángulo aritmético se forman como sigue
1
2 3
4 5 6
7 8 9 10
11 12 13 14 15
16 16 18 19 20 21
Definir la función linea tal que (linea n) es la línea n–ésima de los triángulos aritméticos.
Por ejemplo,
	linea 4 == [7,8,9,10]
	linea 5 == [11,12,13,14,15]
-}

suma n = sum [1..n]

linea n = [suma (n-1)+1..suma n]

main = do
    print (linea 4)
    print (linea 5)
