.intel_syntax noprefix

.global add_2
add_2:
    mov rax, rdi
    mov rbp, 99
    add rax, 2
    ret
