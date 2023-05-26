from typing import List

# Aclaración: Debido a la versión de Python del CMS, para el tipo Lista, la sintaxis de la definición de tipos que deben usar es la siguiente:
# l: List[int]  <--Este es un ejemplo para una lista de enteros.
# Respetar esta sintaxis, ya que el CMS dirá que no pasó ningún test si usan otra notación.
def filasParecidas(matriz: List[List[int]]) -> bool :
  # Implementar esta funcion
  if len(matriz) == 1: return False

  posibleConstante = averiguarPosibleConstante(matriz)

  for x in range(1, len(matriz), 1):
    for y in range(0, len(matriz[0]), 1):
      if matriz[x][y]- matriz[x -1][y] != posibleConstante:
        return False

  return True

def averiguarPosibleConstante(matriz: List[List[int]]) -> int:
  ultimoElemento = len(matriz) - 1
  return matriz[ultimoElemento][0] - matriz[ultimoElemento - 1][0]

if __name__ == '__main__':
  filas = int(input())
  columnas = int(input())

  matriz = []

  for i in range(filas):
    fila = input()
    if len(fila.split()) != columnas:
      print("Fila " + str(i) + " no contiene la cantidad adecuada de columnas")
    matriz.append([int(j) for j in fila.split()])

  print(filasParecidas(matriz))