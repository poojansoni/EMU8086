
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; bcd addition
mov al,22h
mov bl,99h
adc al,bl
daa
mov [1000h],al
mov al,00h
adc al,al
mov [1001h],al

ret




