import Pictures

onSeparateLines :: [String] -> String
onSeparateLines all 
    = concat [ x ++ "\n"  | x <- all]