from math import fmod

""" 1) """


def imprimir_numeros():
    x = 1
    while x <= 10:
        print(x)
        x = x + 1


""" 2) """


def imprimir_numeros_pares():
    x = 10
    while x <= 40:
        if fmod(x, 2) == 0:
            print(x)
        x = x + 1


""" 3) """


def imprimir_eco():
    x = 1
    while x <= 10:
        print("eco")
        x = x + 1


""" 4) """


def cuenta_regresiva(numero: int):
    x = numero
    while x >= 1:
        print(x)
        x = x - 1

    print("Despegue")


""" 5) """


def monitoreo_viaje_tiempo(año_partida: int, año_llegada: int):
    while año_partida > año_llegada:
        año_partida = año_partida - 1
        print("Viajó un año al pasado, estamos en el año: " + str(año_partida))


""" 6) """


def mas_cercano_aristoteles(año_partida: int):
    while año_partida > -384:
        año_partida = año_partida - 20
        print("Viajó veinte años al pasado, estamos en el año: " + str(año_partida))
