from queue import LifoQueue as Pila


def cantidadElementos (p: Pila) -> int:
    count = 0
    while (not p.empty()):
        p.get()
        count += 1
    return count