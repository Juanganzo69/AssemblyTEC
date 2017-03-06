.class public conosegundaforma
.super circulopro

.field protected altura F

.method public <init>()V
	aload_0
	invokespecial circulopro/<init>()V
	return
.end method

.method public <init>(FF)V
	.limit stack  6
	.limit locals 6
		aload_0
		invokespecial circulopro/<init>()V
		aload_0
		fload_1
		putfield conosegundaforma/radio F
		aload_0
		fload_2
		putfield conosegundaforma/altura F
	return
.end method

.method public generatriz()F
	.limit stack  6
	.limit locals 6
		aload_0
		getfield conosegundaforma/radio F
		dup
		fmul
		aload_0
		getfield conosegundaforma/altura F
		dup
		fmul
		fadd
		f2d
	 	invokestatic java/lang/Math/sqrt(D)D
	 	d2f
	 	freturn
.end method

 .method public areaLateral()F
 .limit stack  6
 .limit locals 6
 	aload_0
 	getfield conosegundaforma/radio F
 	ldc 3.1416
 	fmul
 	aload_0
 	invokevirtual conosegundaforma/generatriz()F
 	fmul
 	freturn
 .end method

 .method public areaTotal()F
	 .limit stack  6
	 .limit locals 6
	 	aload_0
	 	invokespecial circulopro/area()F
	 	aload_0
	 	invokevirtual conosegundaforma/areaLateral()F
	 	fadd
	 freturn
 .end method

 .method public volumen()F
 	 .limit stack  6
	 .limit locals 6
 		aload_0
 		invokespecial circulopro/area()F
 		aload_0
 		getfield conosegundaforma/altura F
 		fmul
 		ldc 3.0
 		fdiv
 		freturn
.end method
