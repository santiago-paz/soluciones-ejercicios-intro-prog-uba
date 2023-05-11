
esFibonacci :: Integer -> Bool
esFibonacci n = esFibonacciAux 1 n

esFibonacciAux :: Integer -> Integer -> Bool
esFibonacciAux i n
 | fibonacci i == n = True
 | fibonacci i > n = False
 | otherwise = esFibonacciAux (i + 1) n

fibonacci :: Integer -> Integer
fibonacci x
 | x == 1 || x == 2 = x
 | otherwise = fibonacci (x - 1) + fibonacci (x - 2)