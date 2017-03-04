.class public cilindro
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
		putfield cilindro/radio F
		aload_0
		fload_2
		putfield cilindro/altura F
	return
.end method

.method public areaBase()F
.limit stack  6
.limit locals 6
	aload_0
	invokespecial circulopro/area()F
	ldc 2.0
	fmul
	freturn
.end method

.method public areaLateral()F
.limit stack  6
.limit locals 6
	aload_0
	getfield cilindro/altura F
	aload_0
	invokespecial circulopro/perimetro()F
	fmul
	freturn
.end method

.method public areaLateralreal()F
	.limit stack  6
	.limit locals 6
		aload_0
		getfield cilindro/altura F
		aload_0
		invokespecial circulopro/areaLateralUno()F
		fmul
		freturn
.end method

.method public area()F
.limit stack  6
.limit locals 6
	aload_0
	invokevirtual cilindro/areaBase()F
	aload_0
	invokevirtual cilindro/areaLateral()F
	fadd
	freturn
.end method

.method public areaReal()F
.limit stack  6
.limit locals 6
	aload_0
	invokevirtual cilindro/areaBase()F
	aload_0
	invokevirtual cilindro/areaLateralreal()F
	fadd
	freturn
.end method


.method public volumen()F
.limit stack  6
.limit locals 6
	aload_0
	invokespecial circulopro/area()F
	aload_0
	getfield cilindro/altura F
	fmul
	freturn
.end method

