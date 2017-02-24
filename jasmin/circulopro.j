; .class public circulopro
; .super java/lang/Object
; 	.field protected radio F

; 	.method public <init>()V
; 		aload_0
; 		invokespecial java/lang/Object/<init>()V
; 		return
; 	.end method

; 	.method public <init>(F)V
; 	.limit stack 4
;  	.limit locals 4
; 		aload_0
; 		invokespecial java/lang/Object/<init>()V
; 		aload_0
; 		fload_1
; 		putfield circulopro/radio F
; 		return
; 	.end method

; 	.method setRadio(F)V
; 	.limit stack 4
; 	.limit locals 4
; 		aload_0
; 		fload_1
; 		putfield circulo/radio F
; 		return
; 	.end method

; 	.method area()F
; 	.limit stack 6
; 	.limit locals 6
; 		aload_0
; 		getfield circulopro/radio F
; 		dup
; 		fmul
; 		lcd 3.14
; 		fmul
; 		freturn
; 	.end method

; 	.method diametro()F
; 	.limit stack 4
; 	.limit locals 4
; 		aload_0
; 		getfield circulopro/radio F
; 		ldc 2.0
; 		fmul
; 		freturn
; 	.end method

; .method public static main([Ljava/lang/String;)V
; 	.limit stack 5
; 	.limit locals 5

; 		new circulopro
; 		dup
; 		invokespecial circulopro/<init>(F)V
; 		astore_1
; 		aload_1
; 		ldc 6.0
; 		invokevirtual circulo/setRadio(F)V

; 		new circulopro
; 		dup
; 		ldc 3.0
; 		invokespecial circulopro/<init>(F)V
; 		astore_2


; 		getstatic java/lang/System/out Ljava/io/PrintStream;
; 		aload_1
; 		invokevirtual circulopro/diametro()F
; 		invokevirtual java/io/PrintStream/println(F)V

; 		getstatic java/lang/System/out Ljava/io/PrintStream;
; 		aload_2
; 		invokevirtual circulopro/diametro()F
; 		invokevirtual java/io/PrintStream/println(F)V
; 		return
; 	.end method


.class public circulopro
.super java/lang/Object
.field protected radio F

.method public <init>()V
	aload_0
	invokespecial java/lang/Object/<init>()V
return
.end method

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

.method setRadio(F)V
	.limit stack 4
	.limit locals 4
	aload_0
	fload_1
	putfield circulopro/radio F
return
.end method

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


.method diametro()F
.limit stack 4
.limit locals 4
aload_0
getfield circulopro/radio F
ldc 2.0
fmul
freturn
.end method
