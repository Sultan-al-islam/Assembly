.STACK 100H
.DATA 



   

.CODE
MAIN PROC
; Initialize DS
MOV AX,@DATA
MOV DS,AX

mov ax,2

;neg ax



cmp ax,0
jl negetive
je zero 

mov bx,ax

jmp end

negetive:
mov bx,-1

jmp end

zero:

mov bx,0

end:    



; Exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN
