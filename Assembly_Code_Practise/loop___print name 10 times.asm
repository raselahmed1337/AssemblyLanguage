.model small
.stack 100h

.data
msg1 db "Rasel ahmed ",0ah,0dh,24h;

.code main
      main proc
        mov ax,@data;
        mov ds,ax;
        
        mov cx,10;
        
        mov ah,09h;
        lea dx,msg1;
                
        print:
        int 21h;            
        loop print;
        
        
        
        exit:
        mov ah,4ch;
        int 21h;
        
      main endp
end main      