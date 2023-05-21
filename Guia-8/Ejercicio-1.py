from array import *


def pertenece(s: array, e: int) -> bool:
    for x in s:
        if x == e:
            return True
    return False
