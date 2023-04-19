parteEntera :: Float -> Integer
parteEntera x
  | x >= 0 && x < 1 = 0
  | x > -1 && x <= 0 = -1
  | x > 1 = 1 + parteEntera (x - 1)
  | x <= -1 = -1 + parteEntera (x + 1)