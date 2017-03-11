.class public conoPuntos
.super cilindro

.method public <init>()V
	aload_0
	invokespecial cilindro/<init>()V
	return
.end method

.method public <init>(FF)V
	.limit stack  6
	.limit locals 6
		aload_0
		invokespecial cilindro/<init>()V
		aload_0
		fload_1
		putfield conoPuntos/radio F
		aload_0
		fload_2
		putfield conoPuntos/altura F
	return
.end method

.method public sumaDeCuadrados()F
.limit stack  10
.limit locals 10
	aload_0
	getfield conoPuntos/radio F
	dup
	fmul
	aload_0
	getfield conoPuntos/altura F
	dup
	fmul
	fadd
	freturn
.end method


 .method public generatriz()F
 .limit stack  10
 .limit locals 10
 	aload_0
 	invokevirtual conoPuntos/sumaDeCuadrados()F
 	f2d
 	invokestatic java/lang/Math/sqrt(D)D
 	d2f
 	freturn
 .end method

 .method public areaLateral()F
 .limit stack  10
 .limit locals 10
 	aload_0
 	getfield conoPuntos/radio F
 	ldc 3.1416
 	fmul
 	aload_0
 	invokevirtual conoPuntos/generatriz()F
 	fmul
 	freturn
 .end method

 .method public areaTotal()F
 .limit stack  10
 .limit locals 10
 	aload_0
 	invokespecial cilindro/areaBase()F
 	ldc 2.0
 	fdiv
 	aload_0
 	invokevirtual conoPuntos/areaLateral()F
 	fadd
 	freturn
 .end method

.method public volumen()F
.limit stack  10
.limit locals 10
	aload_0
 	invokespecial cilindro/areaBase()F
 	ldc 2.0
 	fdiv
	aload_0
	getfield conoPuntos/altura F
	fmul
	ldc 3.0
	fdiv
	freturn
.end method