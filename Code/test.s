.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.globl main
.text
dot:
	addi $sp, $sp, -16
	sw $ra, 12($sp)
	sw $fp, 8($sp)
	addi $fp, $sp, 16
	sw $a0, -12($fp)
	sw $a1, -16($fp)

	li $t0, 0
	lw $t2, -12($fp)
	move $t1, $t2
	li $t3, 0
	add $t4, $t0, $t3
	add $t3, $t1, $t4
	li $t4, 0
	add $t5, $t3, $t4
	li $t3, 0
	lw $t6, -16($fp)
	move $t4, $t6
	li $t7, 0
	add $t8, $t3, $t7
	add $t7, $t4, $t8
	li $t8, 0
	add $t9, $t7, $t8
	lw $t7, 0($t9)
	lw $t8, 0($t5)
	mul $t5, $t8, $t7
	li $t7, 0
	move $t8, $t2
	li $t9, 4
	add $s0, $t7, $t9
	add $t9, $t8, $s0
	li $s0, 0
	add $s1, $t9, $s0
	li $t9, 0
	move $s0, $t6
	li $s2, 4
	add $s3, $t9, $s2
	add $s2, $s0, $s3
	li $s3, 0
	add $s4, $s2, $s3
	lw $s2, 0($s4)
	lw $s3, 0($s1)
	mul $s1, $s3, $s2
	add $s2, $t5, $s1
	li $t5, 0
	move $s1, $t2
	li $s3, 8
	add $s4, $t5, $s3
	add $s3, $s1, $s4
	li $s4, 0
	add $s5, $s3, $s4
	li $s3, 0
	move $s4, $t6
	li $s6, 8
	add $s7, $s3, $s6
	add $s6, $s4, $s7
	li $s7, 0
	sw $s1, -20($fp)
	add $s1, $s6, $s7
	lw $s6, 0($s1)
	lw $s1, 0($s5)
	mul $s5, $s1, $s6
	add $s1, $s2, $s5
	move $v0, $s1
	lw $ra, 12($sp)
	lw $fp, 8($sp)
	addi $sp, $sp, 16
	jr $ra

sqrt:
	addi $sp, $sp, -28
	sw $ra, 24($sp)
	sw $fp, 20($sp)
	addi $fp, $sp, 28
	sw $a0, -12($fp)

	li $t0, 0
	move $t1, $t0
	sw $t1, -16($fp)

label1:
	lw $t0, -12($fp)
	lw $t1, -16($fp)
	ble $t1, $t0, label2

	j label3

label2:
	lw $t0, -16($fp)
	mul $t1, $t0, $t0
	move $t2, $t1
	li $t1, 1
	add $t3, $t0, $t1
	li $t1, 1
	add $t4, $t0, $t1
	mul $t1, $t3, $t4
	move $t3, $t1
	li $t1, 0
	sw $t1, -24($fp)
	sw $t3, -20($fp)
	lw $t4, -12($fp)
	bge $t4, $t2, label7

	j label8

label7:
	li $t0, 1
	sw $t0, -24($fp)

label8:
	li $t0, 0
	lw $t1, -24($fp)
	bne $t1, $t0, label6

	j label5

label6:
	li $t0, 0
	sw $t0, -28($fp)
	lw $t1, -20($fp)
	lw $t2, -12($fp)
	blt $t2, $t1, label9

	j label10

label9:
	li $t0, 1
	sw $t0, -28($fp)

label10:
	li $t0, 0
	lw $t1, -28($fp)
	bne $t1, $t0, label4

	j label5

label4:
	lw $t0, -16($fp)
	move $v0, $t0
	lw $ra, 24($sp)
	lw $fp, 20($sp)
	addi $sp, $sp, 28
	jr $ra

label5:
	li $t0, 1
	lw $t1, -16($fp)
	add $t2, $t1, $t0
	move $t0, $t2
	sw $t0, -16($fp)
	j label1

label3:
	li $t0, 1
	li $t1, -1
	mul $t2, $t1, $t0
	move $v0, $t2
	lw $ra, 24($sp)
	lw $fp, 20($sp)
	addi $sp, $sp, 28
	jr $ra

