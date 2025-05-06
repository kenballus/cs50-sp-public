---
geometry: margin=1in
---

# Assignment 03: `hexdump_c`, Due Friday, May 2

In this assignment, your task is to write a Linux x86_64 assembly program named `hexdump_c` that behaves exactly like `hexdump -C`.

That is, for any sequence of files `f1 f2 f3 f4`, running
```bash
hexdump -C f1 f2 f3 f4
```
and running 
```bash
./hexdump_c f1 f2 f3 f4
```
should give exactly the same output, byte-for-byte.

Your program should not use libc at all.
That is, you should define `_start`, and compile with `-nostdlib` and `-static`.

### Notes:
- You don't need to support any of the command-line options that `hexdump` can take.
- You don't need to error-check your `read` and `write` syscalls. Just assume that they worked.
- You don't need to support files more than $2^{32}-1$ bytes long.

# Grading

This assignment's grading structure is exactly the same as all the other assignments' grading structures.
