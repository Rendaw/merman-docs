import sys
import luxem

with open(sys.argv[1], 'rb') as source:
    ast = luxem.load(source)

names = {}


def evaluate(expression):
    if expression.name == 'add':
        return evaluate(expression.value['left']) + evaluate(expression.value['right'])
    if expression.name == 'subtract':
        return evaluate(expression.value['left']) - evaluate(expression.value['right'])
    if expression.name == 'multiply':
        return evaluate(expression.value['left']) * evaluate(expression.value['right'])
    if expression.name == 'divide':
        return evaluate(expression.value['left']) / evaluate(expression.value['right'])
    if expression.name == 'exponent':
        return evaluate(expression.value['left']) ** evaluate(expression.value['right'])
    if expression.name == 'number':
        return float(expression.value)
    if expression.name == 'recall':
        return names[expression.value]
    raise RuntimeError('Unknown expression type {}!'.format(expression.name))


for statement in ast:
    if statement.name == 'bind':
        names[statement.value['name']] = evaluate(statement.value['expression'])
    elif statement.name == 'label':
        print(statement.value)
    else:
        print(evaluate(statement))
