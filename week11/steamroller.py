from z3 import *
x, y, z = Ints('x y z u')
def Wolf(x: int):
    return x == 0
def Fox(x: int):
    return x == 1
def Bird(x: int):
    return x == 2
def Caterpillar(x: int):
    return x == 3
def Snail(x: int):
    return x == 4
def Grain(x: int):
    return x == 5
def Animal(x: int):
    return Wolf(x) or Fox(x) or Bird(x) or Caterpillar(x) or Snail(x)
def Plant(x: int):
    return Grain(x)