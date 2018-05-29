##################################################
#                                                #
#  输入10个整数，进行快速排序并输出的MIPS汇编程序  
#        (输出时以空格区别各个整数)
#                                                #
##################################################

# $s0 for int array store first address
# $s1 for every quick_sort's content of left pointer
# $t0 for array's first address, QuickSort(int left, int right), initial left
# $t1 for array's last address, QuickSort(int left, int right), initial right
# $t2 for quick_sort's temporary left pointer content
# $t3 for quick_sort's temporary right pointer content
# $t5 for increasing input count
# $t6 for array size 10
# $t7 for quick_sort's temporary $t0 store
# $t8 for quick_sort's temporary $t1 store
# $t9 for temporary result store

.text
.globl main

main:
	la $s0, array_space      # Give $s0 the array space 
	move $t0, $s0            # Initialize left parameter $t0, $t1
	move $t1, $s0
	addi $t5, $zero, 0       # Initialize array size and condition size
	addi $t6, $zero, 10
	li $v0, 4                # Output tip string
	la $a0, input_msg
	syscall

input_loop:                  # Loop for input integers
	li $v0, 5                # System call for integers input
	syscall
	sw $v0, 0($t1)           # Store into array
	addi $t1, $t1, 4         # Array first address increasement
	addi $t5, $t5, 1
	bne $t5, $t6, input_loop # Loop condition
	addi $t1, $t1, -4       # Reset $t1
	addi $sp, $sp, -4       # Allocate stack 4 space
	sw $ra, 0($sp)
	jal quick_sort          # Start quick sort
	lw $ra, 0($sp)
	addi $sp, $sp, 4        # Give back stack space
	j output_loop           # Sort end, jump to output

quick_sort:                  # void QuickSort(int left, int right)
	addi $sp, $sp, -64       # Allocate stack space
	sw $ra, 28($sp)          # Store the stack pointer of the last function
	sw $fp, 36($sp)          # Store the base pointer of current registers' content
	sw $t0, 16($sp)          # Push left parameter into stack, avoid modified by others
	sw $t1, 32($sp)          # Push right parameter into stack, avoid modified by others
	addi $fp, $sp, 64        # Current base pointer up move 32 bits, to be seperated
							 # from other recusive functions with the same ename
	slt $t9, $t0, $t1        # $t9 to store the result of left < right
	bne $zero, $t9, less_than # Jump to another less function
	j sort_end

less_than:                   # Sort Less Loop, while(left < right)
	move $t7, $t0            # Temporary initialize
	move $t8, $t1
	lw $s1, 0($t0)           # int main = store[left]

while_less_con:
	slt $t9, $t7, $t8        # if(left < right)
	bne $t9, $zero, while_less # Jump into while
	j con_end

while_less:
	while_less_right:        # Right part loop, while(main > store[right])
		slt $t9, $t7, $t8    # Loop condition check1 if left < right
		beq $t9, $zero, right_end
		lw $t3, 0($t8)       
		slt $t9, $t3, $s1    # Loop condition check2 if main >= store[right]
		bne $zero, $t9, right_end
		addi $t8, $t8, -4    # right--
		j while_less_right

	right_end:
		lw $t3, 0($t8)       # store[left] = store[right]
		sw $t3, 0($t7)

	while_less_left:         # Left part loop, while(main < store[left])
		slt $t9, $t7, $t8    # Loop condition check1 if left < right
		beq $t9, $zero, left_end
		lw $t2, 0($t7)
		slt $t9, $t2, $s1    # Loop condition check2 if main < store[left]
		beq $zero, $t9, left_end
		addi $t7, $t7, 4     # left++
		j while_less_left

	left_end:
		lw $t2, 0($t7)       # store[right] = store[left]
		sw $t2, 0($t8)
		j while_less_con

con_end:
	sw $s1, 0($t7)        # store[left] = main
	sw $t7, 8($sp)        # Push left into stack 
	lw $t0, 16($sp)       # Pop $t0 from stack
	addi $t7, $t7, -4  
	move $t1, $t7
	jal quick_sort        # QuickSort($t0, left-1)
	lw $t7, 8($sp)        # Pop left from stack
	lw $t1, 32($sp)       # Pop $t1 from stack
	addi $t7, $t7, 4
	move $t0, $t7
	jal quick_sort        # QuickSort(left+1, $t1)

sort_end:
	lw $ra, 28($sp)     # Load stack push values
	lw $t0, 16($sp)
	lw $t1, 32($sp)
	lw $fp, 36($sp)
	addi $sp, $sp, 64   # Give back stack space
	jr $ra              # Jump to last recursive function address


output_loop:
	li $v0, 1           # Output array[i]
	lw $a0, 0($s0)
	syscall

	la $a0, sep_sign    # Output space sign seperater
	li $v0, 4
	syscall

	addiu $s0, $s0, 4   # Output condition check
	addiu $t5, $t5, -1
	bne $zero, $t5, output_loop

	li $v0, 10          # End Program
	syscall

.data
	array_space: .space 40  # Allocate space for array

	sep_sign: .asciiz "  "  # Space seperate
	
	input_msg: .asciiz "Please input 10 integers: \n"

	