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
neg ax
cmp ax,0   
jl my_line  

jmp end



my_line:
mov ax,5      


end:

      

 
;exit to DOS
MOV AX,4C00H
INT 21H
MAIN ENDP
END MAIN