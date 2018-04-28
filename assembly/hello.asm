section .text

global _start

_start:   

	mov eax,4        ;system call number (4=write)
	mov ebx,1        ;file descriptor=1 for stdout, 2 for stderr
	mov ecx, message ;message to write (pointer memory to location containing message)
	mov edx, len     ;message length
        int 0x80         ;call kernel

	;exit the program
	mov eax,1        ;system exit
	int 0x80         ;call kernel

section .data

	message db "Hello World!",10   ;message
	len equ $ - message            ;lenght of message string

