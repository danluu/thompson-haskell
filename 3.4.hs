nand :: Bool -> Bool -> Bool
nand x y = not (x && y)

alt_nand :: Bool -> Bool -> Bool
alt_nand x y = (not x) || (not y) 