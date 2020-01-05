-- Pattern matching in function definitions.

import Data.Char

pat1 :: Char -> Char
pat1 'a' = 'a'
pat1 'b' = 'b'
pat1 c = toUpper c
