.text
.globl main

main:
	beq $s3, $s4, exit

	li $v0, 10
	syscall

exit:

