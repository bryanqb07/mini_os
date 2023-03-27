[org 0x7c00]

mov bx, greeting_string
call print_string
jmp $

%include "print_string.asm"

greeting_string:
	db 'Welcome to my OS!',0
	
times 510 - ($ - $$) db 0
dw 0xaa55
