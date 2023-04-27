-- a)
f1 :: Integer -> Integer
f1 x
  | x == 0 = 1
  | otherwise = (2 ^ x) + f1 (x - 1)

-- b)
f2 :: Integer -> Float -> Float
f2 n q
  | n == 0 = 0
  | n == 1 = q
  | otherwise = (q ^ n) + f2 (n - 1) q

-- c)
f3 :: Integer -> Float -> Float
f3 n q
  | n == 0 = 0
  | n == 1 = q + q ^ 2
  | otherwise = (q ^ (2 * n)) + (q ^ ((2 * n) - 1)) + f3 (n - 1) q

-- d) INCOMPLETO
f4 :: Integer -> Float -> Float
f4 n q
  | n == 0 = 0
  | n == 1 = q + q ^ 2
  | otherwise = (q ^ (2 * n)) + (q ^ ((2 * n) - 1)) + f3 (n - 1) q