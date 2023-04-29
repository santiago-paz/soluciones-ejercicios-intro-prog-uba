{- Debe haber una forma más simple de resolver esto... -}

cantidadDigitos :: Integer -> Integer
cantidadDigitos x
  | x < 10 = 1
  | otherwise = 1 + cantidadDigitos (div x 10)

obtenerDigitoInicial :: Integer -> Integer
obtenerDigitoInicial x
  | x < 10 = x
  | otherwise = obtenerDigitoInicial (div x 10)

obtenerDigitoFinal :: Integer -> Integer
obtenerDigitoFinal x = mod x 10

removerPrimeroYUltimo :: Integer -> Integer
removerPrimeroYUltimo x
  | x < 10 = x
  | otherwise = removerPrimerDigito (removerUltimoDigito x)

removerUltimoDigito :: Integer -> Integer
removerUltimoDigito x = div x 10

removerPrimerDigito :: Integer -> Integer
removerPrimerDigito x = x - (obtenerDigitoInicial x * (10 ^ (cantidadDigitos x - 1)))

esCapicua :: Integer -> Bool
esCapicua x
  | x < 10 = True
  | x < 100 = obtenerDigitoInicial x == obtenerDigitoFinal x
  | otherwise = (obtenerDigitoFinal x == obtenerDigitoInicial x) && esCapicua (removerPrimeroYUltimo x)