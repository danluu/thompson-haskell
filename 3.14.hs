mean_three :: Int -> Int -> Int -> Float
mean_three x y z = fromIntegral(x + y + z)/3

number_above_avg :: Int -> Int -> Int -> Int
number_above_avg x y z 
	| x == y && y == z = 0
	| (fromIntegral x > mean_three x y z && fromIntegral(y) > mean_three x y z) || (fromIntegral(z) > mean_three x y z && fromIntegral(y) > mean_three x y z) || (fromIntegral(z) > mean_three x y z && fromIntegral(x) > mean_three x y z) = 2
	| otherwise = 1