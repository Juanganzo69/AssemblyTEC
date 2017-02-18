.class public circulo
.super java/lang/Object
	.field protected radio F

	.method public <init>()V
		aload_0
		invokespecial java/lang/Object/<init>()V
		return
	.end method

	.method setRadio(F)V
	.limit stack 4
	.limit locals 4
		aload_0
		fload_1
		putfield circulo/radio F
		return
	.end method

	.method diametro()F
	.limit stack 4
	.limit locals 4
		aload_0
		getfield circulo/radio F
		ldc 2.0
		fmul
		freturn
	.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 4
	.limit locals 4

	new circulo
	dup

	invokespecial circulo/<init>()V
	astore_1
	aload_1

	ldc 2.0
	invokevirtual circulo/setRadio(F)V

	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload_1
	invokevirtual circulo/diametro()F
	invokevirtual java/io/PrintStream/println(F)V
return
.end method