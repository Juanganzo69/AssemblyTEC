; Hacer un programa en jasmin que tomando como datos dos eenteroos positivos N y M,
; imprima l resultado de cada termino de la siguiente serie: N^1+N^2+...+N^M Imprimir
; por separado la suma de los terminos PARES e IMPARES

.class PotenciaParesImpares
.super java/lang/Object

.method public static main([Ljava/lang/String;)V

.limit stack  10
.limit locals 10

;------numero a comparar N
	ldc 4
	istore_1

;------contador M
	ldc 1
	istore_2
;------limite del contador
	ldc 10
	istore_3

;---------sumas de potencias pares
	ldc 1
	istore 4

;---------sumas de potencias impares
	ldc 1
	istore 5

ciclo:
	iload_2
	iconst_2
	irem
	ifeq potenciaPares
	goto potenciaImpares

potenciaPares:
	iload_1
	iload 4
	imul
	istore 4

imprimir1:
 ; 	getstatic java/lang/System/out Ljava/io/PrintStream;
 ;    iload_2
 ;    invokevirtual java/io/PrintStream/println(I)V
	 goto incrementar

 potenciaImpares:
 	iload_1
 	iload 5
 	imul
 	istore 5

 imprimir2:
 	;  getstatic java/lang/System/out Ljava/io/PrintStream;
	 ; iload_2
	 ; invokevirtual java/io/PrintStream/println(I)V

	 getstatic java/lang/System/out Ljava/io/PrintStream;
	 iload 4
	 invokevirtual java/io/PrintStream/println(I)V

	 getstatic java/lang/System/out Ljava/io/PrintStream;
	 iload 5
	 invokevirtual java/io/PrintStream/println(I)V

incrementar:
	iinc 2 1
    iload_2
    iload_3
    if_icmple ciclo
    goto salir

 salir:
     ; getstatic java/lang/System/out Ljava/io/PrintStream;
     ; iload 4
     ; invokevirtual java/io/PrintStream/println(I)V

     ; getstatic java/lang/System/out Ljava/io/PrintStream;
     ; iload 5
     ; invokevirtual java/io/PrintStream/println(I)V
	return
.end method