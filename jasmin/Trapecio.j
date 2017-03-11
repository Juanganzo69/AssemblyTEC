;------------Nombre de la clase y de donde hereda los metodos y los atributos-----
.class public Trapecio
.super rectangulo

.field protected baseMayor F

;------------Constructor nulo por default-----
.method public <init>()V
	aload_0
	invokespecial rectangulo/<init>()V
	return
.end method

;------------Constructor con tres parámetros / inicializa los atributos de la clase y los heredados-----
.method public <init>(FFF)V
	.limit stack  6
	.limit locals 6
		aload_0
		invokespecial rectangulo/<init>()V
		aload_0
		fload_1
		putfield Trapecio/base F
		aload_0
		fload_2
		putfield Trapecio/altura F
		aload_0
		fload_3
		putfield Trapecio/baseMayor F
	return
.end method

;------------En lugar de reutilizar código, hice un método donde calculo las bases de los triangulos = ((baseMayor-base)/2)-----
.method baseTriangulo()F
	.limit stack  15
	.limit locals 15
			aload_0
			getfield Trapecio/baseMayor F
			aload_0
			getfield Trapecio/base F
			fsub
			ldc 2.0
			fdiv
			freturn
.end method

;-----------Creo un objeto en donde paso de parametro baseTriangulo y una altura, luego duplica ese resultado y lo suma, al final se suma con el area del rectangulo------
.method area()F
	.limit stack  15
	.limit locals 15
		 new TrianguloRectangulo
		 	dup
		 	aload_0
		 	invokevirtual Trapecio/baseTriangulo()F
		 	aload_0
		 	getfield Trapecio/altura F
		 	invokespecial TrianguloRectangulo/<init>(FF)V
		 	invokevirtual TrianguloRectangulo/area()F
		 dup
		 fadd
		 aload_0
		 invokespecial rectangulo/area()F
		 fadd
		freturn
.end method


;---------Crea un objeto que devuelve la hipotenusa del triangulo, luego la duplica para luego sumarla, suma la baseMayor y por último suma la base menor--------
.method perimetro()F
	.limit stack  15
	.limit locals 15
		new TrianguloRectangulo
			dup
		 	aload_0
		 	invokevirtual Trapecio/baseTriangulo()F
			aload_0
			getfield Trapecio/altura F
			invokespecial TrianguloRectangulo/<init>(FF)V
			invokevirtual TrianguloRectangulo/hipotenusa()F
		dup
		fadd
		aload_0
		getfield Trapecio/baseMayor F
		fadd
		aload_0
		getfield Trapecio/base  F
		fadd
		freturn
.end method


