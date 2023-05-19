""" 1) """


from math import fmod


def alguno_es_0(numero1: float, numero2: float) -> bool:
    return numero1 == 0 or numero2 == 0


""" 2) """


def ambos_son_0(numero1: float, numero2: float) -> bool:
    return numero1 == 0 and numero2 == 0


""" 3) """


def es_nombre_largo(nombre: str) -> bool:
    return len(nombre) >= 3 and len(nombre) <= 8

""" 4) """


def es_bisiesto(año: int) -> bool:
    return (fmod(año, 400) == 0) or (fmod(año, 4) == 0 and fmod(año, 100) != 0)
