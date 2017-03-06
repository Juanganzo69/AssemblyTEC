.class public testcirculo
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 15
.limit locals 15


;---------------------crear los objetos y agregarle radio(2) al constructor--------->
new circulopro
dup
invokespecial circulopro/<init>()V
astore_1
aload_1
ldc 2.0
invokevirtual circulopro/setRadio(F)V

;---------------------crear los objetos y agregarle radio (4) al constructor--------->
new circulopro
dup
ldc 4.0
invokespecial circulopro/<init>(F)V
astore_2


;<----------------------area del circulo 1-------------------->
getstatic java/lang/System/out Ljava/io/PrintStream;
aload_1
invokevirtual circulopro/area()F
invokevirtual java/io/PrintStream/println(F)V


;<----------------------area del circulo 2-------------------->
getstatic java/lang/System/out Ljava/io/PrintStream;
aload_2
invokevirtual circulopro/area()F
invokevirtual java/io/PrintStream/println(F)V


;<----------------------perimetro del segundo objeto-------------------->
getstatic java/lang/System/out Ljava/io/PrintStream;
aload_2
invokevirtual circulopro/perimetro()F
invokevirtual java/io/PrintStream/println(F)V


;<----------------------Objeto esfera y sus funciones-------------------->
new Esfera1
	dup
	invokespecial Esfera1/<init>()V
	astore_3
	aload_3
	ldc  4.0
	invokevirtual Esfera1/setRadio(F)V

	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload_3
	invokevirtual Esfera1/area()F
	invokevirtual java/io/PrintStream/println(F)V

	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload_3
	invokevirtual Esfera1/volumenvirtual()F
	invokevirtual java/io/PrintStream/println(F)V

	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload_3
	invokevirtual Esfera1/volumen()F
	invokevirtual java/io/PrintStream/println(F)V


;<----------------------Objeto EsferaHueca y sus funciones-------------------->
new EsferaHueca
	dup
	ldc 4.0
	ldc 2.0
	invokespecial EsferaHueca/<init>(FF)V
	astore 4

	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload 4
	invokevirtual EsferaHueca/area()F
	invokevirtual java/io/PrintStream/println(F)V

	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload 4
	invokevirtual EsferaHueca/volumen()F
	invokevirtual java/io/PrintStream/println(F)V

;<----------------------Objeto cilindro y sus funciones-------------------->
new cilindro
	dup
	ldc 4.0
	ldc 2.0
	invokespecial cilindro/<init>(FF)V
	astore 5

	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload 5
	invokevirtual cilindro/areaBase()F
	invokevirtual java/io/PrintStream/println(F)V

	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload 5
	invokevirtual cilindro/areaLateral()F
	invokevirtual java/io/PrintStream/println(F)V

	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload 5
	invokevirtual cilindro/areaLateralreal()F
	invokevirtual java/io/PrintStream/println(F)V

	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload 5
	invokevirtual cilindro/area()F
	invokevirtual java/io/PrintStream/println(F)V

	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload 5
	invokevirtual cilindro/areaReal()F
	invokevirtual java/io/PrintStream/println(F)V

	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload 5
	invokevirtual cilindro/volumen()F
	invokevirtual java/io/PrintStream/println(F)V


;<----------------------Objeto cono y sus funciones (mi forma)-------------------->
new cono
	dup
	ldc 4.0
	ldc 10.0
	invokespecial cono/<init>(FF)V
	astore 6

	 getstatic java/lang/System/out Ljava/io/PrintStream;
	 aload 6
	 invokevirtual cono/generatriz()F
	 invokevirtual java/io/PrintStream/println(F)V

	 getstatic java/lang/System/out Ljava/io/PrintStream;
	 aload 6
	 invokevirtual cono/areaLateral()F
	 invokevirtual java/io/PrintStream/println(F)V

	 getstatic java/lang/System/out Ljava/io/PrintStream;
	 aload 6
	 invokevirtual cono/areaTotal()F
	 invokevirtual java/io/PrintStream/println(F)V

	 getstatic java/lang/System/out Ljava/io/PrintStream;
	 aload 6
	 invokevirtual cono/volumen()F
	 invokevirtual java/io/PrintStream/println(F)V

;<----------------------Objeto cono y sus funciones (según Achach)-------------------->
new conosegundaforma
	dup
	ldc 4.0
	ldc 10.0
	invokespecial conosegundaforma/<init>(FF)V
	astore 7

	 getstatic java/lang/System/out Ljava/io/PrintStream;
	 aload 7
	 invokevirtual conosegundaforma/generatriz()F
	 invokevirtual java/io/PrintStream/println(F)V

	 getstatic java/lang/System/out Ljava/io/PrintStream;
	 aload 7
	 invokevirtual conosegundaforma/areaLateral()F
	 invokevirtual java/io/PrintStream/println(F)V

	 getstatic java/lang/System/out Ljava/io/PrintStream;
	 aload 7
	 invokevirtual conosegundaforma/areaTotal()F
	 invokevirtual java/io/PrintStream/println(F)V

	 getstatic java/lang/System/out Ljava/io/PrintStream;
	 aload 7
	 invokevirtual conosegundaforma/volumen()F
	 invokevirtual java/io/PrintStream/println(F)V

;<----------------------Objeto cono y sus funciones (según Achach)-------------------->
new conoPuntos
	dup
	ldc 4.0
	ldc 10.0
	invokespecial conoPuntos/<init>(FF)V
	astore 8

	 getstatic java/lang/System/out Ljava/io/PrintStream;
	 aload 8
	 invokevirtual conoPuntos/generatriz()F
	 invokevirtual java/io/PrintStream/println(F)V

	 getstatic java/lang/System/out Ljava/io/PrintStream;
	 aload 8
	 invokevirtual conoPuntos/areaLateral()F
	 invokevirtual java/io/PrintStream/println(F)V

	 getstatic java/lang/System/out Ljava/io/PrintStream;
	 aload 8
	 invokevirtual conoPuntos/areaTotal()F
	 invokevirtual java/io/PrintStream/println(F)V

	 getstatic java/lang/System/out Ljava/io/PrintStream;
	 aload 8
	 invokevirtual conoPuntos/volumen()F
	 invokevirtual java/io/PrintStream/println(F)V
return
.end method