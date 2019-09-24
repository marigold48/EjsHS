
{-
Ejercicio 1.16.2. Definir la función tresDiferentes tal que (tresDiferentes x y z) se
verifica si los elementos x, y y z son distintos. Por ejemplo,
    tresDiferentes 3 5 2 == True
    tresDiferentes 3 5 3 == False
-}

tresDiferentes x y z = x /= y && x /= z && y /= z

main = do
    print (tresDiferentes 3 5 2)
    print (tresDiferentes 3 5 3)

