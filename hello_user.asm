.386
.model flat, stdcall 
.stack 4096
option casemap :none

include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc

includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib

; initialized data
.data
	prompt db "Enter your name: ", 0
	reply db "Hello: ", 0
	NULL dw 0
; Uninitialized data
.data?
	buffer db 100 dup(?) ; reserve 100 bytes for input storage
.code

start:
	push offset prompt
	call StdOut

	push 100 ; max input character
	push offset buffer
	call StdIn

	push offset reply
	call StdOut
	
	push offset buffer
	call StdOut
exit:
	push 0
	call ExitProcess
end start
