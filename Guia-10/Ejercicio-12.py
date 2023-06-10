from queue import LifoQueue as Pila

""" Del ejercicio 10: """


def cantidadElementos(p: Pila) -> int:
    count = 0
    while not p.empty():
        p.get()
        count += 1
    return count


def estaBienBalanceada(s: str) -> bool:
    parentesis = Pila()
    for x in range(0, len(s), 1):
        if s[x] == "(":
            parentesis.put("(")
        elif s[x] == ")":
            if not parentesis.empty():
                parentesis.get()
            else:
                return False
    return cantidadElementos(parentesis) == 0


print(estaBienBalanceada("10 * ( 1 + ( 2 * ( -1)))"))  # True
print(estaBienBalanceada("1 + ( 2 x 3 = ( 2 0 / 5 ) )"))  # True
print(estaBienBalanceada("1 + ) 2 x 3 ( ( )"))  # False
