maxOccurs :: Int -> Int -> (Int, Int)
maxOccurs m n
	| m == n = (m,2)
	| m > n = (m,1)
	| m < n = (n,1)