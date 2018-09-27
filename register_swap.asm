.386 ; intel 386 instruction set
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	; VARIABLES HERE
.code

main PROC
	mov eax, 0DEADBEEFh
	mov ebx, 000000000h

	; swapping register contents using the stack
	push eax
	mov eax, ebx
	pop ebx

	INVOKE ExitProcess, 0
main ENDP
END main
