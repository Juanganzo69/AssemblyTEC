.class PromParSumImpar
.super java/lang/Object

.method public static main([Ljava/lang/String;)V

.limit stack  10
.limit locals 10

ldc 1
istore_1

ldc 100
istore_2

;--------donde se guarda la suma de los numeros impares------------
ldc 0
istore_3

;--------contador de numeros pares---------------------------------
ldc 0
istore 5

;--------donde se guarda la sumatoria de los numero pares------------
fconst_0
fstore 4

;--------donde se guarda el contador de los numeros pares------------
ldc 0
istore 5

;--------donde se guarda el promedio de los numero pares------------
fconst_0
fstore 6

ciclo:
	iload_1

numeroImpar:
	iconst_2
	irem
	ifgt sumaImpar
	goto sumaPar

sumaImpar:
	iload_1
	iload_3
	iadd
	istore_3
	goto inc

sumaPar:
	iload_1
	 i2f
	fload 4
	fadd
	fstore 4
	goto promedioPar

promedioPar:
	fload 4
	 iinc 5 1
	 iload 5
	 i2f
	 fdiv
	 fstore 6

inc:
	iinc 1 1
	iload_1
	iload_2
	if_icmple ciclo
	goto terminar

terminar:

	getstatic java/lang/System/out Ljava/io/PrintStream;
	iload_3
    invokevirtual java/io/PrintStream/println(I)V

    getstatic java/lang/System/out Ljava/io/PrintStream;
	fload 4
    invokevirtual java/io/PrintStream/println(F)V

    getstatic java/lang/System/out Ljava/io/PrintStream;
	iload 5
    invokevirtual java/io/PrintStream/println(I)V

    getstatic java/lang/System/out Ljava/io/PrintStream;
	fload 6
    invokevirtual java/io/PrintStream/println(F)V

return
.end method


