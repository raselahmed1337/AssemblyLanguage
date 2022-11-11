.model small
.stack 100h

.data
msg1 db 'RASEL AHMED $'
msg2 db '12345 $'
msg3 db 'CSE $'

.code main
main proc
    mov ax,@data;
    mov ds,ax;
    
    mov ah,09h;
    lea dx,msg1;
    int 21h;
    
    mov ah,02h;
    mov dl,10;
    int 21h;
    mov dl,13;
    int 21h;
    
    m:
    mov ah,09h;
    lea dx,msg2;
    int 21h;
    
    mov ah,02h;
    mov dl,10;
    int 21h;
    mov dl,13;
    int 21h;
    jmp n; 
    
    
    n:
    mov ah,09h;
    lea dx,msg3;
    int 21h;
    jmp exit;
    
    exit:
    mov ah,4ch;
    int 21h; 

main endp
end main