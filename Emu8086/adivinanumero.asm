 .org 100h
 jmp inicio 
     vidas      db 7
     asPerdido  db 13,10,"Perdiste :v!! $"
     asGanado   db 13,10,"Te la rifaste shabal!! $"
     aspasado   db 13,10,"te has pasado del numero BAAAAAKA!! $"
     asfaltado  db 13,10,"te ha faltado poquito shabal!! $"
     prompt     db 13,10, "Adivine un numero(00-99): $"         
     numSecreto db 0
     numUser    db 0             
     decenas    db 0
     unidades   db 0
 
 inicio:  
    
 
    mov ah, 2Ch  ;servico leer reloj de tiempo real
    int 21h
    mov numSecreto,dl ; Guardar el # secreto en mem.
    
 loopgame:   
    
    mov ah, 9 ; servicio imprimir cadena
    mov dx, offset prompt
    int 21h
    
    mov ah, 1 ;serv.  leer char (las decenas)
    int 21h
    
    sub al, 30h  ;correcion ASCII
    
    mov bl,10
    mul bl       ;se guarda en AX 
    
    
    mov decenas, al

    mov ah, 1 ;serv.  leer char (las decenas)
    int 21h
    
    sub al, 30h  ;correcion ASCII 
    
    
    mov unidades, al    
    
    mov al, decenas
    add al, unidades
    mov numUser, al  ;guardar el numero del usuario
    dec vidas
    
    mov al, numSecreto
    cmp  al, numUser
    
    jz ganastes
    jl tepasaste
    jg tefalto
 
 
  perdistes:    
    mov ah, 9
    mov dx, offset asPerdido   
    int 21h
    jmp fin
  tepasaste:
  
    mov ah,9
    mov dx, offset aspasado
    int 21h
    cmp vidas,0
    
    je perdistes
    jmp loopgame
  
  tefalto:
    mov ah,9
    mov dx, offset asfaltado
    int 21h
    cmp vidas,0
    
    je perdistes
    jmp loopgame    
    
  ganastes:  
    mov ah,9
    mov dx, offset asGanado
    int 21h
    jmp fin
  regresar:
    jmp loopgame   
    
  fin:  
    int 20h
    
;    mov al, dl   ;copio las descimas de segundoa al 
;    mov ah, 0h    ;borro la parte alta de ax
;    mov bl, 10
;    
;    div bl
;    
;    mov decenas, ah  
;    mov unidades, al 
;    
;    mov ah, 2        ;servicio imprimir char
;    mov dl, decenas  
;    add dl, 30h
;    int 21h     
;    
;    mov ah, 2        ;servicio imprimir char
;    mov dl, unidades  
;    add dl, 30h
;    int 21h
    
    
        