from typing import List
from typing import Dict
import json

def unir_diccionarios(a_unir: List[Dict[str,int]]) -> Dict[str,List[int]]:
  response: Dict[str,List[int]] = {}

  for diccionario in a_unir:
    for key in diccionario.keys():
      if key in response:
        response[key].append(diccionario[key])
      else:
        response[key] = [diccionario[key]]
  return response

if __name__ == '__main__':
  x = json.loads(input()) # Ejemplo de input: [{"a":2},{"b":3,"a":1}]
  print(unir_diccionarios(x))