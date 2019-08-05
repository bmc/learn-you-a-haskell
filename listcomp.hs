-- List comprehensions

-- isPrime implementation from https://stackoverflow.com/a/4695002
isPrime k = null [ x | x <- [2..k - 1], k `mod` x == 0]

tenPrimes = take 10 [x | x <- [1, 2..], isPrime x]