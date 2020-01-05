-- http://learnyouahaskell.com/higher-order-functions
map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\x acc -> f x : acc) [] xs
