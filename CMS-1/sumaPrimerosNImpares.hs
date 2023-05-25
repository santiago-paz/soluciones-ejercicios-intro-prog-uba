-- No editar esta parte
main :: IO ()
main = do
  x <- readLn
  print (sumaPrimerosNImpares (x :: (Integer)))

sumaPrimerosNImpares :: Integer -> Integer
-- Completar la definición de la función
sumaPrimerosNImpares n
  | n == 1 = 4
  | otherwise = calculoImpar + sumaPrimerosNImpares (n - 1)
  where
    calculoImpar = if even (2 * n - 1) then 0 else 2 * (2 * n - 1) + 2

-- Pueden agregan las funciones que consideren necesarias