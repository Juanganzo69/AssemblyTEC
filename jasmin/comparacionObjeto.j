.class public comparacionObjeto
.super java/lang/Object

.method public <init>()V
    aload_0
    invokespecial java/lang/Object/<init>()V
    return
.end method

.method public static main([Ljava/lang/String;)V
.limit stack 4
.limit locals 4

new comparacionObjeto
dup

invokespecial comparacionObjeto/<init>()V
astore_1
aload_1
dup

if_acmpeq success

	getstatic java/lang/System/out Ljava/io/PrintStream;
	ldc "Mala suerte...no fueron iguales"
	invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
	goto fin

success:
	getstatic java/lang/System/out Ljava/io/PrintStream;
	ldc "Son iguales porque apuntan al mismo objeto"
	invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
fin:
return
.end method