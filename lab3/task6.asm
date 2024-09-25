.MODEL SMALL
.STACK 100H
.DATA
a db "Enter a Hexa number: $" 
b db "The Decimal number: 1$"

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here

LEA DX,a
MOV AH,9
INT 21h

MOV AH,1
INT 21h

sub al,41h

mov bl,al

MOV AH,2 
MOV DL,0DH 
INT 21h 
MOV DL,0AH
INT 21h 

LEA DX,b
MOV AH,9
INT 21h

add bl,30h 

MOV AH,2 
MOV DL,bl
INT 21h




MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN