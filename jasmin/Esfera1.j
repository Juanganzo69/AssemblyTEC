.class public Esfera1
.super circulopro

;-----------------constructor vacio--------->
.method public <init>()V
	aload_0
	invokespecial circulopro/<init>()V
	return
.end method


;-----------------constructor del radio del circulo--------->
.method public <init>(F)V
	.limit stack 2
	.limit locals 2
	aload_0
	invokespecial circulopro/<init>()V
	aload_0
	fload_1
	putfield Esfera1/radio F
return
.end method

;-----------------area del circulo --------->
.method area()F
.limit stack 4
.limit locals 4
	aload_0
	invokespecial circulopro/area()F
	ldc 4.0
	fmul
	freturn
.end method


;-----------------volumen de la esfera--------->
.method volumen()F
.limit stack 4
.limit locals 4
	aload_0
	invokespecial Esfera1/area()F
	aload_0
	getfield Esfera1/radio F
	fmul
	ldc 3.0
	fdiv
	freturn
.end method

.method volumenvirtual()F
.limit stack 4
.limit locals 4
	aload_0
	invokespecial circulopro/area()F
	aload_0
	getfield Esfera1/radio F
	fmul
	ldc 4.0
	fmul
	ldc 3.0
	fdiv
	freturn
.end method
