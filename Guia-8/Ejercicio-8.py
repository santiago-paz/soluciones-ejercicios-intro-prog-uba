from array import *
from typing import List, Tuple


def devolverSaldoActual(movimientos: List[Tuple[str, int]]) -> str:
    saldo = 0
    for movimiento in movimientos:
        if movimiento[0] == "I":
            saldo = saldo + movimiento[1]
        else:
            saldo = saldo - movimiento[1]
    return saldo
