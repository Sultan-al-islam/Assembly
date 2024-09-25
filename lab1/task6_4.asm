.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
  mov ax,2
  mov bx,8
  dec ax
  sub bx,ax
  mov ax,bx     

 
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN