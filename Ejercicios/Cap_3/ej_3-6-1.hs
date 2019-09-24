
{-
Ejercicio 3.6.1. En un templo hindú se encuentran tres varillas de platino. En una de ellas, hay
64 anillos de oro de distintos radios, colocados de mayor a menor.
El trabajo de los monjes de ese templo consiste en pasarlos todos a la tercera varilla, usando
la segunda como varilla auxiliar, con las siguientes condiciones:
En cada paso sólo se puede mover un anillo.
Nunca puede haber un anillo de mayor diámetro encima de uno de menor diámetro.
La leyenda dice que cuando todos los anillos se encuentren en la tercera varilla, será el fin del
mundo.
Definir la función
numPasosHanoi :: Integer -> Integer
tal que (numPasosHanoi n) es el número de pasos necesarios para trasladar n anillos. Por ejemplo,
numPasosHanoi 2 == 3
numPasosHanoi 7 == 127
numPasosHanoi 64 == 18446744073709551615
-}

-- import Test.QuickCheck


-- Sean A, B y C las tres varillas. La estrategia recursiva es la siguiente:
-- Caso base (n = 1): Se mueve el disco de A a C.
-- Caso inductivo (n = m + 1): Se mueven m discos de A a C. Se mueve el disco de
-- A a B. Se mueven m discos de C a B.

numPasosHanoi :: Integer -> Integer
numPasosHanoi 1 = 1
numPasosHanoi n = 1 + 2 * numPasosHanoi (n-1)

main = do
    print (numPasosHanoi 2)
    print (numPasosHanoi 7)
    print (numPasosHanoi 64)
