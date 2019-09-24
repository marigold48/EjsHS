
{-
Ejercicio 1.23.3. Definir la función simetricoH tal que (simetricoH p) es el punto simétrico
de p respecto del eje horizontal. Por ejemplo,
    simetricoH (2,5) == (2,-5)
    simetricoH (2,-5) == (2,5)
-}

simetricoH (x,y) = (x,-y)

main = do
    print (simetricoH (2,5))
    print (simetricoH (2,-5))

