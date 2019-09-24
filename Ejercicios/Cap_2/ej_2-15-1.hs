
{-
Ejercicio 2.15.1. En el tema se ha definido la función
posiciones :: Eq a => a -> [a] -> [Int]
tal que (posiciones x xs) es la lista de las posiciones ocupadas por el elemento x en la lista
xs. Por ejemplo,
posiciones 5 [1,5,3,5,5,7] == [1,3,4]
Definir, usando la función busca (definida en el tema 5), la función
posiciones' :: Eq a => a -> [a] -> [Int]
tal que posiciones' sea equivalente a posiciones. 
-}

posiciones :: Eq a => a -> [a] -> [Int]
posiciones x xs =
    [i | (x',i) <- zip xs [0..n], x == x']
        where n = length xs - 1
busca :: Eq a => a -> [(a, b)] -> [b]
busca c t = [v | (c', v) <- t, c' == c]

posiciones' :: Eq a => a -> [a] -> [Int]
posiciones' x xs = busca x (zip xs [0..])

main = do
    print (posiciones 5 [1,5,3,5,5,7])
    print (posiciones' 5 [1,5,3,5,5,7])
