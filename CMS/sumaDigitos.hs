-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(sumaDigitos(x ::(Int)))
  }

sumaDigitos :: Int -> Int
-- Completar la definición de la función
sumaDigitos x
  | x < 10 = x
  | otherwise = mod x 10 + sumaDigitos (div x 10)

-- Pueden agregan las funciones que consideren necesarias