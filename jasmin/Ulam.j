.class Ulam
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 	10
.limit locals 	10
	ldc 26
	istore_2

comienzo:

	iload_2
	iconst_1
	if_icmpeq terminar


	iload_2
	iconst_2
	irem

	iconst_0
	if_icmpeq par


impar:
	iload_2
	iconst_3
	imul
	iconst_1
	iadd
	istore_2
	goto salida


par:
	iload_2
	iconst_2
	idiv
	istore_2

salida:
	getstatic java/lang/System/out Ljava/io/PrintStream;
	iload_2
   	invokevirtual java/io/PrintStream/println(I)V
	goto comienzo

terminar:

	; getstatic java/lang/System/out Ljava/io/PrintStream;
	; iload_2
 	; invokevirtual java/io/PrintStream/println(I)V
return
.end method