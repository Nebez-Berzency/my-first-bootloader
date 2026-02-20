[bits 16]
[org 0x7c00] ;Bootloader Start Address

start :
	;Init segments
	cli ; Desable interrupts
	xor ax , ax
	mov ds , ax
	mov es , ax
	
	;init stack and safe padding with 512 Bytes
	mov ss , ax
	mov sp , 0x7A00 ; Stack points to 512 Bytes of Bootloader Address

	sti ; Enable interrupts

	;Load msg
	mov si , msg

print :
	lodsb ;Loads bytes at DS:SI into AL then increment SI
	cmp al , 0 ;Check if null with zero
	je done
	mov ah , 0x0e ; BIOS Teletype output function
	int 0x10
	jmp print

done :
	cli 
	hlt 

msg : db 'Hello Nebez'

;Fill remaning sector with zeros
times 510 - ($ - $$) db 0

;Boot signature
dw 0xAA55

