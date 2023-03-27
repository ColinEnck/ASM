.global _start
.intel_syntax

.section .text
_start:
	mov %eax, 1
	mov %ebx, 19
	int 0x80

.section .data
