cantDigitos :: Integer -> Integer
cantDigitos x
  | x < 10 = 1
  | otherwise = 1 + cantDigitos (div x 10)

esCapicua :: Integer -> Bool
esCapicua x
  | cantDigitos x == 1 = True
  | cantDigitos x == 2 = mod x 10 == div x 10
  | otherwise =
      if even (cantDigitos x)
        then esCapicua (mod x cdE) == esCapicua (div x cdE)
        else esCapicua (mod x cdE) == esCapicua (div x (div cdE 10))
  where
    cdE = 10 ^ div (cantDigitos x) 2