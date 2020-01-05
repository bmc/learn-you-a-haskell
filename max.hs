import System.Random.Shuffle
import System.Random
import Control.Exception

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = maximum' xs

-- Test. Requires System.Random.Shuffle
-- $ stack install random-shuffle

list = [1..40]
rng = mkStdGen 0
m = maximum' (shuffle' list (length list) rng)
_ = assert (m == (maximum list)) (m)
