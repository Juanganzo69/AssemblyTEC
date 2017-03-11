;-------Hereda los metodos y atributos del rectángulo----------
.class public TrianguloRectangulo
.super rectangulo


.method public <init>()V
	aload_0
	invokespecial rectangulo/<init>()V
	return
.end method

;-------Inicializa el contructor con los parametros de los atributos de la clase rectángulo----------
.method public <init>(FF)V
	.limit stack  6
	.limit locals 6
		aload_0
		invokespecial rectangulo/<init>()V
		aload_0
		fload_1
		putfield TrianguloRectangulo/base F
		aload_0
		fload_2
		putfield TrianguloRectangulo/altura F
	return
.end method


;--------Con los atributos heredados, se utilizan para el método area---------
.method area()F
	.limit stack  10
	.limit locals 10
			aload_0
			getfield TrianguloRectangulo/base F
			aload_0
			getfield TrianguloRectangulo/altura F
			fmul
			ldc 2.0
			fdiv
			freturn
.end method

;--------Se halla la hipotenusa con base de los atributos heredados haciendo uso de la libreria Math/sqrt. Nótese que se necesita convertir el flotante en double para utilizar sqrt y luego convertirlo de double a flotante para no crear conflicto a la hora de retornarlo ---------
.method hipotenusa()F
	.limit stack  10
	.limit locals 10
			aload_0
			getfield TrianguloRectangulo/base F
			dup
			fmul
			aload_0
			getfield TrianguloRectangulo/altura F
			dup
			fmul
			fadd
			f2d
		 	invokestatic java/lang/Math/sqrt(D)D
		 	d2f
		 	freturn
.end method