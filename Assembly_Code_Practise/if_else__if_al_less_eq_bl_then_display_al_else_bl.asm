.model small
.stack 100h

.data
msg1 db "enter your input $"

.code main
      main proc
        mov ax,@data;
        mov ds,ax;
        
        mov ah,09h;
        lea dx,msg1;
        int 21h;
        
        mov bl,2;
        sub bl,48;
        
        mov ah,01h;
        int 21h;
        
        cmp al,bl; al<bl
        jnbe else;
        
        mov ah,02h;
        mov dl,al;
        int 21h;
        jmp end_if;
        
        else:
        mov ah,02h;
        mov dl,bl;
        int 21h;              
        
        end_if:
        
        exit:
        mov ah,4ch;
        int 21h;
        
      main endp
end main      