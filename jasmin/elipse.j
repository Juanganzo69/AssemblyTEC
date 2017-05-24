.class public elipse
.super circuloExamen

.method public <init>()V
	aload_0
	invokespecial circuloExamen/<init>()V
	return
.end method

.method public <init>(FF)V
	.limit stack  10
	.limit locals 10
		aload_0
		invokespecial circuloExamen/<init>()V
		aload_0
		fload_1
		putfield elipse/a F
		aload_0
		fload_2
		putfield elipse/b F
	return
.end method

.method areaElipse()F
	.limit stack  7
	.limit locals 7
		aload_0
		invokespecial elipse/area()F
		freturn
.end method


