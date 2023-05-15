.global _start
.intel_syntax noprefix
.section .text

_start:
	mov eax, 1
	mov ebx, 19
	int 0x80
