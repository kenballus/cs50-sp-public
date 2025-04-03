---
geometry: margin=1in
---

# Shell Concepts Cheat Sheet

### `.`
    - Shorthand for the current working directory.
### `..`
    - Shortand for the parent directory of the current working directory.
### `$?`
    - A shell variable that contains the exit status (returned value from `main`) of the last executed command.
    - Example: `echo "$?"`
### `;`
    - Allows many commands to be executed in a single line of input.
    - Example: `gcc test.c; ./a.out; echo $?`
