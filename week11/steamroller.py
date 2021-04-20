from z3 import *
x, y, z, u = Ints('x y z u')
s = Solver()


def Wolf(x: int):
    return x == 4


def Fox(x: int):
    return x == 3


def Bird(x: int):
    return x == 2


def Snail(x: int):
    return x == 1


def Caterpillar(x: int):
    return x == 0


def Grain(x: int):
    return x == -1


def Animal(x: int):
    return Wolf(x) or Fox(x) or Bird(x) or Caterpillar(x) or Snail(x)


def Plant(x: int):
    return Grain(x)


implications = {
    'wolf': Implies(Wolf(x), Animal(x)),
    'fox': Implies(Fox(x), Animal(x)),
    'bird': Implies(Bird(x), Animal(x)),
    'caterpillar': Implies(Caterpillar(x), Animal(x)),
    'snail': Implies(Snail(x), Animal(x)),
    'grain': Implies(Grain(x), Plant(x))
}
for key in implications:
    s.add(implications[key])

existences = {
    'wolf': Exists(x, Wolf(x)),
    'fox': Exists(x, Fox(x)),
    'bird': Exists(x, Bird(x)),
    'caterpillar': Exists(x, Snail(x)),
    'snail': Exists(x, Caterpillar(x)),
    'grain': Exists(x, Grain(x))
}

for key in existences:
    s.add(existences[key])


def Smaller(x: int, y: int):
    return Or(
        And(Caterpillar(x), Bird(y)),
        And(Snail(x), Bird(y)),
        And(Bird(x), Fox(y)),
        And(Fox(x), Wolf(y)),
    )


def Eats(x: int, y: int):
    return Or(
        And(Caterpillar(x), Plant(y)),
        And(Snail(x), Plant(y)),
        And(x == 4, y > -1, y < 3),
        And(Bird(x), Caterpillar(y)),
        And(Fox(x), y < 3, y > -1)
    )


assumption = Implies(Animal(x), Or(Implies(Plant(y), Eats(x, y)), Implies(
    And(Animal(z), Smaller(z, x), Exists(u, And(Plant(u), Eats(z, u)))), Eats(x, z))))


caterpillarRule = Implies(Caterpillar(x), Exists(y, And(Plant(y), Eats(x, y))))
snailRule = Implies(Snail(x), Exists(y, And(Plant(y), Eats(x, y))))

wolfFox = Implies(And(Wolf(x), Fox(y)), Not(Eats(x, y)))
wolfGrain = Implies(And(Wolf(x), Grain(y)), Not(Eats(x, y)))
birdSnail = Implies(And(Bird(x), Snail(y)), Not(Eats(x, y)))
s.add(assumption, caterpillarRule, snailRule, wolfFox, wolfGrain, birdSnail)

goal = Exists(x, Exists(y, And(
    Animal(x),
    Animal(y),
    Eats(x, y),
    Implies(Grain(z), Eats(y, z))
)))
s.add(goal)
print(s.check())
