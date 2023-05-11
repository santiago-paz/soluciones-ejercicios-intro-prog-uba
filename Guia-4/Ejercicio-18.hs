mayorDigitoPar :: Integer -> Integer
mayorDigitoPar n = mayorDigitoParAux n (-1)

mayorDigitoParAux :: Integer -> Integer -> Integer
mayorDigitoParAux n maximo
  | n == 0 = maximo
  | even digito && (digito > maximo) = mayorDigitoParAux (div n 10) digito
  | otherwise = mayorDigitoParAux (div n 10) maximo
  where
    digito = mod n 10