DATA SEGMENT
SOURCE DB 3, ?, 3 DUP('$')
DATA ENDS
CODE SEGMENT
	ASSUME CS:CODE, DS:DATA
BEGIN:
	MOV AX,DATA
	MOV DS,AX
	LEA DX,SOURCE
	MOV AH,0AH
	INT 21H
	MOV DL,0AH
	MOV AH,02H
	INT 21H
	LEA SI,SOURCE + 2
	MOV AL,[SI]
	AND AL,11111111B
	MOV [SI],AL
	LAHF
	AND AH,00000100B
	CMP AH,00H
	JNZ EVEN
	LEA DX,SOURCE + 2
	MOV AH,09H
	INT 21H
	MOV AH,4CH
	INT 21H
EVEN:
	MOV AL,[SI]
	ADD AL, 80H
	MOV [SI],AL
	MOV DL,AL
	MOV AH,02H
	INT 21H
	MOV AH,4CH
	INT 21H
CODE ENDS
	END BEGIN