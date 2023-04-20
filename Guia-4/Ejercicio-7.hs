todosDigitosIguales :: Integer -> Bool
todosDigitosIguales x
  | x < 10 = True
  | otherwise = mod x 10 == mod (div x 10) 10 && todosDigitosIguales (div x 10)