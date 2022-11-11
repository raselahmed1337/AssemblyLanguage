.model small
.stack 100h

.data
.code main
      main proc
        mov ax,2;
        mov bx,5;
        mov cx,3; 
        
        cmp ax,bx;
        jl next_if;
        jge end_if;
                      
        next_if:
        cmp bx,cx;
        mov ax,0;
        jge else_if;
        
        else_if:
        mov bx,0;
                     
        end_if:
      main endp
end main   