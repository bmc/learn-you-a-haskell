-- Functions with type annotation

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase str = [ c | c <- str, c `elem` ['A' .. 'Z']]

-- Three args in, one out. (Currying.)
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z
