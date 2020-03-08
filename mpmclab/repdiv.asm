
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;division using repititive subtraction
mov ax,4000h
mov bx,1000h

        l1:
        sub ax,bx
        jnz l1
hlt            

ret




