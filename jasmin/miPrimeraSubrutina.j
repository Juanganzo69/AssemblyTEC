.class public miPrimeraSubrutina
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 10

    ldc "Message 1"
    jsr PrintMe
    ldc "Message 2"
    jsr PrintMe
    ldc "Message 3"
    jsr PrintMe
return

PrintMe:
    astore_1
    getstatic java/lang/System/out Ljava/io/PrintStream;
    swap ;corrige el orden erroneo de la pila
    invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
    ret 1

.end method