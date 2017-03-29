.class snackException
.super java/lang/Exception

.method <init>(Ljava/lang/String;)V
.limit stack   6
.limit locals  6
	aload_0
	aload_1
	invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
	return
.end method

.method public static main([Ljava/lang/String;)V
.limit stack   6
.limit locals  6

new snackException
dup
ldc "Out of milk"
invokespecial snackException/<init>(Ljava/lang/String;)V
athrow

.end method