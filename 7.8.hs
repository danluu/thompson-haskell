mreverse :: [a] -> [a]
mreverse []      = []
mreverse (x:xs)  = (reverse xs) ++ [x]

munzip :: [(a,b)] -> ([a],[b])
munzip []        = ([],[])
munzip (x:xs)    = (fst x : fst (munzip xs), snd x : snd (munzip xs))