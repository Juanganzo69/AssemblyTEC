.class public Holamundo
  .super java/lang/Object

    .method public static main([Ljava/lang/String;)V
       .limit stack 10   ; up to two items can be pushed

       ; push System.out onto the stack
       getstatic java/lang/System/out Ljava/io/PrintStream;

       ; push a string onto the stack
       ;ldc 30
       ;ldc -40
       ;ldc 2
       ;idiv
       ;iadd

       ldc2_w 50
       ldc2_w 40
       ldc2_w 2
       ldiv
       lsub

       ; call the PrintStream.println() method.
       invokevirtual java/io/PrintStream/println(J)V


       ;8 tipos primitivos de java

       ; done
       return
    .end method