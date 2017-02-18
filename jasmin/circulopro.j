.class public circulopro
.super java/lang/Object
	.field protected radio F

	.method public <init>(F)V
	.limit stack 4
 	.limit locals 4
		aload_0
		invokespecial java/lang/Object/<init>()V
		aload_0
		fload_1
		putfield circulopro/radio F
		return
	.end method

	.method diametro()F
	.limit stack 4
	.limit locals 4
		aload_0
		getfield circulopro/radio F
		ldc 2.0
		fmul
		freturn
	.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 4
	.limit locals 4

	new circulopro
	dup
	ldc 6.0
	invokespecial circulopro/<init>(F)V
	astore_1

	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload_1
	invokevirtual circulopro/diametro()F
	invokevirtual java/io/PrintStream/println(F)V
return
.end method