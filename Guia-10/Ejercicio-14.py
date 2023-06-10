from queue import Queue as Cola
from queue import LifoQueue as Pila


def cantidadElementosCola(c: Cola) -> int:
    count = 0
    while not c.empty():
        c.get()
        count += 1
    return count


def cantidadElementosPila(p: Pila) -> int:
    count = 0
    while not p.empty():
        p.get()
        count += 1
    return count
