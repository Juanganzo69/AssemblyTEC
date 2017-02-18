.class public HelloMetodo
.super java/lang/Object

.method public <init>()V
	aload_0
	invokespecial HelloMetodo/<init>()V
	return
.end method

.method public saludar()V
.limit stack 2
.limit locals 2

	getstatic java/lang/System/out Ljava/io/PrintStream;
	ldc "Hello...World"
   	invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
	return
.end method
