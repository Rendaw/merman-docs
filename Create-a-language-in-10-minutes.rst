In this short guide I hope to give you a high level picture of how to
use merman to build a language, from syntax design to interpreter
implementation. You'll need merman, of course, but also Python 3 for the
interpreter. And a computer.

If you're aiming to complete this in 10 minutes you might want to jump
to the full source listing at the end and stick to copying it into files
and running it. For the underachievers, we'll start with the table of
contents:

Contents
========

`Language outline <#language-outline>`__

`Building the interpreter <#building-the-interpreter>`__

`Syntax file structure <#syntax-file-structure>`__

`Creating an atom <#creating-an-atom>`__

`Putting it all together <#putting-it-all-together>`__

`Creating a source file with your
syntax <#creating-a-source-file-with-your-syntax>`__

`Running the interpreter <#running-the-interpreter>`__

-  `Appendix: Syntax source <#appendix-syntax-source>`__
-  `Appendix: Interpreter source <#appendix-interpreter-source>`__
-  `Appendix: Example source <#appendix-example-source>`__

Language outline
================

We'll create a simple calculator language in this guide. In our
language, ``calclang``, each line either evaluates and displays an
expression, binds the value of the expression to a name, or displays
some text - that is, the root element of our source code is a list of
statements which are defined as one of those three.

A sample program looks something like this:

::

    x1 = 4
    y1 = 17
    x2 = 33
    y2 = 47
    h = ((x1 - x2) ^ 2 + (y1 - y2) ^ 2) ^ 0.5
    " This is h
    h

The line that starts with ``"`` displays the following text.

The operators we'll support are

-  add
-  subtract
-  multiply
-  divide
-  exponent

All of these are binary operators which are surrounded by expressions.
An expression can be any operator expression, a number, or a name (to
recall a bound value). The full list of elements in our language are
(easy to remember ids included)

-  add
-  subtract
-  multiply
-  divide
-  exponent
-  number
-  recall
-  bind
-  label

Building the interpreter
========================

merman supports two AST formats, luxem and JSON. For this guide we'll
use luxem because I designed it, and more importantly because it's well
suited to this and many other tasks. On the off chance you're not
familiar with luxem you can read about it
`here <https://github.com/rendaw/luxem>`__.

Install the luxem library with

.. code:: sh

    pip install luxem

To start our interpreter, ``calclang.py``, deserialize the source file

.. code-block:: python

    import luxem
    
    with open(sys.args[1], 'rb') as source:
        ast = luxem.load(source)

luxem files are an array at the root level, so we'll make each element
in the root array a statement. Each statement will be a typed value so
we can easily identify what type of statement it is. We'll also need a
``dict`` to keep track of bound values. The source code will look
roughly like

.. code:: luxem

    (bind) { name: x, value: (number) 4 },
    (expression) { expression: (add) { left: (recall) x, right: (number) 7 } },
    (label) "All done!",

Our basic execution strategy will be to loop through the root statements
and depending on the type, bind, display a value, or display some text.

.. code-block:: python

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

``evaluate`` is the key here - it's a function that takes an expression
and turns it into a value. Because each operator expression can contain
more operator expressions, using a recursive function solves this
cleanly. The definition for ``evaluate`` is

.. code-block:: python

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

More robust error handling left as an exercise for the reader! And we're
done! You can try it on the example source above - you should get an
output like

::

    11.0
    All done!

But really, making that example was pretty hard. All you had to do was
copy and paste but I had to type the whole thing out. After all, I'm
putting this together in the order you're reading it. What we'd really
like is to be able to type

::

    x = 4
    x + 7
    " All done!

and automatically get that source tree. So let's make a syntax that we
can use with merman to do this.

Syntax file structure
=====================

merman syntax files are Lua scripts that return a table describing the
syntax. When you open a source file in merman, it automatically loads
the corresponding syntax file from ``~/.config/merman/syntaxes``
(``~/Library/Preferences/merman/syntaxes`` on Mac, something like
``c:\Users\User\AppData\merman\syntaxes`` on Windows -
``syntax_luxem.lua`` is placed there the first time you run merman so
you can search for that) based on the source file extension. We'll use
the extension ``.calclang`` with our source files, so create a file
there named ``syntax_calclang.lua``.

The returned table has a number of sections, but the only ones we'll
bother with today are ``types``, ``groups``, ``root``, ``styles``, and
``pretty_save``. The full syntax specification can be found
`here <https://github.com/Rendaw/merman/wiki/Syntax-Reference>`__.

A brief terminology overview
----------------------------

In merman, the nodes in the AST are referred to as ``atoms``. Remember
this, since it will be used a lot from here on. A ``gap`` is an
incomplete atom. Screen layout is done on the ``visuals`` of the
displayed atoms, which are composed of ``bricks``. The ``bricks`` are
placed in ``courses`` and the courses in a ``wall``.

