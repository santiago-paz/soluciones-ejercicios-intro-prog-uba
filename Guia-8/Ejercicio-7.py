from array import *


def analizarFortaleza(s: str) -> str:
    if len(s) < 5:
        return "ROJA"
    if (
        (len(s) > 8)
        and tieneLetraMinuscula(s)
        and tieneLetraMayuscula(s)
        and tieneDigitoNumerico(s)
    ):
        return "VERDE"
    return "AMARILLA"


def tieneLetraMinuscula(s: str) -> bool:
    for x in s:
        if x >= "a" and x <= "z":
            return True
    return False


def tieneDigitoNumerico(s: str) -> bool:
    for x in s:
        if x >= "0" and x <= "9":
            return True
    return False


def tieneLetraMayuscula(s: str) -> bool:
    for x in s:
        if x >= "A" and x <= "Z":
            return True
    return False
