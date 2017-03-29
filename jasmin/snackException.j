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

.catch snackException from begin to end using SnackExceptionHandler

	begin:
	ldc 10
	ifgt continue

	new snackException
	dup
	ldc "Out of milk"
	invokespecial snackException/<init>(Ljava/lang/String;)V
	athrow

	continue:
	end:
				getstatic java/lang/System/out Ljava/io/PrintStream;
				ldc "Disfrutemos la vida, salud!!!!"
			    invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
	return

	SnackExceptionHandler:
				getstatic java/lang/System/out Ljava/io/PrintStream;
				ldc "No hay cerveza, vayan a buscarla!!!"
			    invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
	return
.end method