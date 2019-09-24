
{-
Ejercicio 2.18.3. Definir la función seleccion tal que (seleccion bd m) es la lista de los
nombres de las personas de la base de datos bd cuya actividad es m. Por ejemplo,
ghci> seleccion personas "Pintura"
["Velazquez","Picasso","Goya","Botticelli"]
Solución:
-}

personas :: [(String,String,Int,Int)]
personas = [("Cervantes","Literatura",1547,1616),
    ("Velazquez","Pintura",1599,1660),
    ("Picasso","Pintura",1881,1973),
    ("Beethoven","Musica",1770,1823),
    ("Poincare","Ciencia",1854,1912),
    ("Quevedo","Literatura",1580,1654),
    ("Goya","Pintura",1746,1828),
    ("Einstein","Ciencia",1879,1955),
    ("Mozart","Musica",1756,1791),
    ("Botticelli","Pintura",1445,1510),
    ("Borromini","Arquitectura",1599,1667),
    ("Bach","Musica",1685,1750)]

seleccion :: [(String,String,Int,Int)] -> String -> [String]
seleccion bd m = [ x | (x,m',_,_) <- bd, m == m' ]

main = do
    print (seleccion personas "Pintura")
