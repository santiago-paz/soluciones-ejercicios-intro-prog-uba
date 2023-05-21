from array import *


def longitudMayorASiete(s: array) -> bool:
    for i in s:
        if len(i) > 7:
            return True
    return False
