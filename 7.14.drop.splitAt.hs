mdrop :: Int -> [a] -> [a]
mdrop 0 _    = []
mdrop _ []   = []
mdrop n xs
    | n > 0 = mdrop (n-1) (init xs) ++ [last xs]
    | n < 0 = error "can't drop negative number of elements"
    
my_splitAt :: Int -> [a] -> ([a],[a])
my_splitAt _ []     = ([],[])
my_splitAt 0 xs     = ([],xs)
my_splitAt n (xs)
    | n > 0 = (head xs: fst rec, snd rec)
    | n < 0 = error "negative index"
    where rec = my_splitAt (n-1) (tail xs)