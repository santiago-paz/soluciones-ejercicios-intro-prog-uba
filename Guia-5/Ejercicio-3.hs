-- 1)
sumatoria :: [Integer] -> Integer
sumatoria [s] = s
sumatoria (a : xs) = a + sumatoria xs

-- 2)
productoria :: [Integer] -> Integer
productoria [s] = s
productoria (a : xs) = a * productoria xs

-- 3)
maximo :: [Integer] -> Integer
maximo [s] = s
maximo (a : xs) = if mayor a xs then a else maximo xs

mayor :: Integer -> [Integer] -> Bool
mayor a [b] = a >= b
mayor a (b : xs) = a >= b && mayor a xs

-- 4)
sumarN :: Integer -> [Integer] -> [Integer]
sumarN a [] = [a]
sumarN a [b] = [a + b]
sumarN a (x : xs) = (a + x) : sumarN a xs

-- 5)
sumarElPrimero :: [Integer] -> [Integer]
sumarElPrimero [a] = [a + a]
sumarElPrimero (a : xs) = (a + a) : sumarATodos a xs

sumarATodos :: Integer -> [Integer] -> [Integer]
sumarATodos a [] = []
sumarATodos a (x : xs) = (a + x) : sumarATodos a xs

-- 6)
sumarElUltimo :: [Integer] -> [Integer]
sumarElUltimo [a] = [a + a]
sumarElUltimo (x : xs) = sumarUltimoAux x xs : sumarElUltimo xs

sumarUltimoAux :: Integer -> [Integer] -> Integer
sumarUltimoAux a [b] = a + b
sumarUltimoAux a (x : xs) = sumarUltimoAux a xs

-- 7)
pares :: [Integer] -> [Integer]
pares [] = []
pares (a : xs)
  | mod a 2 == 0 = a : pares xs
  | otherwise = pares xs
