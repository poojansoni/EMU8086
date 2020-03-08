
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; wap to declare an array and calculate sum of ele
data segment
    array db 10h,20h,30h,40h,50h
data ends
code segment
    assume cs:code ds:data
    start:
    mov bx,data
    mov ds,bx
    lodsb
    mov cx,05h
    mov bx,00h
    mov si,offset array
    l1:
    add bx,ax
    dec cx
    jz l2
    l2:
    exit 
code ends
end start

ret




