; multi-segment executable file template.

data segment
    ; add your data here!
    temp1 db 1h,2h,3h,4h,5h,6h,7h,8h,9h,10h;
    temp2 db 10 Dup(2);  It allocates zero to all ten(10) memory locations
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
    
    lea si,temp1;
    lea di,temp2;
    mov ax,00;
    mov cx,20;
    dec si;
    
 L1: cmp cx,10;
     JLE L2;
     inc si;
     dec cx;
     JMP L1;
     
     
 L2: cmp cx,0;
     JLE L3; 
     mov al,[si];
     mov [di],al;
     inc di;
     dec si;
     dec cx; 
     JMP L2;
     
 L3:       
           
ends

end start ; set entry point and stop the assembler.
