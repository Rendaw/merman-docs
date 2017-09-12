import sys
import luxem

with open(sys.argv[1], 'rb') as source:
    ast = luxem.load(source)

names = {}


def evaluate(expression):
    pass


for statement in ast:
    if statement.name == 'bind':
        names[statement.value['name']] = evaluate(statement.value['expression'])
    elif statement.name == 'label':
        print(statement.value)
    else:
        print(evaluate(statement))
