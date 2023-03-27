print_string:
	push ax
	mov ah, 0x0e
loop:	
	mov al, [bx]
	cmp al, 0
	je exit
	int 0x10
	inc bx
	jmp loop
exit:
	pop ax
	ret
