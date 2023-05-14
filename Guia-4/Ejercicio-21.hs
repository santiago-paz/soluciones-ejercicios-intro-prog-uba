pitagoras :: Integer -> Integer -> Integer -> Integer
pitagoras m n r
  | m == 0 = pitagorasAux m n r
  | otherwise = pitagorasAux m n r + pitagoras (m - 1) n r

pitagorasAux :: Integer -> Integer -> Integer -> Integer
pitagorasAux m n r
  | n == 0 && ((m ^ 2) <= (r ^ 2)) = 1
  | n == 0 && ((m ^ 2) > (r ^ 2)) = 0
  | (m ^ 2) + (n ^ 2) <= (r ^ 2) = 1 + pitagorasAux m (n - 1) r
  | otherwise = pitagorasAux m (n - 1) r