;-----------Compara dos no enteros--------------
.class public longEjemplo
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 8
.limit locals 12

;-----------Carga el 10, pero es un long/double, por lo tanto ocupa dos slots de la pila--------------
	ldc2_w 10
	lstore_1
;-----------Carga el 100, pero como el anterior guardó en dos slots, se carga en el slot 3--------------
	ldc2_w 100
	lstore_3

	lload_1
	lload_3
;------Compara los dos long/double y bota de la pila todos los datos, entonces asigna un valor -1, 0 ó 1--------------
	lcmp

;----------realiza la condición 100 > 10-----------
	ifgt funciono

nanais:
	getstatic java/lang/System/out Ljava/io/PrintStream;
	lload_1
	invokevirtual java/io/PrintStream/println(J)V
	goto fin

funciono:
	getstatic java/lang/System/out Ljava/io/PrintStream;
	lload_3
	invokevirtual java/io/PrintStream/println(J)V

fin:
return
.end method