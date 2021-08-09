### Contents
[What's New?](#whats-new)  
[What Is This?](#what-is-this)  
[Why Is This Useful?](#why-is-this-useful)  
[Using This Documentation](#using-this-documentation)  
[The Settings](#the-settings)  
[Issues](#issues)  
[Learn More](#learn-more)  
&emsp;[EmmyLua Annotations](#emmylua-annotations)  
&emsp;[sumneko's Language Server](#sumnekos-language-server)  
&emsp;[The Manual](#the-manual)
***
# What Is This?  
This documentation is meant to be used to help with Lua scripts made in the
[Figura](https://modrinth.com/mod/figura) Minecraft mod.

This documentation contains Lua files with EmmyLua Annotations which add all kinds of documentation
to Figura's functions, classes, and events.  
Functions have their parameters and return values documented, classes have their methods and fields
documented. Events have their name and suggested parameter name documented.

# Why Is This Useful?  
Currently (as of 0.0.6), Figura's wiki is pretty barebones and does not contain many of the new
globals and methods introduced in Figura 0.0.6 which prompted me to try my hand at documenting all
of it myself.

I decided to take the documentation one step further and allow it to be read in VSCode without
having to switch to a wiki page every time you want to look at a function or the methods of a class.

# Using This Documentation  
This documentation uses EmmyLua Annotations to document everything, so you should use a Lua Language
Server that supports it. (Such as
[sumneko's Language Server](#sumnekos-language-server).)

**(If you use Manuel_'s
[Figura Extension](https://marketplace.visualstudio.com/items?itemName=Manuel-Underscore.figura),
you will not need to manually install it. Just enable the `figura.checkForNewDocumentationVersion`
and `figura.useLanguageServer` settings to have this documentation downloaded automatically.)**

The `.vscode` folder supplied should be placed in `<minecraft>\figura\model_files\` and the
workspace should have the `model_files` folder be the root.  
If your workspace already has a `.vscode` folder in the `model_files` folder, then you will need to
merge the `settings.json` with
the currently existing settings to stop your settings from being overwritten.

The documentation also has a built-in [manual](#the-manual) to help you learn how the documentation
is handled.

# The Settings
This documentation comes with a `settings.json` that changes how VSCode and sumneko's Language
Server work to better fit Figura. The following settings are set by the `settings.json`:

* `"editor.wordBasedSuggestionsMode": "currentDocument"`  
Used to change suggest to only suggest words in the current file. This setting only applies to
default suggest.

* `"Lua.completion.workspaceWord": false`  
Used to only allow the Lua Language Server to suggest words in the current file. This setting
does not apply to the fields of globals. (See the [Issues](#issues) section for more
information.)

* `"Lua.completion.displayContext": 0`  
Disables "context" from function and class documentation due to the documentation not having any
context lines, causing "context leak."

* `"Lua.hint.enable": true`  
`"Lua.hint.setType": true`  
Enable hints for variables and parameters. These hints tell you what type of value a variable
could be carrying and tells you the names of parameters in functions.  
The second setting allows hints to be shown when assigning a variable with a value that is not
obvious.

* `"Lua.runtime.version": "Lua 5.2"`  
Sets the active version of Lua to the version that Figura uses.

* `"Lua.telemetry.enable": false`  
Disables telemetry from sumneko's Language Server. You can turn it back on if you wish. This
option is simply here so that people do not send information they do not want to send without
their consent.

* `"Lua.diagnostics.workspaceDelay": -1`  
Stops other files in the workspace from attempting to update if an unrelated file was updated.

* 
  ```json
  "Lua.diagnostics.disable": [
    "lowercase-global",
    "trailing-space",
    "unbalanced-assignments",
    "duplicate-doc-class"
  ]
  ```
  Disables diagnostics that do not affect Figura scripts. Specifically:
  * Stops warning about lowercase globals. (A Lua standard is to make *all* global variables start
with an uppercase character or be all caps and to make local variables lowercase.)
  * Ignores trailing spaces after a line, this was mainly used to stop the documentation from
causing errors.
  * An unbalanced assignment will almost *never* happen in Figura unless you make your own
function with more than one return.
  * Stops custom classes from multiple different files from conflicting with eachother.

* 
  ```json
  "Lua.diagnostics.severity": {
    "unused-local": "Information",
    "unused-vararg": "Information",
    "redundant-parameter": "Information",
    "redundant-value": "Information",
    "redefined-local": "Information"
  }
  ```
  Changes the severity of some issues to better highlight errors. Specifically it reveals:
  * A local variable is not being used in the block it was declared in.

  * A vararg (`...`) is not being used in the function is was declared in.

  * An attempt to give too many values to a function.

  * An assignment has a value that cannot be stored due to there not being enough variables to
take all of the values.

  * A variable was declared locally more than once in the same block.

  None of these issues will cause errors, but they will cause the code to not behave properly.

* 
  ```json
  "Lua.workspace.library": [
    "./.vscode/figura/"
  ]
  ```
  Actually initializes the documentation. Changing this will disable the documentation entirely.

# Issues  
* sumneko's Language Server likes to search other lua files in the workspace for fields of globals.
I do not have a way of fixing this at the moment and the current settings do not stop this
behavior.

* The Language server does not understand how math operations on `Vector` objects work, do not
expect a `Vector` created with math to autocomplete properly. (This can be somewhat remedied by
adding a `@type` [annotation](#emmylua-annotations) in the line before the expression.)

# Learn More
## EmmyLua Annotations
This documentation uses
[EmmyLua Annotations](https://github.com/sumneko/lua-language-server/wiki/EmmyLua-Annotations) to
generate its documentation. Your functions can also use this to generate documentation for them as
well. This allows others to learn what your functions do and what parameters they take to work.

## sumneko's Language Server
This documentation uses
[sumneko's Language Server](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) to
read over the documentation and convert it to a format usable by VSCode's suggest feature.

While any Language Server that can read EmmyLua Annotations is supported, the `settings.json` will
only work with sumneko's server.

## The Manual
This documentation also contains a manual that allows you to learn about this documentation while
inside VSCode.

To use it, you will need to type `help` onto an empty line and index the given table as if it was a
normal Lua table. Each index has its own page of information, and some indexes even contain more
indexes.

As an example, if you wanted to learn more about the ItemStack class, you could type
`help.class.ItemStack` to learn more about it.
