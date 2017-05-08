mipila segment para stack 'stack'       
    db 100 dup('pila')
mipila ends           

midata segment para 'data'  
    mensaje db "hola $"
    valor1  dw  1
    valor2  dw  2
midata ends                 

micode segment para 'code'    
main proc far           
inicio:
    push ds
    sub ax, ax
    push ax
    mov ax, midata
    mov ds, ax
    
    mov ah, 9
    mov dx, offset mensaje
    int 21h       
    push valor2
    push valor1         
    call misuma     ;paso de parm por registro
     
    mov ah, 2
    mov dl, al
    add dl, 30h
    int 21h
    int 20h
    
main endp                   
    
misuma proc near            
    push bp
    mov  bp, sp
    mov ax, [bp+4]
    mov bx, [bp+6]
    add ax, bx
    pop bp
    ret 4
misuma endp 

micode ends                 
end inicio

;bp ck  est bp saca los dtos sin modificar la pila
;pued referenciar a la pila