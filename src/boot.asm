[bits 16]		 ; Set 16-bit real mode
[org 0x7c00] 		; BIOS loads the bootloader at physical address 0x7c00

start :
	;Init segments
	cli 		; Desable interrupts
	xor ax , ax  
	mov ds , ax	; Set data segment to 0x0000
	mov es , ax     ; Set extra segment to 0x000
	
	;init stack and safe padding with 512 Bytes
	mov ss , ax
	mov sp , 0x7A00 ; Stack points to 512 Bytes of Bootloader Address

	sti ; Re-Enable interrupts
	mov si , msg ; Load msg into source index

print :
	lodsb 		;Loads bytes at DS:SI into AL then increment SI
	cmp al , 0 	;Check if null with zero
	je done 	; If AL == 0 jump to done label
	mov ah , 0x0e   ; BIOS Teletype output function
	int 0x10 	; Trigger video service
	jmp print 	; Repeat for the next char

done :
	cli 
	hlt 		; Halt the cpu 

msg : db 'Hello Nebez'


times 510 - ($ - $$) db 0  ; Fill remaning sector with zeros


dw 0xAA55 		   ; Magic number ; Boot signature

