.class public circuloExamen
.super java/lang/Object

.field protected a F
.field protected b F

.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
return
.end method

;-----------------contructor del radio--------->
.method public <init>(FF)V
	.limit stack 6
	.limit locals 6
	aload_0
	invokespecial java/lang/Object/<init>()V
	aload_0
	fload_1
	putfield circuloExamen/a F
	aload_0
	fload_2
	putfield circuloExamen/b F
return
.end method

;-----------------metodo para el area del circulo--------->
.method area()F
.limit stack 6
.limit locals 6
	 aload_0
	 getfield circuloExamen/a F
	 aload_0
	 getfield circuloExamen/b F
	 fmul
	 ldc 3.14
	 fmul
	 freturn
 .end method

;-----------------metodo para el perimetro del circulo--------->
; .method perimetro()F
; 	.limit stack  4
; 	.limit locals 4
; 		aload_0
; 		invokevirtual circulopro/diametro()F
; 		ldc 3.1416
; 		fmul
; 		freturn
; .end method

.method exentricidad()F
.limit stack 6
.limit locals 6
	 aload_0
	 getfield circuloExamen/a F
	 dup
	 fmul
	 aload_0
	 getfield circuloExamen/b F
	 dup
	 fmul
	 fadd
	 f2d
	invokestatic java/lang/Math/sqrt(D)D
	d2f
freturn
.end method