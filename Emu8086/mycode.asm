 .org 100h
 jmp inicio 
 
 decenas db 0
 unidades db 0
 
 inicio:  
    mov ax,2
    mov bx,3
    add ax,bx
    
    
    
 
    mov ah, 2Ch  ;servico leer reloj de tiempo real
    int 21h   
    
    
    mov al, dl   ;copio las descimas de segundoa al 
    mov ah, 0h    ;borro la parte alta de ax
    mov bl, 10
    
    div bl
    
    mov decenas, ah  
    mov unidades, al 
    
    mov ah, 2        ;servicio imprimir char
    mov dl, decenas  
    add dl, 30h
    int 21h     
    
    mov ah, 2        ;servicio imprimir char
    mov dl, unidades  
    add dl, 30h
    int 21h
    
    
    int 20h    