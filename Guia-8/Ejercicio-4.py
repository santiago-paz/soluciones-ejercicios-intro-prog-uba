from array import *

def ordenados(s: array) -> bool:
    for x in range(0, len(s) - 1, 1):
        if s[x] > s[x + 1]:
            return False
    return True
