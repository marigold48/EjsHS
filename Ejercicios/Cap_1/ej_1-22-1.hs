
{-
EEjercicio 1.22.1. Las dimensiones de los rectángulos puede representarse por pares; por ejemplo,
(5,3) representa a un rectángulo de base 5 y altura 3. Definir la función mayorRectangulo tal
que (mayorRectangulo r1 r2) es el rectángulo de mayor área entre r1 y r2. Por ejemplo,
    mayorRectangulo (4,6) (3,7) == (4,6)
    mayorRectangulo (4,6) (3,8) == (4,6)
    mayorRectangulo (4,6) (3,9) == (3,9)
-}

mayorRectangulo (a,b) (c,d) 
    | a*b >= c*d = (a,b)
    | otherwise = (c,d)

main = do
    print (mayorRectangulo (4,6) (3,7))
    print (mayorRectangulo (4,6) (3,8))
    print (mayorRectangulo (4,6) (3,9))

