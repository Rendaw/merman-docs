This documentation describes the Lua configuration for syntax.Syntax.

Some values are typed. Specify types with built-in unary functions which take the value to be typed. For example, to place a dog in field animal, write `dog { name = "fido" }`. Types are indicated in the documentation as a word in parentheses.

Note that types only need to be specified where indicated.

Also, if a type only has one required field, the field can be filled directly, so:
```
repeat { count = 4 }
```
may be shortened to:
```
repeat 4
```

## Document root

The root element of the document is:
syntax.Syntax

# Types

### editor.visual.tags.FreeTag

A tag that is not bound in relation to any property.  These tags may be created by the user or a module.

Field | Definition
--- | ---
**value** | <dl><dt>Values</dt><dd>Any string</dd><dt>Required</dt><dd><em>Yes</em></dd></dl>