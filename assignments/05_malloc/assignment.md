---
geometry: margin=1in
---

# Assignment 6: `malloc`, Due Thursday, May 22

In this assignment, you are tasked with implementing `malloc`, `calloc`, `realloc`, `reallocarray`, and `free` using `mmap` and `munmap`.

A very simple solution might go something like this:
```C
void *malloc(size_t n) {
    // Do some validation/processing of n...

    size_t *const result = mmap(NULL, n, /* the rest of the mmap args... */);

    // Do some error checking of result...

    result[0] = n; // Store the allocation size, for later use by munmap
    return result + 1; // Return pointer to just after the stored size.
}

void *calloc(size_t n, size_t size) {
    // Just malloc and memset with some error checking
}

void free(void *const p) {
    // Do some validation/processing of p...

    size_t *const size_ptr = (size_t *)p - 1;
    munmap(size_ptr, size_ptr[0]);
}

void *realloc(void *p, size_t size) {
    // Do some validation/processing of p and size...

    void *result = malloc(size);

    // Do some error checking of result...

    // Copy the relevant bytes from p to result

    free(p);
    return result;
}

void *reallocarray(void *p, size_t n, size_t size) {
    return realloc(p, n * size);
}
```
This, however, comes with significant overhead; when you `malloc` 1 byte, you're wasting nearly 4 kilobytes!
I encourage you to think of creative solutions to this problem.
We'll also discuss a few historical approaches in class.

Your `malloc` implementation should waste as few bytes as possible.

\pagebreak

## Edge Cases

Be aware of the following edge cases:

0. `malloc(0)` should return a valid, unique address. A convenient way to implement this is to make `malloc(0)` equivalent to `malloc(1)`.
1. `free(NULL)` should do nothing. It should not crash the program.
2. `realloc(NULL, n)` should be equivalent to `malloc(n)`.
3. `realloc(p, 0)` should be equivalent to `free(p)`.
4. Technically, `reallocarray` and `calloc` should check for integer overflow, but I won't be testing this.
5. Many libc functions call `malloc` internally. To avoid infinite recursion, you should avoid calling most libc functions inside of your `malloc`.

There may be more edge cases to consider. Be sure to thoroughly read `man 3 malloc`.

## Testing Your `malloc`

0. Compile your `malloc` source code into a dynamic library with
```bash
gcc -shared malloc.c -o malloc.so
```
1. Write a `test.c` that calls `malloc`, `free`, `calloc`, `realloc`, and/or `reallocarray` just like any other program.
2. Compile it with
```bash
gcc test.c
```
3. Run `a.out`, substituting the real `malloc` with your own with
```bash
LD_PRELOAD=/the/path/to/your/malloc.so ./a.out
```

Also feel free to test your `malloc` implementation on real binaries installed on the system.
For example, to run `ls` using your `malloc` instead of the default system `malloc`, run
```bash
LD_PRELOAD=/the/path/to/your/malloc.so ls
```

## Debugging

When debugging your `malloc` in `gdb`, you'll need to set `LD_PRELOAD` before running your program using the following `gdb` command:
```
(gdb) set environment LD_PRELOAD=/the/path/to/your/malloc.so
```

## What to Submit

A single file named `malloc.c` with definitions of `malloc`, `calloc`, `realloc`, `reallocarray`, and `free`.

# Use of External Resources

Feel free to use whatever external sources you want, **so long as every keystroke in your submission is your own.**
That is to say, asking ChatGPT (or StackOverflow, or friends) for help is fine, but copy-pasting someone (or something) else's code into your submission is not.

**You are expected to thoroughly and completely understand all code that you submit.**
Your understanding will be assessed during a live, in-person interview with the course staff, which will count for a significant portion of your grade.
