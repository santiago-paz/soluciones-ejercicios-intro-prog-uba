from array import *


def esPalindroma(s: str) -> bool:
    for x in range(0, int(len(s) / 2), 1):
        if s[x] != s[(len(s) - 1) - x]:
            return False
    return True
