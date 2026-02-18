[bits 16]
[org 0x7c00]

start :
	mov ah, 0x0e
	mov al, 'H'
	int 0x10
loop:
	jmp loop
times 510-($-$$) db 0
dw 0xAA55
