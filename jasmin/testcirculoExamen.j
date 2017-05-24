.class public testcirculoExamen
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 15
.limit locals 15

	; new circuloExamen
	; dup
	; ldc 4.0
	; ldc 4.0
	; invokespecial circuloExamen/<init>(FF)V
	; astore_1


	; ;<----------------------area del circulo 1-------------------->
	; getstatic java/lang/System/out Ljava/io/PrintStream;
	; aload_1
	; invokevirtual circuloExamen/area()F
	; invokevirtual java/io/PrintStream/println(F)V

	new elipse
	dup
	ldc 4.0
	ldc 6.0
	invokespecial elipse/<init>(FF)V
	astore_1

	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload_1
	invokevirtual elipse/areaElipse()F
	invokevirtual java/io/PrintStream/println(F)V

return
.end method