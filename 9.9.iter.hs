iter :: Int -> (a -> a) -> a -> a
iter 0 _ x = x
iter n f x = f (iter (n-1) f x)


test :: Int -> Int
test n = 2 * n