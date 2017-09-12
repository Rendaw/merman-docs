#!/usr/bin/env python3
import glob
import re
import os.path

for source in glob.glob('./**/*.rst.src', recursive=True):
    dirname = os.path.dirname(source)
    dest = re.sub('\\.src', '', source)
    with open(source, 'r') as sourcef:
        text = sourcef.read()

    def literalinclude(match):
        with open(match.group('filename'), 'r') as includef:
            body = includef.read()

        out = '.. code-block::'
        if match.group('language'):
            out += ' ' + match.group('language')
        out += '\n'

        if match.group('linenos'):
            out += '    :linenos:\n'

        body = body.splitlines()
        start = match.group('start')
        end = match.group('end')
        if start is not None:
            body = body[int(start):int(end)]
        out += '\n'
        out += '\n'.join('    ' + line for line in body)

        return out

    re.sub(
        '^\\.\\. literalinclude:: (?P<filename>.*)$'
        '(?:^'
        '(?:    :language: (?P<language>.*))'
        '(?:    (?P<linenos>:linenos:))'
        '(?:    :lines: (?P<start>.*) (?P<end>.*))'
        '$)*',
        literalinclude,
        text,
        re.M,
    )
    with open(dest, 'w') as destf:
        destf.write(text)