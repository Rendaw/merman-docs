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
