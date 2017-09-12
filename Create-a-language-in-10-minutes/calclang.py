import sys
import luxem

with open(sys.args[1], 'rb') as source:
    ast = luxem.load(source)

names = {}


def evaluate(expression):
    if expression.type == 'add':
        return evaluate(expression.value['left']) + evaluate(expression.value['right'])
    if expression.type == 'subtract':
        return evaluate(expression.value['left']) - evaluate(expression.value['right'])
    if expression.type == 'multiply':
        return evaluate(expression.value['left']) * evaluate(expression.value['right'])
    if expression.type == 'divide':
        return evaluate(expression.value['left']) / evaluate(expression.value['right'])
    if expression.type == 'exponent':
        return evaluate(expression.value['left']) ** evaluate(expression.value['right'])
    if expression.type == 'number':
        return float(expression.value)
    if expression.type == 'recall':
        return names[expression.value]
    raise RuntimeError('Unknown expression type {}!'.format(expression.type))


for statement in ast:
    if statement.type == 'statement_bind':
        names[statement.value['name']] = evaluate(statement.value['value'])
    elif statement.type == 'statement_label':
        print(statement.value['text'])
    else:
        print(evaluate(statement))
