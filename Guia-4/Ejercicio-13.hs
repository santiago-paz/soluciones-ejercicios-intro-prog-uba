f :: Integer -> Integer -> Integer
f 1 m = sumatoriaElevada m 1
f n m = sumatoriaElevada n m + sumatoriaElevada (n - 1) m

sumatoriaElevada :: Integer -> Integer -> Integer
sumatoriaElevada i 1 = i
sumatoriaElevada i m = (i ^ m) + sumatoriaElevada i (m - 1)