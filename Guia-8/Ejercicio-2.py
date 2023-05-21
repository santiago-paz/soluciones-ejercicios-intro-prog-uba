from array import *
from math import fmod

def divideATodos(s: array, e: int) -> bool:
    for x in s:
        if fmod(x, e) != 0:
            return False
    return True
