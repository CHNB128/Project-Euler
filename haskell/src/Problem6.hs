module Problem6
( solving )
where

{-

  The sum of the squares of the first ten natural numbers is,
  12 + 22 + ... + 102 = 385

  The square of the sum of the first ten natural numbers is,
  (1 + 2 + ... + 10)2 = 552 = 3025

  Hence the difference between the sum of the squares of the first ten natural
  numbers and the square of the sum is 3025 − 385 = 2640.

  Find the difference between the sum of the squares of the first one hundred
  natural numbers and the square of the sum.

-}

squaresFrom :: Int -> [Int]
squaresFrom n = n ^ 2 : squaresFrom (n + 1)

numsFrom :: Int -> [Int]
numsFrom n = n : numsFrom (n+1)

solver :: Int -> Int
solver n = square_of_sum - sum_of_squares
  where sum_of_squares = sum $ take n $ squaresFrom 1
        square_of_sum  = (sum $ take n $ numsFrom 1) ^ 2

solving = solver 100