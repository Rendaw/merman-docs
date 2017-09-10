In this short guide I hope to give you a high level picture of how to use merman to build a language, from syntax design to interpreter implementation.  You'll need merman, of course, but also Python 3 for the interpreter.  And a computer.

If you're aiming to complete this in 10 minutes you might want to jump to the full source listing at the end and stick to copying it into files and running it.  For the underachievers, we'll start the table of contents:

# Contents
[Language outline](#language-outline)
[Building the interpreter](#building-the-interpreter)
[Syntax file structure](#syntax-file-structure)
[Creating an atom](#creating-an-atom)
[Putting it all together](#putting-it-all-together)
[Creating a source file with your syntax](#creating-a-source-file-with-your-syntax)
[Running the interpreter](#running-the-interpreter)
[Source listing](#source-listing)

# Language outline

We'll create a simple calculator language in this guide.  In our language, `calclang`, each line either evaluates and displays an expression, binds the value of the expression to a name, or displays some text - that is, the root element of our source code is a list of statements which are defined as one of those three.

A sample program looks something like this:
```
x1 = 4
y1 = 17
x2 = 33
y2 = 47
h = ((x1 - x2) ** 2 + (y1 - y2) ** 2) ** 0.5
" This is h
h
```

The line that starts with `" ` displays the following text.

The operators we'll support are

- add
- subtract
- multiply
- divide
- exponent

All of these are binary operators which are surrounded by expressions.  An expression can be any operator expression, a number, or a name (to recall a bound value).  The full list of elements in our language are (easy to remember ids included)

- add
- subtract
- multiply
- divide
- exponent
- number
- recall
- statement_bind
- statement_expression
- statement_label

# Building the interpreter

merman supports two AST formats, luxem and JSON.  For this guide we'll use luxem because I designed it, and more importantly because it's well suited to this and many other tasks.  On the off chance you're not familiar with luxem you can read about it [here](https://github.com/rendaw/luxem).

Install the luxem library with
```sh
pip install luxem
```

To start our interpreter, `calclang.py`, deserialize the source file
```python
import sys
import luxem

with open(sys.args[1], 'rb') as source:
    ast = luxem.load(source)
```

luxem files are an array at the root level, so we'll make each element in the root array a statement.  Each statement will be a typed value so we can easily identify what type of statement it is.  We'll also need a `dict` to keep track of bound values.  The source code will look roughly like

```luxem
(statement_bind) { name: x, value: (number) 4 },
(statement_expression) { expression: (add) { left: (recall) x, right: (number) 7 } },
(statement_label) "All done",
```

Our basic execution strategy will be to loop through the root statements and depending on the type, bind, display a value, or display some text.

```python
names = {}

for statement in ast:
    if statement.type == 'statement_bind':
        names[statement.value['name']] = evaluate(statement.value['value'])
    elif statement.type == 'statement_expression':
        print(evaluate(statement.value['expression']))
    elif statement.type == 'statement_label':
        print(statement.value['text'])
    else:
        raise RuntimeError('Unknown statement type {}!'.format(statement.type))
```

`evaluate` is the key here - it's a function takes an expression and turns it into a value.  Because operator expressions can contain sub operator expressions, using a recursive function solves this cleanly.  The definition for `evaluate` is
```python
def evaluate(expression):
    if expression.type == 'add`:
        return evaluate(expression.value['left']) + evaluate(expression.value['right'])
    if expression.type == 'subtract`:
        return evaluate(expression.value['left']) - evaluate(expression.value['right'])
    if expression.type == 'multiply`:
        return evaluate(expression.value['left']) * evaluate(expression.value['right'])
    if expression.type == 'divide`:
        return evaluate(expression.value['left']) / evaluate(expression.value['right'])
    if expression.type == 'exponent`:
        return evaluate(expression.value['left']) ** evaluate(expression.value['right'])
    if expression.type == 'number`:
        return float(expression.value)
    if expression.type == 'recall`:
        return names[expression.value]
    raise RuntimeError('Unknown expression type {}!'.format(expression.type))
```

More robust error handling left as an exercise for the reader!  And we're done!  You can try it on the example source above - you should get an output like
```
7
All done
```

But really, making that example was pretty hard.  All you had to do was copy and paste but I had to type the whole thing out.  After all, I'm putting this together in the order you're reading it.  What we'd really like is to be able to type
```
x + 7
```
and automatically get the source tree
```
(statement_expression) { expression: (add) { left: (recall) x, right: (number) 7 } },
```
so let's make a syntax that we can use with merman to do this.

# Syntax file structure

merman syntax files are Lua scripts that return a table describing the syntax.  When you open a source file in merman, it automatically loads the corresponding syntax file from `~/.config/merman/syntaxes` based on the source file extension.  We'll use the extension `.calclang` with our source files, so create a file there named `syntax_calclang.lua`.

The returned table has a number of sections, but the only ones we'll bother with today are `types`, `root`, `groups`, and `pretty_save`.  The full syntax specification can be found [here](https://github.com/Rendaw/merman/wiki/Syntax-Reference).

In merman, the nodes in the AST are referred to as `atoms`.  Remember this, since it will be used a lot from here on.

### types
`types` is a list of atom type definitions.  Each type has a `back` - a description of how the atom is stored in the AST, a `front` - how the atom is modified and displayed to the user, and a `middle` which describes the specific modifiable components which connect the front and back.

### root
`root` is another type that only exists at the root of the source file.  This atom is effectively outside the document - it cannot be deleted or replaced.  It also has a few special properties compared to normal atom types.

### groups
When nesting atoms within other atoms, the atom type will list what single type can be nested.  `groups` are type ids that represent multiple other type ids.

### pretty_save

If true, the source code will have spaces and new lines to make it easier to read.

Things like hotkeys also need to be defined in the syntax, but merman comes with a reasonable premade set of those which we will use.

# Creating an atom
