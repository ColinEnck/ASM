# x86 Assembly Tutorial 001
# NOTE written for 32-bit and with intel syntax

.global _start
.intel_syntax
.section .text
	
_start:
	# write syscall
	mov %eax, 4 # write code
	mov %ebx, 1 # STDOUT where we're writing
	lea %ecx, [message]
	mov %edx, 13 # length of message
	int 0x80 # calling kernel

	# exit syscall
	mov %eax, 1 # exit code
	mov %ebx, 5 # error code
	int 0x80 # calling kernel

.section .data
	message:
	.ascii "Hello, World\n"
