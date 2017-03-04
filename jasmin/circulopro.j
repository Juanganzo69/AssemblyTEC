.class public circulopro
.super java/lang/Object
.field protected radio F

.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
return
.end method

;-----------------contructor del radio--------->
.method public <init>(F)V
	.limit stack 2
	.limit locals 2
	aload_0
	invokespecial java/lang/Object/<init>()V
	aload_0
	fload_1
	putfield circulopro/radio F
return
.end method

;-----------------metodo para introducir el radio--------->
.method setRadio(F)V
	.limit stack 4
	.limit locals 4
	aload_0
	fload_1
	putfield circulopro/radio F
return
.end method

;-----------------metodo para el area del circulo--------->
.method area()F
.limit stack 4
.limit locals 4
	 aload_0
	 getfield circulopro/radio F
	 dup
	 fmul
	 ldc 3.14
	 fmul
	 freturn
 .end method


;-----------------metodo para el diametro del circulo--------->
.method diametro()F
.limit stack 4
.limit locals 4
aload_0
getfield circulopro/radio F
ldc 2.0
fmul
freturn
.end method


;-----------------metodo para el perimetro del circulo--------->
.method perimetro()F
	.limit stack  4
	.limit locals 4
		aload_0
		invokevirtual circulopro/diametro()F
		ldc 3.1416
		fmul
		freturn
.end method


;<------------2*r*pi (para el area lateral) segunda forma para sacar el arealateral--------->
.method areaLateralUno()F
	.limit	stack	5
	.limit	locals	5
		aload_0
		getfield circulopro/radio F
		ldc 2.0
		fmul
		ldc 3.146
		fmul
		freturn
.end method


