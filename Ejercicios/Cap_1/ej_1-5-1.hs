
{-
Ejercicio 1.5.1. Definir la función ultimaCifra tal que (ultimaCifra x) es la última cifra
del número x. Por ejemplo,
	ultimaCifra 325 == 5
-}

ultimaCifra x = rem x 10

main = print (ultimaCifra 325)

