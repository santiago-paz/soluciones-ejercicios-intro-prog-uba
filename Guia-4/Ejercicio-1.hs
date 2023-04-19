fibonacci :: Integer -> Integer
fibonacci x
  | x == 0 || x == 1 = x
  | otherwise = fibonacci (x - 1) + fibonacci (x - 2)

