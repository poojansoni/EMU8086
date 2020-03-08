
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; wap to store 8 bt binary no from 00h to ffh into the mem from the address 2000h

mov ax,2000h
mov es,ax
mov di,0000h
mov cx,0ffh
mov ax,00h 
l1:
cld 
stosb
inc ax
loop l1
hlt

ret




