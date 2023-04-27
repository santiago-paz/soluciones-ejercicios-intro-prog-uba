-- a)

eAprox :: Integer -> Float
eAprox n
  | n == 0 = 1
  | otherwise = (1 / fromIntegral (factorial n)) + eAprox (n - 1)

factorial :: Integer -> Integer
factorial n
  | n == 1 = 1
  | otherwise = n * factorial (n - 1)

-- b)
const e = eAprox 10