dist:
	addi $sp, $sp, -24
	sw $ra, 20($sp)
	sw $fp, 16($sp)
	addi $fp, $sp, 24
	sw $a0, -12($fp)
	sw $a1, -16($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -16($fp)
	move $a1, $t0
	lw $t1, -12($fp)
	move $a0, $t1
	jal dot
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -20($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -20($fp)
	move $a0, $t0
	jal sqrt
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -24($fp)

	lw $t0, -24($fp)
	move $v0, $t0
	lw $ra, 20($sp)
	lw $fp, 16($sp)
	addi $sp, $sp, 24
	jr $ra

main:
	addi $sp, $sp, -516
	sw $ra, 512($sp)
	sw $fp, 508($sp)
	addi $fp, $sp, 516

	li $t0, 0
	move $t1, $t0
	li $t0, 0
	move $t2, $t0
	sw $t1, -492($fp)
	sw $t2, -496($fp)

label11:
	li $t0, 3
	lw $t1, -492($fp)
	blt $t1, $t0, label12

	j label13

label12:
	li $t0, 0
	move $t1, $t0
	sw $t1, -496($fp)

label14:
	li $t0, 3
	lw $t1, -496($fp)
	blt $t1, $t0, label15

	j label16

label15:
	li $t0, 0
	addi $t1, $fp, -488
	li $t2, 3
	mul $t3, $t0, $t2
	lw $t2, -492($fp)
	add $t4, $t3, $t2
	li $t5, 40
	mul $t6, $t4, $t5
	li $t5, 4
	add $t7, $t6, $t5
	add $t5, $t1, $t7
	li $t7, 0
	li $t8, 3
	mul $t9, $t7, $t8
	lw $t8, -496($fp)
	add $s0, $t9, $t8
	li $s1, 12
	mul $s2, $s0, $s1
	li $s1, 0
	add $s3, $s2, $s1
	add $s1, $t5, $s3
	li $s3, 0
	add $s4, $s1, $s3
	mul $s1, $t8, $t2
	add $s3, $s1, $t8
	sw $s3, 0($s4)
	li $s1, 0
	addi $s5, $fp, -488
	li $s6, 3
	mul $s7, $s1, $s6
	add $s6, $s7, $t2
	sw $s4, -520($fp)
	li $s4, 40
	sw $s3, -524($fp)
	mul $s3, $s6, $s4
	li $s4, 4
	sw $s2, -528($fp)
	add $s2, $s3, $s4
	add $s4, $s5, $s2
	li $s2, 0
	sw $s0, -528($fp)
	li $s0, 3
	sw $t9, -528($fp)
	mul $t9, $s2, $s0
	add $s0, $t9, $t8
	sw $t7, -528($fp)
	li $t7, 12
	sw $t6, -528($fp)
	mul $t6, $s0, $t7
	li $t7, 4
	sw $t5, -532($fp)
	add $t5, $t6, $t7
	add $t7, $s4, $t5
	li $t5, 0
	sw $t4, -528($fp)
	add $t4, $t7, $t5
	mul $t5, $t8, $t2
	mul $t7, $t5, $t2
	add $t5, $t7, $t8
	sw $t5, 0($t4)
	li $t7, 0
	sw $s7, -536($fp)
	addi $s7, $fp, -488
	sw $s6, -536($fp)
	li $s6, 3
	sw $s5, -540($fp)
	mul $s5, $t7, $s6
	add $s6, $s5, $t2
	sw $s4, -540($fp)
	li $s4, 40
	sw $s3, -536($fp)
	mul $s3, $s6, $s4
	li $s4, 4
	sw $s2, -536($fp)
	add $s2, $s3, $s4
	add $s4, $s7, $s2
	li $s2, 0
	sw $s1, -536($fp)
	li $s1, 3
	sw $s0, -536($fp)
	mul $s0, $s2, $s1
	add $s1, $s0, $t8
	sw $t9, -536($fp)
	li $t9, 12
	sw $t6, -536($fp)
	mul $t6, $s1, $t9
	li $t9, 8
	sw $t5, -544($fp)
	add $t5, $t6, $t9
	add $t9, $s4, $t5
	li $t5, 0
	sw $t4, -548($fp)
	add $t4, $t9, $t5
	mul $t5, $t8, $t8
	mul $t9, $t5, $t2
	mul $t5, $t9, $t2
	add $t9, $t5, $t8
	sw $t9, 0($t4)
	li $t5, 1
	sw $s7, -552($fp)
	add $s7, $t8, $t5
	move $t5, $s7
	sw $t5, -496($fp)
	j label14

label16:
	li $t0, 0
	addi $t1, $fp, -488
	li $t2, 3
	mul $t3, $t0, $t2
	lw $t2, -492($fp)
	add $t4, $t3, $t2
	li $t5, 40
	mul $t6, $t4, $t5
	li $t5, 0
	add $t7, $t6, $t5
	add $t5, $t1, $t7
	li $t7, 0
	add $t8, $t5, $t7
	li $t5, 0
	addi $t7, $fp, -488
	li $t9, 3
	mul $s0, $t5, $t9
	add $t9, $s0, $t2
	li $s1, 40
	mul $s2, $t9, $s1
	li $s1, 4
	add $s3, $s2, $s1
	add $s1, $t7, $s3
	li $s3, 0
	li $s4, 1
	li $s5, 3
	mul $s6, $s3, $s5
	add $s5, $s6, $s4
	li $s4, 12
	mul $s7, $s5, $s4
	add $s4, $s1, $s7
	li $s1, 0
	addi $s7, $fp, -488
	sw $s6, -556($fp)
	li $s6, 3
	sw $s5, -556($fp)
	mul $s5, $s1, $s6
	add $s6, $s5, $t2
	sw $s4, -504($fp)
	li $s4, 40
	sw $s3, -556($fp)
	mul $s3, $s6, $s4
	li $s4, 4
	sw $s2, -556($fp)
	add $s2, $s3, $s4
	add $s4, $s7, $s2
	li $s2, 0
	sw $s0, -556($fp)
	li $s0, 2
	sw $t9, -556($fp)
	li $t9, 3
	sw $t8, -500($fp)
	mul $t8, $s2, $t9
	add $t9, $t8, $s0
	li $s0, 12
	sw $t7, -560($fp)
	mul $t7, $t9, $s0
	add $s0, $s4, $t7
	sw $s0, -508($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -508($fp)
	move $a1, $t0
	lw $t1, -504($fp)
	move $a0, $t1
	jal dist
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -512($fp)

	lw $t0, -512($fp)
	lw $t1, -500($fp)
	sw $t0, 0($t1)
	li $t2, 1
	lw $t3, -492($fp)
	add $t4, $t3, $t2
	move $t2, $t4
	sw $t2, -492($fp)
	j label11

label13:
	li $t0, 0
	addi $t1, $fp, -488
	li $t2, 0
	li $t3, 3
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 40
	mul $t5, $t3, $t2
	li $t2, 0
	add $t6, $t5, $t2
	add $t2, $t1, $t6
	li $t6, 0
	add $t7, $t2, $t6
	li $t2, 0
	addi $t6, $fp, -488
	li $t8, 1
	li $t9, 3
	mul $s0, $t2, $t9
	add $t9, $s0, $t8
	li $t8, 40
	mul $s1, $t9, $t8
	li $t8, 0
	add $s2, $s1, $t8
	add $t8, $t6, $s2
	li $s2, 0
	add $s3, $t8, $s2
	lw $t8, 0($s3)
	lw $s2, 0($t7)
	add $t7, $s2, $t8
	li $t8, 0
	addi $s2, $fp, -488
	li $s3, 2
	li $s4, 3
	mul $s5, $t8, $s4
	add $s4, $s5, $s3
	li $s3, 40
	mul $s6, $s4, $s3
	li $s3, 0
	add $s7, $s6, $s3
	add $s3, $s2, $s7
	li $s7, 0
	sw $s1, -564($fp)
	add $s1, $s3, $s7
	lw $s3, 0($s1)
	add $s1, $t7, $s3
	sw $s1, -516($fp)

	li $v0, 1
	lw $t0, -516($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	move $v0, $t1
	lw $ra, 512($sp)
	lw $fp, 508($sp)
	addi $sp, $sp, 516
	jr $ra

