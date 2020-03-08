; multi-segment executable file template.

data segment
    temp db 5h,15h,4h,7h,3h,9h,6h;
    templen equ $-temp;
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; BUBBLE SORT
    mov ax, data
    mov ds, ax
    mov es, ax    
    
    mov ax,00;
    mov bx,00;            
    lea si,temp;
    lea di,temp; 
    mov cx,templen;
    
    LY: cmp cx,1;
        JLE LX;
        dec cx;
        inc si;
        JMP LY;
        
    LX: mov cx,templen;
        mov dx,si;
        inc dx;
        inc di;
        lea si,temp; 
        JMP L1;    
    
    L1: cmp dx,di;
        JLE L2;
        cmpsb;        cmpsb auto increments the values of di n si
        JNC L3;
        JMP L1;
               
    L3: dec si;
        dec di;
        mov al,[si]; 
        mov bl,[di];
        mov [di],al; 
        mov [si],bl; 
        inc si;
        inc di;
        JMP L1;
        
    L2: cmp cx,0;
        JLE L5;
        dec cx; 
        lea si,temp;
        lea di,si;
        inc di;
        JMP L4;
        
    L4: dec dx;
        JMP L1;
        
    L5:           
           
ends

end start ; set entry point and stop the assembler.
