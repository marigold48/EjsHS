-- Congruencia de Zeller (https://es.wikipedia.org/wiki/Congruencia_de_Zeller)

-- Un año es bisiesto si es divisible por 4, excepto el último de cada siglo (aquel divisible por 100),
-- salvo que éste último sea divisible por 400.

-- a divMod 100 produce (trunc (a/100), a mod 100) (es una tupla)

-- zeller retorna 0 -> sabad0, 1 -> domingo ...
zeller :: Int -> Int -> Int -> Int
zeller d m a | m <= 2    = zeller d (m+12) (a-1)
          | otherwise = (h `mod` 7)
  where (j,k) = a `divMod` 100
        h = d + (26*(m+1)) `div` 10 + k + k `div` 4 + j `div` 4 + 5*j

-- zeller' retorna 0 -> lunes, 1 -> martes ...
zeller' :: Int -> Int -> Int
zeller' m a
   |n < 3 = n + 5
   |otherwise = n - 2
   where n = zeller 1 m a

vacios :: Int -> Int -> [Int]
vacios m a = take (zeller' m a)( repeat  0)

esbisiesto ::Int->Bool
esbisiesto a =(((mod a 4 == 0) && (mod a 100 /= 0)) ||(mod a 400 == 0))

getMes :: Int -> Int -> [Int]
getMes m a 
   |elem m [1,3,5,7,8,10,12] = [1..31]
   |elem m [4,6,9,11] = [1..30]
   |m ==  2 = if esbisiesto a then [1..29] else [1..28]
   |otherwise = []


getMes' :: Int -> Int -> [Int]
getMes' m a = vacios m a ++ getMes m a 

kal :: Int -> [Int]
kal a = concat [getMes m a | m <- [1..12]]

-- Para cuadrar semanas
kal' a = vacios 1 a ++ kal a

main = do
--   print (zeller 1 1 2016)
   print (esbisiesto 2016)
   print (zeller' 1 2016)
   print (vacios 1 2016)
   print (length (kal 2016))
   print (length (kal' 2016))
   print (getMes 10 2019)
   print (getMes' 10 2019)
