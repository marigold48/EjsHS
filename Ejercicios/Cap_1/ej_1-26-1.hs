
{-
Ejercicio 1.26.1. Definir una función ciclo que permute cíclicamente los elementos de una
lista, pasando el último elemento al principio de la lista. Por ejemplo,
    ciclo [2, 5, 7, 9] == [9,2,5,7]
    ciclo [] == [9,2,5,7]
    ciclo [2] == [2]
-}

ciclo [] = []
ciclo xs = last xs : init xs

main = do
    print (ciclo [2, 5, 7, 9])
--    print (ciclo [])
    print (ciclo [2])

