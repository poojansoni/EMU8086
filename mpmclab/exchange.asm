
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; wap to exchange two data blocks of 50 bytes present in same mem loc from address 75013h : 76000h use the same mem segment address
mov ax,7501h
mov ds,ax
mov si,0003h
mov di,0ff0h
mov cx,0032h                                                                                         
l1:
mov al,[si]
xchg al,[di]
mov [si],al
inc si
dec di
loop l1
hlt

ret




