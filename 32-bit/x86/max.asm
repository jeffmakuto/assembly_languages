; Purpose: This program finds the maximum number
;	in a set of data items (list)
; Variables: The registers hav ethe following uses:
;	edi - Holds the index of the data being examined
;	ebx - The current largest value found
;	eax - Current value
;
; The following memory locations are used:
;
; data_items - contains the item data. A 0 is used to terminate the data
;
;
section .data
	data_items dd 3,67,34,222,45,75,54,34,44,33,22,11,66,0
section .text
global _start

_start:
	mov edi, 0		; Initialize the index register to 0
	mov eax, [data_items + edi*4] ; Load the first data into eax
	mov ebx, eax		; Initialize ebx with the first item as the largest

start_loop:
	cmp eax, 0		; Check if we'v reached the end of the data
	je loop_exit

	inc edi			; Move to the next data item
	mov eax, [data_items + edi*4] ; Load the next data
	cmp eax, ebx		; Compare current item with the largest
	jle start_loop		; Jump to the beginning of the loop if not bigger

	mov ebx, eax		; Move the value as the largest
	jmp start_loop		; jump to loop beginning

loop_exit:
	; ebx is the status code for the exit system call and it already has the maximum number
	mov eax, 1		; 1 is the exit() syscall
	int 0x80		; software interrupt to trigger the kernel