Sections
--------

types
~~~~~

``types`` is a list of atom type definitions. Each type has a ``back`` -
a description of how the atom is stored in the AST, a ``front`` - how
the atom is modified and displayed to the user (how and which bricks are
placed for the atom), and a ``middle`` which describes the specific
modifiable components which connect the front and back.

groups
~~~~~~

When nesting atoms within other atoms you need to specify the type of
the atoms that can be nested. ``groups`` are type ids that represent a
collection of other type ids.

root
~~~~

``root`` is another atom type that only exists at the root of the source
file. This atom is effectively outside the document - it cannot be
deleted or replaced. It also has a few special properties compared to
normal atom types - for instance, its type id is always ``root``.

styles
~~~~~~

Rules regarding how to display and layout bricks are listed in
``styles``. When a brick is styled, each style listed in this section is
tested against it in turn. If the brick has all the tags that are
required (and none that are forbidden), the style is applied to the
brick. The specified values of subsequent styles that match override
values from previous styles.

pretty\_save
~~~~~~~~~~~~

If true, the source code will have spaces and new lines to make it
easier to read.

Things like hotkeys also need to be defined in the syntax, but merman
comes with a reasonable premade set of those which we will use. Use this
as a skeleton for your syntax:

.. code-block:: lua

    local _hotkeys = require 'hotkeys'
    
    local syntax = {
        types = {
        },
        groups = {
        },
        root = {
        },
        styles = {
        },
        pretty_save = true,
    }
    
    _hotkeys.create():apply(syntax)
    
    return syntax

Creating an atom
================

To start with, let's define the syntax for serializing and deserializing
``add``. If you recall the example source code, when serialized the
``add`` atom is written as a typed (``(add)``) record ``{}``, and within
the record two keys ,\ ``left`` and ``right``, which both contain
expressions. This is how we define ``back`` to produce that
serialization. Create an empty table within ``types`` and add to it

.. code-block:: lua

                    type {
                        type = 'add',
                        value = record {
                            left = data_atom 'left',
                            right = data_atom 'right',
                        },
                    },
                },

The words ``type``, ``record`` and ``atom`` in the above are built-in
helper functions that add the types ``record`` and ``atom`` respectively
to their argument. As an aside, since there are a lot of type helper
functions, it may make sense to prefix variables you use (if you use
any) with a ``_`` to make sure they don't overlap.

The ``atom``\ s mean that the keys ``left`` and ``right`` contain nested
atoms. The ``'left'`` following ``atom`` is the name of the ``middle``
part which describes what can be nested. Define that next.

.. code-block:: lua

                    left = atom 'expression',
                    right = atom 'expression',
                },

The middle part type ``atom`` only has one parameter, the type id of the
atoms that may be nested. We haven't defined ``expression`` yet, but it
will be a group of types including all the operators, ``name``, and
``recall``.

Lastly, we to show the user ``x + 7``. Let's also give all the operators
a color to distinguish them from other parts of the language. Define the
``front`` as

.. code-block:: lua

                    atom 'left',
                    symbol { type = text '+', tags = { 'operator_color' } },
                    atom 'right',
                },

Again, ``left`` and ``right`` refer to the corresponding ``middle``
parts. The ``+`` is fixed text brick that will be inserted between the
two. It will be automatically used to disambiguate this operator from
the others if you type it after typing the left expression. The ``tags``
elements become ``free`` tags on the symbol's brick.

To change the color of the operators, add this table to ``styles``

.. code-block:: lua

                with = { free 'operator_color' },
                color = rgb { r = 1, g = 0, b = 0 },
            },

To finish the type, give it the type ``id`` ``add`` and ``name``
``Add Operator``.

.. code-block:: lua

                id = 'add',
                name = 'Add Operator',
                back = {
                    type {
                        type = 'add',
                        value = record {
                            left = data_atom 'left',
                            right = data_atom 'right',
                        },
                    },
                },
                middle = {
                    left = atom 'expression',
                    right = atom 'expression',
                },
                front = {
                    atom 'left',
                    symbol { type = text '+', tags = { 'operator_color' } },
                    atom 'right',
                },
            },

Putting it all together
=======================

The above needs to be repeated and adjusted for the remaining operators.
We'll style all the operators red, ``number`` and ``recall`` green, and
the statements blue. Since ``number`` and ``recall`` are slightly
different let's address them individually. The other atom type are
relatively straightforward so you should be able to do those on your
own.

.. code-block:: lua

                id = 'number',
                name = 'Number',
                back = {
                    type {
                        type = 'number',
                        value = data_primitive 'value',
                    },
                },
                middle = {
                    value = primitive {
                        pattern = rep1 { pattern = union { digits {}, string '.' } },
                    },
                },
                front = {
                    primitive { middle = 'value', tags = { 'number_recall_color' } },
                },
            },

