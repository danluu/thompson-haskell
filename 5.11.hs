matches :: Int -> [Int] -> [Int]
matches match matchList = [m | m <- matchList, m == match]

elema :: Int -> [Int] -> Bool
elema match matchList
	| matches match matchList == [] 	= False
	| otherwise 						= True