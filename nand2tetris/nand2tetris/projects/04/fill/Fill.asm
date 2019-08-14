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
	@8192
	D=A
	@total
	M=D
(LOOP)
	@count
	M=0
	//@SCREEN
	//D=A
	//@addr
	//M=D
(INPUT)
	@KBD
	D=M
	
	@WHITE
	D;JEQ
	
	
(BLACK)
	@count
	D=M
	@SCREEN
	A=A+D
	M=-1
	@count
	M=M+1
	D=M
	@total
	D=D-M
	@LOOP
	D;JEQ
	@INPUT
	0;JMP
	
(WHITE)
	@count
	D=M
	@SCREEN
	A=A+D
	M=0
	@count
	M=M+1
	D=M
	@total
	D=D-M
	@LOOP
	D;JEQ
	@INPUT
	0;JMP