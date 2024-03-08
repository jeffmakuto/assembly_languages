; Purpose: Simple program that exits and returns a status
;	code back to the Linux kernel
;
; Input: none
;
; Output: returns a status code. Can be viewed by typing
;	echo $?
;
; Variables:
;	eax holds the system call number
;	ebx holds the return status
;

section .data
section .text
global _start

_start:
	; Set up system call parameters
	mov eax, 1		; system call number for exit
	mov ebx, 0		; exit status code (0 for sucess)

	; Invoke kernel to exit the program
	int 0x80		; software interrupt to trigger the kernel

	; The program will not reach here as it has exited
