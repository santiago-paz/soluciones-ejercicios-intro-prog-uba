sumaPotencias :: Integer -> Integer -> Integer -> Integer
sumaPotencias q n m
    | n == 1 = sumatoriaElevada q 1 m
    | otherwise = sumatoriaElevada q n m + sumaPotencias q (n - 1) m

sumatoriaElevada :: Integer -> Integer -> Integer -> Integer
sumatoriaElevada q a b
  | b == 1 = q ^ (a + 1)
  | otherwise = q ^ (a + b) + sumatoriaElevada q a (b - 1)