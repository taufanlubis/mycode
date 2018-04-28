section .text
global _start
_start:

    ;print 1 to 9
    mov ecx,10
    mov eax,'1'
    
    repeat:
    mov [num],eax
    
        ;print
        mov eax,4    
        mov ebx,1
        push ecx
        mov ecx,num
        mov edx,1
        int 0x80

    mov eax,[num]
    sub eax,'0'
    inc eax
    add eax,'0'
    pop ecx
    loop repeat

    mov eax,1
    int 0x80

section .bss
    num resb 1
