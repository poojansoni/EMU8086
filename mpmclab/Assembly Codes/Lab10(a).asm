
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax,8000h;   extra segment
mov es,ax; 
mov di,0008h;   Offset
mov ax,76h;
mov cx,05;
CLD             ;It clears the direction flag such that memory is 
                ;accessed from lower to higher byte
REPNZ scasb;
JNZ L2;
STC 
mov bx,ax;
ret

L2:CLC


ret




