module Problem48
( solving )
where

{-

The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.

Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.

-}

selfPowerFrom :: Integer -> [Integer]
selfPowerFrom n = n ^ n : selfPowerFrom (n + 1)

solving = reverse $ take 10 $ reverse $ show $ sum $ take 1000 $ selfPowerFrom 1