-- No editar esta parte
main :: IO ()
main = do
  x <- readLn
  print (sumaMenosQueMax (x :: (Int, Int, Int)))

sumaMenosQueMax :: (Int, Int, Int) -> Bool
-- Completar acá la definición de la función
sumaMenosQueMax (a, b, c) = maximo (a, b, c) > (minimo (a, b, c) + medio (a, b, c))

-- Pueden agregan las funciones que consideren necesarias
maximo :: (Int, Int, Int) -> Int
maximo (a, b, c)
  | a >= b && a >= c = a
  | b >= a && b >= c = b
  | otherwise = c

minimo :: (Int, Int, Int) -> Int
minimo (a, b, c)
  | a <= b && a <= c = a
  | b <= a && b <= c = b
  | otherwise = c

medio :: (Int, Int, Int) -> Int
medio (a, b, c)
  | maximo (a, b, c) == a = maximo (b, b, c)
  | maximo (a, b, c) == b = maximo (a, a, c)
  | maximo (a, b, c) == c = maximo (a, a, b)