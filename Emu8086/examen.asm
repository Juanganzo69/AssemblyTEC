mipila segment para stack 'stack'       
    db 100 dup('pila')
mipila ends           

midata segment para 'data'  
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
    push valor2
    push valor1         
    call misumados 
    
     
    mov ah, 2
    mov dl, al
;aqui estan las tres variables, hay les cambian
    add dl, 2
    add dl, 4
    add dl, 5
;Verifiquen los registros dx y ax
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

misumados proc near            
    push bp
    mov  bp, sp
    sub sp, 4
    mov word ptr [bp - 2], 10
    mov word ptr [bp - 4], 20
    mov ax, [bp+4]
    mov bx, [bp+6]
    add ax, bx
    add ax, word ptr [bp - 2]
    add ax, word ptr [bp - 4]
    mov sp, bp
    pop bp
    ret 4
misumados endp 

micode ends                 
end inicio
