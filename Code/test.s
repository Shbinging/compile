.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.globl main
.text
main:
	addi $sp, $sp, -100
	sw $ra, 96($sp)
	sw $fp, 92($sp)
	addi $fp, $sp, 100

	li $t0, 0
	addi $t1, $fp, -88
	li $t2, 1
	li $t3, 5
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	li $t1, 3
	sw $t1, 0($t2)
	li $t5, 0
	addi $t6, $fp, -88
	li $t7, 1
	li $t8, 5
	mul $t9, $t5, $t8
	add $t8, $t9, $t7
	li $t7, 4
	mul $s0, $t8, $t7
	add $t7, $t6, $s0
	lw $t6, 0($t7)
	sw $t6, -92($fp)

	li $v0, 1
	lw $t0, -92($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -88
	li $t3, 2
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	li $t2, 4
	sw $t2, 0($t3)
	li $t6, 0
	addi $t7, $fp, -88
	li $t8, 2
	li $t9, 5
	mul $s0, $t6, $t9
	add $t9, $s0, $t8
	li $t8, 4
	mul $s1, $t9, $t8
	add $t8, $t7, $s1
	lw $t7, 0($t8)
	sw $t7, -96($fp)

	li $v0, 1
	lw $t0, -96($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -88
	li $t3, 1
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	li $t2, 0
	addi $t6, $fp, -88
	li $t7, 2
	li $t8, 5
	mul $t9, $t2, $t8
	add $t8, $t9, $t7
	li $t7, 4
	mul $s0, $t8, $t7
	add $t7, $t6, $s0
	lw $t6, 0($t7)
	lw $t7, 0($t3)
	add $t3, $t7, $t6
	sw $t3, -100($fp)

	li $v0, 1
	lw $t0, -100($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	move $v0, $t1
	lw $ra, 96($sp)
	lw $fp, 92($sp)
	addi $sp, $sp, 100
	jr $ra

