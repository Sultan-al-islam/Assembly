.MODEL SMALL  

.STACK 100H  

.DATA 

   

.CODE
MAIN PROC  
    
;iniitialize DS  

MOV AX,@DATA
MOV DS,AX    

;enter your code here  

MOV AX,10
MOV BX,5
MOV CX,AX
MOV AX,BX
MOV BX,CX





;exit to DOS  

MOV AX,4C00H
INT 21H     

MAIN ENDP
END MAIN      

