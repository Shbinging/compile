.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.globl main
.text
fact:
	addi $sp, $sp, -20
	sw $ra, 16($sp)
	sw $fp, 12($sp)
	addi $fp, $sp, 20
	sw $a0, -12($fp)

	li $t0, 1
	lw $t1, -12($fp)
	beq $t1, $t0, label1

	j label2

label1:
	lw $t0, -12($fp)
	move $v0, $t0
	lw $ra, 16($sp)
	lw $fp, 12($sp)
	addi $sp, $sp, 20
	jr $ra

	j label3

label2:
	li $t0, 1
	lw $t1, -12($fp)
	sub $t2, $t1, $t0
	sw $t2, -16($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	move $a0, $t2
	jal fact
	move $t0, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, -20($fp)
	sw $t2, -16($fp)

	lw $t0, -20($fp)
	lw $t1, -12($fp)
	mul $t2, $t1, $t0
	move $v0, $t2
	lw $ra, 16($sp)
	lw $fp, 12($sp)
	addi $sp, $sp, 20
	jr $ra

label3:

main:
	addi $sp, $sp, -24
	sw $ra, 20($sp)
	sw $fp, 16($sp)
	addi $fp, $sp, 24

	li $v0, 4
	la $a0, _prompt
	syscall
	li $v0, 5
	syscall
	move $t0, $v0
	sw $t0, -12($fp)

	lw $t1, -12($fp)
	move $t0, $t1
	li $t2, 1
	sw $t0, -16($fp)
	bgt $t0, $t2, label4

	j label5

label4:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -16($fp)
	move $a0, $t0
	jal fact
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -20($fp)

	lw $t1, -20($fp)
	move $t0, $t1
	sw $t0, -24($fp)
	j label6

label5:
	li $t0, 1
	move $t1, $t0
	sw $t1, -24($fp)

label6:

	li $v0, 1
	lw $t0, -24($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	move $v0, $t1
	lw $ra, 20($sp)
	lw $fp, 16($sp)
	addi $sp, $sp, 24
	jr $ra

