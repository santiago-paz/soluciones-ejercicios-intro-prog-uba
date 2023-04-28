-- 1)
pertenece :: (Eq t) => t -> [t] -> Bool
pertenece _ [] = False
pertenece a (x : xs) = (a == x) || pertenece a xs

-- 2)
todosIguales :: (Eq t) => [t] -> Bool
todosIguales [] = True
todosIguales (x : xs) = esSiempreElMismo x xs && todosIguales xs

esSiempreElMismo :: (Eq t) => t -> [t] -> Bool
esSiempreElMismo _ [] = True
esSiempreElMismo a (x : xs) = a == x && esSiempreElMismo a xs

-- 3)
todosDistintos :: (Eq t) => [t] -> Bool
todosDistintos [] = True
todosDistintos (a : xs) = numeroExcluido xs a && todosDistintos xs

numeroExcluido :: (Eq t) => [t] -> t -> Bool
numeroExcluido [] b = True
numeroExcluido [a] b = a /= b
numeroExcluido (a : xs) b = (a /= b) && numeroExcluido xs b

-- 4)
hayRepetidos :: (Eq t) => [t] -> Bool
hayRepetidos [] = False
hayRepetidos (x : xs) = elem x xs || hayRepetidos xs

-- 5)
quitar :: (Eq t) => t -> [t] -> [t]
quitar _ [] = []
quitar x (y : ys)
  | x == y = ys
  | otherwise = y : quitar x ys

-- 6)
quitarTodos :: (Eq t) => t -> [t] -> [t]
quitarTodos _ [] = []
quitarTodos x (y : ys)
  | x == y = quitarTodos x ys
  | otherwise = y : quitarTodos x ys

-- 7)
eliminarRepetidos :: (Eq t) => [t] -> [t]
eliminarRepetidos [] = []
eliminarRepetidos (x : xs)
  | elem x xs = eliminarRepetidos xs
  | otherwise = x : eliminarRepetidos xs

-- 8)
mismosElementos :: (Eq t) => [t] -> [t] -> Bool
mismosElementos [] _ = True
mismosElementos x y = estanEn xsr ysr && estanEn ysr xsr
  where
    ysr = eliminarRepetidos y
    xsr = eliminarRepetidos x

estanEn :: (Eq t) => [t] -> [t] -> Bool
estanEn [] _ = True
estanEn (x : xs) ys = elem x ys && estanEn xs ys

-- 9)
capicua :: (Eq t) => [t] -> Bool
capicua [] = True
capicua [a] = True
capicua (x : xs) = igualAlUltimo x xs && capicua (quitarUltimo xs)

igualAlUltimo :: (Eq t) => t -> [t] -> Bool
igualAlUltimo t [a] = t == a
igualAlUltimo t (x : xs) = igualAlUltimo t xs

quitarUltimo :: (Eq t) => [t] -> [t]
quitarUltimo [t] = []
quitarUltimo (x : xs) = x : quitarUltimo xs