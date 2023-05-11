sumaRacionales :: Integer -> Integer -> Float
sumaRacionales n m
  | n == 1 = sumaRacionalesAux 1 m
  | otherwise = sumaRacionalesAux n m + sumaRacionales (n - 1) m

sumaRacionalesAux :: Integer -> Integer -> Float
sumaRacionalesAux n m
  | m == 1 = fromInteger n
  | otherwise = (fromInteger n / fromInteger m) + sumaRacionalesAux n (m - 1)
