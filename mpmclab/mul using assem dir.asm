
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; using assembler directories wap for mul of n1,n2 store res in variable products assume n1,n2 are two 8 bit no.s

data segment
    n1 db 2
    n2 db 3
    product dw 0
data ends

code segment
    start:
    mov ax,data
    mov ds,ax
    mov al,n1
    mov bl,n2
    mul bl
    mov product,ax
code ends
end start

ret




