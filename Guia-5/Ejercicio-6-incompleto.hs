type Set = []

-- 1)
agregarATodos :: Integer -> Set (Set Integer) -> Set (Set Integer)
agregarATodos n [] = [[n]]
agregarATodos n (x : xs) = (n : x) : (agregarATodos n xs)

-- 2)
partes :: Integer -> Set (Set Integer)
partes 0 = [[]]
partes 1 = [[], [1]]
partes n = (agregarATodos n (partes (n - 1))) ++ partes (n - 1)

