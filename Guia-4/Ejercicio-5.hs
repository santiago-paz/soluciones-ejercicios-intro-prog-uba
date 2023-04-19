medioFact :: Integer -> Integer
medioFact x
  | x == 0 = 1
  | x == 1 = 1
  | otherwise = x * medioFact (x - 2)
