from queue import Queue as Cola


def nPacientesUrgentes(c: Cola[(int, str, str)]) -> int:
    altaPrioridad = 0
    while not c.empty():
        registro = c.get()
        if registro[0] < 4:
            altaPrioridad += 1

    return altaPrioridad
