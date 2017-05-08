.class miSwitch
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack  10
.limit locals 10

	;cargar un numero del mes
ldc 12
istore_1
iload_1

	lookupswitch
		1: 	Dias31
		2: 	Dias28
		3: 	Dias31
		4: 	Dias30
		5: 	Dias31
		6: 	Dias30
		7: 	Dias31
		8: 	Dias31
		9: 	Dias30
		10: Dias31
		11: Dias30
		12: Dias31
		default: ERROR

			Dias28:
				bipush 28
				istore_2
				iload_2
				jsr PrintMe
				goto fin

			Dias30:
				bipush 30
				istore_2
				iload_2
				jsr PrintMe
				goto fin

			Dias31:
				bipush 31
				istore_2
				iload_2
				jsr PrintMe
				goto fin

			PrintMe:
			    astore_1
			    getstatic java/lang/System/out Ljava/io/PrintStream;
			    swap
			    invokevirtual java/io/PrintStream/println(I)V
			    ret 1

			ERROR:
				getstatic java/lang/System/out Ljava/io/PrintStream;
				ldc "En el numero del mes(1-12), favor de corregirlo "
			    invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

			fin:
			    return
.end method
