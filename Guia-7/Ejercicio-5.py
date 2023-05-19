from math import fmod

""" 1) """


def devolver_el_doble_si_es_par(un_numero: int) -> int:
    if fmod(un_numero, 2) == 0:
        return un_numero * 2
    else:
        return un_numero


""" 2) """


def devolver_el_doble_si_es_par(un_numero: int) -> int:
    if fmod(un_numero, 2) == 0:
        return un_numero
    else:
        return un_numero + 1


""" 3) """


def devolver_el_doble_si_es_multiplo3_el_triple_si_es_multiplo9(un_numero: int) -> int:
    if fmod(un_numero, 9) == 0:
        return un_numero * 3
    if fmod(un_numero, 3) == 0:
        return un_numero * 2
    else:
        return un_numero


""" 4) """


def devolver_frase_si_nombre_largo(nombre: str) -> str:
    if len(nombre) > 5:
        return "Tu nombre tiene muchas letras!"
    else:
        return "Tu nombre tiene menos de 5 caracteres"


""" 5) """


def determinar_vacaciones(sexo: str, edad: int):
    if (sexo == "F" and edad >= 60) or (sexo == "M" and edad >= 65) or (edad <= 18):
        return "Andá de vacaciones"
    else:
        return "Te toca trabajar"
