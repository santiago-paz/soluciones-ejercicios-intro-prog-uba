-- a
absoluto :: Integer -> Integer
absoluto n = abs n

-- b
maxAbsoluto :: Integer -> Integer -> Integer
maxAbsoluto a b = if (abs a > abs b) then abs a else abs b

-- c
maximo3 :: Integer -> Integer -> Integer -> Integer
maximo3 a b c | (a > b) && (a > c) = a
              | (b > a) && (b > c) = b
              | (c > a) && (c > b) = c
              | otherwise = a

-- d1
algunoEs0 :: Integer -> Integer -> Bool
algunoEs0 a b | (a == 0 || b == 0) = True
              | otherwise = False

-- d2 (Sin pattern matching)
algunoEs0SinPatternMatching :: Integer -> Integer -> Bool
algunoEs0SinPatternMatching a b = (a == 0 || b == 0)

-- e1
ambosSon0 :: Integer -> Integer -> Bool
ambosSon0 a b | (a == 0 && b == 0) = True
        | otherwise = False

-- e2 (Sin pattern matching)
ambosSon0SinPatternMatching :: Integer -> Integer -> Bool
ambosSon0SinPatternMatching a b = (a == 0 && b == 0)

-- f
mismoIntervalo :: Float -> Float -> Bool
mismoIntervalo a b | (a < 3) && (b < 3) = True
                   | (a > 3) && (a <= 7) && (b > 3) && (b <= 7) = True
                   | (a > 7) && (b > 7) = True
                   | otherwise = False

-- g
sumaDistintos :: Integer -> Integer -> Integer -> Integer
sumaDistintos a b c | not (a == b) && not (b == c) = a + b + c
sumaDistintos a b c | (a == b) && not (b == c) = a + c
sumaDistintos a b c | (a == c) && not (b == c) = b + c