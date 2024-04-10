# all-the-overhaul-modpack (ATOM)

## Project structure

### compatibility

Code to make optional dependencies or mods that are not a dependency work with ATOM.

### content

Stuff that ATOM adds that is considered new content not added by any other mod.

### integrations

Code to make mandatory dependencies work with ATOM. They are a central part of the modpack and hence are not optional.

### util

Utility/library code.

## Conventions

- Please use comments. Especially for functions. See also: https://github.com/LuaLS/lua-language-server/wiki/Annotations
- Don't let files grow too much. Put stuff in separate files to keep things findable.
- Try not to use external utility libraries. Rather use our own utility code. Add missing functions yourself.