A ``primitive`` is any free text value. We specified a ``pattern``
(essentially a regex) to help merman distinguish it from ``recall``
(which also takes free text) when you're writing a program:

.. code-block:: lua

                id = 'recall',
                name = 'Recall',
                back = {
                    type {
                        type = 'recall',
                        value = data_primitive 'name',
                    },
                },
                middle = {
                    name = primitive {
                        pattern = rep1 { pattern = letters {} },
                    },
                },
                front = {
                    primitive { middle = 'name', tags = { 'number_recall_color' } },
                },
            },

For a short explanation of ``pattern``:

-  ``rep0``, ``rep1`` match the nested pattern multiple times; at least
   once for ``rep1``, any number of times for ``rep0``
-  ``seq`` is a list of nested patterns that must match in sequence
-  ``union`` is a list of nested patterns of which one must match
-  ``class`` is a union of the characters in the string
-  ``any`` matches any character
-  ``letters``, ``digits`` match a single letter and digit, respectively

Add the style

.. code-block:: lua

                with = { free 'number_recall_color' },
                color = rgb { r = 0, g = 1, b = 0 },
            },

That's all the types, now make the groups for expression atoms and
statement atoms:

.. code-block:: lua

            expression = {
                'add',
                'subtract',
                'multiply',
                'divide',
                'exponent',
                'number',
                'recall',
            },
            statement = {
                'bind',
                'expression',
                'label',
            },
        },

With that we have everything we need to define the root atom. To make
statements appear on separate lines we need add a ``space`` front part
to act as a line break and style it as such.

.. code-block:: lua

            back = { root_data_array 'data' },
            middle = {
                data = array {
                    type = 'statement'
                }
            },
            front = {
                array {
                    middle = 'data',
                    prefix = {
                        { type = space {} }
                    },
                },
            },
        },

``root_data_array`` is a special back type that can only be used in the
root. It means roughly "de/serialize this like an array but without the
[]'s".

Add the style

.. code-block:: lua

                with = { type 'root', part 'space' },
                split = true,
            },

The ``type`` and ``part`` tags are automatically generated, but you
could also add your own ``free`` tags to the front element if you wanted
to reuse this style.

`Here <#appendix-1-syntax-source>`__'s the assembled syntax.

Creating a source file with your syntax
=======================================

It's time to fire up merman. We'll make a source file called
``example.calclang`` that is the same as the example above, so start
merman with ``java -jar merman.java example.calclang``. You'll be
greeted with this:

IMAGE BLANK

We're currently in a gap in the root array. Type ``x``:

IMAGE AMBIG

We're still in a gap - merman doesn't know if we're starting a bind
statement or an expression statement that starts by recalling ``x``. You
can see that in the box that pops up below the cursor. You can use
``ctrl + up/down`` to select from the choices and ``ctrl + enter`` to
commit, but hold off on that for now. If we type a bit more, merman will
figure out what we wanted on its own. By the way, if you look at
``~/.config/merman/syntaxes/hotkeys.lua`` there's a full listing of the
hotkeys we're using.

Type ``=``

IMAGE STATEMENT

The color changed! The gap was filled with a bind statement. Now we're
in a gap *within* the bind statement. Type ``4``

IMAGE DONE

That also changed color, so we're done with that statement. Whew,
alright, 3 keypresses done! I had to press several hundred though. Let's
move on - press escape twice until we've highlighted the statement in
the array, and press ``a`` to add a statement after the current one. If
you accidentally went up the tree too far, press enter to go back down.

IMAGE NEW STATEMENT

Rinse and repeat with the remaining lines. Note: we didn't include text
symbols with spaces in any of our types so if you add a space to the gap
it won't match anything.

IMAGE DONE

And we're done! Save it and let's run.

Running the interpreter
=======================

Run ``python calclang.py example.calclang``.

You should see

::

    7
    All done!

You did it!

In the next episode we'll reproduce C++, all in 30 minutes. Look forward
to it!

Appendix 1: Syntax source
=========================

