-- a)
menorDivisor :: Integer -> Integer
menorDivisor n
  | n == 1 = 1
  | otherwise = menorDivisorAux 2 n

menorDivisorAux :: Integer -> Integer -> Integer
menorDivisorAux i n
  | i == n = n
  | mod n i == 0 = i
  | otherwise = menorDivisorAux (i + 1) n

-- b)
esPrimo :: Integer -> Bool
esPrimo 1 = False
esPrimo n = menorDivisor n == n

-- Terminar:
-- c)
sonCoprimos :: Integer -> Integer -> Bool
sonCoprimos 1 b = False
sonCoprimos a b = esDivisor a b || sonCoprimos (a - 1) b

esDivisor :: Integer -> Integer -> Bool
esDivisor n i = mod n i == 0

-- Preguntar si hay una mejor manera de hacerlo:
-- d)
nEsimoPrimo :: Integer -> Integer
nEsimoPrimo n = nEsimoPrimoAux n 1 1

nEsimoPrimoAux :: Integer -> Integer -> Integer -> Integer
nEsimoPrimoAux n i j
  | i == n = j - 1
  | esPrimo j = nEsimoPrimoAux n (i + 1) (j + 1)
  | otherwise = nEsimoPrimoAux n i (j + 1)