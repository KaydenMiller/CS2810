TITLE CS2650 Assembler Assignment #2 Template

; Student Name:			Kayden Miller
; Assignment Due Date:	07/16/17

INCLUDE Irvine32.inc
.data
	;--------- Enter Data Here
	;--------- Stores Data in memory
	;--------- Asm does not use data types only data sizes
	vSemester byte "CS2810 Summer Semester 2017", 0
	vAssignment byte "Assembler Assignment #1", 0
	vName byte "Kayden Miller", 0

.code
main PROC
	;--------- Enter Code Below Here
	
		call clrscr
		
		mov DH, 4
		mov DL, 12
		call gotoxy

		mov EDX, offset vSemester
		call WriteString 

		mov DH, 5
		mov DL, 12
		call gotoxy

		mov EDX, offset vAssignment
		call WriteString

		mov DH, 6
		mov DL, 12
		call gotoxy

		mov EDX, offset vName
		call WriteString

		xor ecx, ecx
		call ReadChar
	exit
main ENDP

END main