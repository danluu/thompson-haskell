my_length :: [a] -> Int
my_length all = sum (map one all)
    where one x = 1