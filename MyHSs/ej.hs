import Data.List

doble :: Int -> Int
doble x =  x + x

--cuadruple x = doble (doble x)

factorial n = product [1..n]
media ns = sum ns `div` length ns

dobleBackSlash :: [Int] -> [Int] -> [Int]
dobleBackSlash  xs ys = xs \\ ys

rep x = replicate x x
rep2 xs = traverse rep xs


trozos :: Int -> String -> [String]
trozos n s = Data.List.Split.chunksOf n $ s

duplica :: [Int] -> [Int]
duplica xs = fmap doble xs

intercala xs ys = zip xs ys

main = do 
--   print $ doble 5
--   print $ cuadruple 5
--   putStr "Factorial 5: "
--   print $ factorial 5
--   putStr "Media de [1..20]: "
--   print $ media [1..20]
--   putStrLn "dobleBackSlash [1..20] [ 5,10,15,20]"
--   print $ dobleBackSlash [1..20] [ 5,10,15,20]
--   putStrLn ""
--   print $ media $ dobleBackSlash [1..20] [ 5,10..20]
--   print $ rep2  [1,2,3]
   print $ trozos 3 "abcdefghijklmnopqrstuvwxyz"
--   print $ duplica [1,2,3]
--   print $ intercala "123456" "ABCDEF"