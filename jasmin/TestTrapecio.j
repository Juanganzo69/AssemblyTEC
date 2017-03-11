.class public TestTrapecio
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 15
.limit locals 15

;--------Crea los objetos, introduce valores a los parámetros e imprimen los resultados---------
	new rectangulo
		dup
		ldc 6.0
		ldc 4.0
		invokespecial rectangulo/<init>(FF)V
		astore_1

		getstatic java/lang/System/out Ljava/io/PrintStream;
		ldc "Area del rectangulo : "
		invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V

		getstatic java/lang/System/out Ljava/io/PrintStream;
		aload_1
		invokevirtual rectangulo/area()F
		invokevirtual java/io/PrintStream/println(F)V

	new TrianguloRectangulo
		dup
		ldc 6.0
		ldc 4.0
		invokespecial TrianguloRectangulo/<init>(FF)V
		astore_2

		getstatic java/lang/System/out Ljava/io/PrintStream;
		ldc "Area del TrianguloRectangulo : "
		invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V

		getstatic java/lang/System/out Ljava/io/PrintStream;
		aload_2
		invokevirtual TrianguloRectangulo/area()F
		invokevirtual java/io/PrintStream/println(F)V

		getstatic java/lang/System/out Ljava/io/PrintStream;
		ldc "Area de la hipotenusa : "
		invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V

		getstatic java/lang/System/out Ljava/io/PrintStream;
		aload_2
		invokevirtual TrianguloRectangulo/hipotenusa()F
		invokevirtual java/io/PrintStream/println(F)V

	new Trapecio
		dup
		ldc 6.0
		ldc 4.0
		ldc 10.0
		invokespecial Trapecio/<init>(FFF)V
		astore_3

		getstatic java/lang/System/out Ljava/io/PrintStream;
		ldc "Area del Trapecio : "
		invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V

		getstatic java/lang/System/out Ljava/io/PrintStream;
		aload_3
		invokevirtual Trapecio/area()F
		invokevirtual java/io/PrintStream/println(F)V

		getstatic java/lang/System/out Ljava/io/PrintStream;
		ldc "Perimetro del Trapecio : "
		invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V

		getstatic java/lang/System/out Ljava/io/PrintStream;
		aload_3
		invokevirtual Trapecio/perimetro()F
		invokevirtual java/io/PrintStream/println(F)V
	return
.end method
