
-- 1)
longitud :: [t] -> Integer
longitud [a] = 1
longitud (a:t) = 1 + longitud t

-- 2)
ultimo :: [t] -> t
ultimo [a] = a
ultimo (a : t) = ultimo t

-- 3)
principio :: [t] -> [t]
principio [a] = []
principio (a : t) = [a] ++ principio t

-- 4)
reverso :: [t] -> [t]
reverso [] = []
reverso (a : t) = reverso t ++ [a]