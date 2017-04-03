.class public fibonacci
.super java/lang/Object

.method static run()I
.limit stack  2
.limit locals 2
	bipush 6
	bipush 9
	imul

	ireturn
.end method


.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 10

	iconst_1
	istore_1	;numero "bajo"

	iconst_1
	istore_2	;numero "alto"

	iload_1		;imprimir lo dos primeros
	jsr PrintMe
	iload_2
	jsr PrintMe

	iconst_3
	istore_3	;contador

ciclo:
	iload_1
	iload_2
	iadd
	istore_2

	iload_2
	jsr PrintMe

	iload_2
	iload_1
	isub
	istore_1

	iinc 3 1
	iload_3
	bipush 20

	if_icmple ciclo

	getstatic java/lang/System/out Ljava/io/PrintStream;
    ldc "Gracias por atender la clase..."
    invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

    ;llamada a un metodo estatico
    getstatic java/lang/System/out Ljava/io/PrintStream;
    invokestatic fibonacci/run()I
    invokevirtual java/io/PrintStream/println(I)V
return

PrintMe:
    astore 4
    getstatic java/lang/System/out Ljava/io/PrintStream;
    swap
    invokevirtual java/io/PrintStream/println(I)V
    ret 4

.end method