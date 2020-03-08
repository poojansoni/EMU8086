
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; calculate sum of xi^2 where i = 0 to 10 stored in successive memory location 
mov cx,0bh
mov [4000h],00h
mov [4001h],01h
mov [4002h],02h
mov [4003h],03h
mov [4004h],04h
mov [4005h],05h
mov [4006h],06h
mov [4007h],07h
mov [4008h],08h
mov [4009h],09h
mov [400ah],0ah
mov si,4000h
loop:
mov al,[si]
mul al
add bl,al
inc si
dec cx 
jnz loop
stc 
adc bh,bh
ret




