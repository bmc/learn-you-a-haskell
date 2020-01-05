inspectList :: (Show a) => [a] -> String
inspectList [] = "List is empty"
inspectList (x : []) = "List has one element: " ++ show x
inspectList (x : y : []) = "List has two elements: " ++ show x ++ " and " ++ show y
inspectList (x : y : _) = "List has more than two elements. The first two are: [" ++ show x ++ ", " ++ show y ++ "]"

inspectList2 :: (Show a) => [a] -> String
inspectList2 xs = case xs of
    [] -> "List is empty"
    h : [] -> "List has one element: " ++ show h
    one : two : [] -> "List has two elements: [" ++ show one ++ ", " ++ show two ++ "]"
    one : two : _ -> "List has " ++ show (length xs) ++ " elements. The first two are: [" ++ show one ++ ", " ++ show two ++ "]"

inspectList3 :: (Show a) => [a] -> String
inspectList3 xs = what xs
    where what [] = "List is empty"
          what [h] = "List has one element: " ++ show h
          what [one, two] = "List has two elements: [" ++ show one ++ ", " ++ show two ++ "]"
          what (one : two : _) = "List has " ++ show (length xs) ++ " elements. The first two are: [" ++ show one ++ ", " ++ show two ++ "]"

