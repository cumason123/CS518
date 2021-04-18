from z3 import *
x,y,z = Bools('x y z')
phi = Or(And(x,y), Or(And(x, z), And(y, z)))
psi = And((Or(x, y)), And(Or(x, z), Or(y, z)))
s = Solver()
s.add(Not(phi == psi))
print(s.check())