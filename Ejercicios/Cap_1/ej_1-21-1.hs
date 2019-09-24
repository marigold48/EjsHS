
{-
Ejercicio 1.21.1. Definir la función modulo tal que (modulo v) es el módulo del vector v. Por
ejemplo,
modulo (3,4) == 5.0
-}

modulo (x,y) = sqrt(x^2+y^2)

main = print (modulo (3,4))

