divisors :: Int -> [Int]
divisors n = [m | m <- [1..n], (mod n m) == 0]

isPrime :: Int -> Bool
isPrime n
	| divisors n == [1,n] = 	True
	| otherwise = 			False