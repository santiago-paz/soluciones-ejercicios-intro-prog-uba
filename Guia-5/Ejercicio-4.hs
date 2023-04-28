-- 5)
aplanar :: [[Char]] -> [Char]
aplanar [] = []
aplanar (x : xs) = x ++ aplanar xs

-- 6)
aplanarConBlancos :: [[Char]] -> [Char]
aplanarConBlancos [] = []
aplanarConBlancos [i] = i
aplanarConBlancos (x : xs) = x ++ " " ++ aplanarConBlancos xs

-- 7)
aplanarConNBlancos :: [[Char]] -> Integer -> [Char]
aplanarConNBlancos [] _ = []
aplanarConNBlancos [i] _ = i
aplanarConNBlancos (x : xs) i = x ++ agregarNBlancos i ++ aplanarConNBlancos xs i

agregarNBlancos :: Integer -> [Char]
agregarNBlancos 0 = ""
agregarNBlancos i = " " ++ agregarNBlancos (i - 1)