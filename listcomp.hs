-- List comprehensions

-- isPrime implementation from https://stackoverflow.com/a/4695002
--
-- Two versions, for clarity and testing.
factors :: (Integral i) => i -> [i]
factors k = [n | n <- [2..k - 1], k `mod` n == 0]

isPrime :: (Integral k) => k -> Bool
isPrime k = null (factors k)

tenPrimes = take 10 [x | x <- [1, 2..], isPrime x]
