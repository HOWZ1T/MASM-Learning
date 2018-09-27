.386
.model flat, stdcall 
.stack 4096
option casemap :none

MessageBoxA PROTO stdcall hwnd:dword, text:dword, caption:dword, buttons:dword
ExitProcess PROTO, dwExitCode: DWORD

include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc

includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib

; initialized data
.data
	message db "Hello World!", 0
	caption db "Message", 0
	NULL dw 0
.code

main PROC
	invoke MessageBoxA, NULL, addr message, addr caption, NULL
	push 0
	invoke ExitProcess, 0
main ENDP
END main
