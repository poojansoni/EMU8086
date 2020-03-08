; multi-segment executable file template.

data segment
    Str db "ABCDEF"; 
    Strlen equ $-Str;
    Str1 db 6 Dup(1); 

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
    
    lea si,Str;
    lea di,Str1;
    mov ax,00;
    mov cx,Strlen;
    
    L1:cmp cx,0;
       JLE L2;
       mov al,[si];
       mov [di],al;
       inc si;
       inc di;
       dec cx;
       JMP L1;
       
    L2:   
   
ends

end start ; set entry point and stop the assembler.
