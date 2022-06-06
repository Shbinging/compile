.globl main
.text
main:
	addi $sp, $sp, -16
	sw $ra, 12($sp)
	sw $sp, 8($sp)
	addi $fp, $sp, 16
	li $t0, 1
	move $t1, $t0
	sw $t1, -12($fp)
	li $v0, 5
	syscall
	move $t0, $v0
	sw $t0, -16($fp)
	lw $t1, -16($fp)
	move $t0, $t1
	lw $t2, -12($fp)
	add $t3, $t2, $t0
	move $t0, $t3
	sw $t0, -12($fp)
	li $v0, 1
	lw $t0, -12($fp)
	move $a0, $t0
	syscall
	li $t0, 0
	li $t1, 0
	lw $ra, 12($sp)
	lw $fp, 8($sp)
	addi $sp, $sp, 16
	move $v0, $t1
	jr $ra
