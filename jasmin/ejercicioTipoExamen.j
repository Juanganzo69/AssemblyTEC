
;Encontrar todos los numeros del uno al cien ue cumplan las siguientes condiciones:
;a) Imprimir los numeros que sean multiplos de 3
;b) Obtener la suma de los que sean pares
;c) La suma de los multiplos de 5

.class ejercicioTipoExamen
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack  10
.limit locals 10

ldc 1
istore_1	;contador

ldc 100
istore_2	;final

ldc 0
istore_3	;Suma de pares

ldc 0
istore 4	;Suma de multiplos de 5

miciclo:
	iload_1

estres:
	iconst_3
	irem
	ifeq imprimir
	goto espar


imprimir:
		getstatic java/lang/System/out Ljava/io/PrintStream;
		iload_1
	    invokevirtual java/io/PrintStream/println(I)V
espar:
	iload_1
	iconst_2
	irem
	ifeq sumarpares
	goto escinco

sumarpares:
	iload_1
	iload_3
	iadd
	istore_3

escinco:
	iload_1
	iconst_5
	irem
	ifeq sumarcinco
	goto incrementar

sumarcinco:
	iload_1
	iload 4
	iadd
	istore 4

incrementar:
		iinc 1 1 ;incrementar el contador en 1
		iload_1
		iload_2
		if_icmple miciclo
		goto terminar

terminar:
		getstatic java/lang/System/out Ljava/io/PrintStream;
		iload_3
	    invokevirtual java/io/PrintStream/println(I)V

	    getstatic java/lang/System/out Ljava/io/PrintStream;
		iload 4
	    invokevirtual java/io/PrintStream/println(I)V


return
.end method


