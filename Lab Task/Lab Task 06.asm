.model small
.stack 100h
.data

.code main
      main proc
        mov ax,5;
        mov bx,3;
        mov cx,2;
        
        cmp ax,bx; ax<bx;
        jl first_if;
                
        cmp bx,cx;
        jl second_if;
        mov cx,0;
        jmp end-if;
        
        second_if:
        mov bx,0;
        jmp end-if;
        
        first_if:
        mov ax,0;
        
        end-if:
      main endp;
end main      