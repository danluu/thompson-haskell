maxThreeOccurs :: Int -> Int -> Int -> (Int,Int)
maxThreeOccurs a b c 
    = (length [x | x <- [a] ++ [b] ++ [c], x == maxthree], maxthree)
    where maxthree = max a (max b c)