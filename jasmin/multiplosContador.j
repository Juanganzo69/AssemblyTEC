; Imprimir todos los numeros del 1 al 100 que cumplan las siguientes condiciones:
; a) los numeros que sean multiplos de 3 y multiplos de 2 al mismo tiempo y obtener la suma
; b) obtener la suma de los que sean pares
; c) la suma de los multiplos de 5

.class multiplosContador
.super java/lang/Object

	.method public static main([Ljava/lang/String;)V
	.limit stack 10
	.limit locals 10

	ldc 100
	istore_1 ;Contador
	ldc 1
	istore_2 ; Final
    ldc 0
    istore_3 ;suma de pares
    ldc 0
    istore 4 ;Suma de multiplos

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
    ifeq sumapares
    goto escinco

    sumapares:
    iload_3
    iload_1
    iadd
    istore_3

    escinco:
    iload_1
    iconst_5
    irem
    ifeq sumacinco
    goto seguir

    sumacinco:
    iload 4
    iload_1
    iadd
    istore 4

    seguir:
    iinc 1 -1 ;incrementar la variable 1 en 1

    iload_2
    iload_1
    if_icmple miciclo
    goto salir

 salir:

     getstatic java/lang/System/out Ljava/io/PrintStream;
     iload_3
     invokevirtual java/io/PrintStream/println(I)V

     getstatic java/lang/System/out Ljava/io/PrintStream;
     iload 4
     invokevirtual java/io/PrintStream/println(I)V

	return
.end method