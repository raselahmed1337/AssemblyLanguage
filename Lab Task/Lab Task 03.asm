.model small
.stack 100h

;if(dl is greater than eq A and less than eq Z display dl )
.data
.code main
      main proc
        mov ah,01h;
        int 21h;
        mov dl,al;
                       
        cmp dl,'A';
        jb end_if;
        cmp dl,'Z';
        ja end_if;
        
        
        mov ah,02h;
        int 21h;
               
        end_if:
      main endp
end main   