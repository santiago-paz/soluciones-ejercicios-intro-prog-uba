iesimoDigito :: Integer -> Integer -> Integer
iesimoDigito n i
  | cantDigitos n == i = mod n 10
  | otherwise = iesimoDigito (div n 10) i

cantDigitos :: Integer -> Integer
cantDigitos x
  | x < 10 = 1
  | otherwise = 1 + cantDigitos (div x 10)