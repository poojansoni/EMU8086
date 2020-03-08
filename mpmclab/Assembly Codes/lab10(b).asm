; multi-segment executable file template.

data segment
    ; add your data here!
    temp db 1h,2h,3h,4h,5h,6h,7h,8h,9h,10h;
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
    mov cx,10;
    
    lea si,temp;   
    mov al,[si];
    
L1: dec cx;
    cmp cx,0;
    JLE L2 
    inc si;
    mov bl,[si];  
    add al,bl;
    JMP L1;
    
L2: 
     
ends

end start ; set entry point and stop the assembler.
