exists :: Int -> [Int] -> Bool
exists y []           = False
exists y (x:xs)     = (y == x) || exists y xs

kill :: Int -> [Int] -> [Int]
kill y []       = []
kill y (x:xs)
    | (y == x)  = kill y xs
    | otherwise = (x:kill y xs)
    
unique :: [Int] -> [Int]
unique [] = []
unique (x:xs)
    | exists x xs      = unique (kill x xs)
    | otherwise        = (x:unique xs)
