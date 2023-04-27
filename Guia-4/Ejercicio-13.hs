
f :: Integer -> Integer -> Integer
f 1 m = sumatoriaElevada m 1
f n m =

sumatoriaElevada :: Integer -> Integer -> Integer
sumatoriaElevada 1 i = i
sumatoriaElevada m i = (i ^ m) + sumatoriaElevada (m - 1) i