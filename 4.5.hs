rangeProduct :: Int -> Int -> Int
rangeProduct m n
	| n > m = rangeProduct n m
	| m == n = m
	| m == n + 1 = m * (n)
	| otherwise = m * n * rangeProduct (m-1) (n+1)
	
fac :: Int -> Int
fac n = rangeProduct n 1