; multi-segment executable file template.

data segment
    ; add your data here!
    temp db 13h,10h,4h,17h,3h,5h,12h,2h,19h,7h; 
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
                           
    mov cx,10;                       
    lea si,temp; Stores the effective address of temp variable
               ; in si reg.  
          
    mov ah,00;           
    mov al,[si];
L1: dec cx;
    cmp cx,0;
    JLE L3;
    inc si;     
    mov bl,[si];
    cmp al,bl;
    JNC L2;
    JMP L1;
              
L2: mov al,bl;
    JMP L1;
    
L3:                  
       
ends

end start ; set entry point and stop the assembler.
