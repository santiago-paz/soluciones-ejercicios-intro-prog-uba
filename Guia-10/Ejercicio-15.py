from queue import Queue as Cola
from queue import LifoQueue as Pila

""" Asumo que tiene al menos 1 elemento: """


def buscarElMaximoPila(p: Pila) -> int:
    maximo = p.get()
    while not p.empty():
        elem = p.get()
        if maximo < elem:
            maximo = elem
    return maximo


""" Asumo que tiene al menos 1 elemento: """


def buscarElMaximoCola(c: Cola) -> int:
    maximo = c.get()
    while not c.empty():
        elem = c.get()
        if maximo < elem:
            maximo = elem
    return maximo
