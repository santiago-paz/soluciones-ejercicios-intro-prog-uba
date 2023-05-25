import sys

def fibonacciNoRecursivo(n: int) -> int:
  resultado = 0
  anteriorDelAnterior = 0
  anterior = 1

  if n == 0 or n == 1: return n

  for x in range(0, n - 1, 1):
    resultado = anterior + anteriorDelAnterior
    anteriorDelAnterior = anterior
    anterior = resultado

  return resultado

if __name__ == '__main__':
  x = int(input())
  print(fibonacciNoRecursivo(x))