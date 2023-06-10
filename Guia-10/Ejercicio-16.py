from queue import Queue as Cola
import random

""" 1) """


def armarSecuenciaDeBingo() -> Cola[int]:
    result = Cola()
    for num in random.sample(range(0, 100), 99):
        result.put(num)
    return result


""" 2)
    Asumo:
    - El cartón contiene 12 números al azar en el rango [0, 99] sin repetir.
    - El bolillero contiene los números del 0 al 99 ordenados al azar """


def jugarCartonDeBingo(carton: list[int], bolillero: Cola[int]) -> int:
    intentos = 0
    aciertos = 0
    while not bolillero.empty():
        intentos += 1
        numero = bolillero.get()
        if numero in carton:
            aciertos += 1
            if aciertos == 12:
                return intentos


bolillero = armarSecuenciaDeBingo()
print(jugarCartonDeBingo([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], bolillero))
