.globl main
.text
main:
	addi $sp, $sp, -32
	sw $ra, 28($sp)
	sw $sp, 24($sp)
	addi $fp, $sp, 32

	li $t0, 0
	move $t1, $t0
	li $t0, 1
	move $t2, $t0
	li $t0, 0
	move $t3, $t0
	sw $t1, -12($fp)
	sw $t2, -16($fp)
	sw $t3, -20($fp)

	li $v0, 5
	syscall
	move $t0, $v0
	sw $t0, -24($fp)

	lw $t1, -24($fp)
	move $t0, $t1
	sw $t0, -28($fp)

label1:
	lw $t0, -28($fp)
	lw $t1, -20($fp)
	blt $t1, $t0, label2

	j label3

label2:
	lw $t0, -16($fp)
	lw $t1, -12($fp)
	add $t2, $t1, $t0
	move $t3, $t2
	sw $t3, -32($fp)

	li $v0, 1
	lw $t0, -16($fp)
	move $a0, $t0
	syscall

	li $t0, 0
	lw $t2, -16($fp)
	move $t1, $t2
	lw $t3, -32($fp)
	move $t2, $t3
	li $t4, 1
	lw $t5, -20($fp)
	add $t6, $t5, $t4
	move $t4, $t6
	sw $t1, -12($fp)
	sw $t2, -16($fp)
	sw $t4, -20($fp)
	j label1

label3:
	li $t0, 0
	lw $ra, 28($sp)
	lw $fp, 24($sp)
	addi $sp, $sp, 32
	move $v0, $t0
	jr $ra

