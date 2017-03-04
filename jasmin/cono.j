.class public cono
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
		putfield cono/radio F
		aload_0
		fload_2
		putfield cono/altura F
	return
.end method

.method public radio()F
.limit stack  10
.limit locals 10
	aload_0
	invokespecial circulopro/diametro()F
	ldc 2.0
	fdiv
	freturn
.end method

.method public cuadradoradio()F
.limit stack  10
.limit locals 10
	aload_0
	invokevirtual cono/radio()F
	dup
	fmul
	freturn
.end method

.method public cuadradoaltura()F
.limit stack  10
.limit locals 10
	aload_0
	getfield cono/altura F
	dup
	fmul
	freturn
.end method

 .method public generatriz()F
 .limit stack  10
 .limit locals 10
 	aload_0
 	invokevirtual cono/cuadradoaltura()F
 	aload_0
 	invokevirtual cono/cuadradoradio()F
 	fadd
 	 f2d
 	 invokestatic java/lang/Math/sqrt(D)D
 	 d2f
 	freturn
 .end method

 .method public areaLateral()F
 .limit stack  10
 .limit locals 10
 	aload_0
 	invokevirtual cono/radio()F
 	ldc 3.1416
 	fmul
 	aload_0
 	invokevirtual cono/generatriz()F
 	fmul
 	freturn
 .end method

 .method public areaTotal()F
 .limit stack  10
 .limit locals 10
 	aload_0
 	invokespecial circulopro/area()F
 	aload_0
 	invokevirtual cono/areaLateral()F
 	fadd
 	freturn
 .end method

.method public volumen()F
.limit stack  10
.limit locals 10
	aload_0
	invokespecial circulopro/area()F
	aload_0
	getfield cono/altura F
	fmul
	ldc 3.0
	fdiv
	freturn
.end method