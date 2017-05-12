;Hacer un programa en Jasmin para factorizar un numero entero a partir del siguiente algoritmo
; A) establece d a 2 (d es el divisor)
; b) calcular el residuio de N entre d
; C) si r==0 entonces imprime d, remplaza N = n/d de lo contrario remplaza d por d mas 1 (d=d+1)
; D) si N==1 entonces ya no hay mas factores termina el programa de otro modo regresar al paso b

.class Factorizar
.super java/lang/Object

.method public static main([Ljava/lang/String;)V

.limit stack  10
.limit locals 10

;----------numero a factorizar----------
	ldc 30
	istore_2
;---------factor divisor inicial--------
	ldc 2
	istore_3
;---------incremento del factor---------
	ldc 1
	istore 4

factorizar:
	iload_2
	iload_3
	irem
    ifeq imprimir
    goto aumentarde

imprimir:
	getstatic java/lang/System/out Ljava/io/PrintStream;
	iload_2
    invokevirtual java/io/PrintStream/println(I)V

numerador:
	iload_2
	iload_3
	idiv
	istore_2
	iload_2
	iload 4
	if_icmpeq terminar
	goto factorizar

aumentarde:
	iload_3
	iconst_1
	iadd
	istore_3
	goto factorizar

terminar:
	getstatic java/lang/System/out Ljava/io/PrintStream;
	iload_2
    invokevirtual java/io/PrintStream/println(I)V
	return
.end method