.model small
.stack 100h

.data
msg1 db "Enter two inputs $"
msg2 db 10,13,"Biggest Number $"

.code main
      main proc
        mov ax,@data;
        mov ds,ax;
        
        mov ah,09h;
        lea dx,msg1;
        int 21h;
        
        mov ah,01h;
        int 21h;
        mov bl,al;
        
        mov ah,01h;
        int 21h;
        mov bh,al;
        
        biggest:
        cmp bl,bh;
        jg level1;
        jmp level2;
        
        level2:
        mov ah,09h;
        lea dx,msg2;
        int 21h;
        
        mov ah,02h;
        mov dl,bh;
        int 21h;
        jmp exit;
        
        level1:
        mov ah,09h;
        lea dx,msg2;
        int 21h;
        
        mov ah,02h;
        mov dl,bl;
        int 21h;
        
        exit:
        mov ah,4ch;
        int 21h;
        
      main endp
end main  