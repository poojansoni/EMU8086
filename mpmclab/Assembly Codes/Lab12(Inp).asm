
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;Take Input from User

mov ah,01h;
int 21h;
mov dl,al;
mov ah,02h;
int 21h;

ret




