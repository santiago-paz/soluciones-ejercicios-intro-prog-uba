esDivisible :: Integer -> Integer -> Bool
esDivisible x y
  | x == y = True
  | y < x = False
  | otherwise = esDivisible x (y - x)
