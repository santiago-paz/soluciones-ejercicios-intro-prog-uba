import random

def generarNrosAlAzar(n: int, desde: int, hasta: int) -> list[int]:
    result = []
    for _ in range(0, n):
        result.append(random.randint(desde, hasta))
    return result
