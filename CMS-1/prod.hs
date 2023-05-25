-- No editar esta parte
main :: IO ()
main = do
  x <- readLn
  print (prod (x :: (Integer)))

prod :: Integer -> Integer
-- Completar la definición de la función
prod n
  | n == 1 = 24
  | otherwise = (((2 * n) ^ 2) + (2 * (2 * n))) * ((((2 * n) - 1) ^ 2) + (2 * ((2 * n) - 1))) * prod (n - 1)


-- Pueden agregan las funciones que consideren necesarias