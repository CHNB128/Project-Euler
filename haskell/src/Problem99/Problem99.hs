module Problem99.Problem99
( solving )
where

{-

Comparing two numbers written in index form like 211 and 37 is not difficult,
as any calculator would confirm that 211 = 2048 < 37 = 2187.

However, confirming that 632382518061 > 519432525806 would be much more difficult,
as both numbers contain over three million digits.

Using base_exp.txt (right click and 'Save Link/Target As...'), a 22K text file
containing one thousand lines with a base/exponent pair on each line,
determine which line number has the greatest numerical value.

NOTE: The first two lines in the file represent the numbers in the example given above.

-}

import System.IO
import Control.Monad
import Data.List.Split (splitOn)
-- import Data.Csv

solving :: IO()
solving = do
  handle <- openFile "src/Problem99/p099_base_exp.csv" ReadMode
  contents <- hGetContents handle
  putStrLn $ show $ map (\e -> foldl (\x y -> x ^ y) 1 $ splitOn "," e) $ words contents
  -- putStrLn $ show $ words contents
  --  pairs