-- No editar esta parte
main :: IO ()
main = do
  x <- readLn
  print (combinacionesMenoresOiguales (x :: Integer))

combinacionesMenoresOiguales :: Integer -> Integer
-- Completar la definición de la función
combinacionesMenoresOiguales n = combinacionesMenoresOigualesAux n n n

-- Pueden agregan las funciones que consideren necesarias
combinacionesMenoresOigualesAux :: Integer -> Integer -> Integer -> Integer
combinacionesMenoresOigualesAux n 1 1 = 1
combinacionesMenoresOigualesAux n 1 j = predicado n 1 j + combinacionesMenoresOigualesAux n n (j - 1)
combinacionesMenoresOigualesAux n i j = predicado n i j + combinacionesMenoresOigualesAux n (i - 1) j

predicado :: Integer -> Integer -> Integer -> Integer
predicado n i j = if (i * j) <= n then 1 else 0