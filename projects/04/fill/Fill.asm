// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(WSTAT)
@R0
M=0
@KBD
D=M
@BLOOP
D;JNE
(WLOOP)
@R0
D=M
@SCREEN
A=A+D
D=A
@KBD
D=A-D
@WSTAT
D;JEQ
@KBD
A=A-D
M=0
@R0
M=M+1
@WLOOP
0;JMP
(BLOOP)
@R0
D=M
@SCREEN
A=A+D
D=A
@KBD
D=A-D
@WSTAT
D;JEQ
@KBD
A=A-D
M=-1
@R0
M=M+1
@BLOOP
0;JMP


