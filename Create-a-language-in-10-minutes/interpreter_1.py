import sys
import luxem

with open(sys.args[1], 'rb') as source:
    ast = luxem.load(source)

names = {}


def evaluate(expression):
    pass


for statement in ast:
    if statement.type == 'statement_bind':
        names[statement.value['name']] = evaluate(statement.value['value'])
    elif statement.type == 'statement_label':
        print(statement.value['text'])
    else:
        print(evaluate(statement))
