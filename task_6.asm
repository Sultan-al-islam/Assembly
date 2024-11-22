.STACK 100H
.DATA 

msg DB "Enter a character: $"
   

.CODE
MAIN PROC
; Initialize DS
MOV AX,@DATA
MOV DS,AX

lea dx,msg
mov ah,9
int 21h

mov ah,1
int 21h

mov bl,al 

mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h

cmp bl,"Y"
je dis
cmp bl,"y"
je dis

jmp end

dis:
mov ah,2
mov dl,bl
int 21h

end:    



; Exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN
