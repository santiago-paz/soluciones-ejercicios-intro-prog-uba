-- a
prodInt :: (Float, Float) -> Float
prodInt (a, b) = a * b

-- b
todoMenor :: (Float, Float) -> (Float, Float) -> Bool
todoMenor (a, b) (x, y) = a < x && b < y

-- c
distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (x1, y1) (x2, y2) = sqrt (((x2 - x1) ^ 2) + ((y2 - y1) ^ 2))

-- d
sumaTerna :: (Integer, Integer, Integer) -> Integer
sumaTerna (a, b, c) = a + b + c

-- e
sumarSoloMultiplos :: (Integer, Integer, Integer) -> Integer -> Integer
sumarSoloMultiplos (a, b, c) d = (if mod a d == 0 then a else 0) + (if mod b d == 0 then b else 0) + (if mod c d == 0 then c else 0)

-- f
posPrimerPar :: (Integer, Integer, Integer) -> Integer
posPrimerPar (a, b, c)
  | mod a 2 == 0 = 1
  | mod b 2 == 0 = 2
  | mod c 2 == 0 = 3
  | otherwise = 4

-- g
crearPar :: a -> b -> (a, b)
crearPar x y = (x, y)

-- g
invertir :: a -> b -> (b, a)
invertir x y = (y, x)