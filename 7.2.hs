addTwo :: [Int] -> Int
addTwo []       = 0
addTwo (x:y:_)  = x + y
addTwo (x:_)    = x