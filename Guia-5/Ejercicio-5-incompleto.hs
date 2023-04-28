-- 1)

nat2bin :: Integer -> [Integer]
nat2bin 0 = [0]
nat2bin 1 = [1]
nat2bin n
  | mod n 2 == 0 = nat2bin (div n 2) ++ [0]
  | otherwise = nat2bin (div n 2) ++ [1]

bin2nat :: [Integer] -> Integer
bin2nat [0] = 0
bin2nat [1] = 1
