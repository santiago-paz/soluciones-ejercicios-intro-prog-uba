sumaDivisores :: Integer -> Integer
sumaDivisores 1 = 1
sumaDivisores n = sumaDivisoresAux 1 n

sumaDivisoresAux :: Integer -> Integer -> Integer
sumaDivisoresAux i n
  | i == n = n
  | mod n i == 0 = i + sumaDivisoresAux (i + 1) n
  | otherwise = sumaDivisoresAux (i + 1) n

tomaValorMax :: Integer -> Integer -> Integer
tomaValorMax x y = tomaValorMaxAux x y x 0

tomaValorMaxAux :: Integer -> Integer -> Integer -> Integer -> Integer
tomaValorMaxAux x y indice valorMax
  | x == y = indice
  | sumaDivisores x > valorMax = tomaValorMaxAux (x + 1) y x (sumaDivisores indice)
  | otherwise = tomaValorMaxAux (x + 1) y indice valorMax
