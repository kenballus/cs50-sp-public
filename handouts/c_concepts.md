---
geometry: margin=1in
---

### C Concepts Cheat Sheet

### Whitespace
    - In general, whitespace in C doesn't affect program behavior at all.
    - It does, however, affect readability. Be consistent with your spacing.

### `if (condition) { ... } else { ... }`
    - If the condition is nonzero, execute the code in the first block. Otherwise, execute the code in the second block.
    - Not providing an `else` is equivalent to providing `else {}`.
### `while (condition) { ... }`
    - Execute the code in the block repeatedly until the condition is zero.

### Function return type conversion
    - When possible, function return values are automatically cast to the appropriate type. That is, if a function with return type `char` returns a variable of type `int`, then that `int` is converted to `char` automatically.

### Empty argument parentheses
    - Empty argument parentheses indicates that a function can take any number of arguments. To declare a function that takes no arguments, use `(void)` instead.

### `sizeof` is an operator, not a function
    - `sizeof` is an operator, not a function. This distinction is important and will come up later in the course. To make this clear, I encourage you to place a space after every instance of `sizeof` in your programs.

### The returned value from `main`
    - The returned value from `main` is the exit status of your program.
    - When the execution of `main` doesn't hit a return statement, `main` implicitly returns 0. This is a special case just for functions named `main`; other functions won't do this.

### Integer wraparound
    - When unsigned integers overflow/underflow, they wrap around. You can therefore think of $n$-bit unsigned integer math as though it's done modulo $2^n$.
    - Signed integer overflow/underflow is undefined behavior, so never allow your signed integers to get too big or small.

### Integer literals
    - Integer literals default to the type `int`.
    - If you need more range than `int`, you need to append a type suffix on your literal.
    - For example, `18446744073709551615` is too big to fit in an `int`, and will not work the way you expect, but `18446744073709551615ul` is fine, because the `ul` type suffix indicates to the compiler to store the number in an `unsigned long`.
