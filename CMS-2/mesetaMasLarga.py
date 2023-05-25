from typing import List

# Aclaración: Debido a la versión de Python del CMS, para el tipo Lista, la sintaxis de la definición de tipos que deben usar es la siguiente:
# l: List[int]  <--Este es un ejemplo para una lista de enteros.
# Respetar esta sintaxis, ya que el CMS dirá que no pasó ningún test si usan otra notación.
def mesetaMasLarga(l: List[int]) -> int :
  # Implementar esta funcion
  maximaMeseta = 0

  for x in range(0, len(l), 1):
    meseta = detectarMeseta(x, l)
    if meseta > maximaMeseta:
      maximaMeseta = meseta

  return maximaMeseta

def detectarMeseta(i: int, l: List[int]) -> int:
  meseta = 1

  if (i == len(l) - 1): return 1
  if (i == len(l) - 2):
    if (l[i] == l[i + 1]):
      return 2
    else:
      return 1

  for x in range(i, (len(l) - 1), 1):
    if (l[x] == l[x + 1]):
      meseta = meseta + 1
    else:
      break

  return meseta


if __name__ == '__main__':
  x = input()
  print(mesetaMasLarga([int(j) for j in x.split()]))