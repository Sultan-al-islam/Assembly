.STACK 100H
.DATA
saturday_msg DB "Saturday$"
sunday_msg   DB "Sunday$"
monday_msg   DB "Monday$"
tuesday_msg  DB "Tuesday$"
wednesday_msg DB "Wednesday$"
thursday_msg DB "Thursday$"
friday_msg   DB "Friday$"
invalid_msg  DB "Invalid input$"

.CODE
MAIN PROC
; Initialize data segment
MOV AX, @DATA
MOV DS, AX

; Prompt the user for input
MOV AH, 1         ; Function to get a single character
INT 21H           ; Read character into AL
SUB AL, 30h
       ; Convert ASCII to integer

mov BL,AL
; Check input range and print the corresponding day
CMP BL, 1
JL invalid        ; If input < 1, jump to invalid
CMP BL, 7
JG invalid        ; If input > 7, jump to invalid
          
          
mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h


; Match the input with corresponding day
CMP BL, 1
JE print_saturday
CMP BL, 2
JE print_sunday
CMP BL, 3
JE print_monday
CMP BL, 4
JE print_tuesday
CMP BL, 5
JE print_wednesday
CMP BL, 6
JE print_thursday
CMP BL, 7
JE print_friday

invalid:
    LEA DX, invalid_msg
    JMP print_msg

print_saturday:
    LEA DX, saturday_msg
    JMP print_msg

print_sunday:
    LEA DX, sunday_msg
    JMP print_msg

print_monday:
    LEA DX, monday_msg
    JMP print_msg

print_tuesday:
    LEA DX, tuesday_msg
    JMP print_msg

print_wednesday:
    LEA DX, wednesday_msg
    JMP print_msg

print_thursday:
    LEA DX, thursday_msg
    JMP print_msg

print_friday:
    LEA DX, friday_msg

print_msg:
    MOV AH, 9         ; Function to display string
    INT 21H           ; Print string at address in DX

    ; Exit program
    MOV AX, 4C00H
    INT 21H

MAIN ENDP
END MAIN
