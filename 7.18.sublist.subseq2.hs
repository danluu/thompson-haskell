sublist :: Eq a => [a] -> [a] -> Bool
sublist [] _        = True
sublist _ []        = False
sublist (x:xs) (y:ys)
    | x == y        = sublist xs ys
    | otherwise     = sublist (x:xs) ys

--extraordinarly inefficient solution
subsequence :: Eq a => [a] -> [a] -> Bool
subsequence [] _   = True
subsequence _ []   = False
subsequence (x:xs) (y:ys)
    | x == y        = insub xs ys || subsequence (x:xs) ys
    | otherwise     = subsequence (x:xs) ys
    where
    insub [] _      = True
    insub _ []      = False
    insub (x:xs) (y:ys)
        | x == y     = insub xs ys
        | otherwise = False
