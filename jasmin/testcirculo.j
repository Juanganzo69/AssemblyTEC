.class public testcirculo
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 10


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
	invokevirtual cilindro/area()F
	invokevirtual java/io/PrintStream/println(F)V

	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload 5
	invokevirtual cilindro/volumen()F
	invokevirtual java/io/PrintStream/println(F)V
return
.end method