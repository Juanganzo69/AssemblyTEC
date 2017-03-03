.class public EsferaHueca
.super Esfera1
.field protected radioInterno F

.method public <init>()V
	aload_0
	invokespecial Esfera1/<init>()V
	return
.end method

.method public <init>(FF)V
	.limit stack 	4
	.limit locals 	4
	aload_0
	invokespecial Esfera1/<init>()V
	aload_0
	fload_1
	putfield EsferaHueca/radio F
	aload_0
	fload_2
	putfield EsferaHueca/radioInterno F
	return
.end method

.method area()F
	.limit stack 	4
	.limit locals 	4
	aload_0
	invokespecial Esfera1/area()F
	new Esfera1
	dup
	aload_0
	getfield EsferaHueca/radioInterno F
	invokespecial Esfera1/<init>(F)V
	invokevirtual Esfera1/area()F
	fadd
	freturn
.end method










