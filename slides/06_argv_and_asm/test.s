.intel_syntax noprefix

sum_three:
    add rax, rdi
    add rax, rsi
    ret

log2:
    

.global main
main:
    call log2
    ret
