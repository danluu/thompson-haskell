twice :: (Int->Int) -> Int -> Int
twice f n = f (f n)

test :: Int -> Int
test n = 2 * n