from queue import LifoQueue as Pila

""" Asumo que tiene al menos 1 elemento: """
def buscarElMaximo (p: Pila) -> int:
    maximo = p.get()
    while (not p.empty()):
        elem = p.get()
        if (maximo < elem):
            maximo = elem
    return maximo