; multi-segment executable file template.

data segment
    Str db "ABCDEF"; 
    Strlen equ $-Str;
    Rev db 6 Dup(1);

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
    lea si,Str;
    lea di,Rev;
    
    mov bx,Strlen;
    mov si,bx;    
    dec si;        We decrement si becoz index value start from '0'
    mov cx,Strlen;
    
    L1: cmp cx,0;
        JLE L2;
        mov al,[si];
        mov [di],al;
        inc di;
        dec si;     
        dec cx;
        JMP L1;
        
    L2:
                   
ends

end start ; set entry point and stop the assembler.
