---
geometry: margin=1in
---

# Assignment 6: `shell`, Due Tuesday, May 27

In this assignment, you are tasked with implementing a small shell.

Your shell should do this following in a loop, until `stdin` is closed
or an `exit` command is run:

1.  Print a little prompt (often `$`, `>`, `[user@host]`, etc.
2.  Read a line from `stdin`.
3.  Tokenize the line by replacing all spaces, tabs, and newlines with
    `'\0'` bytes.
4.  If the line is a well-formatted `cd` command, appropriately invoke
    `chdir(2)`, and go back to step 1.
5.  If the line is a well-formatted `exit` command, appropriately invoke
    `exit(3)`.
6.  Otherwise, `fork`, then pass your tokenized line as the `argv` to
    the appropriate `exec` function from libc. (Hint: it's not `execve`.)
7.  Wait for the child process to terminate appropriately, then go back
    to step 1.

You are permitted to use any and all functions from libc, but no other external library code is allowed.

## Simplifying Assumptions

You may assume that

1.  A user does not pass an `argv` with more than 255 arguments.
2.  Environment variables don't matter.
3.  Quoting doesn't matter.
4.  Backslash-escape sequences don't matter.

## Example Usage

``` bash
[bkallus@plink ~] ./shell
$ cd /home
$ ls
angelc  axel  bkallus  fish  koh  lamine  owenchen
$ echo the shell works!
the shell works!
$ exit
[bkallus@plink ~]
```

## Being Creative

Make your shell look cool! This is a relatively open-ended, small
assignment, so feel free to improve your shell beyond the minimum
requirements. My solution, which supports environment variable expansion
and a couple other optional features, is only 100 lines of code.

## What to Submit

A single file named `shell.c`, that implements your shell when compiled
and run.

# Use of External Resources

Feel free to use whatever external sources you want, **so long as every
keystroke in your submission is your own.** That is to say, asking
ChatGPT (or StackOverflow, or friends) for help is fine, but
copy-pasting someone (or something) else's code into your submission is
not.

**You are expected to thoroughly and completely understand all code that
you submit.** Your understanding will be assessed during a live,
in-person interview with the course staff, which will count for a
significant portion of your grade.
