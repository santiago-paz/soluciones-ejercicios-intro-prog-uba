menorDivisor :: Integer -> Integer
menorDivisor n
  | n == 1 = 1
  | otherwise = menorDivisorAux 2 n

menorDivisorAux :: Integer -> Integer -> Integer
menorDivisorAux i n
  | i == n = n
  | mod n i == 0 = i
  | otherwise = menorDivisorAux (i + 1) n

esPrimo :: Integer -> Bool
esPrimo 1 = False
esPrimo n = menorDivisor n == n

nEsimoPrimo :: Integer -> Integer
nEsimoPrimo n = nEsimoPrimoAux (n + 1) 1 1

nEsimoPrimoAux :: Integer -> Integer -> Integer -> Integer
nEsimoPrimoAux n i j
  | i == n = j - 1
  | esPrimo j = nEsimoPrimoAux n (i + 1) (j + 1)
  | otherwise = nEsimoPrimoAux n i (j + 1)

{----- 👆 Funciones copiadas y pegadas del Ejercicio 16 -----}

esSumaInicialDePrimos :: Integer -> Bool
esSumaInicialDePrimos n = esSumaInicialDePrimosAux 0 0 n

esSumaInicialDePrimosAux :: Integer -> Integer -> Integer -> Bool
esSumaInicialDePrimosAux i x n
  | x > n = False
  | otherwise = (x == n) || esSumaInicialDePrimosAux (i + 1) (x + nEsimoPrimo (i + 1)) n