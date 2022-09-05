// Jose David Bohorquez Leal
// 410377
// jose.bohorquezl@uob.edu.co

(Inicio)
@KBD
 D=M
 @84  //T//
 D=D-A
 @Vertical//salto a realizar el rectangulo con estos parametros
 D;JEQ
 
@KBD
 D=M
 @67   //C//
 D=D-A 
 @Borrar
 D;JEQ

 @KBD
 D=M
 @84  //T//
 D=D-A 
 @Horizontal
 D;JEQ
 
@Inicio
 0;JMP

(Vertical)
@16400//16384 + (128*32)
 D=A
@coord//variable donde inicia el dibujo
 M=D 
@256//candidad de registros a pintar
 D=A
@contar//contador filas pantalla
 M=D
@32
 D=A 
@salto
 M=D

@Color
M= 1
 
 @RECT
 0;JMP


(Borrar)
@16384
 D=A
@coord//variable donde inicia el dibujo
 M=D 
@8300//candidad de registros a pintar
 D=A
@contar//contador filas pantalla
 M=D
@1
 D=A 
@salto
 M=D

@color
M = 0

@Rect
 0;JMP
 
 
(Horizontal)
@20480//16384 + (128*32)
 D=A
@coord//variable donde inicia el dibujo
 M=D 
@32//candidad de registros a pintar
 D=A
@contar//contador filas pantalla
 M=D
@1
 D=A 
@salto
 M=D


@color
M= -1
 
@Rect
0;JMP


(Rect)
@coord//16384 + (128*32)
 D=M
@pscreen
 M=D //memoria donde inicia la pantalla
 
(Pintar)
@contar//D=cont
 D=M 
 
 @Final
 D;JEQ//if cont = 0 goto END
 
@color
D=M 
@pscreen
A=M 
M=D //Pinto de negro el registro inicial
 
@contar//contar = cont-1
M=M-1
 
@salto
 D=M
 
@pscreen
 M=M+D //M+D
 
@Pintar
 0;JMP
 
(Final)
 @Inicio
 0;JMP



