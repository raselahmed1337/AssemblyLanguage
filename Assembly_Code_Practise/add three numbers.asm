; add three numbers

.model small
.stack 100h

.data
msg db ?

.code main 
      main proc
        mov ah,01h;
        int 21h;
        mov bl,al;
        
        mov ah,01h;
        int 21h;
        mov bh,al;
        
        mov ah,01h;
        int 21h;
        mov cl,al;
        
        mov ah,01h;
        int 21h;
        mov ch,al;
        
        add bl,bh;
        sub bl,48;
        mov dl,bl;
        
        add cl,ch;
        sub cl,48;
        mov dh,cl;
        
        add dl,dh;
        sub dl,48;
        mov msg,dl;
        
                
        mov ah,02h;
        mov dh,msg;
        int 21h;
        
        exit:
        mov ah,4ch;
        int 21h;
        
      main endp
end main
        
        