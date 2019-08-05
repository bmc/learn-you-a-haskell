-- Split a string on white space.
--
-- Will refine as I learn more.

import Data.Char -- to get "isSpace"

-- Use "span" recursively.
--
--    :t span
--    span :: (a -> Bool) -> [a] -> ([a], [a])
--
-- e.g.:
--    ghci> span notIsSpace "abc def ghi jkl"
--    ("abc"," def ghi jkl")

split :: String -> [String]
split "" = []
split s =
  -- Note that the "." operator is composition. We're composing "not" and
  -- "isSpace" to make a new function. Composition is right to left.
  let (s1, rest) = span (not . isSpace) s
  in  [s1] ++ split (dropWhile isSpace rest)

-- An alternate version that uses guards instead of multiple definition pattern
-- matching
split' :: String -> [String]
split' s
  | null s    = []
  | otherwise = let (s1, rest) = span (not . isSpace) s
                in  [s1] ++ split (dropWhile isSpace rest)

-- An alternate version that uses a case statement directly, rather than the
-- guard syntactic sugar.
split'' :: String -> [String]
split'' s = case s of "" -> []
                      s1 -> let (s2, rest) = span (not . isSpace) s1
                            in  [s2] ++ split (dropWhile isSpace rest)