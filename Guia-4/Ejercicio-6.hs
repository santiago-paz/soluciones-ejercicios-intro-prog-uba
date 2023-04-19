sumaDigitos :: Integer -> Integer
sumaDigitos x
  | x < 10 = x
  | otherwise = mod x 10 + sumaDigitos (div x 10)