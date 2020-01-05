import System.Random
import System.Random.Shuffle
import Control.Exception

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort [a | a <- xs, a <= x]
        biggerSorted = quicksort [a | a <- xs, a > x]
    in  smallerSorted ++ [x] ++ biggerSorted

-- Quick test.

list = [1..100]
rng = mkStdGen 0
unsorted = shuffle' list (length list) rng
sorted = quicksort unsorted
_ = assert (unsorted == sorted) 0
