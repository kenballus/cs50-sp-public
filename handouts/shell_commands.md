---
geometry: margin=1in
---

# Shell Command Cheat Sheet

## SSH

### `ssh-keygen`
    - Purpose: Generates an SSH keypair, storing the result in the `~/.ssh` directory.
### `ssh`
    - Purpose: Provides shell access to a remote system.
    - Example: `ssh bkallus@plink.cs.dartmouth.edu`
    - Flags:
        - `-i some_private_key`
            - Uses the specified private key (identity file) instead of the default private key.
### `scp`
    - Purpose: Copies files to and from remote systems.
    - Example `scp bkallus@plink.cs.dartmouth.edu:cs50-sp-public/handouts/shell_commands.md .`
        - Copies this file from `plink` to my local machine.
        - Note that this must be run from your laptop, not `plink`.

## Filesystem Interaction

### `cd`
    - Purpose: Changes your current working directory.
    - Example: `cd ./slides`
### `ls`
    - Purpose: Lists the files in the current working directory.
    - Flags:
        - `-a`
            - Shows hidden files.
        - `-l`
            - Shows extra information, such as last-modified date, file size, and file permissions.
### `cp`
    - Purpose: Copies files
    - Example: `cp example.txt copy_of_example.txt`
    - Flags:
        - `-r`
            - Needed when copying directories. By default, `cp` only copies plain files, not directories.
### `mv`
    - Purpose: Moves and/or renames files.
    - Example: `mv some_file.txt ../`
        - Moves a `some_file.txt` into the parent directory
    - Example: `mv some_file.txt some_file_with_a_new_name.txt`
        - Renames `some_file.txt` to `some_file_with_a_new_name.txt`
### `pwd`
    - Purpose: Displays your current working directory.
### `rm`
    - Purpose: Deletes files
    - Example: `rm some_file.txt`
### `rmdir`
    - Purpose: Deletes empty directories
    - Example: `rmdir some_empty_directory`

## Reading and Writing Files

### `nano some_file`
    - Purpose: Opens `some_file` for editing in the `nano` text editor.
### `cat some_file`
    - Purpose: Displays the content of `some_file`.
### `bat some_file`
    - Purpose: Displays the content of `some_file` with syntax highlighting.
### `less some_file`
    - Purpose: Displays the content of `some_file` in a scrolling terminal interface.

### Git

### `git clone`
    - Purpose: Copies a remote Git repostiory to the current working directory
    - Example: `git clone https://github.com/kenballus/cs50-sp-public`
### `git pull`
    - Purpose: Fetches and merges the latest changes to a Git repository from a remote Git server.

## Typesetting

### `pandoc`:
    - Purpose: Compiles Markdown documents to various file formats.
    - Example: `pandoc -i shell_commands.md -o shell_commands.pdf`
    - Flags:
        - `-i some_input_file.md`
            - Specifies the input file
        - `-o some_output_file.pdf`
            - Specifies the output file
### `lualatex`:
    - Purpose: Compiles LaTeX documents to PDF.
    - Example: `lualatex todays_class_slides.tex`

## C Programming

### `gcc`, `clang`
    - Purpose: Compiles C programs.
    - Example: `gcc test.c`
    - Flags:
        - `-o some_output_file`
            - Specifies the desired file name of the resulting executable. Defaults to `a.out`.
        - `-Wall -Wextra -Wpedantic -Wvla -Wshadow`
            - Enables useful compiler warnings
        - `-fsanitize=address,undefined`
            - Enables AddressSanitizer and UndefinedBehaviorSanitizer
        - `-ggdb`
            - Adds extra debugging information.
        - `-O`
            - Enables compiler optimizations.
        - `-O0`
            - Disables compiler optimizations.
        - `-c`
            - Instructs the compiler driver to skip linking.
        - `-S`
            - Instructs the compiler to skip assembling and linking.
        - `-E`
            - Instructs the compiler to skip compilation, assembly, and linking. (i.e., to only preprocess)
### `clang-format`
    - Purpose: Automatically formats your C source code.
    - Example: `clang-format -i test.c`
    - Flags:
        - `-i`
            - Instructs `clang-format` to format the C files in-place instead of just printing the formatted code.
        - `--style='{IndentWidth: 4, AllowShortFunctionsOnASingleLine: false}'`
            - Instructs `clang-format` to use better styling rules, in my opinion.

## Miscellaneous

### `man`
    - Purpose: Displays manual pages.
    - Example: `man ls`
### `tldr`
    - Purpose: Like `man`, but more concise.
    - Example: `tldr ls`
### `echo`
    - Purpose: Prints its arguments.
### `btop`
    - Purpose: Displays system resource usage information with a pretty UI.
