sumaDivisores :: Integer -> Integer
sumaDivisores 1 = 1
sumaDivisores n = sumaDivisoresAux 1 n

sumaDivisoresAux :: Integer -> Integer -> Integer
sumaDivisoresAux i n
  | i == n = n
  | mod n i == 0 = i + sumaDivisoresAux (i + 1) n
  | otherwise = sumaDivisoresAux (i + 1) n