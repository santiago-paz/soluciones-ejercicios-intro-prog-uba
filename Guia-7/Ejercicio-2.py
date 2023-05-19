""" 1) """

from math import ceil, sqrt, fmod


def imprimir_saludo(nombre: str):
    print("Hola, " + nombre)


""" 2) """


def raiz_cuadrada_de(numero: int) -> float:
    return sqrt(numero)


""" 3) """


def imprimir_dos_veces(estribillo: str):
    print(estribillo * 2)


""" 4) """


def es_multiplo_de(n: int, m: int) -> bool:
    return fmod(n, m) == 0


""" 5) """


def es_par(n: int) -> bool:
    return es_multiplo_de(n, 2)


""" 6) """


def cantidad_de_pizzas(comensales: int, min_cant_de_porciones: int) -> int:
    return ceil((comensales * min_cant_de_porciones) / 8)
