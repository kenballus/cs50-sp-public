# cs50-sp-public

This repository stores 3 primary things: lecture slides, handouts, and assignments.

## Lecture Slides

Lecture slides are distributed as LaTeX source code.
LaTeX is a typesetting language that can be compiled to PDF.
In order to compile the LaTeX source code, simply run `make` in the directory containing the `.tex` file.
For example, to compile the slides from the first class,
```bash
cd ./slides/00_compiling_and_integers
lualatex -shell-escape main.tex
```
That should produce a file named `main.pdf` that you can `scp` to your laptop and view.

## Handouts

Handouts are distributed as Markdown.
Markdown is a simple text formatting language that can be read as plain text.
It can also be compiled to PDF, HTML, or even LaTeX.
If you'd like to compile the Markdown files into another format, use `pandoc`.
For example, to compile the shell commands handout,
```bash
cd ./handouts/shell_commands
pandoc -i shell_commands.md -o shell_commands.pdf
```
That should produce a file named `shell_commands.pdf` that you can `scp` to your laptop and view.

## Assignments

Assignments, like handouts, are distributed as Markdown, and can be compiled to PDF in exactly the same way.
For example, to compile the first assignment,
```bash
cd ./assignments/00_vec3
pandoc -i assignment.md -o assignment.pdf
```
That should produce a file named `assignment.pdf` that you can `scp` to your laptop and view.
