sublist :: Eq a => [a] -> [a] -> Bool
sublist [] _        = True
sublist _ []        = False
sublist (x:xs) (y:ys)
    | x == y        = sublist xs ys
    | otherwise     = sublist (x:xs) ys

subsequence :: Eq a => [a] -> [a] -> [a] -> [a] -> Bool
subsequence [] _ _ _   = True
subsequence _ [] _ _   = False
subsequence (x:xs) (y:ys) ox oy
    | x == y        = subsequence xs ys ox oy
    | otherwise     = subsequence ox (tail oy) ox (tail oy)
    
subsWrap :: Eq a => [a] -> [a] -> Bool
subsWrap m n = subsequence m n m n
