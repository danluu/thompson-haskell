superimposeChar :: Char -> Char -> Char
superimposeChar '.' '.' = '.'
superimposeChar x y = '#'

superimposeLine :: [Char] -> [Char] -> [Char]
superimposeLine all = [superimposeChar x | x <- all]
