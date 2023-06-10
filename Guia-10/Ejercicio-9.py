from queue import LifoQueue as Pila
import random

""" Del ejercicio 8: """
def generarNrosAlAzar(n: int, desde: int, hasta: int) -> list[int]:
    result = []
    for _ in range(0, n):
        result.append(random.randint(desde, hasta))
    return result

def generarPilaConNrosAlAzar(n: int, desde: int, hasta: int) -> Pila:
    lista = generarNrosAlAzar(n, desde, hasta)
    pila = Pila()
    for i in range(0, len(lista), 1):
        pila.put(lista[i])

    return pila