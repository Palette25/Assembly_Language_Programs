DATA SEGMENT
STRING DB 'Hello World!', 0AH, '陈明亮', 0AH, '16340023', 0DH, 0AH,'$'
DATA ENDS

CODE SEGMENT
	ASSUME CS:CODE, DS:DATA
BEGIN:
	MOV AX, DATA
	MOV DS, AX
	MOV DX, OFFSET STRING
	MOV AH, 9
	INT 21H
	MOV AH, 4CH
	INT 21H
CODE ENDS
	END BEGIN