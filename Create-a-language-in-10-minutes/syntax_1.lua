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
