import Char

digits :: String -> String
digits xs = [x | x <- xs, isDigit x]

firstPlusOne :: String -> Char
firstPlusOne xs =
    case (digits xs) of
        [] -> '0'
        (x:_) -> chr(ord(x) + 1)        