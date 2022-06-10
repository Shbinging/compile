FUNCTION average :
PARAM class
tmp1 := #0
scoreSum := tmp1
tmp2 := #0
i := tmp2
tmp6 := #0
tmp5 := class
tmp78 := #800
tmp6 := tmp6 + tmp78
tmp5 := tmp5 + tmp6
tmp6 := #0
tmp3 := tmp5 + tmp6
tmp76 := *tmp3
N := tmp76
LABEL label1 :
IF i < N GOTO label2
GOTO label3
LABEL label2 :
tmp18 := #0
tmp17 := class
tmp79 := #0
tmp18 := tmp18 + tmp79
tmp17 := tmp17 + tmp18
tmp18 := #0
tmp80 := #100
tmp18 := tmp18 * tmp80
tmp18 := tmp18 + i
tmp81 := #8
tmp18 := tmp18 * tmp81
tmp82 := #0
tmp18 := tmp18 + tmp82
tmp17 := tmp17 + tmp18
tmp18 := #0
tmp14 := tmp17 + tmp18
tmp77 := *tmp14
tmp12 := tmp77 + scoreSum
scoreSum := tmp12
tmp26 := #1
tmp23 := i + tmp26
i := tmp23
GOTO label1
LABEL label3 :
tmp28 := scoreSum / N
RETURN tmp28
FUNCTION main :
DEC classInit 804
tmp33 := #0
result := tmp33
tmp34 := #10
initN := tmp34
tmp35 := #0
j := tmp35
tmp40 := #0
tmp39 := &classInit
tmp83 := #800
tmp40 := tmp40 + tmp83
tmp39 := tmp39 + tmp40
tmp40 := #0
tmp36 := tmp39 + tmp40
*tmp36 := initN
LABEL label4 :
IF j < initN GOTO label5
GOTO label6
LABEL label5 :
tmp50 := #0
tmp49 := &classInit
tmp84 := #0
tmp50 := tmp50 + tmp84
tmp49 := tmp49 + tmp50
tmp50 := #0
tmp85 := #100
tmp50 := tmp50 * tmp85
tmp50 := tmp50 + j
tmp86 := #8
tmp50 := tmp50 * tmp86
tmp87 := #0
tmp50 := tmp50 + tmp87
tmp49 := tmp49 + tmp50
tmp50 := #0
tmp46 := tmp49 + tmp50
tmp56 := #1
tmp53 := j + tmp56
tmp59 := #1
tmp54 := j + tmp59
tmp47 := tmp53 * tmp54
*tmp46 := tmp47
tmp65 := #1
tmp62 := j + tmp65
j := tmp62
GOTO label4
LABEL label6 :
tmp88 := &classInit
ARG tmp88
tmp68 := CALL average
result := tmp68
WRITE result
tmp72 := #0
tmp75 := #0
RETURN tmp75
.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.globl main
.text
average:
	addi $sp, $sp, -24
	sw $ra, 20($sp)
	sw $fp, 16($sp)
	addi $fp, $sp, 24
	sw $a0, -12($fp)

	li $t0, 0
	move $t1, $t0
	li $t0, 0
	move $t2, $t0
	li $t0, 0
	lw $t4, -12($fp)
	move $t3, $t4
	li $t5, 800
	add $t0, $t0, $t5
	add $t3, $t3, $t0
	li $t0, 0
	add $t5, $t3, $t0
	lw $t0, 0($t5)
	move $t3, $t0
	sw $t1, -16($fp)
	sw $t2, -20($fp)
	sw $t3, -24($fp)

label1:
	lw $t0, -24($fp)
	lw $t1, -20($fp)
	blt $t1, $t0, label2

	j label3

label2:
	li $t0, 0
	lw $t2, -12($fp)
	move $t1, $t2
	li $t3, 0
	add $t0, $t0, $t3
	add $t1, $t1, $t0
	li $t0, 0
	li $t3, 100
	mul $t0, $t0, $t3
	lw $t3, -20($fp)
	add $t0, $t0, $t3
	li $t4, 8
	mul $t0, $t0, $t4
	li $t4, 0
	add $t0, $t0, $t4
	add $t1, $t1, $t0
	li $t0, 0
	add $t4, $t1, $t0
	lw $t0, 0($t4)
	lw $t1, -16($fp)
	add $t4, $t0, $t1
	move $t0, $t4
	li $t1, 1
	add $t4, $t3, $t1
	move $t1, $t4
	sw $t0, -16($fp)
	sw $t1, -20($fp)
	j label1

label3:
	lw $t0, -24($fp)
	lw $t1, -16($fp)
	div $t1, $t0
	mflo $t2
	move $v0, $t2
	lw $ra, 20($sp)
	lw $fp, 16($sp)
	addi $sp, $sp, 24
	jr $ra

main:
	addi $sp, $sp, -3244
	sw $ra, 3240($sp)
	sw $fp, 3236($sp)
	addi $fp, $sp, 3244

	li $t0, 0
	move $t1, $t0
	li $t0, 10
	move $t2, $t0
	li $t0, 0
	move $t3, $t0
	li $t0, 0
	addi $t4, $fp, -3224
	li $t5, 800
	add $t0, $t0, $t5
	add $t4, $t4, $t0
	li $t0, 0
	add $t5, $t4, $t0
	sw $t2, 0($t5)
	sw $t1, -3228($fp)
	sw $t2, -3232($fp)
	sw $t3, -3236($fp)

label4:
	lw $t0, -3232($fp)
	lw $t1, -3236($fp)
	blt $t1, $t0, label5

	j label6

label5:
	li $t0, 0
	addi $t1, $fp, -3224
	li $t2, 0
	add $t0, $t0, $t2
	add $t1, $t1, $t0
	li $t0, 0
	li $t2, 100
	mul $t0, $t0, $t2
	lw $t2, -3236($fp)
	add $t0, $t0, $t2
	li $t3, 8
	mul $t0, $t0, $t3
	li $t3, 0
	add $t0, $t0, $t3
	add $t1, $t1, $t0
	li $t0, 0
	add $t3, $t1, $t0
	li $t0, 1
	add $t1, $t2, $t0
	li $t0, 1
	add $t4, $t2, $t0
	mul $t0, $t1, $t4
	sw $t0, 0($t3)
	li $t1, 1
	add $t4, $t2, $t1
	move $t1, $t4
	sw $t1, -3236($fp)
	j label4

label6:
	addi $t0, $fp, -3224
	sw $t0, -3240($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3240($fp)
	move $a0, $t0
	jal average
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -3244($fp)

	lw $t1, -3244($fp)
	move $t0, $t1
	sw $t0, -3228($fp)

	li $v0, 1
	lw $t0, -3228($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	move $v0, $t1
	lw $ra, 3240($sp)
	lw $fp, 3236($sp)
	addi $sp, $sp, 3244
	jr $ra

