.class public rectangulo
.super java/lang/Object

;--------atributos del rectángulo---------
.field protected base   F
.field protected altura F

.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
return
.end method

;--------contructor con los parámetros de los atributos---------
.method public <init>(FF)V
	.limit stack  6
	.limit locals 6
		aload_0
		invokespecial rectangulo/<init>()V
		aload_0
		fload_1
		putfield rectangulo/base F
		aload_0
		fload_2
		putfield rectangulo/altura F
	return
.end method

;--------metodo del area del rectangulo---------
.method area()F
	.limit stack  10
	.limit locals 10
			aload_0
			getfield rectangulo/base F
			aload_0
			getfield rectangulo/altura F
			fmul
			freturn
.end method