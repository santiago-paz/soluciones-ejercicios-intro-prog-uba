import array


def tieneTresVocalesDistintas(s: str) -> bool:
    vocales = []
    for x in s:
        if esVocal(x) and (not incluida(x, vocales)):
            vocales.append(x)
    return len(vocales) >= 3


def incluida(e: str, l: array) -> bool:
    for x in l:
        if x == l:
            return True
    return False


def esVocal(e: str) -> bool:
    for x in e:
        if (
            x == "a"
            or x == "e"
            or x == "i"
            or x == "o"
            or x == "u"
            or x == "A"
            or x == "E"
            or x == "I"
            or x == "O"
            or x == "U"
        ):
            return True
    return False


print(tieneTresVocalesDistintas("MUERCIELAGO"))
