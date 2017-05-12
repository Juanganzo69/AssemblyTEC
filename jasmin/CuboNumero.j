.class CuboNumero
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack  10
.limit locals 10

ldc 1
istore_1

ldc 100
istore_2

ldc 0
istore_3

ciclo:
	iload_1
	dup
	imul
	iload_1
	imul
	istore_3

imprimirNumero:
		getstatic java/lang/System/out Ljava/io/PrintStream;
		iload_3
	    invokevirtual java/io/PrintStream/println(I)V
inc:
	iinc 1 1
	iload_1
	iload_2
	if_icmple ciclo
	goto terminar

terminar:

return
.end method