.STACK 100H
.DATA

y_msg DB "Y$"
n_msg DB "N$"

.CODE
MAIN PROC
MOV AX, @DATA
MOV DS, AX

MOV AH, 1        
INT 21H         
SUB AL, 30h      
MOV BL, AL       

MOV AH, 1        
INT 21H         
SUB AL, 30h      
MOV CL, AL       

MOV AH, 1        
INT 21H         
SUB AL, 30h      
MOV CH, AL       

MOV AH, 2
MOV DL, 0Dh
INT 21H
MOV DL, 0Ah
INT 21H

MOV AL, BL
ADD AL, CL
CMP AL, CH
JL nmsg

MOV AL, BL
ADD AL, CH
CMP AL, CL
JL nmsg

MOV AL, CL
ADD AL, CH
CMP AL, BL
JL nmsg

lea dx, y_msg
MOV AH, 9
INT 21H
JMP end

nmsg:
lea dx, n_msg
MOV AH, 9
INT 21H

end:
MOV AX, 4C00H
INT 21H

MAIN ENDP
END MAIN
