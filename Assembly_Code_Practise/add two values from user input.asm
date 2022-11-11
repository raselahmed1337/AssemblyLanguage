.model small
.stack 100h
.data
a db "enter first input $"
b db "enter second input $"  
c db "result $"

.code main
main proc
    mov ax, @data;
    mov ds, ax;
    
    mov ah,09h;
    lea dx,a;
    int 21h; 
    
    mov ah,01h;
    int 21h;
    mov bl,al;
    
    mov ah,09h;
    lea dx,b;
    int 21h; 
    
    mov ah,01h;
    int 21h;
    mov bh,al;
    
    mov ah,09h;
    lea dx,c;
    int 21h; 
    
    add bl,bh;
    sub bl,48;
    
    mov ah,02h;
    mov dl, bl;
    int 21h;
    
    exit:
    mov ah,4ch;
    int 21h;
    main endp
end main