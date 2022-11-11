.model small
.stack 100h

.data
.code main
      main proc
        mov ax,2;
        mov bx,5;
        mov cx,3; 
        
        cmp ax,bx;
        jl then;
        cmp bx,cx;
        jl then;
        jmp else;
               
        then:
        mov ax,0;
        jmp end_if;
        else:
        mov bx,0;
        end_if:
      main endp
end main      
        