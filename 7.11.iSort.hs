iSort :: [Int] -> [Int]

iSort []        = []
iSort (x:xs)    = ins x (iSort xs)

iSortNoDup :: [Int] -> [Int]
iSortNoDup []        = []
iSortNoDup (x:xs)    = insNoDup x (iSortNoDup xs)

iSortDescending :: [Int] -> [Int]
iSortDescending []        = []
iSortDescending (x:xs)    = insDescending x (iSortDescending xs)

ins :: Int -> [Int] -> [Int]
ins x []        = [x]
ins x (y:ys)
    | x < y     = x:y:ys
    | otherwise = y: ins x ys

insNoDup :: Int -> [Int] -> [Int]
insNoDup x []       = [x]
insNoDup x (y:ys)
    | x < y     = x:y:ys
    | x == y    = y:ys
    | otherwise = y: insNoDup x ys
    
insDescending :: Int -> [Int] -> [Int]    
insDescending x []      = [x]
insDescending x (y:ys)
    | x > y         = x:y:ys
    | otherwise     = y: insDescending x ys