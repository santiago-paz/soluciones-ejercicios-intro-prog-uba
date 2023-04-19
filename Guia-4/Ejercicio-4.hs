sumaImpares :: Integer -> Integer
sumaImpares x
  | x == 0 || x == 1 = x
  | x > 1 = 2 * x - 1 + sumaImpares (x - 1)