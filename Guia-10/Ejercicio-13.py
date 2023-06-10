import random
from queue import Queue as Cola

""" Del ejercicio 8: """


def generarNrosAlAzar(n: int, desde: int, hasta: int) -> list[int]:
    result = []
    for _ in range(0, n):
        result.append(random.randint(desde, hasta))
    return result


def armarColaEnteros(l: list[int]) -> Cola:
    result = Cola()
    for e in l:
        result.put(e)
    return result
