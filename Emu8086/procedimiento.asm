mipila segment para stack 'stack'
    db 100 dup( 'pila' )
mipila ends
midata segment para 'data'
    mensaje db "saca las ubres que ando bien eléctrico :v $"
    midata ends
micode segment para 'code'
        main proc far
            inicio:
            push ds
            sub ax, ax
            push ax
            mov ax, midata
            mov ds, ax
            
            mov ah,9
            mov dx, offset mensaje
            int 21h
            mov ax,2
            mov bx,2
            call misuma       ;paso de parámetros por registro
            
            mov ah,2
            mov dl,al
            add dl,30h
            int 21h
            int 20h
            
            main endp
        misuma proc near
            add ax, bx
            ret 
        misuma endp    
    micode ends
end inicio

