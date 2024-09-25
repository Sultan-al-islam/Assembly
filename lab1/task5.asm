.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
;iniitialize DS
MOV AX,@DATA
MOV DS,AX
;enter your code here
       
mov ax,5
mov bx,3
sub ax,bx  ;ax=2
add bx,ax  ;bx=5
sub ax,bx  ;ax=-3
neg ax      ;3

 
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN