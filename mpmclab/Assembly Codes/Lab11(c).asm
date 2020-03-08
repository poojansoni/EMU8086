; multi-segment executable file template.

data segment
    temp1 db "abhishek";
    temp1len equ $-temp1;
    temp2 db "bhushan";  
    temp2len equ $-temp2;
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax

    mov ax,00;
    mov al,temp1len;
    mov bl,temp2len;

      
ends

end start ; set entry point and stop the assembler.
