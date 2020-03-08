
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; wap to mul two 28 bit mumbers

data segment 
    multiplicand db 20h
    multiplier db 30h
    product dw 0000h
data ends

code segment
    assume ds:data cs:code
    start:
    mov ax,data
    mov ds,ax
    mov al,multiplicand
    mov bl,multiplier
    mul bl
    mov product,ax
code ends
end start

ret




