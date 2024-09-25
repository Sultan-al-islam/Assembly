.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
 mov ax,4
 mov bx,5  
 inc bx
 add ax,bx
 mov cx,ax
       

 
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN