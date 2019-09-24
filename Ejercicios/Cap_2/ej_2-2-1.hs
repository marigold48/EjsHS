
{-
Ejercicio 2.2.1. Definir por comprensión la función
replica :: Int -> a -> [a]
tal que (replica n x) es la lista formada por n copias del elemento x. Por ejemplo,
    replica 3 True == [True, True, True]
Nota: La función replica es equivalente a la predefinida replicate.
-}

replica :: Int -> a -> [a]
replica n x = [x | _ <- [1..n]]

main = do
    print (replica 3 True)
