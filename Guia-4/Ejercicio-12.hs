f1 :: Integer -> Float
f1 n
  | n == 1 = 2
  | otherwise = 2 + (1 / f1 (n - 1))

raizDe2Aprox :: Integer -> Float
raizDe2Aprox n = f1 n - 1
