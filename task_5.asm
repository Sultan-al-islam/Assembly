.MODEL SMALL
.STACK 100H
.DATA 

msg DB "Enter a character: $"
a db "This is not Uppercase $"   

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

cmp bl,"A"
jl not_up
cmp bl,"Z"
jg not_up


mov ah,2
mov dl,bl
int 21h
jmp end

not_up:
lea dx,a
mov ah,9
int 21h

end:    



; Exit to DOS
MOV AX,4C00H
INT 21H

MAIN ENDP
END MAIN
