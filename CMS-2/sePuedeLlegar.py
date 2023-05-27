from typing import List
from typing import Tuple

# Aclaración: Debido a la versión de Python del CMS, para el tipo Lista y Tupla, la sintaxis de la definición de tipos que deben usar es la siguiente:
# l: List[int]  <--Este es un ejemplo para una lista de enteros.
# t: Tuple[str,str]  <--Este es un ejemplo para una tupla de strings.
# Respetar esta sintaxis, ya que el CMS dirá que no pasó ningún test si usan otra notación.
def sePuedeLlegar(origen: str, destino: str, vuelos: List[Tuple[str, str]]) -> int :
  # definir esta función
  proximoDestino = buscarDestinoDesdeOrigen(origen, vuelos)
  destinos = [origen]
  cantVuelos = 1

  if proximoDestino == destino: return 1

  while (proximoDestino != destino and not pasoPorAca(proximoDestino, vuelos)):
    destinos.append(proximoDestino)
    proximoDestino = buscarDestinoDesdeOrigen(proximoDestino, vuelos)
    if (proximoDestino == ""): return -1
    cantVuelos += 1

  if pasoPorAca(proximoDestino, vuelos):
    return -1

  return cantVuelos

def pasoPorAca(vuelo: str, vuelos: List[str]) -> bool:
  return vuelo in vuelos

def buscarDestinoDesdeOrigen(origen: str, vuelos: List[Tuple[str, str]]) -> str:
  indiceOrigen = 0
  indiceDestino = 1

  for vuelo in range(0, len(vuelos), 1):
    if (vuelos[vuelo][indiceOrigen] == origen):
      return vuelos[vuelo][indiceDestino]

  return ""


if __name__ == '__main__':
  origen = input()
  destino = input()
  vuelos = input()

  print(sePuedeLlegar(origen, destino, [tuple(vuelo.split(',')) for vuelo in vuelos.split()]))