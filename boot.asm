[bits 16]
[org 0x7c00]

start :
	mov ah, 0x0e
	mov al, 'H'
	int 0x10
	mov al , 'e'
	int 0x10
	mov al, 'l'
	int 0x10
	mov al, 'l'
	int 0x10
	mov al, 'o'
	int 0x10
	mov al, ''
	int 0x10
	mov al, 'N'
	int 0x10
	mov al, 'a'
	int 0x10
	mov al, 'b'
	int 0x10
	mov al, 'a'
	int 0x10
	mov al, 'z'
	int 0x10
loop:
	jmp loop
times 510-($-$$) db 0
dw 0xAA55
