; multi-segment executable file template.  

include 'emu8086.inc'

data segment
    ; add your data here!
    temp db 2h,45h,12h,43h,76h,4h,87h,36h,54h,9h;
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
    
    mov ax,0;
    lea si,temp;
    mov al,16h;
    mov cx,10;
    
L1: dec cx;
    cmp cx,0;
    JLE L3;
    cmp al,[si];
    JZ L2;
    inc si;
    JMP L1;
    
L3: print 'The Element is not present in the Given Array'  
    hlt
    
L2: print 'The Element is present in the given Array'    
    
 
ends

end start ; set entry point and stop the assembler.
