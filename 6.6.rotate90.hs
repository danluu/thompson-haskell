import Pictures

onSeparateLines :: [String] -> String
onSeparateLines all 
    = concat [ x ++ "\n"  | x <- all]
 
rotate90 :: Picture -> [[Char]]
rotate90 original = [reverse [x!!n | x <- original] | n <- [0 .. length (original!!0) - 1] ]