""" 1) """

def peso_pino(centimetros: int) -> int:
    return min(centimetros, 300) * 3 + max(centimetros - 300, 0) * 2

""" 2) """

def es_peso_util(kg: int) -> bool:
    return kg >= 400 and kg <= 1000

""" 3) """

def sirve_pino(centimetros: int) -> bool:
    return es_peso_util(peso_pino(centimetros))

""" 4) (La anterior ya es una composición) """

def sirve_pino(centimetros: int) -> bool:
    return es_peso_util(peso_pino(centimetros))


print(sirve_pino(300))
