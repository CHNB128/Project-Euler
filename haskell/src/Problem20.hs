module Problem20
( solving )
where

{-

n! means n × (n − 1) × ... × 3 × 2 × 1

For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!

-}

import Data.Char

factorial :: Integer -> Integer
factorial x = foldl (*) 1 [1..x]

solver :: Integer -> Int
solver x = sum . map digitToInt . show $ factorial x

solving = solver 100