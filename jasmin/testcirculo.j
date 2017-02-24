; .class public testcirculo
; .super java/lang/Object

; .method public static main([Ljava/lang/String;)V
; 	.limit stack 5
; 	.limit locals 5

; 		new circulopro
; 		dup
; 		invokespecial circulopro/<init>(F)V
; 		astore_1
; 		aload_1
; 		ldc 2.0
; 		invokevirtual circulopro/setRadio(F)V

; 		new circulopro
; 		dup
; 		ldc 3.0
; 		invokespecial circulopro/<init>(F)V
; 		astore_2


; 		getstatic java/lang/System/out Ljava/io/PrintStream;
; 		aload_2
; 		invokevirtual circulopro/diametro()F
; 		invokevirtual java/io/PrintStream/println(F)V

; 		getstatic java/lang/System/out Ljava/io/PrintStream;
; 		aload_1
; 		invokevirtual circulopro/diametro()F
; 		invokevirtual java/io/PrintStream/println(F)V

; 		new Esfera1
; 		dup
; 		invokespecial Esfera1/<init>()V
; 		astore_3
; 		aload_3
; 		ldc 3.0
; 		invokevirtual Esfera1/setRadio(F)V


; 		getstatic java/lang/System/out Ljava/io/PrintStream;
; 		aload_3
; 		invokevirtual Esfera1/area()F
; 		invokevirtual java/io/PrintStream/println(F)V


; 		return
; 	.end method

.class public testcirculo
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 5
.limit locals 5

new circulopro
dup
invokespecial circulopro/<init>()V
astore_1
aload_1
ldc 2.0
invokevirtual circulopro/setRadio(F)V

new circulopro
dup
ldc 4.0
invokespecial circulopro/<init>(F)V
astore_2


getstatic java/lang/System/out Ljava/io/PrintStream;
aload_1
invokevirtual circulopro/area()F
;invokevirtual circulopro/area()F
invokevirtual java/io/PrintStream/println(F)V

getstatic java/lang/System/out Ljava/io/PrintStream;
aload_2
invokevirtual circulopro/area()F
;invokevirtual circulopro/area()F
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
	;invokevirtual Esfera1/volumen()F
	invokevirtual java/io/PrintStream/println(F)V

	getstatic java/lang/System/out Ljava/io/PrintStream;
	aload_3
	;invokevirtual Esfera1/volumenvirtual()F
	invokevirtual Esfera1/volumen()F
	invokevirtual java/io/PrintStream/println(F)V
return
.end method