######### BEGIN pythagorean_triples.py #############################
# Assaf Kfoury
# 15 April 2021

# This Z3Py program generates n Pythagorean triples where n is
# an integer >= 1 (not necessarily the "first n" and not always
# in the same order -- the result of some obvious non-determinism
# and randomness in Z3 implementation). For n >= 25 or 30, this
# will run for several seconds before returning an output.

# Run from the Unix prompt '$' at the command line by issuing:
# $ python3 pythagorean_triples.py

# Run from the Python prompt '>>>' at the command line:
# >>> execfile ('pythagorean_triples.py')           # in Python2 only
# >>> exec(open("./pythagorean_triples.py").read()) # in Python2 and Python3

from z3 import Solver, Ints, And, sat, Exists, Not
s = Solver()

# Declare three integer variables/constants of Z3Py {x, y, z} :
x, y, z, b = Ints('x y z b')

# Assert that {x, y, z} are positive integers such that 0 < x < y < z :
s.add(And(1 < x,  b < x,  b > 1, x < y, y < z))

# Assert that x*x + y*y = z*z, i.e. (x,y,z) is a Pythagorean triple :
s.add(x * x + y * y == z * z)

# Successive numbers are coprime
# primitive triple is x = a^2 - b^2, y = 2ab, z = a^2 + b^2 where successive(a,b)
# so lets say a = b + 1,
# x = 2 * b + 1, y = b * (b + 1), z = 2 * b * b + 2 * b + 1
s.add(Exists(b, And(x == 2*b + 1, y == 2*b*(b + 1), z == 2*b*b + 2*b + 1)))
n = 1
results = []
while s.check() == sat and n <= 10:
    m = s.model()
    results.append(m)
    s.add(x != m[x])
    n = n+1

for p in range(len(results)):
    print(results[p])

# Interesting fact about Pythagorean triples:
##
# The set {1,2,...,7824} can be partitioned into two parts,
# such that no part contains a Pythagorean. However, this
# is impossible for the set {1,2,...,7825} and any larger
# set containing it.

##

######### END pythagorean_triples.py #############################
