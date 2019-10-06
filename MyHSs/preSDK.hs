-- pre sudoku
module Main where

import Control.Applicative ((<|>))
import qualified Control.Monad
import qualified Data.Char
import qualified Data.Function
import qualified Data.List.Split
import qualified Data.List

data Cell = Fixed Int | Possible [Int] deriving (Show, Eq)
type Row  = [Cell]
type Grid = [Row]

readGrid :: String -> Maybe Grid
readGrid s
   | length s == 81 = traverse (traverse readCell) . Data.List.Split.chunksOf 9 $ s
   | otherwise      = Nothing
      where
         readCell '.' = Just $ Possible [1..9]
         readCell c
            | Data.Char.isDigit c && c > '0' = Just . Fixed . Data.Char.digitToInt $ c
            | otherwise = Nothing

Just grid = readGrid ".......1.4.........2...........5.4.7..8...3....1.9....3..4..2...5.1........8.6..."

showGrid :: Grid -> String
showGrid = unlines . map (unwords . map showCell)
   where
      showCell (Fixed x) = show x
      showCell _ = "."


showGridPos :: Grid -> String
showGridPos = unlines . map (unwords . map showCell)
   where
      showCell (Fixed x)     = show x ++ "          "
      showCell (Possible xs) =
         (++ "]")
         . Data.List.foldl' (\acc x -> acc ++ if x `elem` xs then show x else " ") "["
         $ [1..9]

fixeds :: Row -> [Int]
fixeds  row = [x | Fixed x <- row]

posibles :: Row -> [[Int]]
posibles row = [x | Possible x <- row]

pruneCells :: [Cell] -> Maybe [Cell]
pruneCells cells = traverse pruneCell cells
   where
      fixeds = [x | Fixed x <- cells]
      pruneCell (Possible xs) = case xs Data.List.\\ fixeds of
         []  -> Nothing
         [y] -> Just $ Fixed y
         ys  -> Just $ Possible ys
      pruneCell x = Just x

-- ------------------------------------------------------------------
main = do 
--   print (readGrid ".......1.4.........2...........5.4.7..8...3....1.9....3..4..2...5.1........8.6...")
--   putStrLn $ showGrid grid   
--   putStrLn $ showGridPos grid
   putStrLn $ showGrid $ [head grid]
   putStrLn $ showGridPos $ [head grid]
   print $ fixeds $ head grid
   putStrLn $ showGrid (posibles $ head grid)
--  putStrLn $ showGridPos (pruneCells (head grid))