{-
Definir la función

   dia :: Int -> Int -> Int -> String

tal que (dia d m a) es el día de la semana correspondiente al día d del mes m del año a. Por ejemplo,

   dia 21 12 2016  ==  "Miercoles"
   dia 14  4 1936  ==  "Martes"
-}

-- Soluciones

-- 1ª solución (Mal)
-- ===========
 
-- Comentario: usar que el 1-1-2007 cayó en lunes
 
dSem :: [(String,Int)]
dSem = [("Lunes",0),("Martes",1),("Miercoles",2),("Jueves",3),
        ("Viernes",4),("Sabado",5),("Domingo",6)]
 
dMes :: [(Int,Int)]
dMes = [(1,31),(2,28),(3,31),( 4,30),( 5,31),( 6,30),
        (7,31),(8,31),(9,30),(10,31),(11,30),(12,31)]
 
busca :: a -> [(a1,a2)] -> (a -> a1 -> Bool) -> [(a1,a2)]
busca x xs p  =  [(x',y) | (x',y) <- xs, p x x']
 
diaAno :: (Int,Int,Int) -> Int
diaAno (d,m,a)  =  d + sum [y | (x,y) <- busca m dMes (>)]
 
dia1 :: Int -> Int -> Int -> String
dia1 d m a = head [fst (x,y') | (x,y') <- dSem, n == y']
  where  n = mod ((diaAno (d,m,a) + (a - 2007)*365) + x) 7
         x | d <= 29 && m <= 2  =  div (a - 2007) 4 - 1
           | otherwise          =  div (a - 2007) 4
 
 
-- 2ª solución (Buena)
-- ===========
 
-- Usando la congruencia de Zeller http://bit.ly/2gYxHym
 
dia2 :: Int -> Int -> Int -> String
dia2 d m a = diasSemana !! h
  where m1 = if   (m < 3)
             then m + 12
             else m
 
        a1 = if   (m1 > 12)
             then a - 1
             else a
 
        k  = a1 `mod` 100
        j  = a1 `div` 100
 
        h  = ( d
             + ((13 * (m1 + 1)) `div` 5)
             + k
             + (k `div` 4)
             + (j `div` 4)
             - (2 * j)
             ) `mod` 7
 
diasSemana :: [String]
diasSemana = [ "Sabado" 
             , "Domingo"
             , "Lunes" 
             , "Martes"
             , "Miercoles"
             , "Jueves"
             , "Viernes"]

-- 3ª solución (Buena)
-- ===========
-- Por Congruencia de Zeller (https://es.wikipedia.org/wiki/Congruencia_de_Zeller)
dia3 :: Int -> Int -> Int -> String
dia3 d m a | m <= 2    = dia3 d (m+12) (a-1)
          | otherwise = dias!!(h `mod` 7)
  where (j,k) = a `divMod` 100
        h = d + (26*(m+1)) `div` 10 + k + k `div` 4 + j `div` 4 + 5*j
        dias = ["Sabado","Domingo","Lunes","Martes","Miercoles","Jueves","Viernes"]
main = do 
  print (dia1 30 9 2019)
  print (dia2 30 9 2019)  
  print (dia3 30 9 2019)