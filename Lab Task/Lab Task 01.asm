.model small
.stack 100h
;if(ax is less than 0 then put  -1  in bx)
.data
.code main
      main proc
        mov ax,-1;
        cmp ax,0;
        jnle exit;
        
        mov bx,-1;
        
        exit:
      main endp
end main      
        
        