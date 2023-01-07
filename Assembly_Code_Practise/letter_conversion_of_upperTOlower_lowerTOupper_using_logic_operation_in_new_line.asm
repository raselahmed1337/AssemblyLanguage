.model small
.stack 100h

.data
.code main
      main proc
    
        mov ah,01h;
        int 21h;
        mov bl,al;
        
        mov ah,02h;
        mov dl,13;
        int 21h;
        mov dl,10;
        int 21h;
        
        mov al,bl;
        cmp al,'A'
        jb end_if;
        cmp al,'Z'
        jbe lower;
        
        cmp al,'a'
        jb end_if;
        cmp al,'z'
        jbe upper;
        
        jmp end_if;
        
        lower:
        or al,00100000b; 
        mov ah,02h;
        mov dl,al;
        int 21h;
        jmp end_if;
        
        upper:        
        and al,11011111b;
        mov ah,02h;
        mov dl,al;
        int 21h;
        
        end_if:
        exit:
        mov ah,4ch;
        int 21h;
        
        
      main endp
end main