.. code-block:: lua
    :linenos:

    local _hotkeys = require 'hotkeys'
    
    local syntax = {
        types = {
            {
                id = 'add',
                name = 'Add Operator',
                back = {
                    type {
                        type = 'add',
                        value = record {
                            left = data_atom 'left',
                            right = data_atom 'right',
                        },
                    },
                },
                middle = {
                    left = atom 'expression',
                    right = atom 'expression',
                },
                front = {
                    atom 'left',
                    symbol { type = text '+', tags = { 'operator_color' } },
                    atom 'right',
                },
            },
            {
                id = 'subtract',
                name = 'Subtract Operator',
                back = {
                    type {
                        type = 'subtract',
                        value = record {
                            left = data_atom 'left',
                            right = data_atom 'right',
                        },
                    },
                },
                middle = {
                    left = atom 'expression',
                    right = atom 'expression',
                },
                front = {
                    atom 'left',
                    symbol { type = text '-', tags = { 'operator_color' } },
                    atom 'right',
                },
            },
            {
                id = 'multiply',
                name = 'Multiply Operator',
                back = {
                    type {
                        type = 'multiply',
                        value = record {
                            left = data_atom 'left',
                            right = data_atom 'right',
                        },
                    },
                },
                middle = {
                    left = atom 'expression',
                    right = atom 'expression',
                },
                front = {
                    atom 'left',
                    symbol { type = text '*', tags = { 'operator_color' } },
                    atom 'right',
                },
            },
            {
                id = 'divide',
                name = 'Divide Operator',
                back = {
                    type {
                        type = 'divide',
                        value = record {
                            left = data_atom 'left',
                            right = data_atom 'right',
                        },
                    },
                },
                middle = {
                    left = atom 'expression',
                    right = atom 'expression',
                },
                front = {
                    atom 'left',
                    symbol { type = text '/', tags = { 'operator_color' } },
                    atom 'right',
                },
            },
            {
                id = 'exponent',
                name = 'Exponent Operator',
                back = {
                    type {
                        type = 'exponent',
                        value = record {
                            left = data_atom 'left',
                            right = data_atom 'right',
                        },
                    },
                },
                middle = {
                    left = atom 'expression',
                    right = atom 'expression',
                },
                front = {
                    atom 'left',
                    symbol { type = text '^', tags = { 'operator_color' } },
                    atom 'right',
                },
            },
            {
                id = 'number',
                name = 'Number',
                back = {
                    type {
                        type = 'number',
                        value = data_primitive 'value',
                    },
                },
                middle = {
                    value = primitive {
                        pattern = rep1 { pattern = union { digits {}, string '.' } },
                    },
                },
                front = {
                    primitive { middle = 'value', tags = { 'number_recall_color' } },
                },
            },
            {
                id = 'recall',
                name = 'Recall',
                back = {
                    type {
                        type = 'recall',
                        value = data_primitive 'name',
                    },
                },
                middle = {
                    name = primitive {
                        pattern = rep1 { pattern = letters {} },
                    },
                },
                front = {
                    primitive { middle = 'name', tags = { 'number_recall_color' } },
                },
            },
            {
                id = 'bind',
                name = 'Bind statement',
                back = {
                    type {
                        type = 'bind',
                        value = record {
                            name = data_primitive 'name',
                            expression = data_atom 'expression',
                        },
                    },
                },
                middle = {
                    name = primitive {
                        pattern = rep1 { pattern = letters {} },
                    },
                    expression = atom 'expression',
                },
                front = {
                    primitive { middle = 'name', tags = { 'statement_color' } },
                    symbol { type = text '=', tags = { 'statement_color' } },
                    atom 'expression',
                },
            },
            {
                id = 'label',
                name = 'Label statement',
                back = {
                    type {
                        type = 'label',
                        value = data_primitive 'text',
                    },
                },
                middle = {
                    text = primitive {},
                },
                front = {
                    symbol { type = text '"', tags = { 'statement_color' } },
                    primitive 'text',
                },
            },
        },
        groups = {
            expression = {
                'add',
                'subtract',
                'multiply',
                'divide',
                'exponent',
                'number',
                'recall',
            },
            statement = {
                'bind',
                'expression',
                'label',
            },
        },
        root = {
            back = { root_data_array 'data' },
            middle = {
                data = array {
                    type = 'statement'
                }
            },
            front = {
                array {
                    middle = 'data',
                    prefix = {
                        { type = space {} }
                    },
                },
            },
        },
        styles = {
            {
                with = { free 'number_recall_color' },
                color = rgb { r = 0, g = 1, b = 0 },
            },
            {
                with = { free 'operator_color' },
                color = rgb { r = 1, g = 0, b = 0 },
            },
            {
                with = { free 'statement_color' },
                color = rgb { r = 0, g = 0, b = 1 },
            },
            {
                with = { type 'root', part 'space' },
                split = true,
            },
        },
        pretty_save = true,
    }
    
    _hotkeys.create():apply(syntax)
    
    return syntax

Appendix 2: Interpreter source
==============================

.. code-block:: python
    :linenos:

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

Appendix 3: Example source
==========================

.. code-block::
    :linenos:

    (bind) {
        expression: (number) 4,
        name: x,
    },
    (add) {
        left: (recall) x,
        right: (number) 7,
    },
    (label) "All done!",
