from queue import Queue

def avanzarFila(fila: Queue, min: int):
  nueva_persona = fila.qsize() + 1
  persona_con_prob = 0

  for minuto in range(0, min + 1):
    if persona_con_prob != 0 and (minuto - 3) % 4 == 2:
      fila.put(persona_con_prob)
      persona_con_prob = 0

    if minuto % 4 == 0:
      fila.put(nueva_persona)
      nueva_persona += 1

    if minuto % 10 == 1:
      if not fila.empty():
        fila.get()

    if minuto % 4 == 3:
      if not fila.empty():
        fila.get()

    if minuto % 4 == 2:
      if not fila.empty():
        persona_con_prob = fila.get()

  return fila

if __name__ == '__main__':
  fila: Queue = Queue()
  fila_inicial: int = int(input())
  for numero in range(1, fila_inicial+1):
    fila.put(numero)
  min: int = int(input())
  avanzarFila(fila, min)
  res = []
  for i in range(0, fila.qsize()):
    res.append(fila.get())
  print(res)


# Caja1: Empieza a atender 10:01, y atiende a una persona cada 10 minutos
# Caja2: Empieza a atender 10:03, atiende a una persona cada 4 minutos
# Caja3: Empieza a atender 10:02, y atiende una persona cada 4 minutos, pero no le resuelve el problema y la persona debe volver a la fila (se va al final y tarda 3 min en llegar. Es decir, la persona que fue atendida 10:02 vuelve a entrar a la fila a las 10:05)
# La fila empieza con las n personas que llegaron antes de que abra el banco. Cuando abre (a las 10), cada 4 minutos llega una nueva persona a la fila (la primera entra a las 10:00)

