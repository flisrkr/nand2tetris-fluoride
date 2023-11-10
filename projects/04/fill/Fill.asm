// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen
// by writing 'black' in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen by writing
// 'white' in every pixel;
// the screen should remain fully clear as long as no key is pressed.

//// Replace this comment with your code.

//i=0
@i
M=0
//j=8191
@8191
D=A
@j
M=D
(LOOP)
//if kbd!=0 then black
@KBD
D=M
@BLACK
D;JNE
(WHITE)
//if i>j then break
@i
D=M
@j
D=D-M
@END
D;JGT
//dye white
@SCREEN
D=A
@i
A=D+M
M=0
@i
M=M+1
@WHITE
0;JMP
(BLACK)
//if i>j then break
@i
D=M
@j
D=D-M
@END
D;JGT
//dye black
@SCREEN
D=A
@i
A=D+M
M=-1
@i
M=M+1
@BLACK
0;JMP
(END)
@i
M=0
@LOOP
0;JMP