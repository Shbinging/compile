.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.globl main
.text
id_xOKIbU:
	addi $sp, $sp, -52
	sw $ra, 48($sp)
	sw $fp, 44($sp)
	addi $fp, $sp, 52
	sw $a0, -12($fp)
	sw $a1, -16($fp)

	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 0
	sw $t0, -20($fp)
	sw $t1, -24($fp)
	sw $t2, -28($fp)
	lw $t4, -12($fp)
	bgt $t4, $t3, label10

	j label11

label10:
	li $t0, 1
	sw $t0, -28($fp)

label11:
	li $t0, 0
	lw $t1, -28($fp)
	bne $t1, $t0, label9

	j label7

label9:
	li $t0, 0
	li $t1, 0
	sw $t0, -32($fp)
	lw $t2, -16($fp)
	bgt $t2, $t1, label12

	j label13

label12:
	li $t0, 1
	sw $t0, -32($fp)

label13:
	li $t0, 0
	lw $t1, -32($fp)
	bne $t1, $t0, label8

	j label7

label8:
	li $t0, 0
	li $t1, 2147483647
	lw $t2, -16($fp)
	sub $t3, $t1, $t2
	sw $t0, -36($fp)
	lw $t1, -12($fp)
	bgt $t1, $t3, label14

	j label15

label14:
	li $t0, 1
	sw $t0, -36($fp)

label15:
	li $t0, 0
	lw $t1, -36($fp)
	bne $t1, $t0, label6

	j label7

label6:
	li $t0, 1
	sw $t0, -24($fp)

label7:
	li $t0, 0
	lw $t1, -24($fp)
	bne $t1, $t0, label3

	j label5

label5:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -40($fp)
	sw $t1, -44($fp)
	lw $t3, -12($fp)
	blt $t3, $t2, label20

	j label21

label20:
	li $t0, 1
	sw $t0, -44($fp)

label21:
	li $t0, 0
	lw $t1, -44($fp)
	bne $t1, $t0, label19

	j label17

label19:
	li $t0, 0
	li $t1, 0
	sw $t0, -48($fp)
	lw $t2, -16($fp)
	blt $t2, $t1, label22

	j label23

label22:
	li $t0, 1
	sw $t0, -48($fp)

label23:
	li $t0, 0
	lw $t1, -48($fp)
	bne $t1, $t0, label18

	j label17

label18:
	li $t0, 0
	li $t1, -2147483648
	li $t2, -1
	mul $t3, $t2, $t1
	lw $t1, -16($fp)
	sub $t2, $t3, $t1
	sw $t0, -52($fp)
	lw $t3, -12($fp)
	blt $t3, $t2, label24

	j label25

label24:
	li $t0, 1
	sw $t0, -52($fp)

label25:
	li $t0, 0
	lw $t1, -52($fp)
	bne $t1, $t0, label16

	j label17

label16:
	li $t0, 1
	sw $t0, -40($fp)

label17:
	li $t0, 0
	lw $t1, -40($fp)
	bne $t1, $t0, label3

	j label4

label3:
	li $t0, 1
	sw $t0, -20($fp)

label4:
	li $t0, 0
	lw $t1, -20($fp)
	bne $t1, $t0, label1

	j label2

label1:
	lw $t0, -12($fp)
	move $v0, $t0
	lw $ra, 48($sp)
	lw $fp, 44($sp)
	addi $sp, $sp, 52
	jr $ra

label2:
	lw $t0, -16($fp)
	lw $t1, -12($fp)
	add $t2, $t1, $t0
	move $v0, $t2
	lw $ra, 48($sp)
	lw $fp, 44($sp)
	addi $sp, $sp, 52
	jr $ra

ri_:
	addi $sp, $sp, -48
	sw $ra, 44($sp)
	sw $fp, 40($sp)
	addi $fp, $sp, 48
	sw $a0, -12($fp)
	sw $a1, -16($fp)

	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -20($fp)
	sw $t1, -24($fp)
	lw $t3, -12($fp)
	bgt $t3, $t2, label33

	j label34

label33:
	li $t0, 1
	sw $t0, -24($fp)

label34:
	li $t0, 0
	lw $t1, -24($fp)
	bne $t1, $t0, label32

	j label30

label32:
	li $t0, 0
	li $t1, 0
	sw $t0, -28($fp)
	lw $t2, -16($fp)
	blt $t2, $t1, label35

	j label36

label35:
	li $t0, 1
	sw $t0, -28($fp)

label36:
	li $t0, 0
	lw $t1, -28($fp)
	bne $t1, $t0, label31

	j label30

label31:
	li $t0, 0
	li $t1, 2147483647
	lw $t2, -16($fp)
	add $t3, $t1, $t2
	sw $t0, -32($fp)
	lw $t1, -12($fp)
	bgt $t1, $t3, label37

	j label38

label37:
	li $t0, 1
	sw $t0, -32($fp)

label38:
	li $t0, 0
	lw $t1, -32($fp)
	bne $t1, $t0, label29

	j label30

label29:
	li $t0, 1
	sw $t0, -20($fp)

label30:
	li $t0, 0
	lw $t1, -20($fp)
	bne $t1, $t0, label26

	j label28

label28:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -36($fp)
	sw $t1, -40($fp)
	lw $t3, -12($fp)
	blt $t3, $t2, label43

	j label44

label43:
	li $t0, 1
	sw $t0, -40($fp)

label44:
	li $t0, 0
	lw $t1, -40($fp)
	bne $t1, $t0, label42

	j label40

label42:
	li $t0, 0
	li $t1, 0
	sw $t0, -44($fp)
	lw $t2, -16($fp)
	bgt $t2, $t1, label45

	j label46

label45:
	li $t0, 1
	sw $t0, -44($fp)

label46:
	li $t0, 0
	lw $t1, -44($fp)
	bne $t1, $t0, label41

	j label40

label41:
	li $t0, 0
	li $t1, -2147483648
	li $t2, -1
	mul $t3, $t2, $t1
	lw $t1, -16($fp)
	add $t2, $t3, $t1
	sw $t0, -48($fp)
	lw $t3, -12($fp)
	blt $t3, $t2, label47

	j label48

label47:
	li $t0, 1
	sw $t0, -48($fp)

label48:
	li $t0, 0
	lw $t1, -48($fp)
	bne $t1, $t0, label39

	j label40

label39:
	li $t0, 1
	sw $t0, -36($fp)

label40:
	li $t0, 0
	lw $t1, -36($fp)
	bne $t1, $t0, label26

	j label27

label26:
	lw $t0, -12($fp)
	move $v0, $t0
	lw $ra, 44($sp)
	lw $fp, 40($sp)
	addi $sp, $sp, 48
	jr $ra

label27:
	lw $t0, -16($fp)
	lw $t1, -12($fp)
	sub $t2, $t1, $t0
	move $v0, $t2
	lw $ra, 44($sp)
	lw $fp, 40($sp)
	addi $sp, $sp, 48
	jr $ra

id_CPc:
	addi $sp, $sp, -88
	sw $ra, 84($sp)
	sw $fp, 80($sp)
	addi $fp, $sp, 88
	sw $a0, -12($fp)
	sw $a1, -16($fp)

	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 0
	sw $t0, -20($fp)
	sw $t1, -24($fp)
	sw $t2, -28($fp)
	lw $t4, -12($fp)
	bgt $t4, $t3, label60

	j label61

label60:
	li $t0, 1
	sw $t0, -28($fp)

label61:
	li $t0, 0
	lw $t1, -28($fp)
	bne $t1, $t0, label59

	j label57

label59:
	li $t0, 0
	li $t1, 0
	sw $t0, -32($fp)
	lw $t2, -16($fp)
	bgt $t2, $t1, label62

	j label63

label62:
	li $t0, 1
	sw $t0, -32($fp)

label63:
	li $t0, 0
	lw $t1, -32($fp)
	bne $t1, $t0, label58

	j label57

label58:
	li $t0, 0
	li $t1, 2147483647
	lw $t2, -16($fp)
	div $t1, $t2
	mflo $t3
	sw $t0, -36($fp)
	lw $t1, -12($fp)
	bgt $t1, $t3, label64

	j label65

label64:
	li $t0, 1
	sw $t0, -36($fp)

label65:
	li $t0, 0
	lw $t1, -36($fp)
	bne $t1, $t0, label56

	j label57

label56:
	li $t0, 1
	sw $t0, -24($fp)

label57:
	li $t0, 0
	lw $t1, -24($fp)
	bne $t1, $t0, label51

	j label55

label55:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -40($fp)
	sw $t1, -44($fp)
	lw $t3, -12($fp)
	bgt $t3, $t2, label70

	j label71

label70:
	li $t0, 1
	sw $t0, -44($fp)

label71:
	li $t0, 0
	lw $t1, -44($fp)
	bne $t1, $t0, label69

	j label67

label69:
	li $t0, 0
	li $t1, 0
	sw $t0, -48($fp)
	lw $t2, -16($fp)
	ble $t2, $t1, label72

	j label73

label72:
	li $t0, 1
	sw $t0, -48($fp)

label73:
	li $t0, 0
	lw $t1, -48($fp)
	bne $t1, $t0, label68

	j label67

label68:
	li $t0, 0
	li $t1, -2147483648
	lw $t2, -12($fp)
	div $t1, $t2
	mflo $t3
	li $t1, -1
	mul $t4, $t1, $t3
	sw $t0, -52($fp)
	lw $t1, -16($fp)
	blt $t1, $t4, label74

	j label75

label74:
	li $t0, 1
	sw $t0, -52($fp)

label75:
	li $t0, 0
	lw $t1, -52($fp)
	bne $t1, $t0, label66

	j label67

label66:
	li $t0, 1
	sw $t0, -40($fp)

label67:
	li $t0, 0
	lw $t1, -40($fp)
	bne $t1, $t0, label51

	j label54

label54:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -56($fp)
	sw $t1, -60($fp)
	lw $t3, -12($fp)
	ble $t3, $t2, label80

	j label81

label80:
	li $t0, 1
	sw $t0, -60($fp)

label81:
	li $t0, 0
	lw $t1, -60($fp)
	bne $t1, $t0, label79

	j label77

label79:
	li $t0, 0
	li $t1, 0
	sw $t0, -64($fp)
	lw $t2, -16($fp)
	bgt $t2, $t1, label82

	j label83

label82:
	li $t0, 1
	sw $t0, -64($fp)

label83:
	li $t0, 0
	lw $t1, -64($fp)
	bne $t1, $t0, label78

	j label77

label78:
	li $t0, 0
	li $t1, -2147483648
	lw $t2, -16($fp)
	div $t1, $t2
	mflo $t3
	li $t1, -1
	mul $t4, $t1, $t3
	sw $t0, -68($fp)
	lw $t1, -12($fp)
	blt $t1, $t4, label84

	j label85

label84:
	li $t0, 1
	sw $t0, -68($fp)

label85:
	li $t0, 0
	lw $t1, -68($fp)
	bne $t1, $t0, label76

	j label77

label76:
	li $t0, 1
	sw $t0, -56($fp)

label77:
	li $t0, 0
	lw $t1, -56($fp)
	bne $t1, $t0, label51

	j label53

label53:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -72($fp)
	sw $t1, -76($fp)
	lw $t3, -12($fp)
	ble $t3, $t2, label91

	j label92

label91:
	li $t0, 1
	sw $t0, -76($fp)

label92:
	li $t0, 0
	lw $t1, -76($fp)
	bne $t1, $t0, label90

	j label87

label90:
	li $t0, 0
	li $t1, 0
	sw $t0, -80($fp)
	lw $t2, -16($fp)
	ble $t2, $t1, label93

	j label94

label93:
	li $t0, 1
	sw $t0, -80($fp)

label94:
	li $t0, 0
	lw $t1, -80($fp)
	bne $t1, $t0, label89

	j label87

label89:
	li $t0, 0
	li $t1, 0
	sw $t0, -84($fp)
	lw $t2, -12($fp)
	bne $t2, $t1, label95

	j label96

label95:
	li $t0, 1
	sw $t0, -84($fp)

label96:
	li $t0, 0
	lw $t1, -84($fp)
	bne $t1, $t0, label88

	j label87

label88:
	li $t0, 0
	li $t1, 2147483647
	lw $t2, -12($fp)
	div $t1, $t2
	mflo $t3
	sw $t0, -88($fp)
	lw $t1, -16($fp)
	blt $t1, $t3, label97

	j label98

label97:
	li $t0, 1
	sw $t0, -88($fp)

label98:
	li $t0, 0
	lw $t1, -88($fp)
	bne $t1, $t0, label86

	j label87

label86:
	li $t0, 1
	sw $t0, -72($fp)

label87:
	li $t0, 0
	lw $t1, -72($fp)
	bne $t1, $t0, label51

	j label52

label51:
	li $t0, 1
	sw $t0, -20($fp)

label52:
	li $t0, 0
	lw $t1, -20($fp)
	bne $t1, $t0, label49

	j label50

label49:
	lw $t0, -12($fp)
	move $v0, $t0
	lw $ra, 84($sp)
	lw $fp, 80($sp)
	addi $sp, $sp, 88
	jr $ra

label50:
	lw $t0, -16($fp)
	lw $t1, -12($fp)
	mul $t2, $t1, $t0
	move $v0, $t2
	lw $ra, 84($sp)
	lw $fp, 80($sp)
	addi $sp, $sp, 88
	jr $ra

id_tC:
	addi $sp, $sp, -36
	sw $ra, 32($sp)
	sw $fp, 28($sp)
	addi $fp, $sp, 36
	sw $a0, -12($fp)
	sw $a1, -16($fp)

	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -20($fp)
	sw $t1, -24($fp)
	lw $t3, -16($fp)
	beq $t3, $t2, label104

	j label105

label104:
	li $t0, 1
	sw $t0, -24($fp)

label105:
	li $t0, 0
	lw $t1, -24($fp)
	bne $t1, $t0, label101

	j label103

label103:
	li $t0, 0
	li $t1, 0
	li $t2, -2147483648
	li $t3, -1
	mul $t4, $t3, $t2
	sw $t0, -28($fp)
	sw $t1, -32($fp)
	lw $t2, -12($fp)
	beq $t2, $t4, label109

	j label110

label109:
	li $t0, 1
	sw $t0, -32($fp)

label110:
	li $t0, 0
	lw $t1, -32($fp)
	bne $t1, $t0, label108

	j label107

label108:
	li $t0, 0
	li $t1, 1
	li $t2, -1
	mul $t3, $t2, $t1
	sw $t0, -36($fp)
	lw $t1, -16($fp)
	beq $t1, $t3, label111

	j label112

label111:
	li $t0, 1
	sw $t0, -36($fp)

label112:
	li $t0, 0
	lw $t1, -36($fp)
	bne $t1, $t0, label106

	j label107

label106:
	li $t0, 1
	sw $t0, -28($fp)

label107:
	li $t0, 0
	lw $t1, -28($fp)
	bne $t1, $t0, label101

	j label102

label101:
	li $t0, 1
	sw $t0, -20($fp)

label102:
	li $t0, 0
	lw $t1, -20($fp)
	bne $t1, $t0, label99

	j label100

label99:
	lw $t0, -12($fp)
	move $v0, $t0
	lw $ra, 32($sp)
	lw $fp, 28($sp)
	addi $sp, $sp, 36
	jr $ra

label100:
	lw $t0, -16($fp)
	lw $t1, -12($fp)
	div $t1, $t0
	mflo $t2
	move $v0, $t2
	lw $ra, 32($sp)
	lw $fp, 28($sp)
	addi $sp, $sp, 36
	jr $ra

id_nh7cVmAU0S:
	addi $sp, $sp, -16
	sw $ra, 12($sp)
	sw $fp, 8($sp)
	addi $fp, $sp, 16
	sw $a0, -12($fp)
	sw $a1, -16($fp)

	li $t0, 0
	lw $t1, -12($fp)
	blt $t1, $t0, label113

	j label115

label115:
	lw $t0, -16($fp)
	lw $t1, -12($fp)
	bge $t1, $t0, label113

	j label114

label113:
	li $t0, 0
	move $v0, $t0
	lw $ra, 12($sp)
	lw $fp, 8($sp)
	addi $sp, $sp, 16
	jr $ra

label114:
	lw $t0, -12($fp)
	move $v0, $t0
	lw $ra, 12($sp)
	lw $fp, 8($sp)
	addi $sp, $sp, 16
	jr $ra

id_CbungYU:
	addi $sp, $sp, -52
	sw $ra, 48($sp)
	sw $fp, 44($sp)
	addi $fp, $sp, 52
	sw $a0, -12($fp)
	sw $a1, -56($fp)
	sw $a2, -60($fp)

	li $t0, 0
	addi $t1, $fp, -44
	li $t2, 0
	li $t3, 2
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 56733
	sw $t0, 0($t2)
	li $t1, 0
	addi $t3, $fp, -44
	li $t4, 1
	li $t5, 2
	mul $t1, $t1, $t5
	add $t1, $t1, $t4
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t3, $t1
	li $t1, 56115
	sw $t1, 0($t4)
	li $t3, 0
	addi $t5, $fp, -44
	li $t6, 0
	li $t7, 2
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	lw $t3, 0($t6)
	sw $t3, -48($fp)

	li $v0, 1
	lw $t0, -48($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -44
	li $t3, 1
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -52($fp)

	li $v0, 1
	lw $t0, -52($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -44
	lw $t3, -12($fp)
	div $t3, $t3
	mflo $t4
	li $t5, 2
	mul $t1, $t1, $t5
	add $t1, $t1, $t4
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	li $t1, 57433
	lw $t2, 0($t4)
	sub $t4, $t2, $t1
	move $v0, $t4
	lw $ra, 48($sp)
	lw $fp, 44($sp)
	addi $sp, $sp, 52
	jr $ra

id_q_JIJqvS2:
	addi $sp, $sp, -1496
	sw $ra, 1492($sp)
	sw $fp, 1488($sp)
	addi $fp, $sp, 1496
	sw $a0, -12($fp)
	sw $a1, -16($fp)
	sw $a2, -20($fp)
	sw $a3, -24($fp)

	li $t0, 46944
	move $t1, $t0
	li $t0, 36995
	move $t2, $t0
	li $t0, 0
	addi $t3, $fp, -168
	li $t4, 0
	li $t5, 9
	mul $t0, $t0, $t5
	add $t0, $t0, $t4
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t3, $t0
	li $t0, 46880
	sw $t0, 0($t4)
	li $t3, 0
	addi $t5, $fp, -168
	li $t6, 1
	li $t7, 9
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 38628
	sw $t3, 0($t6)
	li $t5, 0
	addi $t7, $fp, -168
	li $t8, 2
	li $t9, 9
	mul $t5, $t5, $t9
	add $t5, $t5, $t8
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t7, $t5
	li $t5, 3223
	sw $t5, 0($t8)
	li $t7, 0
	addi $t9, $fp, -168
	li $s0, 3
	li $s1, 9
	mul $t7, $t7, $s1
	add $t7, $t7, $s0
	li $s0, 4
	mul $t7, $t7, $s0
	add $s0, $t9, $t7
	li $t7, 42028
	sw $t7, 0($s0)
	li $t9, 0
	addi $s1, $fp, -168
	li $s2, 4
	li $s3, 9
	mul $t9, $t9, $s3
	add $t9, $t9, $s2
	li $s2, 4
	mul $t9, $t9, $s2
	add $s2, $s1, $t9
	li $t9, 25201
	sw $t9, 0($s2)
	li $s1, 0
	addi $s3, $fp, -168
	li $s4, 5
	li $s5, 9
	mul $s1, $s1, $s5
	add $s1, $s1, $s4
	li $s4, 4
	mul $s1, $s1, $s4
	add $s4, $s3, $s1
	li $s1, 43376
	sw $s1, 0($s4)
	li $s3, 0
	addi $s5, $fp, -168
	li $s6, 6
	li $s7, 9
	mul $s3, $s3, $s7
	add $s3, $s3, $s6
	li $s6, 4
	mul $s3, $s3, $s6
	add $s6, $s5, $s3
	li $s3, 22002
	sw $s3, 0($s6)
	li $s5, 0
	addi $s7, $fp, -168
	sw $s6, -1500($fp)
	li $s6, 7
	sw $s4, -1504($fp)
	li $s4, 9
	mul $s5, $s5, $s4
	add $s4, $s5, $s6
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 4568
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -168
	sw $s5, -1508($fp)
	li $s5, 8
	sw $s4, -1512($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 34807
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -264
	sw $s5, -1516($fp)
	li $s5, 0
	sw $s4, -1520($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 61741
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -264
	sw $s5, -1524($fp)
	li $s5, 1
	sw $s4, -1528($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 11763
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -264
	sw $s5, -1532($fp)
	li $s5, 2
	sw $s4, -1536($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 54490
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -264
	sw $s5, -1540($fp)
	li $s5, 3
	sw $s4, -1544($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 61172
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -264
	sw $s5, -1548($fp)
	li $s5, 4
	sw $s4, -1552($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 14368
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -264
	sw $s5, -1556($fp)
	li $s5, 5
	sw $s4, -1560($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 7323
	sw $s4, 0($s5)
	li $s6, 34665
	move $s7, $s6
	li $s6, 0
	sw $s7, -324($fp)
	addi $s7, $fp, -312
	sw $s5, -1564($fp)
	li $s5, 0
	sw $s4, -1568($fp)
	li $s4, 3
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 34892
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -312
	sw $s5, -1572($fp)
	li $s5, 1
	sw $s4, -1576($fp)
	li $s4, 3
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 35530
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -312
	sw $s5, -1580($fp)
	li $s5, 2
	sw $s4, -1584($fp)
	li $s4, 3
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 59123
	sw $s4, 0($s5)
	li $s6, 15647
	move $s7, $s6
	li $s6, 0
	sw $s6, -332($fp)
	li $s6, 0
	sw $s6, -336($fp)
	addi $s6, $fp, -264
	sw $s6, -340($fp)
	li $s6, 0
	sw $s6, -344($fp)
	li $s6, -1
	sw $s5, -1588($fp)
	mul $s5, $s6, $s7
	li $s6, 56642
	sw $t1, -316($fp)
	sw $t2, -320($fp)
	sw $s7, -328($fp)
	bge $s5, $s6, label118

	j label119

label118:
	li $t0, 1
	sw $t0, -344($fp)

label119:
	li $t0, 6
	lw $t1, -336($fp)
	mul $t1, $t1, $t0
	lw $t0, -344($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -340($fp)
	add $t3, $t2, $t1
	li $t4, 0
	li $t5, 0
	sw $t1, -336($fp)
	sw $t3, -348($fp)
	sw $t4, -352($fp)
	lw $t6, -324($fp)
	bne $t6, $t5, label121

	j label120

label120:
	li $t0, 1
	sw $t0, -352($fp)

label121:
	li $t0, -1
	lw $t1, -352($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	addi $t3, $fp, -168
	li $t4, 8
	li $t5, 9
	mul $t0, $t0, $t5
	add $t0, $t0, $t4
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t3, $t0
	lw $t0, 0($t4)
	sub $t3, $t2, $t0
	lw $t2, -348($fp)
	lw $t0, 0($t2)
	bgt $t0, $t3, label116

	j label117

label116:
	li $t0, 1
	sw $t0, -332($fp)

label117:
	li $t0, 0
	addi $t1, $fp, -312
	li $t2, 3
	mul $t0, $t0, $t2
	lw $t2, -316($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	li $t0, -1
	lw $t1, 0($t3)
	mul $t3, $t0, $t1
	li $t0, 0
	bne $t3, $t0, label122

	j label125

label125:
	li $t0, 0
	addi $t1, $fp, -312
	li $t2, 0
	li $t3, 3
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	li $t1, 0
	bne $t0, $t1, label122

	j label123

label122:
	li $t0, 0
	li $t1, 0
	li $t2, 29551
	li $t3, 0
	sw $t0, -356($fp)
	sw $t1, -360($fp)
	bne $t2, $t3, label129

	j label128

label128:
	li $t0, 1
	sw $t0, -360($fp)

label129:
	li $t0, -1
	lw $t1, -360($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label127

	j label126

label126:
	li $t0, 1
	sw $t0, -356($fp)

label127:
	li $t0, -1
	lw $t1, -356($fp)
	mul $t2, $t0, $t1
	li $t0, -1
	mul $t3, $t0, $t2
	j label124

label123:
	li $t0, 21526
	move $t1, $t0
	li $t0, 18836
	move $t2, $t0
	li $t0, 21448
	move $t3, $t0
	li $t0, 2934
	move $t4, $t0
	li $t0, 55831
	move $t5, $t0
	li $t0, 2792
	move $t6, $t0
	li $t0, 41563
	move $t7, $t0
	li $t0, 59054
	move $t8, $t0
	li $t0, 44820
	move $t9, $t0
	li $t0, 1228
	move $s0, $t0
	li $t0, 36895
	move $s1, $t0
	li $t0, 1286
	move $s2, $t0
	li $t0, 5796
	move $s3, $t0
	li $t0, 6166
	move $s4, $t0
	li $t0, 0
	addi $s5, $fp, -376
	li $s6, 0
	li $s7, 1
	mul $t0, $t0, $s7
	add $t0, $t0, $s6
	li $s6, 4
	mul $t0, $t0, $s6
	add $s6, $s5, $t0
	li $t0, 63028
	sw $t0, 0($s6)
	li $s5, 17559
	move $s7, $s5
	li $s5, 60656
	sw $s7, -532($fp)
	move $s7, $s5
	li $s5, 0
	sw $s7, -536($fp)
	addi $s7, $fp, -472
	sw $s6, -1592($fp)
	li $s6, 0
	sw $s4, -528($fp)
	li $s4, 6
	mul $s5, $s5, $s4
	add $s4, $s5, $s6
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 58664
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -472
	sw $s5, -1596($fp)
	li $s5, 1
	sw $s4, -1600($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 31928
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -472
	sw $s5, -1604($fp)
	li $s5, 2
	sw $s4, -1608($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 2444
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -472
	sw $s5, -1612($fp)
	li $s5, 3
	sw $s4, -1616($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 27793
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -472
	sw $s5, -1620($fp)
	li $s5, 4
	sw $s4, -1624($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 1284
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -472
	sw $s5, -1628($fp)
	li $s5, 5
	sw $s4, -1632($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 37974
	sw $s4, 0($s5)
	li $s6, 21380
	move $s7, $s6
	li $s6, 16932
	sw $s7, -572($fp)
	move $s7, $s6
	li $s6, 29080
	sw $s7, -576($fp)
	move $s7, $s6
	li $s6, 26395
	sw $s7, -580($fp)
	move $s7, $s6
	li $s6, 63264
	sw $s7, -584($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -588($fp)
	addi $s7, $fp, -568
	sw $s5, -1636($fp)
	li $s5, 0
	sw $s4, -1640($fp)
	li $s4, 2
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 59409
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -568
	sw $s5, -1644($fp)
	li $s5, 1
	sw $s4, -1648($fp)
	li $s4, 2
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 54651
	sw $s4, 0($s5)
	li $s6, 27279
	move $s7, $s6
	li $s6, 15399
	sw $s7, -592($fp)
	move $s7, $s6
	li $s6, 7951
	sw $s7, -596($fp)
	move $s7, $s6
	li $s6, 48727
	sw $s7, -600($fp)
	move $s7, $s6
	li $s6, 18333
	sw $s7, -604($fp)
	move $s7, $s6
	li $s6, 63782
	sw $s7, -608($fp)
	move $s7, $s6
	li $s6, 51519
	sw $s7, -612($fp)
	move $s7, $s6
	li $s6, 59896
	sw $s7, -616($fp)
	move $s7, $s6
	li $s6, 57301
	sw $s7, -620($fp)
	move $s7, $s6
	sw $t1, -476($fp)
	sw $t2, -480($fp)
	sw $t3, -484($fp)
	sw $t4, -488($fp)
	sw $t5, -492($fp)
	sw $t6, -496($fp)
	sw $t7, -500($fp)
	sw $t8, -504($fp)
	sw $t9, -508($fp)
	sw $s0, -512($fp)
	sw $s1, -516($fp)
	sw $s2, -520($fp)
	sw $s3, -524($fp)
	sw $s7, -624($fp)

label130:
	li $t0, 0
	li $t1, 0
	li $t2, 30804
	li $t3, 61124
	mul $t4, $t2, $t3
	sw $t0, -628($fp)
	sw $t1, -632($fp)
	lw $t2, -592($fp)
	beq $t4, $t2, label135

	j label136

label135:
	li $t0, 1
	sw $t0, -632($fp)

label136:
	li $t0, 0
	li $t1, 0
	sw $t0, -636($fp)
	lw $t2, -320($fp)
	bne $t2, $t1, label138

	j label137

label137:
	li $t0, 1
	sw $t0, -636($fp)

label138:
	li $t0, -1
	lw $t1, -636($fp)
	mul $t2, $t0, $t1
	li $t0, 28660
	lw $t3, -576($fp)
	div $t0, $t3
	mflo $t4
	lw $t0, -324($fp)
	add $t5, $t4, $t0
	sw $t2, -640($fp)
	sw $t5, -644($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -644($fp)
	move $a2, $t0
	lw $t1, -640($fp)
	move $a1, $t1
	lw $t2, -632($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -648($fp)

	li $t0, 0
	lw $t1, -648($fp)
	bne $t1, $t0, label134

	j label133

label133:
	li $t0, 1
	sw $t0, -628($fp)

label134:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -312
	li $t3, 3
	mul $t1, $t1, $t3
	lw $t3, -580($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	lw $t1, 0($t4)
	li $t2, 0
	sw $t0, -652($fp)
	bne $t1, $t2, label140

	j label139

label139:
	li $t0, 1
	sw $t0, -652($fp)

label140:
	lw $t0, -652($fp)
	lw $t1, -628($fp)
	div $t1, $t0
	mflo $t2
	lw $t4, -480($fp)
	move $t3, $t4
	li $t5, 0
	addi $t6, $fp, -312
	li $t7, 3
	mul $t5, $t5, $t7
	lw $t7, -328($fp)
	add $t5, $t5, $t7
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t6, $t5
	lw $t5, 0($t8)
	sw $t2, -656($fp)
	sw $t3, -604($fp)
	sw $t5, -660($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -660($fp)
	move $a2, $t0
	lw $t1, -596($fp)
	move $a1, $t1
	lw $t2, -604($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -664($fp)

	li $t0, 32090
	lw $t1, -664($fp)
	sub $t2, $t1, $t0
	li $t0, 0
	li $t3, 1384
	li $t4, 0
	sw $t0, -672($fp)
	sw $t2, -668($fp)
	bne $t3, $t4, label142

	j label141

label141:
	li $t0, 1
	sw $t0, -672($fp)

label142:
	lw $t0, -600($fp)
	lw $t1, -672($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	li $t4, 34826
	sw $t2, -676($fp)
	sw $t3, -680($fp)
	lw $t5, -328($fp)
	bge $t5, $t4, label145

	j label144

label145:
	li $t0, 0
	lw $t1, -492($fp)
	bne $t1, $t0, label143

	j label144

label143:
	li $t0, 1
	sw $t0, -680($fp)

label144:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -680($fp)
	move $a2, $t0
	lw $t1, -676($fp)
	move $a1, $t1
	lw $t2, -668($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -684($fp)

	lw $t0, -684($fp)
	lw $t1, -656($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	bne $t2, $t3, label131

	j label132

label131:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -568
	li $t3, 2
	mul $t1, $t1, $t3
	lw $t3, -524($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	lw $t1, 0($t4)
	li $t2, 0
	sw $t0, -688($fp)
	bne $t1, $t2, label151

	j label150

label150:
	li $t0, 1
	sw $t0, -688($fp)

label151:
	li $t0, -1
	lw $t1, -532($fp)
	mul $t2, $t0, $t1
	lw $t0, -688($fp)
	sub $t3, $t0, $t2
	li $t2, 29582
	lw $t4, -16($fp)
	sub $t5, $t4, $t2
	bge $t3, $t5, label146

	j label149

label149:
	li $t0, 18944
	lw $t1, -612($fp)
	mul $t2, $t1, $t0
	li $t0, 29946
	mul $t3, $t2, $t0
	li $t0, 0
	bne $t3, $t0, label146

	j label147

label146:
	li $t0, 0
	addi $t1, $fp, -312
	li $t2, 3
	mul $t0, $t0, $t2
	lw $t2, -616($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	li $t0, 0
	li $t1, 0
	sw $t0, -696($fp)
	sw $t3, -692($fp)
	lw $t4, -536($fp)
	bne $t4, $t1, label152

	j label154

label154:
	li $t0, 22710
	li $t1, 0
	bne $t0, $t1, label152

	j label153

label152:
	li $t0, 1
	sw $t0, -696($fp)

label153:
	lw $t1, -624($fp)
	move $t0, $t1
	li $t2, 0
	li $t3, 50872
	sw $t0, -620($fp)
	sw $t2, -700($fp)
	lw $t4, -584($fp)
	ble $t4, $t3, label157

	j label156

label157:
	li $t0, 32390
	li $t1, 0
	bne $t0, $t1, label155

	j label156

label155:
	li $t0, 1
	sw $t0, -700($fp)

label156:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -700($fp)
	move $a2, $t0
	lw $t1, -620($fp)
	move $a1, $t1
	lw $t2, -696($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -704($fp)

	lw $t1, -692($fp)
	lw $t0, 0($t1)
	lw $t2, -704($fp)
	div $t0, $t2
	mflo $t3
	li $t0, 0
	addi $t4, $fp, -472
	li $t5, 4
	li $t6, 6
	mul $t0, $t0, $t6
	add $t0, $t0, $t5
	li $t5, 4
	mul $t0, $t0, $t5
	add $t5, $t4, $t0
	lw $t0, 0($t5)
	sub $t4, $t3, $t0
	li $t0, 0
	li $t3, -1
	lw $t5, -588($fp)
	mul $t6, $t3, $t5
	li $t3, 0
	sw $t0, -712($fp)
	sw $t4, -708($fp)
	bne $t6, $t3, label159

	j label158

label158:
	li $t0, 1
	sw $t0, -712($fp)

label159:
	li $t0, -1
	lw $t1, -712($fp)
	mul $t2, $t0, $t1
	lw $t0, -708($fp)
	add $t3, $t0, $t2
	move $v0, $t3
	lw $ra, 1492($sp)
	lw $fp, 1488($sp)
	addi $sp, $sp, 1496
	jr $ra

	j label148

label147:
	lw $t1, -608($fp)
	move $t0, $t1
	sw $t0, -572($fp)
	move $v0, $t0
	lw $ra, 1492($sp)
	lw $fp, 1488($sp)
	addi $sp, $sp, 1496
	jr $ra

label148:
	j label130

label132:
	li $t0, 4828
	move $t1, $t0
	li $t0, 6347
	move $t2, $t0
	li $t0, 3552
	move $t3, $t0
	li $t0, 0
	li $t4, 0
	li $t5, 33908
	sw $t0, -728($fp)
	sw $t1, -716($fp)
	sw $t2, -720($fp)
	sw $t3, -724($fp)
	sw $t4, -732($fp)
	lw $t6, -572($fp)
	bge $t5, $t6, label164

	j label165

label164:
	li $t0, 1
	sw $t0, -732($fp)

label165:
	li $t0, 0
	li $t1, 32742
	li $t2, 1281
	sw $t0, -736($fp)
	bgt $t1, $t2, label166

	j label167

label166:
	li $t0, 1
	sw $t0, -736($fp)

label167:
	li $t0, 0
	li $t1, 27781
	li $t2, 21858
	sw $t0, -740($fp)
	bne $t1, $t2, label168

	j label169

label168:
	li $t0, 1
	sw $t0, -740($fp)

label169:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -740($fp)
	move $a2, $t0
	lw $t1, -736($fp)
	move $a1, $t1
	lw $t2, -732($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -744($fp)

	li $t0, 0
	addi $t1, $fp, -312
	li $t2, 1
	li $t3, 3
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	lw $t1, -744($fp)
	beq $t1, $t0, label163

	j label162

label163:
	li $t0, 0
	li $t1, 0
	sw $t0, -748($fp)
	lw $t2, -476($fp)
	bne $t2, $t1, label171

	j label170

label170:
	li $t0, 1
	sw $t0, -748($fp)

label171:
	li $t0, 29809
	lw $t1, -748($fp)
	mul $t2, $t1, $t0
	li $t0, 0
	bne $t2, $t0, label160

	j label162

label162:
	lw $t0, -600($fp)
	lw $t1, -716($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	bne $t2, $t3, label160

	j label161

label160:
	li $t0, 1
	sw $t0, -728($fp)

label161:

	li $v0, 1
	lw $t0, -716($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -720($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -724($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -312
	lw $t4, -532($fp)
	move $t3, $t4
	li $t5, 3
	mul $t1, $t1, $t5
	add $t1, $t1, $t3
	li $t5, 4
	mul $t1, $t1, $t5
	add $t5, $t2, $t1
	lw $t1, 0($t5)
	lw $t2, -480($fp)
	add $t5, $t2, $t1
	sw $t3, -720($fp)
	move $v0, $t5
	lw $ra, 1492($sp)
	lw $fp, 1488($sp)
	addi $sp, $sp, 1496
	jr $ra

	li $v0, 1
	lw $t0, -716($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -720($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -724($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 11752
	lw $t3, -320($fp)
	div $t2, $t3
	mflo $t4
	li $t2, 0
	addi $t5, $fp, -376
	li $t6, 1
	mul $t2, $t2, $t6
	lw $t6, -316($fp)
	add $t2, $t2, $t6
	li $t7, 4
	mul $t2, $t2, $t7
	add $t7, $t5, $t2
	li $t2, 61514
	lw $t5, 0($t7)
	add $t7, $t5, $t2
	sw $t1, -752($fp)
	beq $t4, $t7, label174

	j label173

label174:
	li $t0, 0
	li $t1, 28056
	li $t2, 0
	sw $t0, -756($fp)
	bne $t1, $t2, label176

	j label175

label175:
	li $t0, 1
	sw $t0, -756($fp)

label176:
	li $t0, -1
	lw $t1, -12($fp)
	mul $t2, $t0, $t1
	lw $t0, -756($fp)
	sub $t3, $t0, $t2
	li $t2, 0
	bne $t3, $t2, label172

	j label173

label172:
	li $t0, 1
	sw $t0, -752($fp)

label173:
	lw $t0, -752($fp)
	move $v0, $t0
	lw $ra, 1492($sp)
	lw $fp, 1488($sp)
	addi $sp, $sp, 1496
	jr $ra

label177:
	lw $t0, -724($fp)
	lw $t1, -600($fp)
	sub $t2, $t1, $t0
	lw $t3, -604($fp)
	add $t4, $t2, $t3
	li $t2, 0
	bne $t4, $t2, label178

	j label179

label178:
	j label177

label179:

	li $v0, 1
	lw $t0, -716($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -720($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -724($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -472
	li $t3, 0
	li $t4, 63271
	li $t5, 0
	sw $t1, -760($fp)
	sw $t2, -764($fp)
	sw $t3, -768($fp)
	bne $t4, $t5, label181

	j label180

label180:
	li $t0, 1
	sw $t0, -768($fp)

label181:
	li $t0, 6
	lw $t1, -760($fp)
	mul $t1, $t1, $t0
	lw $t0, -768($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -764($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	sw $t1, -760($fp)
	move $v0, $t4
	lw $ra, 1492($sp)
	lw $fp, 1488($sp)
	addi $sp, $sp, 1496
	jr $ra

	li $t0, 0
	addi $t1, $fp, -784
	li $t2, 0
	li $t3, 1
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 55874
	sw $t0, 0($t2)
	li $t1, 19821
	move $t3, $t1
	li $t1, 28539
	move $t4, $t1
	li $t1, 51463
	move $t5, $t1
	li $t1, 48481
	move $t6, $t1
	li $t1, 60630
	move $t7, $t1
	li $t1, 52847
	move $t8, $t1
	li $t1, 17771
	move $t9, $t1
	li $t1, 24676
	move $s0, $t1
	li $t1, 6255
	move $s1, $t1
	li $t1, 47717
	move $s2, $t1
	li $t1, 47387
	move $s3, $t1
	li $t1, 0
	li $s4, 57127
	li $s5, -1
	lw $s6, -320($fp)
	mul $s7, $s5, $s6
	sw $t1, -832($fp)
	sw $t3, -788($fp)
	sw $t4, -792($fp)
	sw $t5, -796($fp)
	sw $t6, -800($fp)
	sw $t7, -804($fp)
	sw $t8, -808($fp)
	sw $t9, -812($fp)
	sw $s0, -816($fp)
	sw $s1, -820($fp)
	sw $s2, -824($fp)
	sw $s3, -828($fp)
	blt $s4, $s7, label182

	j label183

label182:
	li $t0, 1
	sw $t0, -832($fp)

label183:
	li $t0, 0
	li $t1, 0
	li $t2, 14572
	li $t3, 32354
	li $t4, 0
	li $t5, 0
	li $t6, 0
	sw $t0, -836($fp)
	sw $t1, -840($fp)
	sw $t2, -844($fp)
	sw $t3, -848($fp)
	sw $t4, -852($fp)
	sw $t5, -856($fp)
	lw $t7, -480($fp)
	bne $t7, $t6, label192

	j label191

label191:
	li $t0, 1
	sw $t0, -856($fp)

label192:
	lw $t0, -608($fp)
	lw $t1, -856($fp)
	bgt $t1, $t0, label189

	j label190

label189:
	li $t0, 1
	sw $t0, -852($fp)

label190:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -852($fp)
	move $a2, $t0
	lw $t1, -848($fp)
	move $a1, $t1
	lw $t2, -844($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -860($fp)

	li $t0, 0
	lw $t1, -860($fp)
	bne $t1, $t0, label188

	j label187

label187:
	li $t0, 1
	sw $t0, -840($fp)

label188:
	lw $t0, -492($fp)
	lw $t1, -840($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	addi $t4, $fp, -472
	li $t5, 6
	mul $t3, $t3, $t5
	lw $t5, -788($fp)
	add $t3, $t3, $t5
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t4, $t3
	li $t3, 43748
	lw $t4, 0($t6)
	div $t4, $t3
	mflo $t6
	li $t3, 0
	li $t4, 0
	sw $t2, -864($fp)
	sw $t3, -872($fp)
	sw $t4, -876($fp)
	sw $t6, -868($fp)
	lw $t7, -316($fp)
	lw $t8, -320($fp)
	beq $t8, $t7, label195

	j label196

label195:
	li $t0, 1
	sw $t0, -876($fp)

label196:
	li $t0, 0
	li $t1, 19400
	sw $t0, -880($fp)
	lw $t2, -572($fp)
	bne $t1, $t2, label197

	j label199

label199:
	li $t0, 0
	lw $t1, -788($fp)
	bne $t1, $t0, label197

	j label198

label197:
	li $t0, 1
	sw $t0, -880($fp)

label198:
	li $t0, 0
	addi $t1, $fp, -472
	li $t2, 4
	li $t3, 6
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	sw $t0, -884($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -884($fp)
	move $a2, $t0
	lw $t1, -880($fp)
	move $a1, $t1
	lw $t2, -876($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -888($fp)

	li $t0, 53309
	move $t1, $t0
	li $t0, 0
	li $t2, 5908
	li $t3, 48581
	sub $t4, $t2, $t3
	sw $t0, -892($fp)
	sw $t1, -476($fp)
	lw $t2, -576($fp)
	ble $t4, $t2, label200

	j label201

label200:
	li $t0, 1
	sw $t0, -892($fp)

label201:
	li $t0, 0
	li $t1, 0
	sw $t0, -896($fp)
	lw $t2, -824($fp)
	bne $t2, $t1, label204

	j label203

label204:
	li $t0, 0
	lw $t1, -316($fp)
	bne $t1, $t0, label202

	j label203

label202:
	li $t0, 1
	sw $t0, -896($fp)

label203:
	li $t0, 0
	li $t1, 0
	sw $t0, -900($fp)
	lw $t2, -484($fp)
	bne $t2, $t1, label206

	j label205

label205:
	li $t0, 1
	sw $t0, -900($fp)

label206:
	li $t0, 15554
	lw $t1, -900($fp)
	div $t1, $t0
	mflo $t2
	sw $t2, -904($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -904($fp)
	move $a3, $t0
	lw $t1, -896($fp)
	move $a2, $t1
	lw $t2, -892($fp)
	move $a1, $t2
	lw $t3, -476($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -908($fp)

	li $t0, 27766
	sw $t0, -912($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -912($fp)
	move $a2, $t0
	lw $t1, -908($fp)
	move $a1, $t1
	lw $t2, -888($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -916($fp)

	li $t0, 0
	lw $t1, -916($fp)
	bne $t1, $t0, label194

	j label193

label193:
	li $t0, 1
	sw $t0, -872($fp)

label194:
	li $t0, 11606
	lw $t1, -480($fp)
	mul $t2, $t0, $t1
	sw $t2, -920($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -920($fp)
	move $a2, $t0
	lw $t1, -872($fp)
	move $a1, $t1
	lw $t2, -868($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -924($fp)

	lw $t0, -924($fp)
	lw $t1, -864($fp)
	bgt $t1, $t0, label186

	j label185

label186:
	li $t0, 0
	li $t1, 58735
	li $t2, -1
	mul $t3, $t2, $t1
	li $t1, 57576
	sw $t0, -928($fp)
	bne $t3, $t1, label207

	j label208

label207:
	li $t0, 1
	sw $t0, -928($fp)

label208:
	li $t0, 23358
	lw $t1, -316($fp)
	mul $t2, $t0, $t1
	lw $t0, -928($fp)
	beq $t0, $t2, label184

	j label185

label184:
	li $t0, 1
	sw $t0, -836($fp)

label185:
	li $t0, 0
	li $t1, 0
	sw $t0, -932($fp)
	sw $t1, -936($fp)
	lw $t2, -580($fp)
	lw $t3, -480($fp)
	bne $t3, $t2, label214

	j label213

label214:
	li $t0, 0
	lw $t1, -792($fp)
	bne $t1, $t0, label212

	j label213

label212:
	li $t0, 1
	sw $t0, -936($fp)

label213:
	li $t0, 54713
	sw $t0, -940($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -940($fp)
	move $a2, $t0
	lw $t1, -496($fp)
	move $a1, $t1
	lw $t2, -936($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -944($fp)

	li $t0, 0
	lw $t1, -944($fp)
	bne $t1, $t0, label211

	j label210

label211:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 0
	sw $t0, -948($fp)
	sw $t1, -952($fp)
	sw $t2, -956($fp)
	lw $t4, -320($fp)
	bne $t4, $t3, label220

	j label219

label219:
	li $t0, 1
	sw $t0, -956($fp)

label220:
	li $t0, 0
	li $t1, 20096
	lw $t2, -812($fp)
	div $t2, $t1
	mflo $t3
	li $t1, 0
	sw $t0, -960($fp)
	bne $t3, $t1, label221

	j label223

label223:
	li $t0, 0
	lw $t1, -320($fp)
	bne $t1, $t0, label221

	j label222

label221:
	li $t0, 1
	sw $t0, -960($fp)

label222:
	li $t0, 0
	li $t1, 21093
	li $t2, 45051
	sw $t0, -964($fp)
	blt $t1, $t2, label224

	j label226

label226:
	li $t0, 39917
	li $t1, 0
	bne $t0, $t1, label224

	j label225

label224:
	li $t0, 1
	sw $t0, -964($fp)

label225:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -964($fp)
	move $a2, $t0
	lw $t1, -960($fp)
	move $a1, $t1
	lw $t2, -956($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -968($fp)

	li $t0, 49633
	lw $t1, -968($fp)
	bgt $t1, $t0, label217

	j label218

label217:
	li $t0, 1
	sw $t0, -952($fp)

label218:
	li $t0, 30978
	move $t1, $t0
	sw $t1, -600($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -796($fp)
	move $a2, $t0
	lw $t1, -600($fp)
	move $a1, $t1
	lw $t2, -952($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -972($fp)

	li $t0, 0
	lw $t1, -972($fp)
	bne $t1, $t0, label216

	j label215

label215:
	li $t0, 1
	sw $t0, -948($fp)

label216:
	lw $t0, -828($fp)
	lw $t1, -948($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	bne $t2, $t3, label209

	j label210

label209:
	li $t0, 1
	sw $t0, -932($fp)

label210:
	lw $t0, -476($fp)
	lw $t1, -320($fp)
	add $t2, $t1, $t0
	li $t3, 22862
	move $t4, $t3
	li $t3, 0
	li $t5, 44727
	li $t6, 0
	sw $t3, -980($fp)
	sw $t4, -976($fp)
	bne $t5, $t6, label229

	j label228

label229:
	li $t0, 18290
	li $t1, 0
	bne $t0, $t1, label227

	j label228

label227:
	li $t0, 1
	sw $t0, -980($fp)

label228:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -168
	li $t3, 9
	mul $t1, $t1, $t3
	lw $t3, -328($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	lw $t1, 0($t4)
	sw $t0, -984($fp)
	lw $t2, -820($fp)
	bne $t1, $t2, label230

	j label231

label230:
	li $t0, 1
	sw $t0, -984($fp)

label231:
	li $t0, 0
	li $t1, 40633
	li $t2, 3867
	sw $t0, -988($fp)
	bne $t1, $t2, label234

	j label233

label234:
	li $t0, 0
	lw $t1, -504($fp)
	bne $t1, $t0, label232

	j label233

label232:
	li $t0, 1
	sw $t0, -988($fp)

label233:
	li $t0, 0
	li $t1, 24545
	li $t2, 0
	sw $t0, -992($fp)
	bne $t1, $t2, label238

	j label236

label238:
	li $t0, 0
	lw $t1, -480($fp)
	bne $t1, $t0, label237

	j label236

label237:
	li $t0, 22814
	li $t1, 0
	bne $t0, $t1, label235

	j label236

label235:
	li $t0, 1
	sw $t0, -992($fp)

label236:
	li $t0, 0
	li $t1, 51254
	sw $t0, -996($fp)
	lw $t2, -976($fp)
	blt $t1, $t2, label239

	j label240

label239:
	li $t0, 1
	sw $t0, -996($fp)

label240:
	li $t0, 16137
	move $t1, $t0
	li $t0, 0
	li $t2, 37386
	li $t3, 18073
	add $t4, $t2, $t3
	li $t2, 0
	sw $t0, -1000($fp)
	sw $t1, -812($fp)
	bne $t4, $t2, label243

	j label242

label243:
	li $t0, 0
	lw $t1, -580($fp)
	bne $t1, $t0, label241

	j label242

label241:
	li $t0, 1
	sw $t0, -1000($fp)

label242:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1000($fp)
	move $a2, $t0
	lw $t1, -812($fp)
	move $a1, $t1
	lw $t2, -996($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1004($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1004($fp)
	move $a2, $t0
	lw $t1, -992($fp)
	move $a1, $t1
	lw $t2, -988($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1008($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -320($fp)
	move $a2, $t0
	lw $t1, -1008($fp)
	move $a1, $t1
	lw $t2, -984($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1012($fp)

	li $t0, 59885
	lw $t1, -816($fp)
	add $t2, $t0, $t1
	sw $t2, -1016($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1016($fp)
	move $a2, $t0
	lw $t1, -1012($fp)
	move $a1, $t1
	lw $t2, -980($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1020($fp)

	lw $t0, -1020($fp)
	lw $t1, -580($fp)
	mul $t2, $t1, $t0

label244:
	li $t0, 0
	addi $t1, $fp, -472
	li $t2, 0
	li $t3, 0
	addi $t4, $fp, -568
	li $t5, 2
	mul $t3, $t3, $t5
	lw $t5, -492($fp)
	add $t3, $t3, $t5
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t4, $t3
	li $t3, 56787
	lw $t4, 0($t6)
	mul $t6, $t4, $t3
	li $t3, 56775
	li $t4, -1
	mul $t7, $t4, $t3
	sw $t0, -1024($fp)
	sw $t1, -1028($fp)
	sw $t2, -1032($fp)
	blt $t6, $t7, label247

	j label248

label247:
	li $t0, 1
	sw $t0, -1032($fp)

label248:
	li $t0, 6
	lw $t1, -1024($fp)
	mul $t1, $t1, $t0
	lw $t0, -1032($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -1028($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	li $t3, 0
	sw $t1, -1024($fp)
	bne $t4, $t3, label245

	j label246

label245:
	lw $t0, -320($fp)
	move $v0, $t0
	lw $ra, 1492($sp)
	lw $fp, 1488($sp)
	addi $sp, $sp, 1496
	jr $ra

	j label244

label246:
	li $t0, 0
	lw $t1, -480($fp)
	bne $t1, $t0, label252

	j label250

label252:
	li $t0, 0
	lw $t1, -320($fp)
	bne $t1, $t0, label250

	j label249

label249:

label253:
	li $t0, 0
	addi $t1, $fp, -376
	li $t2, 0
	li $t3, 0
	sw $t0, -1036($fp)
	sw $t1, -1040($fp)
	sw $t2, -1044($fp)
	lw $t4, -328($fp)
	bne $t4, $t3, label258

	j label257

label258:
	li $t0, 41649
	li $t1, 0
	bne $t0, $t1, label256

	j label257

label256:
	li $t0, 1
	sw $t0, -1044($fp)

label257:
	li $t0, 1
	lw $t1, -1036($fp)
	mul $t1, $t1, $t0
	lw $t0, -1044($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -1040($fp)
	add $t3, $t2, $t1
	li $t4, 0
	li $t5, 0
	addi $t6, $fp, -312
	li $t7, 3
	mul $t5, $t5, $t7
	lw $t7, -532($fp)
	add $t5, $t5, $t7
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t6, $t5
	lw $t5, 0($t8)
	li $t6, 0
	sw $t1, -1036($fp)
	sw $t3, -1048($fp)
	sw $t4, -1052($fp)
	bne $t5, $t6, label260

	j label259

label259:
	li $t0, 1
	sw $t0, -1052($fp)

label260:
	lw $t1, -1048($fp)
	lw $t0, 0($t1)
	lw $t2, -1052($fp)
	div $t0, $t2
	mflo $t3
	li $t0, 0
	addi $t4, $fp, -784
	li $t5, 0
	li $t6, 1
	mul $t0, $t0, $t6
	add $t0, $t0, $t5
	li $t5, 4
	mul $t0, $t0, $t5
	add $t5, $t4, $t0
	lw $t0, 0($t5)
	add $t4, $t3, $t0
	li $t0, 0
	bne $t4, $t0, label254

	j label255

label254:
	li $t0, 60114
	li $t1, -1
	mul $t2, $t1, $t0
	move $t0, $t2
	sw $t0, -24($fp)
	j label253

label255:
	j label251

label250:

label261:
	li $t0, 0
	addi $t1, $fp, -472
	li $t2, 0
	li $t3, 24914
	li $t4, 36301
	sw $t0, -1056($fp)
	sw $t1, -1060($fp)
	sw $t2, -1064($fp)
	bne $t3, $t4, label264

	j label266

label266:
	li $t0, 0
	lw $t1, -504($fp)
	bne $t1, $t0, label264

	j label265

label264:
	li $t0, 1
	sw $t0, -1064($fp)

label265:
	li $t0, 6
	lw $t1, -1056($fp)
	mul $t1, $t1, $t0
	lw $t0, -1064($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -1060($fp)
	add $t3, $t2, $t1
	li $t4, -1
	lw $t5, 0($t3)
	mul $t3, $t4, $t5
	li $t4, 0
	sw $t1, -1056($fp)
	bne $t3, $t4, label262

	j label263

label262:
	li $t0, 53313
	lw $t1, -12($fp)
	div $t1, $t0
	mflo $t2
	li $t0, 0
	li $t3, 0
	sw $t0, -1072($fp)
	sw $t2, -1068($fp)
	lw $t4, -812($fp)
	bne $t4, $t3, label267

	j label270

label270:
	li $t0, 0
	lw $t1, -16($fp)
	bne $t1, $t0, label267

	j label269

label269:
	li $t0, 16954
	li $t1, 0
	bne $t0, $t1, label267

	j label268

label267:
	li $t0, 1
	sw $t0, -1072($fp)

label268:
	li $t0, 0
	li $t1, 59659
	li $t2, 0
	sw $t0, -1076($fp)
	bne $t1, $t2, label271

	j label274

label274:
	li $t0, 0
	lw $t1, -480($fp)
	bne $t1, $t0, label271

	j label273

label273:
	li $t0, 42490
	li $t1, 0
	bne $t0, $t1, label271

	j label272

label271:
	li $t0, 1
	sw $t0, -1076($fp)

label272:
	li $t0, 0
	li $t1, 0
	li $t2, 37050
	li $t3, -1
	mul $t4, $t3, $t2
	li $t2, 0
	sw $t0, -1080($fp)
	sw $t1, -1084($fp)
	bne $t4, $t2, label277

	j label279

label279:
	li $t0, 0
	lw $t1, -320($fp)
	bne $t1, $t0, label277

	j label278

label277:
	li $t0, 1
	sw $t0, -1084($fp)

label278:
	li $t0, 0
	lw $t1, -20($fp)
	lw $t2, -532($fp)
	div $t2, $t1
	mflo $t3
	li $t4, 0
	sw $t0, -1088($fp)
	bne $t3, $t4, label282

	j label281

label282:
	li $t0, 15216
	li $t1, 0
	bne $t0, $t1, label280

	j label281

label280:
	li $t0, 1
	sw $t0, -1088($fp)

label281:
	li $t0, 0
	addi $t1, $fp, -784
	li $t2, 1
	mul $t0, $t0, $t2
	lw $t2, -328($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	li $t0, 0
	li $t1, 22006
	li $t4, 11431
	add $t5, $t1, $t4
	li $t1, 0
	sw $t0, -1096($fp)
	sw $t3, -1092($fp)
	bne $t5, $t1, label283

	j label285

label285:
	li $t0, 64849
	li $t1, 0
	bne $t0, $t1, label283

	j label284

label283:
	li $t0, 1
	sw $t0, -1096($fp)

label284:
	lw $t1, -1092($fp)
	lw $t0, 0($t1)
	sw $t0, -1100($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1096($fp)
	move $a3, $t0
	lw $t1, -1100($fp)
	move $a2, $t1
	lw $t2, -1088($fp)
	move $a1, $t2
	lw $t3, -1084($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1104($fp)

	lw $t0, -484($fp)
	lw $t1, -1104($fp)
	ble $t1, $t0, label275

	j label276

label275:
	li $t0, 1
	sw $t0, -1080($fp)

label276:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1080($fp)
	move $a3, $t0
	lw $t1, -1076($fp)
	move $a2, $t1
	lw $t2, -1072($fp)
	move $a1, $t2
	lw $t3, -1068($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1108($fp)

	li $t0, 52984
	lw $t1, -24($fp)
	mul $t2, $t1, $t0
	lw $t0, -532($fp)
	div $t2, $t0
	mflo $t3
	li $t2, -1
	mul $t4, $t2, $t3
	lw $t2, -1108($fp)
	add $t3, $t2, $t4
	move $v0, $t3
	lw $ra, 1492($sp)
	lw $fp, 1488($sp)
	addi $sp, $sp, 1496
	jr $ra

	j label261

label263:

label251:
	li $t0, 34293
	move $t1, $t0
	li $t0, 44040
	move $t2, $t0
	sw $t1, -1112($fp)
	sw $t2, -1116($fp)

	li $v0, 1
	lw $t0, -1112($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1116($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 5738
	li $t4, 0
	sw $t1, -1120($fp)
	sw $t2, -1124($fp)
	bne $t3, $t4, label290

	j label289

label289:
	li $t0, 1
	sw $t0, -1124($fp)

label290:
	li $t0, -1
	lw $t1, -1124($fp)
	mul $t2, $t0, $t1
	li $t0, -1
	mul $t3, $t0, $t2
	li $t0, 0
	addi $t2, $fp, -472
	li $t4, 0
	li $t5, 6
	mul $t0, $t0, $t5
	add $t0, $t0, $t4
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t2, $t0
	lw $t0, 0($t4)
	bge $t3, $t0, label288

	j label287

label288:
	li $t0, 0
	li $t1, 0
	sw $t0, -1128($fp)
	lw $t2, -816($fp)
	bne $t2, $t1, label292

	j label291

label291:
	li $t0, 1
	sw $t0, -1128($fp)

label292:
	lw $t0, -476($fp)
	lw $t1, -1128($fp)
	mul $t2, $t1, $t0
	lw $t4, -484($fp)
	move $t3, $t4
	li $t5, 0
	addi $t6, $fp, -312
	li $t7, 3
	mul $t5, $t5, $t7
	add $t5, $t5, $t0
	li $t7, 4
	mul $t5, $t5, $t7
	add $t7, $t6, $t5
	li $t5, 30284
	lw $t6, 0($t7)
	sub $t7, $t6, $t5
	li $t5, 32204
	lw $t6, -1112($fp)
	mul $t8, $t6, $t5
	li $t5, 33626
	sub $t9, $t8, $t5
	li $t5, 0
	li $t8, 46421
	lw $s0, -792($fp)
	div $s0, $t8
	mflo $s1
	li $t8, 4055
	sw $t2, -1132($fp)
	sw $t3, -12($fp)
	sw $t5, -1144($fp)
	sw $t7, -1136($fp)
	sw $t9, -1140($fp)
	bge $s1, $t8, label293

	j label294

label293:
	li $t0, 1
	sw $t0, -1144($fp)

label294:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1144($fp)
	move $a3, $t0
	lw $t1, -1140($fp)
	move $a2, $t1
	lw $t2, -1136($fp)
	move $a1, $t2
	lw $t3, -12($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1148($fp)

	lw $t0, -1148($fp)
	lw $t1, -1132($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	bne $t2, $t3, label286

	j label287

label286:
	li $t0, 1
	sw $t0, -1120($fp)

label287:
	lw $t0, -1120($fp)
	move $v0, $t0
	lw $ra, 1492($sp)
	lw $fp, 1488($sp)
	addi $sp, $sp, 1496
	jr $ra

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -312
	li $t3, 1
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	li $t1, -1
	lw $t2, 0($t3)
	mul $t3, $t1, $t2
	li $t1, 0
	sw $t0, -1152($fp)
	bne $t3, $t1, label299

	j label298

label298:
	li $t0, 1
	sw $t0, -1152($fp)

label299:
	li $t0, -1
	lw $t1, -1152($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label295

	j label296

label295:
	li $t0, 60842
	li $t1, 0
	li $t2, 42938
	li $t3, 0
	sw $t0, -1156($fp)
	sw $t1, -1160($fp)
	bne $t2, $t3, label303

	j label304

label303:
	li $t0, 1
	sw $t0, -1160($fp)

label304:
	li $t0, -1
	lw $t1, -1160($fp)
	mul $t2, $t0, $t1
	lw $t0, -1156($fp)
	sub $t3, $t0, $t2
	li $t2, 0
	bne $t3, $t2, label300

	j label301

label300:
	li $t0, 0
	addi $t1, $fp, -168
	li $t2, 0
	li $t3, 16883
	sw $t0, -1164($fp)
	sw $t1, -1168($fp)
	sw $t2, -1172($fp)
	lw $t4, -584($fp)
	bne $t3, $t4, label305

	j label306

label305:
	li $t0, 1
	sw $t0, -1172($fp)

label306:
	li $t0, 9
	lw $t1, -1164($fp)
	mul $t1, $t1, $t0
	lw $t0, -1172($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -1168($fp)
	add $t3, $t2, $t1
	li $t4, 0
	li $t5, 0
	li $t6, 39866
	li $t7, 40086
	mul $t8, $t6, $t7
	li $t6, 41578
	sw $t1, -1164($fp)
	sw $t3, -1176($fp)
	sw $t4, -1180($fp)
	sw $t5, -1184($fp)
	ble $t8, $t6, label309

	j label310

label309:
	li $t0, 1
	sw $t0, -1184($fp)

label310:
	li $t0, 0
	lw $t1, -796($fp)
	lw $t2, -316($fp)
	sub $t3, $t2, $t1
	li $t4, 0
	sw $t0, -1188($fp)
	bne $t3, $t4, label313

	j label312

label313:
	li $t0, 34444
	li $t1, 0
	bne $t0, $t1, label311

	j label312

label311:
	li $t0, 1
	sw $t0, -1188($fp)

label312:
	li $t0, 0
	li $t1, -1
	lw $t2, -504($fp)
	mul $t3, $t1, $t2
	li $t1, 0
	sw $t0, -1192($fp)
	bne $t3, $t1, label316

	j label315

label316:
	li $t0, 65000
	li $t1, 0
	bne $t0, $t1, label314

	j label315

label314:
	li $t0, 1
	sw $t0, -1192($fp)

label315:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1192($fp)
	move $a2, $t0
	lw $t1, -1188($fp)
	move $a1, $t1
	lw $t2, -1184($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1196($fp)

	li $t0, 0
	lw $t1, -1196($fp)
	bne $t1, $t0, label308

	j label307

label307:
	li $t0, 1
	sw $t0, -1180($fp)

label308:
	lw $t1, -1176($fp)
	lw $t0, 0($t1)
	lw $t2, -1180($fp)
	div $t0, $t2
	mflo $t3
	li $t0, -1
	mul $t4, $t0, $t3
	j label302

label301:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 12343
	lw $t4, -612($fp)
	mul $t5, $t3, $t4
	li $t3, 22222
	div $t5, $t3
	mflo $t6
	li $t3, 16418
	lw $t5, -604($fp)
	add $t7, $t3, $t5
	sw $t0, -1200($fp)
	sw $t1, -1204($fp)
	sw $t2, -1208($fp)
	ble $t6, $t7, label321

	j label322

label321:
	li $t0, 1
	sw $t0, -1208($fp)

label322:
	li $t0, 6466
	lw $t1, -1116($fp)
	mul $t2, $t1, $t0
	lw $t0, -800($fp)
	mul $t3, $t2, $t0
	lw $t2, -1208($fp)
	bgt $t2, $t3, label319

	j label320

label319:
	li $t0, 1
	sw $t0, -1204($fp)

label320:
	li $t0, 64712
	lw $t1, -580($fp)
	div $t1, $t0
	mflo $t2
	li $t0, 53468
	mul $t3, $t2, $t0
	li $t0, 21683
	div $t3, $t0
	mflo $t2
	lw $t0, -1204($fp)
	bge $t0, $t2, label317

	j label318

label317:
	li $t0, 1
	sw $t0, -1200($fp)

label318:

label302:
	j label297

label296:
	li $t0, 0
	li $t1, 21182
	lw $t2, -788($fp)
	div $t1, $t2
	mflo $t3
	li $t1, 0
	sw $t0, -1212($fp)
	bne $t3, $t1, label323

	j label325

label325:
	li $t0, 0
	li $t1, 0
	li $t2, 64899
	li $t3, 20996
	sw $t0, -1216($fp)
	sw $t1, -1220($fp)
	blt $t2, $t3, label328

	j label329

label328:
	li $t0, 1
	sw $t0, -1220($fp)

label329:
	li $t0, 8631
	lw $t1, -1220($fp)
	blt $t1, $t0, label326

	j label327

label326:
	li $t0, 1
	sw $t0, -1216($fp)

label327:
	li $t0, 33656
	li $t1, -1
	mul $t2, $t1, $t0
	lw $t0, -1216($fp)
	beq $t0, $t2, label323

	j label324

label323:
	li $t0, 1
	sw $t0, -1212($fp)

label324:

label297:
	li $t0, 0
	li $t1, 0
	li $t2, -1
	lw $t3, -804($fp)
	mul $t4, $t2, $t3
	lw $t2, -16($fp)
	div $t2, $t4
	mflo $t5
	sw $t0, -1224($fp)
	sw $t1, -1228($fp)
	lw $t4, -588($fp)
	bne $t5, $t4, label336

	j label337

label336:
	li $t0, 1
	sw $t0, -1228($fp)

label337:
	li $t0, 65037
	lw $t1, -1228($fp)
	bgt $t1, $t0, label334

	j label335

label334:
	li $t0, 1
	sw $t0, -1224($fp)

label335:
	li $t0, 14369
	lw $t1, -1224($fp)
	bgt $t1, $t0, label333

	j label331

label333:
	li $t0, 0
	addi $t1, $fp, -472
	li $t2, 6
	mul $t0, $t0, $t2
	lw $t2, -480($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	li $t1, 0
	bne $t0, $t1, label331

	j label330

label330:
	li $t0, 0
	li $t1, 0
	li $t2, 43046
	move $t3, $t2
	li $t2, 0
	li $t4, 47409
	lw $t5, -496($fp)
	div $t4, $t5
	mflo $t6
	li $t4, 0
	sw $t0, -1232($fp)
	sw $t1, -1236($fp)
	sw $t2, -1240($fp)
	sw $t3, -536($fp)
	bne $t6, $t4, label346

	j label345

label346:
	li $t0, 44653
	li $t1, 0
	bne $t0, $t1, label344

	j label345

label344:
	li $t0, 1
	sw $t0, -1240($fp)

label345:
	li $t0, 0
	li $t1, 0
	li $t2, 9714
	li $t3, 15499
	sw $t0, -1244($fp)
	sw $t1, -1248($fp)
	blt $t2, $t3, label349

	j label350

label349:
	li $t0, 1
	sw $t0, -1248($fp)

label350:
	li $t0, 25538
	lw $t1, -1248($fp)
	bgt $t1, $t0, label347

	j label348

label347:
	li $t0, 1
	sw $t0, -1244($fp)

label348:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1244($fp)
	move $a2, $t0
	lw $t1, -1240($fp)
	move $a1, $t1
	lw $t2, -536($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1252($fp)

	li $t0, 0
	lw $t1, -1252($fp)
	bne $t1, $t0, label343

	j label342

label342:
	li $t0, 1
	sw $t0, -1236($fp)

label343:
	li $t0, 0
	addi $t1, $fp, -376
	li $t2, 0
	li $t3, 1
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	lw $t1, -1236($fp)
	mul $t2, $t1, $t0
	li $t0, 0
	bne $t2, $t0, label341

	j label339

label341:
	li $t0, 772
	lw $t1, -800($fp)
	mul $t2, $t1, $t0
	li $t0, 0
	bne $t2, $t0, label340

	j label339

label340:
	li $t0, 0
	addi $t1, $fp, -168
	li $t2, 1
	li $t3, 9
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	lw $t1, -808($fp)
	mul $t2, $t0, $t1
	li $t0, 17656
	lw $t3, -500($fp)
	mul $t4, $t0, $t3
	li $t0, 48941
	mul $t5, $t4, $t0
	li $t0, 19151
	move $t4, $t0
	sw $t2, -1256($fp)
	sw $t4, -328($fp)
	sw $t5, -1260($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -328($fp)
	move $a2, $t0
	lw $t1, -1260($fp)
	move $a1, $t1
	lw $t2, -1256($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1264($fp)

	li $t0, 0
	addi $t1, $fp, -472
	li $t2, 0
	li $t3, 6
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	lw $t1, -1264($fp)
	mul $t2, $t1, $t0
	li $t0, 0
	bne $t2, $t0, label338

	j label339

label338:
	li $t0, 1
	sw $t0, -1232($fp)

label339:
	j label332

label331:
	li $t0, 18615
	move $t1, $t0
	li $t0, 0
	li $t2, 6042
	li $t3, 0
	sw $t0, -1272($fp)
	sw $t1, -1268($fp)
	bne $t2, $t3, label352

	j label351

label351:
	li $t0, 1
	sw $t0, -1272($fp)

label352:
	li $t0, 0
	li $t1, 40072
	li $t2, 0
	sw $t0, -1276($fp)
	bne $t1, $t2, label354

	j label355

label355:
	li $t0, 35033
	li $t1, 0
	bne $t0, $t1, label353

	j label354

label353:
	li $t0, 1
	sw $t0, -1276($fp)

label354:
	li $t0, 0
	addi $t1, $fp, -568
	li $t2, 2
	mul $t0, $t0, $t2
	lw $t2, -1268($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	sw $t0, -1280($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1280($fp)
	move $a2, $t0
	lw $t1, -1276($fp)
	move $a1, $t1
	lw $t2, -492($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1284($fp)

	li $t0, -1
	lw $t1, -1284($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	li $t3, -1
	lw $t4, -580($fp)
	mul $t5, $t3, $t4
	li $t3, 12508
	sw $t0, -1292($fp)
	sw $t2, -1288($fp)
	ble $t5, $t3, label356

	j label357

label356:
	li $t0, 1
	sw $t0, -1292($fp)

label357:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1292($fp)
	move $a2, $t0
	lw $t1, -1288($fp)
	move $a1, $t1
	lw $t2, -1272($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1296($fp)

	li $t0, 39248
	lw $t1, -1296($fp)
	mul $t2, $t1, $t0
	move $t0, $t2
	li $t2, -1
	lw $t3, -504($fp)
	mul $t4, $t2, $t3
	sw $t0, -528($fp)

label332:

label358:
	li $t0, 22965
	lw $t1, -820($fp)
	div $t0, $t1
	mflo $t2
	li $t0, 0
	bne $t2, $t0, label359

	j label360

label359:
	li $t0, 0
	li $t1, 0
	sw $t0, -1300($fp)
	lw $t2, -596($fp)
	bne $t2, $t1, label362

	j label361

label361:
	li $t0, 1
	sw $t0, -1300($fp)

label362:
	li $t0, -1
	lw $t1, -1300($fp)
	mul $t2, $t0, $t1
	li $t0, -1
	mul $t3, $t0, $t2
	j label358

label360:

label363:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -376
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	li $t1, 22328
	li $t2, -1
	mul $t4, $t2, $t1
	li $t1, 55188
	sub $t2, $t4, $t1
	li $t1, 0
	li $t4, 0
	sw $t0, -1304($fp)
	sw $t1, -1316($fp)
	sw $t2, -1312($fp)
	sw $t3, -1308($fp)
	lw $t5, -536($fp)
	bne $t5, $t4, label369

	j label368

label368:
	li $t0, 1
	sw $t0, -1316($fp)

label369:
	li $t0, 3526
	lw $t1, -1316($fp)
	sub $t2, $t1, $t0
	lw $t3, -1308($fp)
	lw $t0, 0($t3)
	sw $t0, -1324($fp)
	sw $t2, -1320($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1320($fp)
	move $a2, $t0
	lw $t1, -1312($fp)
	move $a1, $t1
	lw $t2, -1324($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1328($fp)

	li $t0, 55984
	lw $t1, -1328($fp)
	ble $t1, $t0, label366

	j label367

label366:
	li $t0, 1
	sw $t0, -1304($fp)

label367:
	li $t0, 54689
	lw $t1, -508($fp)
	div $t1, $t0
	mflo $t2
	lw $t0, -480($fp)
	sub $t3, $t2, $t0
	li $t2, 17895
	li $t4, 0
	li $t5, -1
	lw $t6, -516($fp)
	mul $t7, $t5, $t6
	li $t5, 0
	sw $t2, -1336($fp)
	sw $t3, -1332($fp)
	sw $t4, -1340($fp)
	bne $t7, $t5, label370

	j label372

label372:
	li $t0, 33494
	li $t1, 0
	bne $t0, $t1, label370

	j label371

label370:
	li $t0, 1
	sw $t0, -1340($fp)

label371:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1340($fp)
	move $a2, $t0
	lw $t1, -1336($fp)
	move $a1, $t1
	lw $t2, -1332($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1344($fp)

	li $t0, -1
	lw $t1, -1344($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	li $t3, 36562
	li $t4, 0
	sw $t0, -1352($fp)
	sw $t2, -1348($fp)
	bne $t3, $t4, label373

	j label376

label376:
	li $t0, 0
	lw $t1, -496($fp)
	bne $t1, $t0, label373

	j label375

label375:
	li $t0, 0
	lw $t1, -512($fp)
	bne $t1, $t0, label373

	j label374

label373:
	li $t0, 1
	sw $t0, -1352($fp)

label374:
	li $t0, 0
	addi $t1, $fp, -472
	li $t2, 6
	mul $t0, $t0, $t2
	lw $t2, -516($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	sw $t0, -1356($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1356($fp)
	move $a2, $t0
	lw $t1, -1352($fp)
	move $a1, $t1
	lw $t2, -1348($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1360($fp)

	lw $t0, -1360($fp)
	lw $t1, -1304($fp)
	blt $t1, $t0, label364

	j label365

label364:
	li $t0, 0
	li $t1, 62549
	li $t2, -1
	mul $t3, $t2, $t1
	lw $t1, -520($fp)
	add $t2, $t3, $t1
	li $t3, 0
	li $t4, -1
	lw $t5, -476($fp)
	mul $t6, $t4, $t5
	li $t4, 43209
	sw $t0, -1364($fp)
	sw $t2, -1368($fp)
	sw $t3, -1372($fp)
	beq $t6, $t4, label379

	j label380

label379:
	li $t0, 1
	sw $t0, -1372($fp)

label380:
	li $t0, 52061
	lw $t1, -524($fp)
	div $t0, $t1
	mflo $t2
	lw $t0, -528($fp)
	mul $t3, $t2, $t0
	li $t2, 0
	li $t4, 22551
	lw $t5, -480($fp)
	mul $t6, $t4, $t5
	li $t4, 0
	sw $t2, -1380($fp)
	sw $t3, -1376($fp)
	bne $t6, $t4, label383

	j label382

label383:
	li $t0, 56978
	li $t1, 0
	bne $t0, $t1, label381

	j label382

label381:
	li $t0, 1
	sw $t0, -1380($fp)

label382:
	li $t0, 0
	sw $t0, -1384($fp)
	lw $t1, -504($fp)
	lw $t2, -532($fp)
	ble $t2, $t1, label384

	j label386

label386:
	li $t0, 0
	lw $t1, -324($fp)
	bne $t1, $t0, label384

	j label385

label384:
	li $t0, 1
	sw $t0, -1384($fp)

label385:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1384($fp)
	move $a2, $t0
	lw $t1, -1380($fp)
	move $a1, $t1
	lw $t2, -1376($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1388($fp)

	li $t0, 0
	li $t1, 0
	sw $t0, -1392($fp)
	lw $t2, -484($fp)
	bne $t2, $t1, label389

	j label388

label389:
	li $t0, 0
	lw $t1, -488($fp)
	bne $t1, $t0, label387

	j label388

label387:
	li $t0, 1
	sw $t0, -1392($fp)

label388:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1392($fp)
	move $a3, $t0
	lw $t1, -1388($fp)
	move $a2, $t1
	lw $t2, -1372($fp)
	move $a1, $t2
	lw $t3, -1368($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1396($fp)

	li $t0, 0
	li $t1, 53724
	li $t2, -1
	mul $t3, $t2, $t1
	li $t1, 0
	sw $t0, -1400($fp)
	bne $t3, $t1, label391

	j label390

label390:
	li $t0, 1
	sw $t0, -1400($fp)

label391:
	li $t0, 0
	li $t1, -1
	lw $t2, -328($fp)
	mul $t3, $t1, $t2
	sw $t0, -1404($fp)
	lw $t1, -492($fp)
	blt $t3, $t1, label392

	j label393

label392:
	li $t0, 1
	sw $t0, -1404($fp)

label393:
	li $t0, 23324
	lw $t1, -500($fp)
	mul $t2, $t1, $t0
	li $t0, 518
	sw $t0, -1412($fp)
	sw $t2, -1408($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1412($fp)
	move $a3, $t0
	lw $t1, -1408($fp)
	move $a2, $t1
	lw $t2, -1404($fp)
	move $a1, $t2
	lw $t3, -1400($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1416($fp)

	li $t0, 32790
	lw $t1, -520($fp)
	mul $t2, $t0, $t1
	lw $t0, -1416($fp)
	add $t3, $t0, $t2
	lw $t2, -1396($fp)
	beq $t2, $t3, label377

	j label378

label377:
	li $t0, 1
	sw $t0, -1364($fp)

label378:
	lw $t0, -1364($fp)
	move $v0, $t0
	lw $ra, 1492($sp)
	lw $fp, 1488($sp)
	addi $sp, $sp, 1496
	jr $ra

	j label363

label365:

label124:

	li $v0, 1
	lw $t0, -316($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -320($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -168
	li $t3, 0
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1420($fp)

	li $v0, 1
	lw $t0, -1420($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -168
	li $t3, 1
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1424($fp)

	li $v0, 1
	lw $t0, -1424($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -168
	li $t3, 2
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1428($fp)

	li $v0, 1
	lw $t0, -1428($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -168
	li $t3, 3
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1432($fp)

	li $v0, 1
	lw $t0, -1432($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -168
	li $t3, 4
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1436($fp)

	li $v0, 1
	lw $t0, -1436($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -168
	li $t3, 5
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1440($fp)

	li $v0, 1
	lw $t0, -1440($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -168
	li $t3, 6
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1444($fp)

	li $v0, 1
	lw $t0, -1444($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -168
	li $t3, 7
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1448($fp)

	li $v0, 1
	lw $t0, -1448($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -168
	li $t3, 8
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1452($fp)

	li $v0, 1
	lw $t0, -1452($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -264
	li $t3, 0
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1456($fp)

	li $v0, 1
	lw $t0, -1456($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -264
	li $t3, 1
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1460($fp)

	li $v0, 1
	lw $t0, -1460($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -264
	li $t3, 2
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1464($fp)

	li $v0, 1
	lw $t0, -1464($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -264
	li $t3, 3
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1468($fp)

	li $v0, 1
	lw $t0, -1468($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -264
	li $t3, 4
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1472($fp)

	li $v0, 1
	lw $t0, -1472($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -264
	li $t3, 5
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1476($fp)

	li $v0, 1
	lw $t0, -1476($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -324($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -312
	li $t3, 0
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1480($fp)

	li $v0, 1
	lw $t0, -1480($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -312
	li $t3, 1
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1484($fp)

	li $v0, 1
	lw $t0, -1484($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -312
	li $t3, 2
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1488($fp)

	li $v0, 1
	lw $t0, -1488($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -328($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 40980
	li $t4, 0
	sw $t1, -1492($fp)
	sw $t2, -1496($fp)
	bne $t3, $t4, label397

	j label396

label396:
	li $t0, 1
	sw $t0, -1496($fp)

label397:
	li $t0, 49459
	lw $t1, -1496($fp)
	mul $t2, $t1, $t0
	lw $t0, -320($fp)
	div $t2, $t0
	mflo $t3
	li $t2, 51941
	li $t4, 34678
	mul $t5, $t2, $t4
	li $t2, -1
	mul $t4, $t2, $t5
	li $t2, -1
	mul $t5, $t2, $t4
	bgt $t3, $t5, label394

	j label395

label394:
	li $t0, 1
	sw $t0, -1492($fp)

label395:
	lw $t0, -1492($fp)
	move $v0, $t0
	lw $ra, 1492($sp)
	lw $fp, 1488($sp)
	addi $sp, $sp, 1496
	jr $ra

id_SzpmUPUcJF:
	addi $sp, $sp, -4644
	sw $ra, 4640($sp)
	sw $fp, 4636($sp)
	addi $fp, $sp, 4644
	sw $a0, -12($fp)

	li $t0, 0
	addi $t1, $fp, -60
	li $t2, 0
	li $t3, 3
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 1773
	sw $t0, 0($t2)
	li $t1, 0
	addi $t3, $fp, -60
	li $t4, 1
	li $t5, 3
	mul $t1, $t1, $t5
	add $t1, $t1, $t4
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t3, $t1
	li $t1, 5021
	sw $t1, 0($t4)
	li $t3, 0
	addi $t5, $fp, -60
	li $t6, 2
	li $t7, 3
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 40720
	sw $t3, 0($t6)
	li $t5, 41845
	move $t7, $t5
	li $t5, 40054
	move $t8, $t5
	li $t5, 53229
	move $t9, $t5
	li $t5, 15558
	move $s0, $t5
	li $t5, 63020
	move $s1, $t5
	li $t5, 21884
	move $s2, $t5
	li $t5, 10453
	move $s3, $t5
	li $t5, 19812
	move $s4, $t5
	li $t5, 11536
	move $s5, $t5
	li $t5, 13979
	move $s6, $t5
	li $t5, 10261
	move $s7, $t5
	li $t5, 689
	sw $s7, -1528($fp)
	move $s7, $t5
	li $t5, 31874
	sw $s7, -1532($fp)
	move $s7, $t5
	li $t5, 43755
	sw $s7, -1536($fp)
	move $s7, $t5
	li $t5, 37251
	sw $s7, -1540($fp)
	move $s7, $t5
	li $t5, 28887
	sw $s7, -1544($fp)
	move $s7, $t5
	li $t5, 0
	sw $s7, -1548($fp)
	addi $s7, $fp, -124
	sw $s6, -1524($fp)
	li $s6, 0
	sw $s5, -1520($fp)
	li $s5, 4
	mul $t5, $t5, $s5
	add $t5, $t5, $s6
	li $s5, 4
	mul $t5, $t5, $s5
	add $s5, $s7, $t5
	li $t5, 21428
	sw $t5, 0($s5)
	li $s6, 0
	addi $s7, $fp, -124
	sw $s5, -4648($fp)
	li $s5, 1
	sw $s4, -1516($fp)
	li $s4, 4
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 23777
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -124
	sw $s5, -4652($fp)
	li $s5, 2
	sw $s4, -4656($fp)
	li $s4, 4
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 51439
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -124
	sw $s5, -4660($fp)
	li $s5, 3
	sw $s4, -4664($fp)
	li $s4, 4
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 12871
	sw $s4, 0($s5)
	li $s6, 11965
	move $s7, $s6
	li $s6, 0
	sw $s7, -1552($fp)
	addi $s7, $fp, -284
	sw $s5, -4668($fp)
	li $s5, 0
	sw $s4, -4672($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 9227
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -284
	sw $s5, -4676($fp)
	li $s5, 1
	sw $s4, -4680($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 13389
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -284
	sw $s5, -4684($fp)
	li $s5, 2
	sw $s4, -4688($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 44755
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -284
	sw $s5, -4692($fp)
	li $s5, 3
	sw $s4, -4696($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 50207
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -284
	sw $s5, -4700($fp)
	li $s5, 4
	sw $s4, -4704($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 62848
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -284
	sw $s5, -4708($fp)
	li $s5, 5
	sw $s4, -4712($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 31161
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -284
	sw $s5, -4716($fp)
	li $s5, 6
	sw $s4, -4720($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 19349
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -284
	sw $s5, -4724($fp)
	li $s5, 7
	sw $s4, -4728($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 64622
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -284
	sw $s5, -4732($fp)
	li $s5, 8
	sw $s4, -4736($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 36182
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -284
	sw $s5, -4740($fp)
	li $s5, 9
	sw $s4, -4744($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 60070
	sw $s4, 0($s5)
	li $s6, 40931
	move $s7, $s6
	li $s6, 10700
	sw $s7, -1556($fp)
	move $s7, $s6
	li $s6, 47763
	sw $s7, -1560($fp)
	move $s7, $s6
	li $s6, 56489
	sw $s7, -1564($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -1568($fp)
	addi $s7, $fp, -364
	sw $s5, -4748($fp)
	li $s5, 0
	sw $s4, -4752($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 8184
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -364
	sw $s5, -4756($fp)
	li $s5, 1
	sw $s4, -4760($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 4111
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -364
	sw $s5, -4764($fp)
	li $s5, 2
	sw $s4, -4768($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 1406
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -364
	sw $s5, -4772($fp)
	li $s5, 3
	sw $s4, -4776($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 27997
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -364
	sw $s5, -4780($fp)
	li $s5, 4
	sw $s4, -4784($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 15648
	sw $s4, 0($s5)
	li $s6, 15385
	move $s7, $s6
	li $s6, 38258
	sw $s7, -1572($fp)
	move $s7, $s6
	li $s6, 16337
	sw $s7, -1576($fp)
	move $s7, $s6
	li $s6, 47260
	sw $s7, -1580($fp)
	move $s7, $s6
	li $s6, 16477
	sw $s7, -1584($fp)
	move $s7, $s6
	li $s6, 53589
	sw $s7, -1588($fp)
	move $s7, $s6
	li $s6, 10611
	sw $s7, -1592($fp)
	move $s7, $s6
	li $s6, 37906
	sw $s7, -1596($fp)
	move $s7, $s6
	li $s6, 11830
	sw $s7, -1600($fp)
	move $s7, $s6
	li $s6, 62050
	sw $s7, -1604($fp)
	move $s7, $s6
	li $s6, 50777
	sw $s7, -1608($fp)
	move $s7, $s6
	li $s6, 23795
	sw $s7, -1612($fp)
	move $s7, $s6
	li $s6, 5741
	sw $s7, -1616($fp)
	move $s7, $s6
	li $s6, 64166
	sw $s7, -1620($fp)
	move $s7, $s6
	li $s6, 3015
	sw $s7, -1624($fp)
	move $s7, $s6
	li $s6, 55948
	sw $s7, -1628($fp)
	move $s7, $s6
	li $s6, 61478
	sw $s7, -1632($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -1636($fp)
	addi $s7, $fp, -476
	sw $s5, -4788($fp)
	li $s5, 0
	sw $s4, -4792($fp)
	li $s4, 7
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 34176
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -476
	sw $s5, -4796($fp)
	li $s5, 1
	sw $s4, -4800($fp)
	li $s4, 7
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 9762
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -476
	sw $s5, -4804($fp)
	li $s5, 2
	sw $s4, -4808($fp)
	li $s4, 7
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 60564
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -476
	sw $s5, -4812($fp)
	li $s5, 3
	sw $s4, -4816($fp)
	li $s4, 7
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 4822
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -476
	sw $s5, -4820($fp)
	li $s5, 4
	sw $s4, -4824($fp)
	li $s4, 7
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 4296
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -476
	sw $s5, -4828($fp)
	li $s5, 5
	sw $s4, -4832($fp)
	li $s4, 7
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 35960
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -476
	sw $s5, -4836($fp)
	li $s5, 6
	sw $s4, -4840($fp)
	li $s4, 7
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 15522
	sw $s4, 0($s5)
	li $s6, 52059
	move $s7, $s6
	li $s6, 26913
	sw $s7, -1640($fp)
	move $s7, $s6
	li $s6, 23707
	sw $s7, -1644($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -1648($fp)
	addi $s7, $fp, -620
	sw $s5, -4844($fp)
	li $s5, 0
	sw $s4, -4848($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 56170
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -620
	sw $s5, -4852($fp)
	li $s5, 1
	sw $s4, -4856($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 28320
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -620
	sw $s5, -4860($fp)
	li $s5, 2
	sw $s4, -4864($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 51704
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -620
	sw $s5, -4868($fp)
	li $s5, 3
	sw $s4, -4872($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 6282
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -620
	sw $s5, -4876($fp)
	li $s5, 4
	sw $s4, -4880($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 43705
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -620
	sw $s5, -4884($fp)
	li $s5, 5
	sw $s4, -4888($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 24426
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -620
	sw $s5, -4892($fp)
	li $s5, 6
	sw $s4, -4896($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 22620
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -620
	sw $s5, -4900($fp)
	li $s5, 7
	sw $s4, -4904($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 25429
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -620
	sw $s5, -4908($fp)
	li $s5, 8
	sw $s4, -4912($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 40903
	sw $s4, 0($s5)
	li $s6, 10673
	move $s7, $s6
	li $s6, 36041
	sw $s7, -1652($fp)
	move $s7, $s6
	li $s6, 13273
	sw $s7, -1656($fp)
	move $s7, $s6
	li $s6, 22503
	sw $s7, -1660($fp)
	move $s7, $s6
	li $s6, 32555
	sw $s7, -1664($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -1668($fp)
	addi $s7, $fp, -716
	sw $s5, -4916($fp)
	li $s5, 0
	sw $s4, -4920($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 64050
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -716
	sw $s5, -4924($fp)
	li $s5, 1
	sw $s4, -4928($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 46298
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -716
	sw $s5, -4932($fp)
	li $s5, 2
	sw $s4, -4936($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 38297
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -716
	sw $s5, -4940($fp)
	li $s5, 3
	sw $s4, -4944($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 62680
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -716
	sw $s5, -4948($fp)
	li $s5, 4
	sw $s4, -4952($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 49313
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -716
	sw $s5, -4956($fp)
	li $s5, 5
	sw $s4, -4960($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 28709
	sw $s4, 0($s5)
	li $s6, 58623
	move $s7, $s6
	li $s6, 17953
	sw $s7, -1672($fp)
	move $s7, $s6
	li $s6, 38471
	sw $s7, -1676($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -1680($fp)
	addi $s7, $fp, -780
	sw $s5, -4964($fp)
	li $s5, 0
	sw $s4, -4968($fp)
	li $s4, 4
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 53651
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -780
	sw $s5, -4972($fp)
	li $s5, 1
	sw $s4, -4976($fp)
	li $s4, 4
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 22775
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -780
	sw $s5, -4980($fp)
	li $s5, 2
	sw $s4, -4984($fp)
	li $s4, 4
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 42767
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -780
	sw $s5, -4988($fp)
	li $s5, 3
	sw $s4, -4992($fp)
	li $s4, 4
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 24075
	sw $s4, 0($s5)
	li $s6, 38298
	move $s7, $s6
	li $s6, 29290
	sw $s7, -1684($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -1688($fp)
	addi $s7, $fp, -940
	sw $s5, -4996($fp)
	li $s5, 0
	sw $s4, -5000($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 50989
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -940
	sw $s5, -5004($fp)
	li $s5, 1
	sw $s4, -5008($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 62005
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -940
	sw $s5, -5012($fp)
	li $s5, 2
	sw $s4, -5016($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 19925
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -940
	sw $s5, -5020($fp)
	li $s5, 3
	sw $s4, -5024($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 13773
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -940
	sw $s5, -5028($fp)
	li $s5, 4
	sw $s4, -5032($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 48173
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -940
	sw $s5, -5036($fp)
	li $s5, 5
	sw $s4, -5040($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 26207
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -940
	sw $s5, -5044($fp)
	li $s5, 6
	sw $s4, -5048($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 57478
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -940
	sw $s5, -5052($fp)
	li $s5, 7
	sw $s4, -5056($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 7063
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -940
	sw $s5, -5060($fp)
	li $s5, 8
	sw $s4, -5064($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 48827
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -940
	sw $s5, -5068($fp)
	li $s5, 9
	sw $s4, -5072($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 17372
	sw $s4, 0($s5)
	li $s6, 47966
	move $s7, $s6
	li $s6, 59500
	sw $s7, -1692($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -1696($fp)
	addi $s7, $fp, -1036
	sw $s5, -5076($fp)
	li $s5, 0
	sw $s4, -5080($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 53413
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1036
	sw $s5, -5084($fp)
	li $s5, 1
	sw $s4, -5088($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 61240
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1036
	sw $s5, -5092($fp)
	li $s5, 2
	sw $s4, -5096($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 16467
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1036
	sw $s5, -5100($fp)
	li $s5, 3
	sw $s4, -5104($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 20432
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1036
	sw $s5, -5108($fp)
	li $s5, 4
	sw $s4, -5112($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 59754
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1036
	sw $s5, -5116($fp)
	li $s5, 5
	sw $s4, -5120($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 62766
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1068
	sw $s5, -5124($fp)
	li $s5, 0
	sw $s4, -5128($fp)
	li $s4, 2
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 58729
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1068
	sw $s5, -5132($fp)
	li $s5, 1
	sw $s4, -5136($fp)
	li $s4, 2
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 56899
	sw $s4, 0($s5)
	li $s6, 46543
	move $s7, $s6
	li $s6, 0
	sw $s7, -1700($fp)
	addi $s7, $fp, -1084
	sw $s5, -5140($fp)
	li $s5, 0
	sw $s4, -5144($fp)
	li $s4, 1
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 21903
	sw $s4, 0($s5)
	li $s6, 49986
	move $s7, $s6
	li $s6, 64497
	sw $s7, -1704($fp)
	move $s7, $s6
	li $s6, 60374
	sw $s7, -1708($fp)
	move $s7, $s6
	li $s6, 38101
	sw $s7, -1712($fp)
	move $s7, $s6
	li $s6, 21736
	sw $s7, -1716($fp)
	move $s7, $s6
	li $s6, 37606
	sw $s7, -1720($fp)
	move $s7, $s6
	li $s6, 62177
	sw $s7, -1724($fp)
	move $s7, $s6
	li $s6, 60034
	sw $s7, -1728($fp)
	move $s7, $s6
	li $s6, 1360
	sw $s7, -1732($fp)
	move $s7, $s6
	li $s6, 47630
	sw $s7, -1736($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -1740($fp)
	addi $s7, $fp, -1244
	sw $s5, -5148($fp)
	li $s5, 0
	sw $s4, -5152($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 56503
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1244
	sw $s5, -5156($fp)
	li $s5, 1
	sw $s4, -5160($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 21285
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1244
	sw $s5, -5164($fp)
	li $s5, 2
	sw $s4, -5168($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 61403
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1244
	sw $s5, -5172($fp)
	li $s5, 3
	sw $s4, -5176($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 39140
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1244
	sw $s5, -5180($fp)
	li $s5, 4
	sw $s4, -5184($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 47493
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1244
	sw $s5, -5188($fp)
	li $s5, 5
	sw $s4, -5192($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 53345
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1244
	sw $s5, -5196($fp)
	li $s5, 6
	sw $s4, -5200($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 46203
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1244
	sw $s5, -5204($fp)
	li $s5, 7
	sw $s4, -5208($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 30784
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1244
	sw $s5, -5212($fp)
	li $s5, 8
	sw $s4, -5216($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 5181
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1244
	sw $s5, -5220($fp)
	li $s5, 9
	sw $s4, -5224($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 28634
	sw $s4, 0($s5)
	li $s6, 24749
	move $s7, $s6
	li $s6, 58594
	sw $s7, -1744($fp)
	move $s7, $s6
	li $s6, 24338
	sw $s7, -1748($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -1752($fp)
	addi $s7, $fp, -1340
	sw $s5, -5228($fp)
	li $s5, 0
	sw $s4, -5232($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 41216
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1340
	sw $s5, -5236($fp)
	li $s5, 1
	sw $s4, -5240($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 13491
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1340
	sw $s5, -5244($fp)
	li $s5, 2
	sw $s4, -5248($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 18556
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1340
	sw $s5, -5252($fp)
	li $s5, 3
	sw $s4, -5256($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 38446
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1340
	sw $s5, -5260($fp)
	li $s5, 4
	sw $s4, -5264($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 6684
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1340
	sw $s5, -5268($fp)
	li $s5, 5
	sw $s4, -5272($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 9919
	sw $s4, 0($s5)
	li $s6, 19454
	move $s7, $s6
	li $s6, 28587
	sw $s7, -1756($fp)
	move $s7, $s6
	li $s6, 59905
	sw $s7, -1760($fp)
	move $s7, $s6
	li $s6, 18415
	sw $s7, -1764($fp)
	move $s7, $s6
	li $s6, 23426
	sw $s7, -1768($fp)
	move $s7, $s6
	li $s6, 32471
	sw $s7, -1772($fp)
	move $s7, $s6
	li $s6, 40151
	sw $s7, -1776($fp)
	move $s7, $s6
	li $s6, 61032
	sw $s7, -1780($fp)
	move $s7, $s6
	li $s6, 29112
	sw $s7, -1784($fp)
	move $s7, $s6
	li $s6, 34650
	sw $s7, -1788($fp)
	move $s7, $s6
	li $s6, 62392
	sw $s7, -1792($fp)
	move $s7, $s6
	li $s6, 11206
	sw $s7, -1796($fp)
	move $s7, $s6
	li $s6, 25617
	sw $s7, -1800($fp)
	move $s7, $s6
	li $s6, 18142
	sw $s7, -1804($fp)
	move $s7, $s6
	li $s6, 7073
	sw $s7, -1808($fp)
	move $s7, $s6
	li $s6, 64758
	sw $s7, -1812($fp)
	move $s7, $s6
	li $s6, 99
	sw $s7, -1816($fp)
	move $s7, $s6
	li $s6, 60418
	sw $s7, -1820($fp)
	move $s7, $s6
	li $s6, 45425
	sw $s7, -1824($fp)
	move $s7, $s6
	li $s6, 30883
	sw $s7, -1828($fp)
	move $s7, $s6
	li $s6, 64
	sw $s7, -1832($fp)
	move $s7, $s6
	li $s6, 8523
	sw $s7, -1836($fp)
	move $s7, $s6
	li $s6, 55632
	sw $s7, -1840($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -1844($fp)
	addi $s7, $fp, -1468
	sw $s5, -5276($fp)
	li $s5, 0
	sw $s4, -5280($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 58658
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1468
	sw $s5, -5284($fp)
	li $s5, 1
	sw $s4, -5288($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 32861
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1468
	sw $s5, -5292($fp)
	li $s5, 2
	sw $s4, -5296($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 31313
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1468
	sw $s5, -5300($fp)
	li $s5, 3
	sw $s4, -5304($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 6613
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1468
	sw $s5, -5308($fp)
	li $s5, 4
	sw $s4, -5312($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 51418
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1468
	sw $s5, -5316($fp)
	li $s5, 5
	sw $s4, -5320($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 4223
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1468
	sw $s5, -5324($fp)
	li $s5, 6
	sw $s4, -5328($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 13298
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1468
	sw $s5, -5332($fp)
	li $s5, 7
	sw $s4, -5336($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 61337
	sw $s4, 0($s5)
	li $s6, 23677
	move $s7, $s6
	li $s6, 41885
	sw $s7, -1848($fp)
	move $s7, $s6
	li $s6, 55707
	sw $s7, -1852($fp)
	move $s7, $s6
	li $s6, 42092
	sw $s7, -1856($fp)
	move $s7, $s6
	li $s6, 65311
	sw $s7, -1860($fp)
	move $s7, $s6
	li $s6, 22642
	sw $s7, -1864($fp)
	move $s7, $s6
	li $s6, 16708
	sw $s7, -1868($fp)
	move $s7, $s6
	li $s6, 60807
	sw $s7, -1872($fp)
	move $s7, $s6
	li $s6, 51754
	sw $s7, -1876($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -1880($fp)
	addi $s7, $fp, -1484
	sw $s5, -5340($fp)
	li $s5, 0
	sw $s4, -5344($fp)
	li $s4, 1
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 51358
	sw $s4, 0($s5)
	li $s6, 57664
	move $s7, $s6
	li $s6, 62960
	sw $s7, -1884($fp)
	move $s7, $s6
	li $s6, 11439
	sw $s7, -1888($fp)
	move $s7, $s6
	li $s6, 10270
	sw $s7, -1892($fp)
	move $s7, $s6
	li $s6, 4497
	sw $s7, -1896($fp)
	move $s7, $s6
	li $s6, 10661
	sw $s7, -1900($fp)
	move $s7, $s6
	sw $t7, -1488($fp)
	sw $t8, -1492($fp)
	sw $t9, -1496($fp)
	sw $s0, -1500($fp)
	sw $s1, -1504($fp)
	sw $s2, -1508($fp)
	sw $s3, -1512($fp)
	sw $s7, -1904($fp)

label398:
	li $t0, 0
	li $t1, 10369
	lw $t2, -1576($fp)
	add $t3, $t2, $t1
	li $t1, 64915
	sw $t0, -1908($fp)
	bne $t3, $t1, label402

	j label403

label402:
	li $t0, 1
	sw $t0, -1908($fp)

label403:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1908($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -1912($fp)

	li $t0, 41253
	lw $t1, -1912($fp)
	div $t1, $t0
	mflo $t2
	li $t0, 0
	bne $t2, $t0, label399

	j label401

label401:
	li $t0, 0
	addi $t1, $fp, -284
	li $t2, 0
	li $t3, 64979
	sw $t0, -1916($fp)
	sw $t1, -1920($fp)
	sw $t2, -1924($fp)
	lw $t4, -1712($fp)
	bne $t3, $t4, label404

	j label405

label404:
	li $t0, 1
	sw $t0, -1924($fp)

label405:
	li $t0, 10
	lw $t1, -1916($fp)
	mul $t1, $t1, $t0
	lw $t0, -1924($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -1920($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	li $t3, 0
	sw $t1, -1916($fp)
	bne $t4, $t3, label399

	j label400

label399:
	lw $t1, -1672($fp)
	move $t0, $t1
	li $t2, 64610
	li $t3, 31349
	mul $t4, $t2, $t3
	li $t2, 0
	li $t3, 0
	sw $t0, -1532($fp)
	sw $t2, -1932($fp)
	sw $t4, -1928($fp)
	lw $t5, -1876($fp)
	bne $t5, $t3, label408

	j label406

label408:
	li $t0, 0
	lw $t1, -1760($fp)
	bne $t1, $t0, label406

	j label407

label406:
	li $t0, 1
	sw $t0, -1932($fp)

label407:
	li $t0, 0
	li $t1, -1
	lw $t2, -1648($fp)
	mul $t3, $t1, $t2
	li $t1, 0
	sw $t0, -1936($fp)
	bne $t3, $t1, label410

	j label409

label409:
	li $t0, 1
	sw $t0, -1936($fp)

label410:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1936($fp)
	move $a3, $t0
	lw $t1, -1932($fp)
	move $a2, $t1
	lw $t2, -1928($fp)
	move $a1, $t2
	lw $t3, -1532($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1940($fp)

	li $t0, -1
	lw $t1, -1940($fp)
	mul $t2, $t0, $t1
	sw $t2, -1944($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1944($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -1948($fp)

	li $t0, 0
	li $t1, 58102
	lw $t2, -1656($fp)
	add $t3, $t2, $t1
	li $t1, 0
	sw $t0, -1952($fp)
	bne $t3, $t1, label411

	j label413

label413:
	li $t0, 31936
	li $t1, 0
	bne $t0, $t1, label411

	j label412

label411:
	li $t0, 1
	sw $t0, -1952($fp)

label412:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1952($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -1956($fp)

	lw $t0, -1956($fp)
	lw $t1, -1948($fp)
	sub $t2, $t1, $t0
	move $v0, $t2
	lw $ra, 4640($sp)
	lw $fp, 4636($sp)
	addi $sp, $sp, 4644
	jr $ra

	j label398

label400:
	li $t0, 0
	li $t1, 62662
	lw $t2, -1848($fp)
	add $t3, $t2, $t1
	lw $t1, -1640($fp)
	lw $t4, -1808($fp)
	sub $t5, $t4, $t1
	sw $t0, -1960($fp)
	bge $t3, $t5, label417

	j label418

label417:
	li $t0, 1
	sw $t0, -1960($fp)

label418:
	li $t0, 0
	addi $t1, $fp, -284
	li $t2, 10
	mul $t0, $t0, $t2
	lw $t2, -1644($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	li $t0, -1
	lw $t1, 0($t3)
	mul $t3, $t0, $t1
	lw $t0, -1960($fp)
	beq $t0, $t3, label414

	j label415

label414:
	li $t0, 64715
	move $t1, $t0
	li $t0, 17818
	move $t2, $t0
	li $t0, 1349
	move $t3, $t0
	li $t0, 12477
	move $t4, $t0
	li $t0, 13619
	move $t5, $t0
	li $t0, 25027
	move $t6, $t0
	li $t0, 54363
	move $t7, $t0
	li $t0, 3790
	move $t8, $t0
	li $t0, 0
	addi $t9, $fp, -2024
	li $s0, 0
	li $s1, 4
	mul $t0, $t0, $s1
	add $t0, $t0, $s0
	li $s0, 4
	mul $t0, $t0, $s0
	add $s0, $t9, $t0
	li $t0, 1583
	sw $t0, 0($s0)
	li $t9, 0
	addi $s1, $fp, -2024
	li $s2, 1
	li $s3, 4
	mul $t9, $t9, $s3
	add $t9, $t9, $s2
	li $s2, 4
	mul $t9, $t9, $s2
	add $s2, $s1, $t9
	li $t9, 54138
	sw $t9, 0($s2)
	li $s1, 0
	addi $s3, $fp, -2024
	li $s4, 2
	li $s5, 4
	mul $s1, $s1, $s5
	add $s1, $s1, $s4
	li $s4, 4
	mul $s1, $s1, $s4
	add $s4, $s3, $s1
	li $s1, 26432
	sw $s1, 0($s4)
	li $s3, 0
	addi $s5, $fp, -2024
	li $s6, 3
	li $s7, 4
	mul $s3, $s3, $s7
	add $s3, $s3, $s6
	li $s6, 4
	mul $s3, $s3, $s6
	add $s6, $s5, $s3
	li $s3, 18291
	sw $s3, 0($s6)
	li $s5, 49410
	move $s7, $s5
	li $s5, 0
	sw $s7, -2188($fp)
	addi $s7, $fp, -2056
	sw $s6, -5348($fp)
	li $s6, 0
	sw $s4, -5352($fp)
	li $s4, 2
	mul $s5, $s5, $s4
	add $s4, $s5, $s6
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 12650
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -2056
	sw $s5, -5356($fp)
	li $s5, 1
	sw $s4, -5360($fp)
	li $s4, 2
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 4113
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -2152
	sw $s5, -5364($fp)
	li $s5, 0
	sw $s4, -5368($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 41538
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -2152
	sw $s5, -5372($fp)
	li $s5, 1
	sw $s4, -5376($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 10074
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -2152
	sw $s5, -5380($fp)
	li $s5, 2
	sw $s4, -5384($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 15553
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -2152
	sw $s5, -5388($fp)
	li $s5, 3
	sw $s4, -5392($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 51808
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -2152
	sw $s5, -5396($fp)
	li $s5, 4
	sw $s4, -5400($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 14571
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -2152
	sw $s5, -5404($fp)
	li $s5, 5
	sw $s4, -5408($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 26214
	sw $s4, 0($s5)
	li $s6, 62177
	move $s7, $s6
	li $s6, 13951
	sw $s7, -2192($fp)
	move $s7, $s6
	li $s6, 16765
	sw $s7, -2196($fp)
	move $s7, $s6
	li $s6, 37893
	sw $s7, -2200($fp)
	move $s7, $s6
	li $s6, 13394
	sw $s7, -2204($fp)
	move $s7, $s6
	sw $t1, -2156($fp)
	sw $t2, -2160($fp)
	sw $t3, -2164($fp)
	sw $t4, -2168($fp)
	sw $t5, -2172($fp)
	sw $t6, -2176($fp)
	sw $t7, -2180($fp)
	sw $t8, -2184($fp)
	sw $s7, -2208($fp)

label419:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -620
	li $t4, 9
	mul $t2, $t2, $t4
	lw $t4, -1892($fp)
	add $t2, $t2, $t4
	li $t5, 4
	mul $t2, $t2, $t5
	add $t5, $t3, $t2
	lw $t2, 0($t5)
	sw $t0, -2212($fp)
	sw $t1, -2216($fp)
	sw $t2, -2220($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2220($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -2224($fp)

	li $t0, 0
	li $t1, 15840
	li $t2, 0
	sw $t0, -2228($fp)
	bne $t1, $t2, label427

	j label426

label426:
	li $t0, 1
	sw $t0, -2228($fp)

label427:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2228($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -2232($fp)

	lw $t0, -1740($fp)
	lw $t1, -2232($fp)
	mul $t2, $t1, $t0
	lw $t3, -2224($fp)
	bne $t3, $t2, label424

	j label425

label424:
	li $t0, 1
	sw $t0, -2216($fp)

label425:
	li $t0, 3706
	lw $t1, -2216($fp)
	bne $t1, $t0, label422

	j label423

label422:
	li $t0, 1
	sw $t0, -2212($fp)

label423:
	li $t0, 0
	li $t1, 0
	sw $t0, -2236($fp)
	lw $t2, -1556($fp)
	bne $t2, $t1, label429

	j label428

label428:
	li $t0, 1
	sw $t0, -2236($fp)

label429:
	lw $t0, -2236($fp)
	lw $t1, -2212($fp)
	bge $t1, $t0, label420

	j label421

label420:
	li $t0, 0
	lw $t1, -2156($fp)
	bne $t1, $t0, label430

	j label431

label430:
	li $t0, 0
	li $t1, 0
	li $t2, 5960
	lw $t3, -1668($fp)
	add $t4, $t2, $t3
	sw $t0, -2240($fp)
	sw $t1, -2244($fp)
	lw $t2, -1892($fp)
	bgt $t4, $t2, label438

	j label439

label438:
	li $t0, 1
	sw $t0, -2244($fp)

label439:
	li $t0, 47776
	li $t1, -1
	mul $t2, $t1, $t0
	lw $t0, -2244($fp)
	blt $t0, $t2, label436

	j label437

label436:
	li $t0, 1
	sw $t0, -2240($fp)

label437:
	li $t0, -1
	lw $t1, -1612($fp)
	mul $t2, $t0, $t1
	lw $t0, -1692($fp)
	add $t3, $t2, $t0
	li $t2, 0
	li $t4, 0
	li $t5, 0
	sw $t2, -2252($fp)
	sw $t3, -2248($fp)
	sw $t4, -2256($fp)
	lw $t6, -2204($fp)
	bne $t6, $t5, label443

	j label442

label442:
	li $t0, 1
	sw $t0, -2256($fp)

label443:
	lw $t0, -2208($fp)
	lw $t1, -2256($fp)
	beq $t1, $t0, label440

	j label441

label440:
	li $t0, 1
	sw $t0, -2252($fp)

label441:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1468
	li $t3, 4
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	li $t1, 58
	lw $t2, 0($t3)
	sw $t0, -2260($fp)
	beq $t2, $t1, label444

	j label445

label444:
	li $t0, 1
	sw $t0, -2260($fp)

label445:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2260($fp)
	move $a3, $t0
	lw $t1, -2252($fp)
	move $a2, $t1
	lw $t2, -2248($fp)
	move $a1, $t2
	lw $t3, -1492($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2264($fp)

	li $t0, 2182
	lw $t1, -2264($fp)
	div $t1, $t0
	mflo $t2
	lw $t0, -2240($fp)
	bgt $t0, $t2, label433

	j label434

label433:

label446:
	li $t0, 0
	addi $t1, $fp, -476
	li $t2, 3
	li $t3, 7
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	li $t1, 0
	bne $t0, $t1, label447

	j label448

label447:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -620
	li $t3, 7
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	lw $t2, -1672($fp)
	mul $t3, $t2, $t1
	li $t1, 0
	sw $t0, -2268($fp)
	bne $t3, $t1, label451

	j label450

label451:
	li $t0, 43900
	li $t1, 47084
	div $t0, $t1
	mflo $t2
	li $t0, 0
	li $t1, 0
	sw $t0, -2276($fp)
	sw $t2, -2272($fp)
	lw $t3, -2180($fp)
	bne $t3, $t1, label453

	j label452

label452:
	li $t0, 1
	sw $t0, -2276($fp)

label453:
	lw $t0, -2276($fp)
	lw $t1, -2272($fp)
	bne $t1, $t0, label449

	j label450

label449:
	li $t0, 1
	sw $t0, -2268($fp)

label450:
	j label446

label448:
	j label435

label434:
	li $t0, 0
	li $t1, 0
	li $t2, 44457
	li $t3, 56551
	sw $t0, -2280($fp)
	sw $t1, -2284($fp)
	bne $t2, $t3, label458

	j label457

label458:
	li $t0, 51197
	li $t1, 0
	bne $t0, $t1, label456

	j label457

label456:
	li $t0, 1
	sw $t0, -2284($fp)

label457:
	li $t0, 20459
	li $t1, 0
	sw $t0, -2288($fp)
	sw $t1, -2292($fp)
	lw $t2, -1796($fp)
	lw $t3, -1632($fp)
	bgt $t3, $t2, label459

	j label460

label459:
	li $t0, 1
	sw $t0, -2292($fp)

label460:
	li $t0, 0
	li $t1, 0
	li $t2, 1089
	sw $t0, -2296($fp)
	sw $t1, -2300($fp)
	lw $t3, -1824($fp)
	bgt $t3, $t2, label463

	j label464

label463:
	li $t0, 1
	sw $t0, -2300($fp)

label464:
	lw $t0, -1796($fp)
	lw $t1, -2300($fp)
	bge $t1, $t0, label461

	j label462

label461:
	li $t0, 1
	sw $t0, -2296($fp)

label462:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2296($fp)
	move $a2, $t0
	lw $t1, -2292($fp)
	move $a1, $t1
	lw $t2, -2288($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2304($fp)

	li $t0, 0
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -364
	li $t4, 5
	mul $t2, $t2, $t4
	lw $t4, -1796($fp)
	add $t2, $t2, $t4
	li $t5, 4
	mul $t2, $t2, $t5
	add $t5, $t3, $t2
	lw $t2, 0($t5)
	li $t3, 0
	sw $t0, -2308($fp)
	sw $t1, -2312($fp)
	bne $t2, $t3, label469

	j label468

label469:
	li $t0, 1214
	li $t1, 0
	bne $t0, $t1, label467

	j label468

label467:
	li $t0, 1
	sw $t0, -2312($fp)

label468:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -476
	li $t3, 7
	mul $t1, $t1, $t3
	lw $t3, -1576($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	lw $t1, 0($t4)
	li $t2, 0
	sw $t0, -2316($fp)
	bne $t1, $t2, label470

	j label472

label472:
	li $t0, 6731
	li $t1, 0
	bne $t0, $t1, label470

	j label471

label470:
	li $t0, 1
	sw $t0, -2316($fp)

label471:
	li $t0, 0
	sw $t0, -2320($fp)
	lw $t1, -1572($fp)
	lw $t2, -2168($fp)
	bne $t2, $t1, label475

	j label474

label475:
	li $t0, 15661
	li $t1, 0
	bne $t0, $t1, label473

	j label474

label473:
	li $t0, 1
	sw $t0, -2320($fp)

label474:
	li $t0, 0
	li $t1, 27429
	li $t2, 3372
	sw $t0, -2324($fp)
	ble $t1, $t2, label476

	j label477

label476:
	li $t0, 1
	sw $t0, -2324($fp)

label477:
	li $t0, 29612
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, -1
	mul $t1, $t0, $t2
	sw $t1, -2328($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2328($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -2332($fp)

	lw $t0, -2188($fp)
	lw $t1, -2332($fp)
	sub $t2, $t1, $t0
	sw $t2, -2336($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2336($fp)
	move $a3, $t0
	lw $t1, -2324($fp)
	move $a2, $t1
	lw $t2, -2320($fp)
	move $a1, $t2
	lw $t3, -1584($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2340($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2340($fp)
	move $a2, $t0
	lw $t1, -2316($fp)
	move $a1, $t1
	lw $t2, -2312($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2344($fp)

	li $t0, 0
	lw $t1, -2344($fp)
	bne $t1, $t0, label466

	j label465

label465:
	li $t0, 1
	sw $t0, -2308($fp)

label466:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2308($fp)
	move $a2, $t0
	lw $t1, -2304($fp)
	move $a1, $t1
	lw $t2, -2284($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2348($fp)

	li $t0, -1
	lw $t1, -2348($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label455

	j label454

label454:
	li $t0, 1
	sw $t0, -2280($fp)

label455:
	li $t0, 0
	li $t1, 44194
	li $t2, 0
	sw $t0, -2352($fp)
	bne $t1, $t2, label479

	j label478

label478:
	li $t0, 1
	sw $t0, -2352($fp)

label479:
	lw $t0, -2352($fp)
	lw $t1, -2280($fp)
	sub $t2, $t1, $t0

label435:
	j label432

label431:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2056
	li $t3, 0
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	li $t1, -1
	lw $t2, 0($t3)
	mul $t3, $t1, $t2
	li $t1, 0
	li $t2, 60034
	li $t4, 0
	sw $t0, -2356($fp)
	sw $t1, -2364($fp)
	sw $t3, -2360($fp)
	bne $t2, $t4, label483

	j label482

label482:
	li $t0, 1
	sw $t0, -2364($fp)

label483:
	lw $t0, -2364($fp)
	lw $t1, -2360($fp)
	bne $t1, $t0, label480

	j label481

label480:
	li $t0, 1
	sw $t0, -2356($fp)

label481:

label432:
	j label419

label421:

	li $v0, 1
	lw $t0, -2156($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -2160($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -2164($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -2168($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -2172($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -2176($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -2180($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -2184($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2024
	li $t3, 0
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2368($fp)

	li $v0, 1
	lw $t0, -2368($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2024
	li $t3, 1
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2372($fp)

	li $v0, 1
	lw $t0, -2372($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2024
	li $t3, 2
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2376($fp)

	li $v0, 1
	lw $t0, -2376($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2024
	li $t3, 3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2380($fp)

	li $v0, 1
	lw $t0, -2380($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -2188($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2056
	li $t3, 0
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2384($fp)

	li $v0, 1
	lw $t0, -2384($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2056
	li $t3, 1
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2388($fp)

	li $v0, 1
	lw $t0, -2388($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2152
	li $t3, 0
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2392($fp)

	li $v0, 1
	lw $t0, -2392($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2152
	li $t3, 1
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2396($fp)

	li $v0, 1
	lw $t0, -2396($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2152
	li $t3, 2
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2400($fp)

	li $v0, 1
	lw $t0, -2400($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2152
	li $t3, 3
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2404($fp)

	li $v0, 1
	lw $t0, -2404($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2152
	li $t3, 4
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2408($fp)

	li $v0, 1
	lw $t0, -2408($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2152
	li $t3, 5
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2412($fp)

	li $v0, 1
	lw $t0, -2412($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -2192($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -2196($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -2200($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -2204($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -2208($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 44972
	sw $t1, -2416($fp)
	sw $t2, -2420($fp)
	lw $t4, -1748($fp)
	beq $t3, $t4, label486

	j label487

label486:
	li $t0, 1
	sw $t0, -2420($fp)

label487:
	li $t0, 48967
	lw $t1, -2420($fp)
	bne $t1, $t0, label484

	j label485

label484:
	li $t0, 1
	sw $t0, -2416($fp)

label485:
	li $t0, 42274
	lw $t1, -1784($fp)
	add $t2, $t1, $t0
	lw $t0, -2172($fp)
	sub $t3, $t2, $t0
	sw $t3, -2424($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2424($fp)
	move $a2, $t0
	lw $t1, -2416($fp)
	move $a1, $t1
	lw $t2, -1712($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2428($fp)

	lw $t0, -2428($fp)
	move $v0, $t0
	lw $ra, 4640($sp)
	lw $fp, 4636($sp)
	addi $sp, $sp, 4644
	jr $ra

label488:
	li $t0, 0
	li $t1, 45804
	lw $t2, -2176($fp)
	mul $t3, $t2, $t1
	sw $t0, -2432($fp)
	lw $t1, -2156($fp)
	bne $t1, $t3, label491

	j label492

label491:
	li $t0, 1
	sw $t0, -2432($fp)

label492:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -1468
	li $t4, 4
	li $t5, 8
	mul $t2, $t2, $t5
	add $t2, $t2, $t4
	li $t4, 4
	mul $t2, $t2, $t4
	add $t4, $t3, $t2
	lw $t2, 0($t4)
	li $t3, 0
	sw $t0, -2436($fp)
	sw $t1, -2440($fp)
	bne $t2, $t3, label496

	j label495

label495:
	li $t0, 1
	sw $t0, -2440($fp)

label496:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2152
	li $t3, 2
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	li $t1, 56010
	lw $t2, 0($t3)
	sw $t0, -2444($fp)
	bne $t2, $t1, label497

	j label498

label497:
	li $t0, 1
	sw $t0, -2444($fp)

label498:
	lw $t0, -1540($fp)
	lw $t1, -1740($fp)
	mul $t2, $t1, $t0
	li $t3, 9659
	add $t4, $t2, $t3
	li $t2, 0
	li $t3, 0
	li $t5, 12633
	li $t6, 7942
	sw $t2, -2452($fp)
	sw $t3, -2456($fp)
	sw $t4, -2448($fp)
	bge $t5, $t6, label501

	j label502

label501:
	li $t0, 1
	sw $t0, -2456($fp)

label502:
	li $t0, 38452
	lw $t1, -2456($fp)
	bgt $t1, $t0, label499

	j label500

label499:
	li $t0, 1
	sw $t0, -2452($fp)

label500:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2452($fp)
	move $a3, $t0
	lw $t1, -2448($fp)
	move $a2, $t1
	lw $t2, -2444($fp)
	move $a1, $t2
	lw $t3, -2440($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2460($fp)

	li $t0, 0
	lw $t1, -2460($fp)
	bne $t1, $t0, label494

	j label493

label493:
	li $t0, 1
	sw $t0, -2436($fp)

label494:
	lw $t0, -2436($fp)
	lw $t1, -2432($fp)
	beq $t1, $t0, label489

	j label490

label489:

label503:
	li $t0, 0
	addi $t1, $fp, -2024
	li $t2, 0
	sw $t0, -2464($fp)
	sw $t1, -2468($fp)
	sw $t2, -2472($fp)
	lw $t3, -1728($fp)
	lw $t4, -1892($fp)
	blt $t4, $t3, label507

	j label508

label507:
	li $t0, 1
	sw $t0, -2472($fp)

label508:
	li $t0, 4
	lw $t1, -2464($fp)
	mul $t1, $t1, $t0
	lw $t0, -2472($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -2468($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t3, -1792($fp)
	div $t4, $t3
	mflo $t5
	li $t4, 0
	sw $t1, -2464($fp)
	bne $t5, $t4, label506

	j label505

label506:
	li $t0, 0
	addi $t1, $fp, -2024
	li $t2, 4
	mul $t0, $t0, $t2
	lw $t2, -2188($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	li $t0, 7680
	lw $t1, 0($t3)
	div $t1, $t0
	mflo $t3
	li $t0, 0
	li $t1, 0
	addi $t4, $fp, -1036
	li $t5, 4
	li $t6, 6
	mul $t1, $t1, $t6
	add $t1, $t1, $t5
	li $t5, 4
	mul $t1, $t1, $t5
	add $t5, $t4, $t1
	li $t1, 52137
	lw $t4, 0($t5)
	sw $t0, -2480($fp)
	sw $t3, -2476($fp)
	ble $t4, $t1, label509

	j label510

label509:
	li $t0, 1
	sw $t0, -2480($fp)

label510:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2480($fp)
	move $a2, $t0
	lw $t1, -1740($fp)
	move $a1, $t1
	lw $t2, -2476($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2484($fp)

	li $t0, 0
	lw $t1, -2484($fp)
	bne $t1, $t0, label504

	j label505

label504:
	li $t0, 42857
	j label503

label505:
	j label488

label490:
	li $t0, 0
	li $t1, 5661
	lw $t2, -1520($fp)
	div $t1, $t2
	mflo $t3
	li $t1, -1
	mul $t4, $t1, $t3
	sw $t0, -2488($fp)
	sw $t4, -2492($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2492($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -2496($fp)

	li $t0, 0
	lw $t1, -2496($fp)
	bne $t1, $t0, label514

	j label513

label513:
	li $t0, 1
	sw $t0, -2488($fp)

label514:
	lw $t0, -2488($fp)
	lw $t1, -1524($fp)
	sub $t2, $t1, $t0
	lw $t3, -1876($fp)
	lw $t4, -1852($fp)
	div $t4, $t3
	mflo $t5
	li $t6, -1
	lw $t7, -2196($fp)
	mul $t8, $t6, $t7
	sub $t6, $t5, $t8
	bne $t2, $t6, label511

	j label512

label511:

label515:
	li $t0, -1
	lw $t1, -2200($fp)
	mul $t2, $t0, $t1
	lw $t0, -1560($fp)
	bge $t2, $t0, label516

	j label517

label516:

label518:
	li $t0, 0
	li $t1, 7060
	lw $t2, -1544($fp)
	sub $t3, $t1, $t2
	li $t1, 0
	li $t4, 43947
	sw $t0, -2500($fp)
	sw $t1, -2508($fp)
	sw $t3, -2504($fp)
	lw $t5, -1672($fp)
	bge $t5, $t4, label523

	j label525

label525:
	li $t0, 6876
	li $t1, 0
	bne $t0, $t1, label523

	j label524

label523:
	li $t0, 1
	sw $t0, -2508($fp)

label524:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2508($fp)
	move $a2, $t0
	lw $t1, -2504($fp)
	move $a1, $t1
	lw $t2, -1708($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2512($fp)

	li $t0, 0
	lw $t1, -2512($fp)
	bne $t1, $t0, label522

	j label521

label521:
	li $t0, 1
	sw $t0, -2500($fp)

label522:
	li $t0, 0
	addi $t1, $fp, -364
	li $t2, 0
	li $t3, 0
	sw $t0, -2516($fp)
	sw $t1, -2520($fp)
	sw $t2, -2524($fp)
	lw $t4, -1504($fp)
	bne $t4, $t3, label526

	j label528

label528:
	li $t0, 0
	lw $t1, -1508($fp)
	bne $t1, $t0, label526

	j label527

label526:
	li $t0, 1
	sw $t0, -2524($fp)

label527:
	li $t0, 5
	lw $t1, -2516($fp)
	mul $t1, $t1, $t0
	lw $t0, -2524($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -2520($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t3, -2500($fp)
	div $t3, $t4
	mflo $t5
	li $t4, 0
	sw $t1, -2516($fp)
	bne $t5, $t4, label519

	j label520

label519:
	li $t0, 0
	li $t1, 0
	sw $t0, -2528($fp)
	lw $t2, -1516($fp)
	bne $t2, $t1, label533

	j label530

label533:
	li $t0, 13791
	li $t1, 0
	bne $t0, $t1, label532

	j label530

label532:
	li $t0, 0
	lw $t1, -1620($fp)
	bne $t1, $t0, label531

	j label530

label531:
	li $t0, 59608
	lw $t1, -1800($fp)
	add $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label529

	j label530

label529:
	li $t0, 1
	sw $t0, -2528($fp)

label530:
	lw $t1, -2528($fp)
	move $t0, $t1
	sw $t0, -1512($fp)
	j label518

label520:
	j label515

label517:

label512:

label534:
	lw $t1, -1636($fp)
	move $t0, $t1
	li $t2, 0
	sw $t0, -1564($fp)
	bne $t0, $t2, label535

	j label536

label535:
	li $t0, 0
	addi $t1, $fp, -476
	li $t2, 7
	mul $t0, $t0, $t2
	lw $t2, -1552($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	lw $t1, -1836($fp)
	sub $t3, $t0, $t1
	li $t0, -1
	lw $t4, -2184($fp)
	mul $t5, $t0, $t4
	sub $t0, $t3, $t5
	li $t3, 0
	bne $t0, $t3, label541

	j label538

label541:
	li $t0, 0
	li $t1, 0
	sw $t0, -2532($fp)
	lw $t2, -12($fp)
	bne $t2, $t1, label543

	j label542

label542:
	li $t0, 1
	sw $t0, -2532($fp)

label543:
	li $t0, 34305
	lw $t1, -2532($fp)
	blt $t1, $t0, label540

	j label538

label540:
	li $t0, 0
	li $t1, 17163
	li $t2, 0
	sw $t0, -2536($fp)
	bne $t1, $t2, label545

	j label544

label544:
	li $t0, 1
	sw $t0, -2536($fp)

label545:
	li $t0, -1
	lw $t1, -2536($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label538

	j label537

label537:
	li $t0, 0
	addi $t1, $fp, -60
	li $t2, 1
	li $t3, 3
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	lw $t1, -1488($fp)
	div $t0, $t1
	mflo $t2
	li $t0, 0
	addi $t3, $fp, -1340
	li $t4, 6
	mul $t0, $t0, $t4
	lw $t4, -1704($fp)
	add $t0, $t0, $t4
	li $t5, 4
	mul $t0, $t0, $t5
	add $t5, $t3, $t0
	lw $t0, 0($t5)
	bne $t2, $t0, label549

	j label547

label549:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2024
	li $t3, 2
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	li $t2, 0
	sw $t0, -2540($fp)
	bne $t1, $t2, label551

	j label550

label550:
	li $t0, 1
	sw $t0, -2540($fp)

label551:
	li $t0, 0
	addi $t1, $fp, -1340
	li $t2, 0
	li $t3, 6
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	lw $t1, -2540($fp)
	bne $t1, $t0, label546

	j label547

label546:
	li $t0, 0
	li $t1, 0
	li $t2, 50121
	lw $t3, -1492($fp)
	sub $t4, $t2, $t3
	lw $t2, -1672($fp)
	add $t5, $t4, $t2
	li $t4, 0
	addi $t6, $fp, -364
	li $t7, 4
	li $t8, 5
	mul $t4, $t4, $t8
	add $t4, $t4, $t7
	li $t7, 4
	mul $t4, $t4, $t7
	add $t7, $t6, $t4
	lw $t4, 0($t7)
	sub $t6, $t5, $t4
	li $t4, -1
	lw $t5, -1496($fp)
	mul $t7, $t4, $t5
	li $t4, -1
	mul $t8, $t4, $t7
	sw $t0, -2544($fp)
	sw $t1, -2548($fp)
	bge $t6, $t8, label554

	j label555

label554:
	li $t0, 1
	sw $t0, -2548($fp)

label555:
	lw $t0, -1500($fp)
	lw $t1, -2548($fp)
	beq $t1, $t0, label552

	j label553

label552:
	li $t0, 1
	sw $t0, -2544($fp)

label553:
	j label548

label547:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 38692
	li $t4, 26533
	div $t3, $t4
	mflo $t5
	sw $t0, -2552($fp)
	sw $t1, -2556($fp)
	sw $t2, -2560($fp)
	lw $t3, -1524($fp)
	bge $t5, $t3, label561

	j label562

label561:
	li $t0, 1
	sw $t0, -2560($fp)

label562:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2560($fp)
	move $a2, $t0
	lw $t1, -1524($fp)
	move $a1, $t1
	lw $t2, -1528($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2564($fp)

	li $t0, 0
	lw $t1, -2564($fp)
	bne $t1, $t0, label560

	j label559

label559:
	li $t0, 1
	sw $t0, -2556($fp)

label560:
	lw $t0, -1528($fp)
	lw $t1, -2556($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	lw $t4, -1768($fp)
	lw $t5, -2160($fp)
	sub $t6, $t5, $t4
	sw $t2, -2568($fp)
	sw $t3, -2572($fp)
	lw $t7, -1716($fp)
	bne $t6, $t7, label563

	j label564

label563:
	li $t0, 1
	sw $t0, -2572($fp)

label564:
	li $t0, 0
	li $t1, 583
	lw $t2, -1488($fp)
	add $t3, $t2, $t1
	sw $t0, -2576($fp)
	lw $t1, -1532($fp)
	beq $t3, $t1, label565

	j label566

label565:
	li $t0, 1
	sw $t0, -2576($fp)

label566:
	li $t0, 44881
	sw $t0, -2580($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2580($fp)
	move $a3, $t0
	lw $t1, -2576($fp)
	move $a2, $t1
	lw $t2, -1892($fp)
	move $a1, $t2
	lw $t3, -2572($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2584($fp)

	lw $t0, -2584($fp)
	lw $t1, -2568($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	bne $t2, $t3, label556

	j label558

label558:
	li $t0, 0
	li $t1, 17007
	sw $t0, -2588($fp)
	lw $t2, -1796($fp)
	blt $t2, $t1, label567

	j label569

label569:
	li $t0, 10243
	li $t1, 0
	bne $t0, $t1, label567

	j label568

label567:
	li $t0, 1
	sw $t0, -2588($fp)

label568:
	li $t0, 57514
	lw $t1, -1796($fp)
	sub $t2, $t0, $t1
	lw $t0, -1536($fp)
	sub $t3, $t2, $t0
	li $t2, 24949
	move $t4, $t2
	li $t2, 0
	li $t5, 0
	sw $t2, -2596($fp)
	sw $t3, -2592($fp)
	sw $t4, -1628($fp)
	lw $t6, -1600($fp)
	bne $t6, $t5, label573

	j label572

label573:
	li $t0, 48695
	li $t1, 0
	bne $t0, $t1, label570

	j label572

label572:
	li $t0, 65194
	li $t1, 0
	bne $t0, $t1, label570

	j label571

label570:
	li $t0, 1
	sw $t0, -2596($fp)

label571:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2596($fp)
	move $a3, $t0
	lw $t1, -1628($fp)
	move $a2, $t1
	lw $t2, -2592($fp)
	move $a1, $t2
	lw $t3, -2588($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2600($fp)

	lw $t0, -2164($fp)
	lw $t1, -2600($fp)
	bgt $t1, $t0, label556

	j label557

label556:
	li $t0, 1
	sw $t0, -2552($fp)

label557:

label548:
	j label539

label538:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -2604($fp)
	sw $t1, -2608($fp)
	lw $t3, -1560($fp)
	bne $t3, $t2, label580

	j label579

label580:
	li $t0, 11255
	li $t1, 0
	bne $t0, $t1, label577

	j label579

label579:
	li $t0, 3159
	li $t1, 0
	bne $t0, $t1, label577

	j label578

label577:
	li $t0, 1
	sw $t0, -2608($fp)

label578:
	lw $t1, -1892($fp)
	move $t0, $t1
	lw $t3, -1896($fp)
	move $t2, $t3
	li $t4, 0
	li $t5, 0
	sw $t0, -1688($fp)
	sw $t2, -1528($fp)
	sw $t4, -2612($fp)
	sw $t5, -2616($fp)
	lw $t6, -1584($fp)
	lw $t7, -1624($fp)
	beq $t7, $t6, label583

	j label584

label583:
	li $t0, 1
	sw $t0, -2616($fp)

label584:
	lw $t0, -1552($fp)
	lw $t1, -2616($fp)
	bne $t1, $t0, label581

	j label582

label581:
	li $t0, 1
	sw $t0, -2612($fp)

label582:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2612($fp)
	move $a2, $t0
	lw $t1, -1528($fp)
	move $a1, $t1
	lw $t2, -1688($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2620($fp)

	li $t0, 0
	li $t1, 0
	sw $t0, -2624($fp)
	lw $t2, -1652($fp)
	bne $t2, $t1, label586

	j label585

label585:
	li $t0, 1
	sw $t0, -2624($fp)

label586:
	li $t0, 0
	li $t1, 0
	sw $t0, -2628($fp)
	sw $t1, -2632($fp)
	lw $t2, -1492($fp)
	lw $t3, -1704($fp)
	blt $t3, $t2, label589

	j label590

label589:
	li $t0, 1
	sw $t0, -2632($fp)

label590:
	li $t0, 51795
	lw $t1, -2632($fp)
	bge $t1, $t0, label587

	j label588

label587:
	li $t0, 1
	sw $t0, -2628($fp)

label588:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2628($fp)
	move $a3, $t0
	lw $t1, -2624($fp)
	move $a2, $t1
	lw $t2, -2620($fp)
	move $a1, $t2
	lw $t3, -2608($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2636($fp)

	li $t0, 0
	addi $t1, $fp, -284
	li $t2, 10
	mul $t0, $t0, $t2
	lw $t2, -1776($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	lw $t1, -2636($fp)
	bne $t1, $t0, label574

	j label576

label576:
	li $t0, 54113
	li $t1, 8820
	mul $t2, $t0, $t1
	lw $t0, -2192($fp)
	mul $t1, $t2, $t0
	li $t2, 0
	bne $t1, $t2, label574

	j label575

label574:
	li $t0, 1
	sw $t0, -2604($fp)

label575:

label539:
	j label534

label536:

label591:
	li $t0, 58855
	li $t1, 0
	bne $t0, $t1, label592

	j label593

label592:
	li $t0, 0
	li $t1, 32524
	move $t2, $t1
	li $t1, 0
	addi $t3, $fp, -1036
	li $t4, 2
	li $t5, 6
	mul $t1, $t1, $t5
	add $t1, $t1, $t4
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t3, $t1
	li $t1, 0
	li $t3, 26596
	li $t5, 50001
	mul $t6, $t3, $t5
	sw $t0, -2640($fp)
	sw $t1, -2648($fp)
	sw $t2, -1796($fp)
	sw $t4, -2644($fp)
	lw $t3, -1712($fp)
	beq $t6, $t3, label596

	j label597

label596:
	li $t0, 1
	sw $t0, -2648($fp)

label597:
	lw $t1, -2644($fp)
	lw $t0, 0($t1)
	sw $t0, -2652($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2648($fp)
	move $a2, $t0
	lw $t1, -2652($fp)
	move $a1, $t1
	lw $t2, -1796($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2656($fp)

	li $t0, 0
	li $t1, 0
	sw $t0, -2660($fp)
	lw $t2, -1656($fp)
	bne $t2, $t1, label599

	j label598

label598:
	li $t0, 1
	sw $t0, -2660($fp)

label599:
	lw $t0, -1616($fp)
	lw $t1, -2660($fp)
	mul $t2, $t1, $t0
	li $t3, -1
	mul $t4, $t3, $t2
	lw $t2, -2656($fp)
	bne $t2, $t4, label594

	j label595

label594:
	li $t0, 1
	sw $t0, -2640($fp)

label595:
	j label591

label593:
	j label416

label415:
	li $t0, -1
	lw $t1, -1660($fp)
	mul $t2, $t0, $t1
	li $t0, -1
	mul $t3, $t0, $t2
	li $t0, 0
	sw $t0, -2668($fp)
	sw $t3, -2664($fp)
	lw $t2, -1616($fp)
	lw $t4, -1812($fp)
	blt $t4, $t2, label605

	j label604

label605:
	li $t0, 24273
	li $t1, 0
	bne $t0, $t1, label603

	j label604

label603:
	li $t0, 1
	sw $t0, -2668($fp)

label604:
	li $t0, 0
	li $t1, 50280
	sw $t0, -2672($fp)
	lw $t2, -1664($fp)
	bge $t1, $t2, label606

	j label607

label606:
	li $t0, 1
	sw $t0, -2672($fp)

label607:
	li $t0, 0
	li $t1, 62965
	li $t2, 0
	sw $t0, -2676($fp)
	bne $t1, $t2, label611

	j label610

label611:
	li $t0, 17165
	li $t1, 0
	bne $t0, $t1, label608

	j label610

label610:
	li $t0, 0
	lw $t1, -1500($fp)
	bne $t1, $t0, label608

	j label609

label608:
	li $t0, 1
	sw $t0, -2676($fp)

label609:
	li $t0, 0
	li $t1, 0
	sw $t0, -2680($fp)
	lw $t2, -1832($fp)
	bne $t2, $t1, label613

	j label612

label612:
	li $t0, 1
	sw $t0, -2680($fp)

label613:
	li $t0, -1
	lw $t1, -2680($fp)
	mul $t2, $t0, $t1
	li $t0, 51434
	li $t3, 0
	li $t4, 0
	sw $t0, -2688($fp)
	sw $t2, -2684($fp)
	sw $t3, -2692($fp)
	lw $t5, -1668($fp)
	bne $t5, $t4, label615

	j label614

label614:
	li $t0, 1
	sw $t0, -2692($fp)

label615:
	lw $t0, -1788($fp)
	lw $t1, -2692($fp)
	sub $t2, $t1, $t0
	sw $t2, -2696($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2696($fp)
	move $a2, $t0
	lw $t1, -2688($fp)
	move $a1, $t1
	lw $t2, -2684($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2700($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2700($fp)
	move $a3, $t0
	lw $t1, -2676($fp)
	move $a2, $t1
	lw $t2, -2672($fp)
	move $a1, $t2
	lw $t3, -2668($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2704($fp)

	lw $t0, -2704($fp)
	lw $t1, -2664($fp)
	bge $t1, $t0, label600

	j label601

label600:
	li $t0, 4891
	move $t1, $t0
	li $t0, 55030
	move $t2, $t0
	li $t0, 36020
	move $t3, $t0
	li $t0, 54627
	move $t4, $t0
	li $t0, 7627
	move $t5, $t0
	sw $t1, -2708($fp)
	sw $t2, -2712($fp)
	sw $t3, -2716($fp)
	sw $t4, -2720($fp)
	sw $t5, -2724($fp)

label616:
	li $t0, 0
	li $t1, 0
	sw $t0, -2728($fp)
	lw $t2, -1528($fp)
	bne $t2, $t1, label620

	j label621

label620:
	li $t0, 1
	sw $t0, -2728($fp)

label621:
	lw $t0, -1852($fp)
	lw $t1, -2728($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 9176
	mul $t4, $t2, $t3
	li $t2, 0
	bne $t4, $t2, label617

	j label619

label619:
	li $t0, 0
	lw $t1, -1668($fp)
	bne $t1, $t0, label617

	j label618

label617:
	li $t0, 0
	addi $t1, $fp, -284
	li $t2, 4
	li $t3, 10
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	lw $t1, -2724($fp)
	sub $t2, $t1, $t0
	li $t0, 0
	bne $t2, $t0, label622

	j label623

label622:
	li $t0, -1
	lw $t1, -1512($fp)
	mul $t2, $t0, $t1
	li $t0, -1
	mul $t3, $t0, $t2
	li $t0, 0
	li $t2, 54057
	li $t4, -1
	mul $t5, $t4, $t2
	li $t2, 0
	sw $t0, -2736($fp)
	sw $t3, -2732($fp)
	bne $t5, $t2, label629

	j label628

label628:
	li $t0, 1
	sw $t0, -2736($fp)

label629:
	li $t0, 0
	addi $t1, $fp, -716
	li $t2, 3
	li $t3, 6
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	lw $t1, -2736($fp)
	sub $t2, $t1, $t0
	lw $t0, -2732($fp)
	bge $t0, $t2, label625

	j label626

label625:
	li $t0, 46035
	lw $t1, -1548($fp)
	mul $t2, $t0, $t1
	li $t0, 57580
	li $t3, -1
	mul $t4, $t3, $t0
	li $t0, -1
	mul $t3, $t0, $t4
	li $t0, 1612
	li $t4, 0
	li $t5, 0
	li $t6, 0
	sw $t0, -2748($fp)
	sw $t2, -2740($fp)
	sw $t3, -2744($fp)
	sw $t4, -2752($fp)
	sw $t5, -2756($fp)
	lw $t7, -1836($fp)
	bne $t7, $t6, label637

	j label636

label637:
	li $t0, 45693
	li $t1, 0
	bne $t0, $t1, label635

	j label636

label635:
	li $t0, 1
	sw $t0, -2756($fp)

label636:
	li $t0, 3300
	lw $t1, -1776($fp)
	div $t0, $t1
	mflo $t2
	li $t0, 4771
	move $t3, $t0
	li $t0, 0
	addi $t4, $fp, -124
	li $t5, 4
	mul $t0, $t0, $t5
	lw $t5, -1524($fp)
	add $t0, $t0, $t5
	li $t6, 4
	mul $t0, $t0, $t6
	add $t6, $t4, $t0
	lw $t0, 0($t6)
	lw $t4, -2708($fp)
	mul $t6, $t0, $t4
	sw $t2, -2760($fp)
	sw $t3, -1572($fp)
	sw $t6, -2764($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2764($fp)
	move $a3, $t0
	lw $t1, -1572($fp)
	move $a2, $t1
	lw $t2, -2760($fp)
	move $a1, $t2
	lw $t3, -2756($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2768($fp)

	lw $t0, -1500($fp)
	lw $t1, -2768($fp)
	bne $t1, $t0, label633

	j label634

label633:
	li $t0, 1
	sw $t0, -2752($fp)

label634:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2752($fp)
	move $a3, $t0
	lw $t1, -2748($fp)
	move $a2, $t1
	lw $t2, -2744($fp)
	move $a1, $t2
	lw $t3, -2740($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2772($fp)

	li $t0, 31952
	lw $t1, -2772($fp)
	add $t2, $t1, $t0
	li $t0, 0
	li $t3, 0
	li $t4, 57413
	li $t5, 13592
	sw $t0, -2780($fp)
	sw $t2, -2776($fp)
	sw $t3, -2784($fp)
	bne $t4, $t5, label640

	j label641

label640:
	li $t0, 1
	sw $t0, -2784($fp)

label641:
	lw $t0, -1856($fp)
	lw $t1, -2784($fp)
	bne $t1, $t0, label638

	j label639

label638:
	li $t0, 1
	sw $t0, -2780($fp)

label639:
	li $t0, 25271
	li $t1, 0
	addi $t2, $fp, -364
	li $t3, 5
	mul $t1, $t1, $t3
	lw $t3, -2712($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	lw $t1, 0($t4)
	sw $t0, -2788($fp)
	sw $t1, -2792($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2792($fp)
	move $a3, $t0
	lw $t1, -2788($fp)
	move $a2, $t1
	lw $t2, -2780($fp)
	move $a1, $t2
	lw $t3, -2776($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2796($fp)

	li $t0, 24401
	lw $t1, -2796($fp)
	div $t1, $t0
	mflo $t2
	li $t0, 0
	bne $t2, $t0, label630

	j label631

label630:
	li $t0, 0
	li $t1, 0
	li $t2, -1
	lw $t3, -1508($fp)
	mul $t4, $t2, $t3
	li $t2, 0
	sw $t0, -2800($fp)
	sw $t1, -2804($fp)
	bne $t4, $t2, label645

	j label644

label644:
	li $t0, 1
	sw $t0, -2804($fp)

label645:
	li $t0, 0
	addi $t1, $fp, -940
	li $t2, 3
	li $t3, 10
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, -1
	lw $t1, 0($t2)
	mul $t2, $t0, $t1
	lw $t0, -2804($fp)
	ble $t0, $t2, label642

	j label643

label642:
	li $t0, 1
	sw $t0, -2800($fp)

label643:
	j label632

label631:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -1068
	li $t4, 2
	mul $t2, $t2, $t4
	lw $t4, -1704($fp)
	add $t2, $t2, $t4
	li $t5, 4
	mul $t2, $t2, $t5
	add $t5, $t3, $t2
	lw $t2, 0($t5)
	sw $t0, -2808($fp)
	sw $t1, -2812($fp)
	lw $t3, -2716($fp)
	bne $t2, $t3, label648

	j label649

label648:
	li $t0, 1
	sw $t0, -2812($fp)

label649:
	li $t0, 0
	li $t1, 50997
	li $t2, 13754
	add $t3, $t1, $t2
	li $t1, 56654
	sw $t0, -2816($fp)
	beq $t3, $t1, label650

	j label651

label650:
	li $t0, 1
	sw $t0, -2816($fp)

label651:
	li $t0, 0
	addi $t1, $fp, -1468
	li $t2, 8
	mul $t0, $t0, $t2
	lw $t2, -1508($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	li $t0, -1
	lw $t1, 0($t3)
	mul $t3, $t0, $t1
	sw $t3, -2820($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2820($fp)
	move $a2, $t0
	lw $t1, -2816($fp)
	move $a1, $t1
	lw $t2, -2812($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2824($fp)

	li $t0, 35741
	lw $t1, -1552($fp)
	div $t0, $t1
	mflo $t2
	li $t0, 0
	addi $t3, $fp, -284
	li $t4, 10
	mul $t0, $t0, $t4
	lw $t4, -1824($fp)
	add $t0, $t0, $t4
	li $t5, 4
	mul $t0, $t0, $t5
	add $t5, $t3, $t0
	lw $t0, 0($t5)
	add $t3, $t2, $t0
	lw $t0, -2824($fp)
	bne $t0, $t3, label646

	j label647

label646:
	li $t0, 1
	sw $t0, -2808($fp)

label647:

label632:
	j label627

label626:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -940
	li $t3, 0
	li $t4, 11183
	sw $t0, -2828($fp)
	sw $t1, -2832($fp)
	sw $t2, -2836($fp)
	sw $t3, -2840($fp)
	lw $t5, -1668($fp)
	bne $t5, $t4, label654

	j label656

label656:
	li $t0, 8284
	li $t1, 0
	bne $t0, $t1, label654

	j label655

label654:
	li $t0, 1
	sw $t0, -2840($fp)

label655:
	li $t0, 10
	lw $t1, -2832($fp)
	mul $t1, $t1, $t0
	lw $t0, -2840($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -2836($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	li $t3, 0
	sw $t1, -2832($fp)
	bne $t4, $t3, label653

	j label652

label652:
	li $t0, 1
	sw $t0, -2828($fp)

label653:

label627:
	j label624

label623:

label657:
	li $t0, 0
	lw $t1, -1556($fp)
	bne $t1, $t0, label660

	j label659

label660:
	li $t0, 0
	li $t1, 21639
	li $t2, 16074
	sw $t0, -2844($fp)
	ble $t1, $t2, label661

	j label662

label661:
	li $t0, 1
	sw $t0, -2844($fp)

label662:
	li $t0, 0
	li $t1, 0
	lw $t3, -1704($fp)
	move $t2, $t3
	li $t4, 0
	li $t5, 0
	sw $t0, -2848($fp)
	sw $t1, -2852($fp)
	sw $t2, -1684($fp)
	sw $t4, -2856($fp)
	lw $t6, -1516($fp)
	bne $t6, $t5, label670

	j label669

label670:
	li $t0, 0
	lw $t1, -1564($fp)
	bne $t1, $t0, label667

	j label669

label669:
	li $t0, 0
	lw $t1, -1568($fp)
	bne $t1, $t0, label667

	j label668

label667:
	li $t0, 1
	sw $t0, -2856($fp)

label668:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -476
	li $t3, 5
	li $t4, 7
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	li $t2, 0
	sw $t0, -2860($fp)
	bne $t1, $t2, label672

	j label671

label671:
	li $t0, 1
	sw $t0, -2860($fp)

label672:
	li $t0, 5165
	lw $t1, -1712($fp)
	div $t0, $t1
	mflo $t2
	li $t0, -1
	mul $t3, $t0, $t2
	sw $t3, -2864($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2864($fp)
	move $a3, $t0
	lw $t1, -2860($fp)
	move $a2, $t1
	lw $t2, -2856($fp)
	move $a1, $t2
	lw $t3, -2720($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2868($fp)

	lw $t0, -1904($fp)
	lw $t1, -2868($fp)
	sub $t2, $t1, $t0
	li $t3, 0
	li $t4, 0
	addi $t5, $fp, -364
	li $t6, 3
	li $t7, 5
	mul $t4, $t4, $t7
	add $t4, $t4, $t6
	li $t6, 4
	mul $t4, $t4, $t6
	add $t6, $t5, $t4
	lw $t4, 0($t6)
	li $t5, 0
	sw $t2, -2872($fp)
	sw $t3, -2876($fp)
	bne $t4, $t5, label673

	j label675

label675:
	li $t0, 20790
	li $t1, 0
	bne $t0, $t1, label673

	j label674

label673:
	li $t0, 1
	sw $t0, -2876($fp)

label674:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2876($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -2880($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2880($fp)
	move $a2, $t0
	lw $t1, -2872($fp)
	move $a1, $t1
	lw $t2, -1684($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2884($fp)

	li $t0, 13615
	lw $t1, -2884($fp)
	bge $t1, $t0, label665

	j label666

label665:
	li $t0, 1
	sw $t0, -2852($fp)

label666:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2852($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -2888($fp)

	lw $t0, -1592($fp)
	lw $t1, -2888($fp)
	blt $t1, $t0, label663

	j label664

label663:
	li $t0, 1
	sw $t0, -2848($fp)

label664:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2848($fp)
	move $a2, $t0
	lw $t1, -1560($fp)
	move $a1, $t1
	lw $t2, -2844($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2892($fp)

	li $t0, 55357
	lw $t1, -2892($fp)
	add $t2, $t1, $t0
	li $t0, 0
	bne $t2, $t0, label658

	j label659

label658:
	li $t0, 0
	lw $t1, -1760($fp)
	lw $t2, -1796($fp)
	add $t3, $t2, $t1
	lw $t4, -1512($fp)
	add $t5, $t3, $t4
	li $t3, 0
	li $t6, 53421
	lw $t7, -1704($fp)
	div $t6, $t7
	mflo $t8
	li $t6, 0
	sw $t0, -2896($fp)
	sw $t3, -2904($fp)
	sw $t5, -2900($fp)
	bne $t8, $t6, label678

	j label680

label680:
	li $t0, 32069
	li $t1, 0
	bne $t0, $t1, label678

	j label679

label678:
	li $t0, 1
	sw $t0, -2904($fp)

label679:
	li $t0, 35857
	li $t1, 45466
	sub $t2, $t0, $t1
	sw $t2, -2908($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2908($fp)
	move $a2, $t0
	lw $t1, -2904($fp)
	move $a1, $t1
	lw $t2, -2900($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2912($fp)

	li $t0, 0
	lw $t1, -2912($fp)
	bne $t1, $t0, label677

	j label676

label676:
	li $t0, 1
	sw $t0, -2896($fp)

label677:
	li $t0, 0
	li $t1, -1
	lw $t2, -1492($fp)
	mul $t3, $t1, $t2
	li $t1, 33681
	sw $t0, -2916($fp)
	ble $t3, $t1, label681

	j label682

label681:
	li $t0, 1
	sw $t0, -2916($fp)

label682:
	li $t0, 16014
	move $t1, $t0
	li $t0, 48766
	li $t2, 38453
	div $t0, $t2
	mflo $t3
	li $t0, -1
	mul $t2, $t0, $t3
	sw $t1, -1636($fp)
	sw $t2, -2920($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2920($fp)
	move $a2, $t0
	lw $t1, -1636($fp)
	move $a1, $t1
	lw $t2, -2916($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2924($fp)

	lw $t0, -2924($fp)
	lw $t1, -2896($fp)
	add $t2, $t1, $t0
	li $t3, 0
	li $t4, 0
	sw $t2, -2928($fp)
	sw $t3, -2932($fp)
	lw $t5, -1496($fp)
	bne $t5, $t4, label683

	j label684

label683:
	li $t0, 1
	sw $t0, -2932($fp)

label684:
	lw $t0, -2932($fp)
	lw $t1, -2928($fp)
	add $t2, $t1, $t0
	lw $t3, -1672($fp)
	add $t4, $t2, $t3
	j label657

label659:

label624:
	j label616

label618:
	li $t0, 47967
	move $t1, $t0
	li $t0, 0
	li $t2, 0
	li $t3, 0
	addi $t4, $fp, -60
	li $t5, 0
	li $t6, 40643
	sw $t0, -2940($fp)
	sw $t1, -2936($fp)
	sw $t2, -2944($fp)
	sw $t3, -2948($fp)
	sw $t4, -2952($fp)
	sw $t5, -2956($fp)
	lw $t7, -1616($fp)
	bne $t6, $t7, label689

	j label690

label689:
	li $t0, 1
	sw $t0, -2956($fp)

label690:
	li $t0, 3
	lw $t1, -2948($fp)
	mul $t1, $t1, $t0
	lw $t0, -2956($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -2952($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	li $t3, 0
	sw $t1, -2948($fp)
	bne $t4, $t3, label688

	j label687

label687:
	li $t0, 1
	sw $t0, -2944($fp)

label688:
	li $t0, 0
	addi $t1, $fp, -1084
	li $t2, 0
	li $t3, 0
	sw $t0, -2960($fp)
	sw $t1, -2964($fp)
	sw $t2, -2968($fp)
	lw $t4, -1764($fp)
	bne $t4, $t3, label691

	j label693

label693:
	li $t0, 52045
	li $t1, 0
	bne $t0, $t1, label691

	j label692

label691:
	li $t0, 1
	sw $t0, -2968($fp)

label692:
	li $t0, 1
	lw $t1, -2960($fp)
	mul $t1, $t1, $t0
	lw $t0, -2968($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -2964($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	sw $t1, -2960($fp)
	lw $t3, -2944($fp)
	beq $t3, $t4, label685

	j label686

label685:
	li $t0, 1
	sw $t0, -2940($fp)

label686:
	li $t0, 0
	li $t1, 7702
	lw $t2, -1796($fp)
	add $t3, $t1, $t2
	sw $t0, -2972($fp)
	lw $t1, -1656($fp)
	blt $t3, $t1, label697

	j label698

label697:
	li $t0, 1
	sw $t0, -2972($fp)

label698:
	lw $t1, -2972($fp)
	move $t0, $t1
	li $t2, 0
	sw $t0, -1768($fp)
	bne $t0, $t2, label694

	j label695

label694:
	li $t0, 0
	addi $t1, $fp, -364
	li $t2, 3
	li $t3, 5
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, -1
	lw $t1, 0($t2)
	mul $t2, $t0, $t1
	j label696

label695:
	li $t0, 0
	addi $t1, $fp, -476
	li $t2, 0
	lw $t3, -1772($fp)
	lw $t4, -2936($fp)
	sub $t5, $t4, $t3
	li $t6, 0
	sw $t0, -2976($fp)
	sw $t1, -2980($fp)
	sw $t2, -2984($fp)
	bne $t5, $t6, label699

	j label701

label701:
	li $t0, 0
	lw $t1, -1776($fp)
	bne $t1, $t0, label699

	j label700

label699:
	li $t0, 1
	sw $t0, -2984($fp)

label700:
	li $t0, 7
	lw $t1, -2976($fp)
	mul $t1, $t1, $t0
	lw $t0, -2984($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -2980($fp)
	add $t3, $t2, $t1
	li $t4, 40084
	lw $t5, 0($t3)
	sub $t3, $t5, $t4
	sw $t1, -2976($fp)

label696:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -2988($fp)
	sw $t1, -2992($fp)
	lw $t3, -1780($fp)
	bne $t3, $t2, label705

	j label704

label704:
	li $t0, 1
	sw $t0, -2992($fp)

label705:
	lw $t0, -1784($fp)
	lw $t1, -2992($fp)
	sub $t2, $t1, $t0
	li $t3, 0
	li $t4, 50505
	move $t5, $t4
	li $t4, 29551
	lw $t6, -1788($fp)
	mul $t7, $t4, $t6
	li $t4, 31202
	div $t7, $t4
	mflo $t8
	li $t4, 0
	li $t7, 20710
	sw $t2, -2996($fp)
	sw $t3, -3000($fp)
	sw $t4, -3008($fp)
	sw $t5, -1492($fp)
	sw $t8, -3004($fp)
	lw $t9, -1844($fp)
	beq $t7, $t9, label710

	j label709

label710:
	li $t0, 40734
	li $t1, 0
	bne $t0, $t1, label708

	j label709

label708:
	li $t0, 1
	sw $t0, -3008($fp)

label709:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3008($fp)
	move $a2, $t0
	lw $t1, -3004($fp)
	move $a1, $t1
	lw $t2, -1492($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -3012($fp)

	li $t0, 0
	lw $t1, -3012($fp)
	bne $t1, $t0, label707

	j label706

label706:
	li $t0, 1
	sw $t0, -3000($fp)

label707:
	li $t0, 0
	li $t1, 39486
	sw $t0, -3016($fp)
	lw $t2, -1792($fp)
	beq $t1, $t2, label713

	j label712

label713:
	li $t0, 0
	lw $t1, -1688($fp)
	bne $t1, $t0, label711

	j label712

label711:
	li $t0, 1
	sw $t0, -3016($fp)

label712:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3016($fp)
	move $a2, $t0
	lw $t1, -3000($fp)
	move $a1, $t1
	lw $t2, -2996($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -3020($fp)

	li $t0, 0
	lw $t1, -3020($fp)
	bne $t1, $t0, label703

	j label702

label702:
	li $t0, 1
	sw $t0, -2988($fp)

label703:
	li $t0, 0
	li $t1, -1
	lw $t2, -1684($fp)
	mul $t3, $t1, $t2
	li $t1, 0
	sw $t0, -3024($fp)
	bne $t3, $t1, label715

	j label714

label714:
	li $t0, 1
	sw $t0, -3024($fp)

label715:
	li $t0, 0
	li $t1, 0
	sw $t0, -3028($fp)
	lw $t2, -1772($fp)
	bne $t2, $t1, label717

	j label716

label716:
	li $t0, 1
	sw $t0, -3028($fp)

label717:
	lw $t0, -1796($fp)
	lw $t1, -3028($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	li $t4, 42349
	lw $t5, -1800($fp)
	div $t5, $t4
	mflo $t6
	li $t4, 0
	sw $t2, -3032($fp)
	sw $t3, -3036($fp)
	bne $t6, $t4, label718

	j label720

label720:
	li $t0, 0
	lw $t1, -1544($fp)
	bne $t1, $t0, label718

	j label719

label718:
	li $t0, 1
	sw $t0, -3036($fp)

label719:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3036($fp)
	move $a2, $t0
	lw $t1, -3032($fp)
	move $a1, $t1
	lw $t2, -3024($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -3040($fp)

	li $t0, 0
	li $t1, 56808
	li $t2, 37264
	sw $t0, -3044($fp)
	bne $t1, $t2, label721

	j label722

label721:
	li $t0, 1
	sw $t0, -3044($fp)

label722:
	li $t0, 0
	sw $t0, -3048($fp)
	lw $t1, -1808($fp)
	lw $t2, -1804($fp)
	bge $t2, $t1, label723

	j label725

label725:
	li $t0, 34473
	li $t1, 0
	bne $t0, $t1, label723

	j label724

label723:
	li $t0, 1
	sw $t0, -3048($fp)

label724:
	li $t0, 61974
	li $t1, 1
	mul $t2, $t0, $t1
	sw $t2, -3052($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3052($fp)
	move $a3, $t0
	lw $t1, -3048($fp)
	move $a2, $t1
	lw $t2, -3044($fp)
	move $a1, $t2
	lw $t3, -3040($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -3056($fp)

	lw $t0, -3056($fp)
	lw $t1, -2988($fp)
	div $t1, $t0
	mflo $t2

label726:
	li $t0, 35773
	li $t1, 0
	li $t2, 0
	sw $t0, -3060($fp)
	sw $t1, -3064($fp)
	lw $t3, -1632($fp)
	bne $t3, $t2, label730

	j label729

label729:
	li $t0, 1
	sw $t0, -3064($fp)

label730:
	lw $t0, -3064($fp)
	lw $t1, -3060($fp)
	ble $t1, $t0, label727

	j label728

label727:
	li $t0, 17228
	move $t1, $t0
	li $t0, 0
	li $t2, -1
	lw $t3, -1756($fp)
	mul $t4, $t2, $t3
	li $t2, -1
	mul $t5, $t2, $t4
	li $t2, 0
	sw $t0, -3072($fp)
	sw $t1, -3068($fp)
	bne $t5, $t2, label732

	j label733

label733:
	li $t0, 56285
	lw $t1, -1576($fp)
	add $t2, $t0, $t1
	li $t0, 25594
	add $t3, $t2, $t0
	li $t0, 0
	li $t2, 5113
	sw $t0, -3080($fp)
	sw $t3, -3076($fp)
	lw $t4, -1536($fp)
	bne $t4, $t2, label736

	j label735

label736:
	li $t0, 0
	lw $t1, -1608($fp)
	bne $t1, $t0, label734

	j label735

label734:
	li $t0, 1
	sw $t0, -3080($fp)

label735:
	li $t0, 0
	li $t1, 22818
	lw $t2, -1812($fp)
	add $t3, $t2, $t1
	li $t1, 0
	sw $t0, -3084($fp)
	bne $t3, $t1, label739

	j label738

label739:
	li $t0, 61451
	li $t1, 0
	bne $t0, $t1, label737

	j label738

label737:
	li $t0, 1
	sw $t0, -3084($fp)

label738:
	li $t0, 0
	li $t1, -1
	lw $t2, -1796($fp)
	mul $t3, $t1, $t2
	sw $t0, -3088($fp)
	lw $t1, -1860($fp)
	bne $t3, $t1, label740

	j label741

label740:
	li $t0, 1
	sw $t0, -3088($fp)

label741:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3088($fp)
	move $a3, $t0
	lw $t1, -3084($fp)
	move $a2, $t1
	lw $t2, -3080($fp)
	move $a1, $t2
	lw $t3, -3076($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -3092($fp)

	li $t0, 0
	lw $t1, -3092($fp)
	bne $t1, $t0, label732

	j label731

label731:
	li $t0, 1
	sw $t0, -3072($fp)

label732:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 50579
	li $t4, 56499
	sub $t5, $t3, $t4
	li $t3, 11930
	sw $t0, -3096($fp)
	sw $t1, -3100($fp)
	sw $t2, -3104($fp)
	blt $t5, $t3, label746

	j label747

label746:
	li $t0, 1
	sw $t0, -3104($fp)

label747:
	li $t0, 33809
	move $t1, $t0
	li $t0, 0
	li $t2, 0
	sw $t0, -3108($fp)
	sw $t1, -1624($fp)
	lw $t3, -1816($fp)
	bne $t3, $t2, label749

	j label748

label748:
	li $t0, 1
	sw $t0, -3108($fp)

label749:
	li $t0, 29416
	lw $t1, -3108($fp)
	add $t2, $t1, $t0
	li $t0, -1
	lw $t3, -1592($fp)
	mul $t4, $t0, $t3
	lw $t0, -1556($fp)
	sub $t5, $t4, $t0
	sw $t2, -3112($fp)
	sw $t5, -3116($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3116($fp)
	move $a3, $t0
	lw $t1, -3112($fp)
	move $a2, $t1
	lw $t2, -1624($fp)
	move $a1, $t2
	lw $t3, -3104($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -3120($fp)

	li $t0, 0
	lw $t1, -3120($fp)
	bne $t1, $t0, label745

	j label744

label744:
	li $t0, 1
	sw $t0, -3100($fp)

label745:
	li $t0, 0
	addi $t1, $fp, -284
	li $t2, 8
	li $t3, 10
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 15925
	li $t1, -1
	mul $t3, $t1, $t0
	lw $t0, 0($t2)
	div $t0, $t3
	mflo $t1
	lw $t0, -3100($fp)
	ble $t0, $t1, label742

	j label743

label742:
	li $t0, 1
	sw $t0, -3096($fp)

label743:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1720($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -3124($fp)

	lw $t0, -3124($fp)
	lw $t1, -3068($fp)
	add $t2, $t1, $t0
	move $t3, $t2
	sw $t3, -1708($fp)
	j label726

label728:
	li $t0, 0
	addi $t1, $fp, -1084
	li $t2, 0
	li $t3, 0
	li $t4, 0
	li $t5, 2063
	sw $t0, -3128($fp)
	sw $t1, -3132($fp)
	sw $t2, -3136($fp)
	sw $t3, -3140($fp)
	sw $t4, -3144($fp)
	lw $t6, -1616($fp)
	beq $t6, $t5, label754

	j label755

label754:
	li $t0, 1
	sw $t0, -3144($fp)

label755:
	li $t0, 8424
	lw $t1, -3144($fp)
	beq $t1, $t0, label752

	j label753

label752:
	li $t0, 1
	sw $t0, -3140($fp)

label753:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3140($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -3148($fp)

	li $t0, 0
	lw $t1, -3148($fp)
	bne $t1, $t0, label751

	j label750

label750:
	li $t0, 1
	sw $t0, -3136($fp)

label751:
	li $t0, 1
	lw $t1, -3128($fp)
	mul $t1, $t1, $t0
	lw $t0, -3136($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -3132($fp)
	add $t3, $t2, $t1
	li $t4, 0
	li $t5, 0
	lw $t7, -1824($fp)
	move $t6, $t7
	li $t8, 0
	li $t9, 31723
	li $s0, 0
	sw $t1, -3128($fp)
	sw $t4, -3152($fp)
	sw $t5, -3156($fp)
	sw $t6, -1820($fp)
	sw $t8, -3160($fp)
	bne $t9, $s0, label763

	j label761

label763:
	li $t0, 42147
	li $t1, 0
	bne $t0, $t1, label762

	j label761

label762:
	li $t0, 0
	lw $t1, -1892($fp)
	bne $t1, $t0, label760

	j label761

label760:
	li $t0, 1
	sw $t0, -3160($fp)

label761:
	li $t0, 0
	li $t1, 0
	li $t2, 58929
	sw $t0, -3164($fp)
	sw $t1, -3168($fp)
	lw $t3, -1828($fp)
	ble $t2, $t3, label766

	j label767

label766:
	li $t0, 1
	sw $t0, -3168($fp)

label767:
	lw $t0, -1592($fp)
	lw $t1, -3168($fp)
	ble $t1, $t0, label764

	j label765

label764:
	li $t0, 1
	sw $t0, -3164($fp)

label765:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3164($fp)
	move $a2, $t0
	lw $t1, -3160($fp)
	move $a1, $t1
	lw $t2, -1820($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -3172($fp)

	li $t0, 0
	lw $t1, -3172($fp)
	bne $t1, $t0, label759

	j label758

label758:
	li $t0, 1
	sw $t0, -3156($fp)

label759:
	li $t0, -1
	lw $t1, -3156($fp)
	mul $t2, $t0, $t1
	li $t0, -1
	lw $t3, -1632($fp)
	mul $t4, $t0, $t3
	lw $t0, -1656($fp)
	sub $t5, $t4, $t0
	li $t4, 61274
	add $t6, $t5, $t4
	beq $t2, $t6, label756

	j label757

label756:
	li $t0, 1
	sw $t0, -3152($fp)

label757:
	li $t0, 7814
	move $t1, $t0
	li $t0, 0
	li $t2, 0
	sw $t0, -3176($fp)
	bne $t1, $t2, label769

	j label770

label770:
	li $t0, 0
	lw $t1, -1820($fp)
	bne $t1, $t0, label768

	j label769

label768:
	li $t0, 1
	sw $t0, -3176($fp)

label769:
	li $t0, 0
	li $t1, -1
	lw $t2, -1524($fp)
	mul $t3, $t1, $t2
	li $t1, 14103
	sw $t0, -3180($fp)
	bgt $t3, $t1, label771

	j label772

label771:
	li $t0, 1
	sw $t0, -3180($fp)

label772:
	li $t0, 0
	li $t1, 36473
	lw $t2, -1832($fp)
	mul $t3, $t2, $t1
	li $t1, 47300
	sw $t0, -3184($fp)
	blt $t3, $t1, label773

	j label774

label773:
	li $t0, 1
	sw $t0, -3184($fp)

label774:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3184($fp)
	move $a3, $t0
	lw $t1, -3180($fp)
	move $a2, $t1
	lw $t2, -3176($fp)
	move $a1, $t2
	lw $t3, -1896($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4

	j label602

label601:
	li $t0, 56453
	li $t1, 0
	bne $t0, $t1, label775

	j label776

label775:

label778:
	li $t0, 0
	addi $t1, $fp, -1068
	li $t2, 0
	li $t3, 27745
	lw $t4, -1892($fp)
	div $t3, $t4
	mflo $t5
	lw $t3, -1836($fp)
	sub $t6, $t5, $t3
	li $t5, 19029
	lw $t7, -1844($fp)
	add $t8, $t5, $t7
	sw $t0, -3188($fp)
	sw $t1, -3192($fp)
	sw $t2, -3196($fp)
	bge $t6, $t8, label781

	j label782

label781:
	li $t0, 1
	sw $t0, -3196($fp)

label782:
	li $t0, 2
	lw $t1, -3188($fp)
	mul $t1, $t1, $t0
	lw $t0, -3196($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -3192($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	li $t3, 0
	sw $t1, -3188($fp)
	bne $t4, $t3, label779

	j label780

label779:

label783:
	li $t0, 25390
	li $t1, 24183
	sub $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label784

	j label785

label784:

label786:
	li $t0, 61698
	move $t1, $t0
	sw $t1, -1840($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1840($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -3200($fp)

	li $t0, -1
	lw $t1, -3200($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label787

	j label788

label787:
	li $t0, -1
	lw $t1, -1844($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label789

	j label790

label789:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1484
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t0, -3204($fp)
	sw $t1, -3208($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3208($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -3212($fp)

	lw $t0, -3212($fp)
	lw $t1, -1720($fp)
	bne $t1, $t0, label792

	j label793

label792:
	li $t0, 1
	sw $t0, -3204($fp)

label793:
	j label791

label790:
	li $t0, 52447

label791:
	j label786

label788:
	j label783

label785:
	li $t0, 0
	addi $t1, $fp, -1468
	lw $t3, -1604($fp)
	move $t2, $t3
	li $t4, 8
	mul $t0, $t0, $t4
	add $t0, $t0, $t2
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t1, $t0
	li $t0, -1
	lw $t1, 0($t4)
	mul $t4, $t0, $t1
	li $t0, 0
	sw $t2, -1848($fp)
	bne $t4, $t0, label794

	j label795

label794:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1068
	li $t3, 0
	li $t4, 0
	li $t5, 21221
	sw $t0, -3216($fp)
	sw $t1, -3220($fp)
	sw $t2, -3224($fp)
	sw $t3, -3228($fp)
	sw $t4, -3232($fp)
	lw $t6, -1852($fp)
	bge $t6, $t5, label802

	j label803

label802:
	li $t0, 1
	sw $t0, -3232($fp)

label803:
	li $t0, 46525
	lw $t1, -3232($fp)
	beq $t1, $t0, label800

	j label801

label800:
	li $t0, 1
	sw $t0, -3228($fp)

label801:
	li $t0, 2
	lw $t1, -3220($fp)
	mul $t1, $t1, $t0
	lw $t0, -3228($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -3224($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	li $t3, 0
	sw $t1, -3220($fp)
	bne $t4, $t3, label797

	j label799

label799:
	li $t0, 0
	sw $t0, -3236($fp)
	lw $t1, -1856($fp)
	lw $t2, -1668($fp)
	bgt $t2, $t1, label804

	j label805

label804:
	li $t0, 1
	sw $t0, -3236($fp)

label805:
	lw $t0, -1788($fp)
	lw $t1, -1844($fp)
	div $t1, $t0
	mflo $t2
	lw $t3, -1760($fp)
	div $t2, $t3
	mflo $t4
	li $t2, 0
	li $t5, 9729
	lw $t6, -1860($fp)
	add $t7, $t5, $t6
	li $t5, 0
	sw $t2, -3244($fp)
	sw $t4, -3240($fp)
	bne $t7, $t5, label808

	j label807

label808:
	li $t0, 17137
	li $t1, 0
	bne $t0, $t1, label806

	j label807

label806:
	li $t0, 1
	sw $t0, -3244($fp)

label807:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3244($fp)
	move $a2, $t0
	lw $t1, -3240($fp)
	move $a1, $t1
	lw $t2, -3236($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -3248($fp)

	li $t0, 0
	lw $t1, -3248($fp)
	bne $t1, $t0, label797

	j label798

label797:
	li $t0, 1
	sw $t0, -3216($fp)

label798:
	lw $t0, -3216($fp)
	move $v0, $t0
	lw $ra, 4640($sp)
	lw $fp, 4636($sp)
	addi $sp, $sp, 4644
	jr $ra

	j label796

label795:

label809:
	li $t0, 31568
	lw $t1, -1600($fp)
	sub $t2, $t1, $t0
	move $t0, $t2
	move $t2, $t0
	li $t3, 0
	sw $t0, -1712($fp)
	sw $t2, -1656($fp)
	bne $t2, $t3, label810

	j label811

label810:
	li $t0, 0
	li $t1, -1
	lw $t2, -1724($fp)
	mul $t3, $t1, $t2
	li $t1, 0
	addi $t4, $fp, -124
	li $t5, 3
	li $t6, 4
	mul $t1, $t1, $t6
	add $t1, $t1, $t5
	li $t5, 4
	mul $t1, $t1, $t5
	add $t5, $t4, $t1
	lw $t1, 0($t5)
	sw $t0, -3252($fp)
	ble $t3, $t1, label814

	j label813

label814:
	li $t0, 0
	addi $t1, $fp, -1340
	li $t2, -1
	lw $t3, -1864($fp)
	mul $t4, $t2, $t3
	li $t2, 6
	mul $t0, $t0, $t2
	add $t0, $t0, $t4
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	li $t1, 0
	bne $t0, $t1, label812

	j label813

label812:
	li $t0, 1
	sw $t0, -3252($fp)

label813:
	j label809

label811:

label796:
	j label778

label780:
	j label777

label776:
	li $t0, 0
	li $t1, 65378
	li $t2, 0
	sw $t0, -3256($fp)
	bne $t1, $t2, label819

	j label818

label818:
	li $t0, 1
	sw $t0, -3256($fp)

label819:
	li $t0, -1
	lw $t1, -1868($fp)
	mul $t2, $t0, $t1
	lw $t0, -3256($fp)
	ble $t0, $t2, label815

	j label816

label815:
	li $t0, 0
	li $t1, 30109
	li $t2, 0
	sw $t0, -3260($fp)
	bne $t1, $t2, label825

	j label824

label824:
	li $t0, 1
	sw $t0, -3260($fp)

label825:
	li $t0, 23428
	lw $t1, -3260($fp)
	sub $t2, $t1, $t0
	li $t0, 0
	li $t3, 0
	sw $t0, -3268($fp)
	sw $t2, -3264($fp)
	lw $t4, -1628($fp)
	bne $t4, $t3, label827

	j label826

label826:
	li $t0, 1
	sw $t0, -3268($fp)

label827:
	lw $t0, -1564($fp)
	lw $t1, -3268($fp)
	sub $t2, $t1, $t0
	li $t3, 0
	li $t4, 8758
	li $t5, 0
	sw $t2, -3272($fp)
	sw $t3, -3276($fp)
	bne $t4, $t5, label830

	j label829

label830:
	li $t0, 0
	lw $t1, -1688($fp)
	bne $t1, $t0, label828

	j label829

label828:
	li $t0, 1
	sw $t0, -3276($fp)

label829:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -3280($fp)
	sw $t1, -3284($fp)
	lw $t3, -1608($fp)
	bne $t3, $t2, label834

	j label833

label833:
	li $t0, 1
	sw $t0, -3284($fp)

label834:
	lw $t0, -1556($fp)
	lw $t1, -3284($fp)
	beq $t1, $t0, label831

	j label832

label831:
	li $t0, 1
	sw $t0, -3280($fp)

label832:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3280($fp)
	move $a2, $t0
	lw $t1, -3276($fp)
	move $a1, $t1
	lw $t2, -3272($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -3288($fp)

	lw $t0, -1600($fp)
	lw $t1, -3288($fp)
	div $t1, $t0
	mflo $t2
	lw $t3, -3264($fp)
	sub $t4, $t3, $t2
	li $t2, 0
	bne $t4, $t2, label823

	j label821

label823:
	li $t0, 46035
	li $t1, 25491
	div $t0, $t1
	mflo $t2
	li $t0, 0
	bne $t2, $t0, label820

	j label821

label820:
	li $t0, 0
	li $t1, 17183
	li $t2, 0
	sw $t0, -3292($fp)
	bne $t1, $t2, label836

	j label835

label835:
	li $t0, 1
	sw $t0, -3292($fp)

label836:
	lw $t1, -3292($fp)
	move $t0, $t1
	sw $t0, -1816($fp)
	j label822

label821:
	li $t0, 12222
	move $t1, $t0
	li $t0, 0
	li $t2, 0
	addi $t3, $fp, -60
	li $t4, 3
	mul $t2, $t2, $t4
	lw $t4, -1592($fp)
	add $t2, $t2, $t4
	li $t5, 4
	mul $t2, $t2, $t5
	add $t5, $t3, $t2
	li $t2, 2103
	lw $t3, 0($t5)
	sw $t0, -3300($fp)
	sw $t1, -3296($fp)
	bne $t3, $t2, label837

	j label838

label837:
	li $t0, 1
	sw $t0, -3300($fp)

label838:
	li $t0, 0
	li $t1, 0
	sw $t0, -3304($fp)
	lw $t2, -1516($fp)
	bne $t2, $t1, label841

	j label840

label841:
	li $t0, 10576
	li $t1, 0
	bne $t0, $t1, label839

	j label840

label839:
	li $t0, 1
	sw $t0, -3304($fp)

label840:
	lw $t1, -1876($fp)
	move $t0, $t1
	li $t2, -1
	lw $t3, -1660($fp)
	mul $t4, $t2, $t3
	li $t2, -1
	mul $t5, $t2, $t4
	sw $t0, -1872($fp)
	sw $t5, -3308($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3308($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -3312($fp)

	li $t0, 7960
	lw $t1, -3312($fp)
	div $t1, $t0
	mflo $t2
	sw $t2, -3316($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3316($fp)
	move $a3, $t0
	lw $t1, -1872($fp)
	move $a2, $t1
	lw $t2, -3304($fp)
	move $a1, $t2
	lw $t3, -3300($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -3320($fp)

	li $t0, 24681
	lw $t1, -3320($fp)
	div $t1, $t0
	mflo $t2
	li $t0, 44433
	lw $t3, -1880($fp)
	div $t0, $t3
	mflo $t4
	li $t0, 57217
	add $t5, $t4, $t0
	li $t0, 0
	li $t4, 15597
	li $t6, 0
	sw $t0, -3332($fp)
	sw $t2, -3324($fp)
	sw $t5, -3328($fp)
	bne $t4, $t6, label843

	j label842

label842:
	li $t0, 1
	sw $t0, -3332($fp)

label843:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -364
	li $t3, 5
	mul $t1, $t1, $t3
	lw $t3, -1712($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	lw $t1, 0($t4)
	sw $t0, -3336($fp)
	lw $t2, -1540($fp)
	bge $t1, $t2, label844

	j label845

label844:
	li $t0, 1
	sw $t0, -3336($fp)

label845:
	li $t0, 0
	li $t1, 6643
	sw $t0, -3340($fp)
	lw $t2, -1856($fp)
	blt $t1, $t2, label848

	j label847

label848:
	li $t0, 10710
	li $t1, 0
	bne $t0, $t1, label846

	j label847

label846:
	li $t0, 1
	sw $t0, -3340($fp)

label847:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3340($fp)
	move $a2, $t0
	lw $t1, -3336($fp)
	move $a1, $t1
	lw $t2, -3332($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -3344($fp)

	lw $t0, -1552($fp)
	lw $t1, -3296($fp)
	mul $t2, $t1, $t0
	li $t3, -1
	mul $t4, $t3, $t2
	li $t2, 40987
	move $t3, $t2
	sw $t3, -1748($fp)
	sw $t4, -3348($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1748($fp)
	move $a3, $t0
	lw $t1, -3348($fp)
	move $a2, $t1
	lw $t2, -3344($fp)
	move $a1, $t2
	lw $t3, -3328($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -3352($fp)

	lw $t0, -3352($fp)
	lw $t1, -3324($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	addi $t4, $fp, -1484
	li $t5, 0
	li $t6, 0
	sw $t3, -3356($fp)
	sw $t4, -3360($fp)
	sw $t5, -3364($fp)
	lw $t7, -1760($fp)
	bne $t7, $t6, label850

	j label849

label849:
	li $t0, 1
	sw $t0, -3364($fp)

label850:
	li $t0, 1
	lw $t1, -3356($fp)
	mul $t1, $t1, $t0
	lw $t0, -3364($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -3360($fp)
	add $t3, $t2, $t1
	li $t4, -1
	lw $t5, 0($t3)
	mul $t3, $t4, $t5
	li $t4, 0
	li $t5, 0
	li $t6, 30826
	li $t7, -1
	mul $t8, $t7, $t6
	li $t6, 6873
	li $t7, 36614
	div $t6, $t7
	mflo $t9
	lw $t6, -1884($fp)
	div $t9, $t6
	mflo $t7
	li $t9, 0
	li $s0, 6702
	li $s1, 59320
	sub $s2, $s0, $s1
	li $s0, 57835
	sw $t1, -3356($fp)
	sw $t3, -3368($fp)
	sw $t4, -3372($fp)
	sw $t5, -3376($fp)
	sw $t7, -3384($fp)
	sw $t8, -3380($fp)
	sw $t9, -3388($fp)
	bne $s2, $s0, label855

	j label856

label855:
	li $t0, 1
	sw $t0, -3388($fp)

label856:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3388($fp)
	move $a2, $t0
	lw $t1, -3384($fp)
	move $a1, $t1
	lw $t2, -3380($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -3392($fp)

	li $t0, 0
	lw $t1, -3392($fp)
	bne $t1, $t0, label854

	j label853

label853:
	li $t0, 1
	sw $t0, -3376($fp)

label854:
	lw $t0, -1672($fp)
	lw $t1, -1548($fp)
	add $t2, $t1, $t0
	lw $t3, -1684($fp)
	add $t4, $t2, $t3
	li $t2, 0
	li $t5, 0
	sw $t2, -3400($fp)
	sw $t4, -3396($fp)
	lw $t6, -1748($fp)
	bne $t6, $t5, label857

	j label858

label857:
	li $t0, 1
	sw $t0, -3400($fp)

label858:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3400($fp)
	move $a2, $t0
	lw $t1, -3396($fp)
	move $a1, $t1
	lw $t2, -3376($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -3404($fp)

	li $t0, 0
	lw $t1, -3404($fp)
	bne $t1, $t0, label852

	j label851

label851:
	li $t0, 1
	sw $t0, -3372($fp)

label852:
	lw $t0, -3372($fp)
	lw $t1, -3368($fp)
	sub $t2, $t1, $t0

label822:
	j label817

label816:
	li $t0, 53227
	move $t1, $t0
	li $t0, 3514
	move $t2, $t0
	li $t0, 0
	li $t3, 0
	li $t4, 9436
	lw $t5, -1888($fp)
	add $t6, $t5, $t4
	sw $t0, -3416($fp)
	sw $t1, -3408($fp)
	sw $t2, -3412($fp)
	sw $t3, -3420($fp)
	lw $t4, -1796($fp)
	ble $t6, $t4, label861

	j label862

label861:
	li $t0, 1
	sw $t0, -3420($fp)

label862:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3420($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -3424($fp)

	li $t0, 19259
	lw $t1, -1892($fp)
	add $t2, $t0, $t1
	lw $t0, -1896($fp)
	lw $t3, -1708($fp)
	mul $t4, $t3, $t0
	lw $t5, -3408($fp)
	mul $t6, $t4, $t5
	li $t4, 4207
	li $t7, 38503
	div $t4, $t7
	mflo $t8
	li $t4, 19101
	sub $t7, $t8, $t4
	sw $t2, -3428($fp)
	sw $t6, -3432($fp)
	sw $t7, -3436($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3436($fp)
	move $a2, $t0
	lw $t1, -3432($fp)
	move $a1, $t1
	lw $t2, -3428($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -3440($fp)

	lw $t0, -3440($fp)
	lw $t1, -3424($fp)
	blt $t1, $t0, label859

	j label860

label859:
	li $t0, 1
	sw $t0, -3416($fp)

label860:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -3444($fp)
	sw $t1, -3448($fp)
	lw $t3, -1828($fp)
	bne $t3, $t2, label866

	j label865

label865:
	li $t0, 1
	sw $t0, -3448($fp)

label866:
	li $t0, 0
	li $t1, 34316
	li $t2, 0
	sw $t0, -3452($fp)
	bne $t1, $t2, label868

	j label867

label867:
	li $t0, 1
	sw $t0, -3452($fp)

label868:
	li $t0, -1
	lw $t1, -3452($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	li $t3, 0
	li $t4, 61931
	lw $t5, -3412($fp)
	add $t6, $t5, $t4
	li $t4, 0
	sw $t0, -3460($fp)
	sw $t2, -3456($fp)
	sw $t3, -3464($fp)
	bne $t6, $t4, label871

	j label873

label873:
	li $t0, 27860
	li $t1, 0
	bne $t0, $t1, label871

	j label872

label871:
	li $t0, 1
	sw $t0, -3464($fp)

label872:
	li $t0, 0
	addi $t1, $fp, -1468
	li $t2, 7
	li $t3, 8
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 0
	addi $t1, $fp, -1068
	li $t3, 2
	mul $t0, $t0, $t3
	lw $t3, -1628($fp)
	add $t0, $t0, $t3
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t1, $t0
	li $t0, -1
	lw $t1, 0($t4)
	mul $t4, $t0, $t1
	li $t0, 45043
	lw $t1, 0($t2)
	sw $t0, -3472($fp)
	sw $t1, -3476($fp)
	sw $t4, -3468($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3472($fp)
	move $a3, $t0
	lw $t1, -3468($fp)
	move $a2, $t1
	lw $t2, -3476($fp)
	move $a1, $t2
	lw $t3, -3464($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -3480($fp)

	lw $t0, -1896($fp)
	lw $t1, -3480($fp)
	bge $t1, $t0, label869

	j label870

label869:
	li $t0, 1
	sw $t0, -3460($fp)

label870:
	li $t0, 0
	li $t1, 27037
	li $t2, 23990
	sw $t0, -3484($fp)
	bge $t1, $t2, label876

	j label875

label876:
	li $t0, 0
	lw $t1, -1892($fp)
	bne $t1, $t0, label874

	j label875

label874:
	li $t0, 1
	sw $t0, -3484($fp)

label875:
	lw $t1, -1840($fp)
	move $t0, $t1
	sw $t0, -1520($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1520($fp)
	move $a3, $t0
	lw $t1, -3484($fp)
	move $a2, $t1
	lw $t2, -3460($fp)
	move $a1, $t2
	lw $t3, -3456($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -3488($fp)

	lw $t0, -3488($fp)
	lw $t1, -3448($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	li $t4, 55619
	li $t5, 0
	sw $t2, -3492($fp)
	sw $t3, -3496($fp)
	bne $t4, $t5, label878

	j label877

label877:
	li $t0, 1
	sw $t0, -3496($fp)

label878:
	lw $t0, -3496($fp)
	lw $t1, -3492($fp)
	bgt $t1, $t0, label863

	j label864

label863:
	li $t0, 1
	sw $t0, -3444($fp)

label864:
	li $t0, 34998
	lw $t1, -1900($fp)
	mul $t2, $t1, $t0

label817:

label777:

label602:

label416:

label879:
	li $t0, 33907
	li $t1, 0
	bne $t0, $t1, label880

	j label881

label880:
	j label879

label881:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1068
	li $t3, 1
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	li $t2, 0
	sw $t0, -3500($fp)
	bne $t1, $t2, label887

	j label886

label886:
	li $t0, 1
	sw $t0, -3500($fp)

label887:
	li $t0, 0
	addi $t1, $fp, -60
	li $t2, 2
	li $t3, 3
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 20538
	li $t1, 36299
	li $t3, 5811
	mul $t4, $t1, $t3
	li $t1, -1
	mul $t3, $t1, $t4
	lw $t1, 0($t2)
	sw $t0, -3504($fp)
	sw $t1, -3512($fp)
	sw $t3, -3508($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3508($fp)
	move $a2, $t0
	lw $t1, -3504($fp)
	move $a1, $t1
	lw $t2, -3512($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -3516($fp)

	lw $t0, -3516($fp)
	lw $t1, -3500($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	bne $t2, $t3, label885

	j label883

label885:
	li $t0, 0
	lw $t1, -1832($fp)
	bne $t1, $t0, label882

	j label883

label882:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -3520($fp)
	sw $t1, -3524($fp)
	lw $t3, -1656($fp)
	bne $t3, $t2, label894

	j label897

label897:
	li $t0, 0
	lw $t1, -1532($fp)
	bne $t1, $t0, label894

	j label896

label896:
	li $t0, 51365
	li $t1, 0
	bne $t0, $t1, label894

	j label895

label894:
	li $t0, 1
	sw $t0, -3524($fp)

label895:
	li $t0, 0
	addi $t1, $fp, -284
	li $t2, 3
	li $t3, 10
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, -1
	lw $t1, 0($t2)
	mul $t2, $t0, $t1
	li $t0, 0
	li $t1, 58067
	sw $t0, -3532($fp)
	sw $t2, -3528($fp)
	lw $t3, -1488($fp)
	beq $t1, $t3, label900

	j label899

label900:
	li $t0, 36956
	li $t1, 0
	bne $t0, $t1, label898

	j label899

label898:
	li $t0, 1
	sw $t0, -3532($fp)

label899:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3532($fp)
	move $a2, $t0
	lw $t1, -3528($fp)
	move $a1, $t1
	lw $t2, -3524($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -3536($fp)

	li $t0, 0
	lw $t1, -3536($fp)
	bne $t1, $t0, label893

	j label892

label893:
	li $t0, 34725
	li $t1, 0
	bne $t0, $t1, label891

	j label892

label891:
	li $t0, 1
	sw $t0, -3520($fp)

label892:
	lw $t1, -1808($fp)
	move $t0, $t1
	li $t2, 45758
	lw $t3, -1820($fp)
	lw $t4, -1672($fp)
	div $t4, $t3
	mflo $t5
	sw $t0, -1660($fp)
	sw $t2, -3540($fp)
	sw $t5, -3544($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3544($fp)
	move $a3, $t0
	lw $t1, -3540($fp)
	move $a2, $t1
	lw $t2, -1660($fp)
	move $a1, $t2
	lw $t3, -3520($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -3548($fp)

	li $t0, 0
	lw $t1, -3548($fp)
	bne $t1, $t0, label888

	j label889

label888:
	li $t0, 0
	li $t1, 0
	sw $t0, -3552($fp)
	lw $t2, -1740($fp)
	bne $t2, $t1, label905

	j label902

label905:
	li $t0, 0
	addi $t1, $fp, -364
	li $t2, 5
	mul $t0, $t0, $t2
	lw $t2, -1580($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	li $t1, 0
	bne $t0, $t1, label904

	j label902

label904:
	lw $t0, -1900($fp)
	lw $t1, -1584($fp)
	beq $t1, $t0, label903

	j label902

label903:
	li $t0, 0
	li $t1, 0
	sw $t0, -3556($fp)
	lw $t2, -1588($fp)
	bne $t2, $t1, label907

	j label906

label906:
	li $t0, 1
	sw $t0, -3556($fp)

label907:
	li $t0, 0
	li $t1, 0
	sw $t0, -3560($fp)
	lw $t2, -1764($fp)
	bne $t2, $t1, label909

	j label908

label908:
	li $t0, 1
	sw $t0, -3560($fp)

label909:
	lw $t0, -3560($fp)
	lw $t1, -3556($fp)
	add $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label901

	j label902

label901:
	li $t0, 1
	sw $t0, -3552($fp)

label902:
	j label890

label889:
	li $t0, 40470
	move $t1, $t0
	li $t0, 0
	addi $t2, $fp, -3688
	li $t3, 0
	li $t4, 8
	mul $t0, $t0, $t4
	add $t0, $t0, $t3
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t2, $t0
	li $t0, 44161
	sw $t0, 0($t3)
	li $t2, 0
	addi $t4, $fp, -3688
	li $t5, 1
	li $t6, 8
	mul $t2, $t2, $t6
	add $t2, $t2, $t5
	li $t5, 4
	mul $t2, $t2, $t5
	add $t5, $t4, $t2
	li $t2, 65017
	sw $t2, 0($t5)
	li $t4, 0
	addi $t6, $fp, -3688
	li $t7, 2
	li $t8, 8
	mul $t4, $t4, $t8
	add $t4, $t4, $t7
	li $t7, 4
	mul $t4, $t4, $t7
	add $t7, $t6, $t4
	li $t4, 44677
	sw $t4, 0($t7)
	li $t6, 0
	addi $t8, $fp, -3688
	li $t9, 3
	li $s0, 8
	mul $t6, $t6, $s0
	add $t6, $t6, $t9
	li $t9, 4
	mul $t6, $t6, $t9
	add $t9, $t8, $t6
	li $t6, 17129
	sw $t6, 0($t9)
	li $t8, 0
	addi $s0, $fp, -3688
	li $s1, 4
	li $s2, 8
	mul $t8, $t8, $s2
	add $t8, $t8, $s1
	li $s1, 4
	mul $t8, $t8, $s1
	add $s1, $s0, $t8
	li $t8, 18583
	sw $t8, 0($s1)
	li $s0, 0
	addi $s2, $fp, -3688
	li $s3, 5
	li $s4, 8
	mul $s0, $s0, $s4
	add $s0, $s0, $s3
	li $s3, 4
	mul $s0, $s0, $s3
	add $s3, $s2, $s0
	li $s0, 13458
	sw $s0, 0($s3)
	li $s2, 0
	addi $s4, $fp, -3688
	li $s5, 6
	li $s6, 8
	mul $s2, $s2, $s6
	add $s2, $s2, $s5
	li $s5, 4
	mul $s2, $s2, $s5
	add $s5, $s4, $s2
	li $s2, 13524
	sw $s2, 0($s5)
	li $s4, 0
	addi $s6, $fp, -3688
	li $s7, 7
	sw $s5, -5412($fp)
	li $s5, 8
	mul $s4, $s4, $s5
	add $s4, $s4, $s7
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s6, $s4
	li $s4, 46443
	sw $s4, 0($s5)
	li $s6, 28273
	move $s7, $s6
	li $s6, 35411
	sw $s7, -3696($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -3700($fp)
	li $s7, 0
	sw $s7, -3708($fp)
	li $s7, 25950
	sw $t1, -3692($fp)
	sw $s6, -3704($fp)
	sw $s6, -3704($fp)
	lw $s6, -1804($fp)
	beq $s6, $s7, label912

	j label913

label912:
	li $t0, 1
	sw $t0, -3708($fp)

label913:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3708($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -3712($fp)

	li $t0, 55311
	lw $t1, -3712($fp)
	div $t1, $t0
	mflo $t2
	li $t0, 0
	addi $t3, $fp, -1468
	li $t4, 8
	mul $t0, $t0, $t4
	lw $t4, -1584($fp)
	add $t0, $t0, $t4
	li $t5, 4
	mul $t0, $t0, $t5
	add $t5, $t3, $t0
	li $t0, 0
	li $t3, 59401
	li $t6, 16033
	mul $t7, $t3, $t6
	sw $t0, -3724($fp)
	sw $t2, -3716($fp)
	sw $t5, -3720($fp)
	lw $t3, -3696($fp)
	beq $t7, $t3, label914

	j label915

label914:
	li $t0, 1
	sw $t0, -3724($fp)

label915:
	lw $t1, -3720($fp)
	lw $t0, 0($t1)
	sw $t0, -3728($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1592($fp)
	move $a3, $t0
	lw $t1, -3724($fp)
	move $a2, $t1
	lw $t2, -3728($fp)
	move $a1, $t2
	lw $t3, -3716($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -3732($fp)

	li $t0, 0
	li $t1, 24773
	lw $t2, -1500($fp)
	mul $t3, $t1, $t2
	li $t1, 27772
	sw $t0, -3736($fp)
	beq $t3, $t1, label916

	j label917

label916:
	li $t0, 1
	sw $t0, -3736($fp)

label917:
	lw $t0, -1884($fp)
	lw $t1, -1740($fp)
	div $t1, $t0
	mflo $t2
	lw $t3, -1596($fp)
	sub $t4, $t2, $t3
	sw $t4, -3740($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1600($fp)
	move $a2, $t0
	lw $t1, -3740($fp)
	move $a1, $t1
	lw $t2, -3736($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -3744($fp)

	lw $t0, -1892($fp)
	lw $t1, -3744($fp)
	add $t2, $t1, $t0
	li $t3, 30797
	lw $t4, -1772($fp)
	div $t3, $t4
	mflo $t5
	add $t3, $t2, $t5
	lw $t2, -3732($fp)
	bge $t2, $t3, label910

	j label911

label910:
	li $t0, 1
	sw $t0, -3704($fp)

label911:
	li $t0, 0
	li $t1, 0
	sw $t0, -3748($fp)
	lw $t2, -1592($fp)
	bne $t2, $t1, label920

	j label919

label920:
	li $t0, 0
	li $t1, 38668
	li $t2, -1
	mul $t3, $t2, $t1
	li $t1, 0
	sw $t0, -3752($fp)
	bne $t3, $t1, label921

	j label923

label923:
	li $t0, 53361
	li $t1, 0
	bne $t0, $t1, label921

	j label922

label921:
	li $t0, 1
	sw $t0, -3752($fp)

label922:
	li $t0, 0
	li $t1, 61157
	lw $t2, -1604($fp)
	div $t2, $t1
	mflo $t3
	li $t1, 59207
	sw $t0, -3756($fp)
	bgt $t3, $t1, label924

	j label925

label924:
	li $t0, 1
	sw $t0, -3756($fp)

label925:
	li $t0, 0
	li $t1, 24124
	lw $t2, -1584($fp)
	add $t3, $t2, $t1
	li $t1, 1433
	sw $t0, -3760($fp)
	ble $t3, $t1, label926

	j label927

label926:
	li $t0, 1
	sw $t0, -3760($fp)

label927:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3760($fp)
	move $a3, $t0
	lw $t1, -3756($fp)
	move $a2, $t1
	lw $t2, -3700($fp)
	move $a1, $t2
	lw $t3, -3752($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -3764($fp)

	lw $t0, -1696($fp)
	lw $t1, -3764($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	bne $t2, $t3, label918

	j label919

label918:
	li $t0, 1
	sw $t0, -3748($fp)

label919:
	lw $t0, -1712($fp)
	lw $t1, -1736($fp)
	div $t1, $t0
	mflo $t2
	li $t3, -1
	mul $t4, $t3, $t2
	li $t2, -1
	mul $t3, $t2, $t4
	li $t2, 45036
	move $t4, $t2
	li $t2, 1760
	move $t5, $t2
	li $t2, -1
	lw $t6, -1500($fp)
	mul $t7, $t2, $t6
	li $t2, 0
	li $t8, 0
	sw $t2, -3772($fp)
	sw $t5, -3768($fp)
	bne $t4, $t8, label928

	j label930

label930:
	li $t0, 43858
	li $t1, 0
	bne $t0, $t1, label928

	j label929

label928:
	li $t0, 1
	sw $t0, -3772($fp)

label929:
	lw $t1, -3772($fp)
	move $t0, $t1
	move $t2, $t0
	li $t3, 37567
	lw $t4, -1892($fp)
	sub $t5, $t3, $t4
	li $t3, 0
	li $t6, 38716
	li $t7, 0
	li $t8, 0
	li $t9, 13047
	sw $t0, -1608($fp)
	sw $t2, -1652($fp)
	sw $t3, -3780($fp)
	sw $t5, -3776($fp)
	sw $t6, -3784($fp)
	sw $t7, -3788($fp)
	sw $t8, -3792($fp)
	lw $s0, -1612($fp)
	bgt $t9, $s0, label935

	j label936

label935:
	li $t0, 1
	sw $t0, -3792($fp)

label936:
	lw $t0, -1764($fp)
	lw $t1, -3792($fp)
	bne $t1, $t0, label933

	j label934

label933:
	li $t0, 1
	sw $t0, -3788($fp)

label934:
	li $t0, 0
	li $t1, 0
	li $t2, 17789
	sw $t0, -3796($fp)
	sw $t1, -3800($fp)
	lw $t3, -1616($fp)
	bgt $t3, $t2, label939

	j label940

label939:
	li $t0, 1
	sw $t0, -3800($fp)

label940:
	lw $t0, -1732($fp)
	lw $t1, -3800($fp)
	bne $t1, $t0, label937

	j label938

label937:
	li $t0, 1
	sw $t0, -3796($fp)

label938:
	li $t0, 13651
	li $t1, -1
	mul $t2, $t1, $t0
	sw $t2, -3804($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3804($fp)
	move $a3, $t0
	lw $t1, -3796($fp)
	move $a2, $t1
	lw $t2, -3788($fp)
	move $a1, $t2
	lw $t3, -3784($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -3808($fp)

	li $t0, 57209
	lw $t1, -3808($fp)
	bge $t1, $t0, label931

	j label932

label931:
	li $t0, 1
	sw $t0, -3780($fp)

label932:
	lw $t1, -1892($fp)
	move $t0, $t1
	li $t2, 0
	li $t3, 17270
	lw $t4, -1620($fp)
	add $t5, $t4, $t3
	sw $t0, -1800($fp)
	sw $t2, -3812($fp)
	lw $t3, -1796($fp)
	ble $t5, $t3, label941

	j label942

label941:
	li $t0, 1
	sw $t0, -3812($fp)

label942:
	li $t0, 0
	li $t1, 0
	sw $t0, -3816($fp)
	lw $t2, -1796($fp)
	bne $t2, $t1, label944

	j label943

label943:
	li $t0, 1
	sw $t0, -3816($fp)

label944:
	li $t0, 0
	li $t1, 0
	sw $t0, -3820($fp)
	lw $t2, -1788($fp)
	bne $t2, $t1, label948

	j label947

label948:
	li $t0, 0
	lw $t1, -1740($fp)
	bne $t1, $t0, label945

	j label947

label947:
	li $t0, 0
	lw $t1, -1504($fp)
	bne $t1, $t0, label945

	j label946

label945:
	li $t0, 1
	sw $t0, -3820($fp)

label946:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3820($fp)
	move $a2, $t0
	lw $t1, -3816($fp)
	move $a1, $t1
	lw $t2, -3812($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -3824($fp)

	lw $t0, -1788($fp)
	lw $t1, -1864($fp)
	mul $t2, $t1, $t0
	lw $t3, -1712($fp)
	div $t2, $t3
	mflo $t4
	sw $t4, -3828($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3828($fp)
	move $a2, $t0
	lw $t1, -3824($fp)
	move $a1, $t1
	lw $t2, -1800($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -3832($fp)

	li $t0, 58328
	lw $t1, -3832($fp)
	add $t2, $t1, $t0
	li $t0, 0
	li $t3, 0
	li $t4, 8802
	sw $t0, -3840($fp)
	sw $t2, -3836($fp)
	sw $t3, -3844($fp)
	lw $t5, -3768($fp)
	bge $t5, $t4, label951

	j label952

label951:
	li $t0, 1
	sw $t0, -3844($fp)

label952:
	lw $t0, -1624($fp)
	lw $t1, -3844($fp)
	bne $t1, $t0, label949

	j label950

label949:
	li $t0, 1
	sw $t0, -3840($fp)

label950:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3840($fp)
	move $a2, $t0
	lw $t1, -3836($fp)
	move $a1, $t1
	lw $t2, -3780($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -3848($fp)

	lw $t0, -3848($fp)
	lw $t1, -3776($fp)
	add $t2, $t1, $t0

	li $v0, 1
	lw $t0, -3692($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -3688
	li $t3, 0
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3852($fp)

	li $v0, 1
	lw $t0, -3852($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -3688
	li $t3, 1
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3856($fp)

	li $v0, 1
	lw $t0, -3856($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -3688
	li $t3, 2
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3860($fp)

	li $v0, 1
	lw $t0, -3860($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -3688
	li $t3, 3
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3864($fp)

	li $v0, 1
	lw $t0, -3864($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -3688
	li $t3, 4
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3868($fp)

	li $v0, 1
	lw $t0, -3868($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -3688
	li $t3, 5
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3872($fp)

	li $v0, 1
	lw $t0, -3872($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -3688
	li $t3, 6
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3876($fp)

	li $v0, 1
	lw $t0, -3876($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -3688
	li $t3, 7
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3880($fp)

	li $v0, 1
	lw $t0, -3880($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 0
	li $t4, 35853
	li $t5, 6250
	sw $t1, -3884($fp)
	sw $t2, -3888($fp)
	sw $t3, -3892($fp)
	bgt $t4, $t5, label958

	j label959

label958:
	li $t0, 1
	sw $t0, -3892($fp)

label959:
	lw $t0, -1688($fp)
	lw $t1, -3892($fp)
	beq $t1, $t0, label956

	j label957

label956:
	li $t0, 1
	sw $t0, -3888($fp)

label957:
	li $t0, 0
	li $t1, 22326
	sw $t0, -3896($fp)
	lw $t2, -1788($fp)
	bgt $t1, $t2, label960

	j label962

label962:
	li $t0, 16760
	li $t1, 0
	bne $t0, $t1, label960

	j label961

label960:
	li $t0, 1
	sw $t0, -3896($fp)

label961:
	li $t0, 0
	li $t1, 0
	sw $t0, -3900($fp)
	lw $t2, -3692($fp)
	bne $t2, $t1, label964

	j label965

label965:
	li $t0, 34524
	li $t1, 0
	bne $t0, $t1, label963

	j label964

label963:
	li $t0, 1
	sw $t0, -3900($fp)

label964:
	li $t0, 0
	li $t1, 57738
	lw $t2, -1668($fp)
	sub $t3, $t2, $t1
	li $t1, 42710
	sw $t0, -3904($fp)
	blt $t3, $t1, label966

	j label967

label966:
	li $t0, 1
	sw $t0, -3904($fp)

label967:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1604($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -3908($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3908($fp)
	move $a2, $t0
	lw $t1, -3904($fp)
	move $a1, $t1
	lw $t2, -3900($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -3912($fp)

	li $t0, 24299
	sw $t0, -3916($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3916($fp)
	move $a3, $t0
	lw $t1, -3912($fp)
	move $a2, $t1
	lw $t2, -3896($fp)
	move $a1, $t2
	lw $t3, -3888($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -3920($fp)

	lw $t0, -1628($fp)
	lw $t1, -3920($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	bne $t2, $t3, label955

	j label954

label955:
	li $t0, 51603
	li $t1, 0
	bne $t0, $t1, label953

	j label954

label953:
	li $t0, 1
	sw $t0, -3884($fp)

label954:
	lw $t0, -3884($fp)
	move $v0, $t0
	lw $ra, 4640($sp)
	lw $fp, 4636($sp)
	addi $sp, $sp, 4644
	jr $ra

	li $v0, 1
	lw $t0, -3692($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -3688
	li $t3, 0
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3924($fp)

	li $v0, 1
	lw $t0, -3924($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -3688
	li $t3, 1
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3928($fp)

	li $v0, 1
	lw $t0, -3928($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -3688
	li $t3, 2
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3932($fp)

	li $v0, 1
	lw $t0, -3932($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -3688
	li $t3, 3
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3936($fp)

	li $v0, 1
	lw $t0, -3936($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -3688
	li $t3, 4
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3940($fp)

	li $v0, 1
	lw $t0, -3940($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -3688
	li $t3, 5
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3944($fp)

	li $v0, 1
	lw $t0, -3944($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -3688
	li $t3, 6
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3948($fp)

	li $v0, 1
	lw $t0, -3948($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -3688
	li $t3, 7
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3952($fp)

	li $v0, 1
	lw $t0, -3952($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 58744
	li $t2, 0
	li $t3, 49072
	lw $t4, -1632($fp)
	div $t4, $t3
	mflo $t5
	li $t3, 0
	sw $t1, -3956($fp)
	sw $t2, -3960($fp)
	bne $t5, $t3, label968

	j label970

label970:
	li $t0, 13840
	li $t1, 0
	bne $t0, $t1, label968

	j label969

label968:
	li $t0, 1
	sw $t0, -3960($fp)

label969:
	li $t0, 0
	li $t1, 24005
	sw $t0, -3964($fp)
	lw $t2, -1796($fp)
	bgt $t1, $t2, label971

	j label973

label973:
	li $t0, 0
	lw $t1, -1660($fp)
	bne $t1, $t0, label971

	j label972

label971:
	li $t0, 1
	sw $t0, -3964($fp)

label972:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3964($fp)
	move $a2, $t0
	lw $t1, -3960($fp)
	move $a1, $t1
	lw $t2, -1712($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -3968($fp)

	lw $t0, -3968($fp)
	lw $t1, -3956($fp)
	mul $t2, $t1, $t0
	li $t3, -1
	mul $t4, $t3, $t2
	lw $t2, -1780($fp)
	div $t2, $t4
	mflo $t3
	move $v0, $t3
	lw $ra, 4640($sp)
	lw $fp, 4636($sp)
	addi $sp, $sp, 4644
	jr $ra

	li $t0, 0
	li $t1, 22204
	lw $t2, -1712($fp)
	div $t2, $t1
	mflo $t3
	li $t1, 1665
	sw $t0, -3972($fp)
	bne $t3, $t1, label977

	j label978

label977:
	li $t0, 1
	sw $t0, -3972($fp)

label978:
	li $t0, 19626
	li $t1, 15875
	mul $t2, $t0, $t1
	lw $t1, -1700($fp)
	move $t0, $t1
	sw $t0, -1704($fp)
	sw $t2, -3976($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1704($fp)
	move $a3, $t0
	lw $t1, -1796($fp)
	move $a2, $t1
	lw $t2, -3976($fp)
	move $a1, $t2
	lw $t3, -3972($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -3980($fp)

	li $t0, 0
	li $t1, -1
	lw $t2, -1872($fp)
	mul $t3, $t1, $t2
	li $t1, 0
	sw $t0, -3984($fp)
	bne $t3, $t1, label979

	j label981

label981:
	li $t0, 25789
	li $t1, 0
	bne $t0, $t1, label979

	j label980

label979:
	li $t0, 1
	sw $t0, -3984($fp)

label980:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3984($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -3988($fp)

	lw $t0, -3988($fp)
	lw $t1, -3980($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	bne $t2, $t3, label974

	j label975

label974:
	li $t0, 0
	addi $t1, $fp, -60
	li $t2, 0
	li $t3, 0
	addi $t4, $fp, -3688
	li $t5, 8
	mul $t3, $t3, $t5
	lw $t5, -1796($fp)
	add $t3, $t3, $t5
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t4, $t3
	li $t3, 21059
	lw $t4, 0($t6)
	mul $t6, $t4, $t3
	li $t3, 0
	sw $t0, -3992($fp)
	sw $t1, -3996($fp)
	sw $t2, -4000($fp)
	bne $t6, $t3, label982

	j label984

label984:
	li $t0, 60911
	li $t1, 0
	bne $t0, $t1, label985

	j label983

label985:
	li $t0, 0
	lw $t1, -1716($fp)
	bne $t1, $t0, label982

	j label983

label982:
	li $t0, 1
	sw $t0, -4000($fp)

label983:
	li $t0, 3
	lw $t1, -3992($fp)
	mul $t1, $t1, $t0
	lw $t0, -4000($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -3996($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	sw $t1, -3992($fp)
	move $v0, $t4
	lw $ra, 4640($sp)
	lw $fp, 4636($sp)
	addi $sp, $sp, 4644
	jr $ra

	j label976

label975:
	li $t0, 27549
	move $t1, $t0
	li $t0, 0
	li $t2, 0
	li $t3, 64918
	lw $t4, -1508($fp)
	mul $t5, $t3, $t4
	li $t3, 32942
	sub $t6, $t5, $t3
	li $t3, 0
	addi $t5, $fp, -1340
	li $t7, 6
	mul $t3, $t3, $t7
	lw $t7, -1704($fp)
	add $t3, $t3, $t7
	li $t8, 4
	mul $t3, $t3, $t8
	add $t8, $t5, $t3
	li $t3, -1
	lw $t5, 0($t8)
	mul $t8, $t3, $t5
	li $t3, 0
	addi $t5, $fp, -3688
	li $t9, 8
	mul $t3, $t3, $t9
	add $t3, $t3, $t1
	li $t1, 4
	mul $t3, $t3, $t1
	add $t1, $t5, $t3
	li $t3, -1
	lw $t5, 0($t1)
	mul $t1, $t3, $t5
	li $t3, 729
	move $t5, $t3
	sw $t0, -4004($fp)
	sw $t1, -4020($fp)
	sw $t2, -4008($fp)
	sw $t5, -1596($fp)
	sw $t6, -4012($fp)
	sw $t8, -4016($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1596($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -4024($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -4024($fp)
	move $a3, $t0
	lw $t1, -4020($fp)
	move $a2, $t1
	lw $t2, -4016($fp)
	move $a1, $t2
	lw $t3, -4012($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -4028($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -4028($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -4032($fp)

	li $t0, 12429
	lw $t1, -4032($fp)
	beq $t1, $t0, label989

	j label990

label989:
	li $t0, 1
	sw $t0, -4008($fp)

label990:
	li $t0, -1
	lw $t1, -1804($fp)
	mul $t2, $t0, $t1
	sw $t2, -4036($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -4036($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -4040($fp)

	lw $t0, -4040($fp)
	lw $t1, -4008($fp)
	beq $t1, $t0, label986

	j label988

label988:
	li $t0, 0
	lw $t1, -1676($fp)
	bne $t1, $t0, label986

	j label987

label986:
	li $t0, 1
	sw $t0, -4004($fp)

label987:

label976:

label890:
	j label884

label883:
	li $t0, 0
	li $t1, 50731
	li $t2, 0
	sw $t0, -4044($fp)
	bne $t1, $t2, label991

	j label992

label991:
	li $t0, 1
	sw $t0, -4044($fp)

label992:
	lw $t1, -1860($fp)
	move $t0, $t1
	sw $t0, -1680($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1680($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -4048($fp)

	lw $t0, -4048($fp)
	lw $t1, -4044($fp)
	sub $t2, $t1, $t0
	li $t3, 14380
	add $t4, $t2, $t3
	lw $t2, -1704($fp)
	sub $t3, $t4, $t2

label884:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -780
	li $t3, 0
	addi $t4, $fp, -1468
	li $t5, 8
	mul $t3, $t3, $t5
	lw $t5, -1684($fp)
	add $t3, $t3, $t5
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t4, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	lw $t3, 0($t6)
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	li $t2, 0
	sw $t0, -4052($fp)
	bne $t1, $t2, label997

	j label996

label996:
	li $t0, 1
	sw $t0, -4052($fp)

label997:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -4056($fp)
	sw $t1, -4060($fp)
	sw $t2, -4064($fp)
	lw $t3, -1880($fp)
	lw $t4, -1632($fp)
	bne $t4, $t3, label1002

	j label1003

label1002:
	li $t0, 1
	sw $t0, -4064($fp)

label1003:
	lw $t0, -1592($fp)
	lw $t1, -4064($fp)
	bne $t1, $t0, label1000

	j label1001

label1000:
	li $t0, 1
	sw $t0, -4060($fp)

label1001:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1068
	li $t3, 2
	mul $t1, $t1, $t3
	lw $t3, -1492($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	lw $t1, 0($t4)
	li $t2, 0
	sw $t0, -4068($fp)
	bne $t1, $t2, label1006

	j label1005

label1006:
	li $t0, 4102
	li $t1, 0
	bne $t0, $t1, label1004

	j label1005

label1004:
	li $t0, 1
	sw $t0, -4068($fp)

label1005:
	li $t0, 2466
	lw $t1, -1788($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4072($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -4072($fp)
	move $a2, $t0
	lw $t1, -4068($fp)
	move $a1, $t1
	lw $t2, -4060($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -4076($fp)

	li $t0, 0
	lw $t1, -4076($fp)
	bne $t1, $t0, label999

	j label998

label998:
	li $t0, 1
	sw $t0, -4056($fp)

label999:
	li $t0, -1
	lw $t1, -4056($fp)
	mul $t2, $t0, $t1
	lw $t0, -4052($fp)
	div $t0, $t2
	mflo $t3
	li $t2, 0
	bne $t3, $t2, label993

	j label994

label993:
	li $t0, 0
	addi $t1, $fp, -940
	li $t2, 0
	li $t3, 0
	sw $t0, -4080($fp)
	sw $t1, -4084($fp)
	sw $t2, -4088($fp)
	lw $t4, -1676($fp)
	bne $t4, $t3, label1007

	j label1009

label1009:
	li $t0, 7173
	li $t1, 0
	bne $t0, $t1, label1007

	j label1008

label1007:
	li $t0, 1
	sw $t0, -4088($fp)

label1008:
	li $t0, 10
	lw $t1, -4080($fp)
	mul $t1, $t1, $t0
	lw $t0, -4088($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -4084($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	move $t3, $t4
	sw $t1, -4080($fp)
	sw $t3, -1688($fp)
	j label995

label994:

label1010:
	li $t0, 12904
	li $t1, 38319
	lw $t2, -1796($fp)
	mul $t3, $t2, $t1
	sub $t1, $t0, $t3
	li $t0, 0
	addi $t3, $fp, -940
	li $t4, 7
	li $t5, 10
	mul $t0, $t0, $t5
	add $t0, $t0, $t4
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t3, $t0
	li $t0, 55080
	lw $t3, 0($t4)
	sub $t4, $t3, $t0
	li $t0, 0
	addi $t3, $fp, -124
	li $t5, 4
	mul $t0, $t0, $t5
	lw $t5, -1520($fp)
	add $t0, $t0, $t5
	li $t6, 4
	mul $t0, $t0, $t6
	add $t6, $t3, $t0
	lw $t0, 0($t6)
	sub $t3, $t4, $t0
	beq $t1, $t3, label1011

	j label1012

label1011:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1484
	li $t3, 1
	mul $t1, $t1, $t3
	lw $t3, -1748($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	lw $t1, 0($t4)
	sw $t0, -4092($fp)
	lw $t2, -1660($fp)
	bgt $t2, $t1, label1016

	j label1017

label1016:
	li $t0, 1
	sw $t0, -4092($fp)

label1017:
	li $t0, 47947
	lw $t1, -4092($fp)
	beq $t1, $t0, label1013

	j label1014

label1013:
	li $t0, 0
	lw $t1, -1524($fp)
	bne $t1, $t0, label1018

	j label1019

label1018:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -60
	li $t3, 3
	mul $t1, $t1, $t3
	lw $t3, -1692($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	lw $t1, 0($t4)
	li $t2, 0
	sw $t0, -4096($fp)
	bne $t1, $t2, label1022

	j label1021

label1021:
	li $t0, 1
	sw $t0, -4096($fp)

label1022:
	lw $t0, -4096($fp)
	move $v0, $t0
	lw $ra, 4640($sp)
	lw $fp, 4636($sp)
	addi $sp, $sp, 4644
	jr $ra

	j label1020

label1019:
	li $t0, 27433
	move $t1, $t0
	li $t0, 32254
	move $t2, $t0
	li $t0, 6710
	move $t3, $t0
	li $t0, 13500
	move $t4, $t0
	li $t0, 25462
	move $t5, $t0
	li $t0, 0
	li $t6, 55782
	lw $t7, -1748($fp)
	div $t6, $t7
	mflo $t8
	lw $t6, -1752($fp)
	mul $t9, $t8, $t6
	li $t8, 0
	div $t1, $t2
	mflo $s0
	li $t1, 27340
	sw $t0, -4112($fp)
	sw $t3, -4100($fp)
	sw $t4, -4104($fp)
	sw $t5, -4108($fp)
	sw $t8, -4120($fp)
	sw $t9, -4116($fp)
	bge $s0, $t1, label1027

	j label1028

label1027:
	li $t0, 1
	sw $t0, -4120($fp)

label1028:
	li $t0, 0
	li $t1, 0
	sw $t0, -4124($fp)
	lw $t2, -1696($fp)
	bne $t2, $t1, label1030

	j label1029

label1029:
	li $t0, 1
	sw $t0, -4124($fp)

label1030:
	lw $t0, -1576($fp)
	lw $t1, -4124($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	addi $t4, $fp, -1036
	li $t5, 1
	li $t6, 6
	mul $t3, $t3, $t6
	add $t3, $t3, $t5
	li $t5, 4
	mul $t3, $t3, $t5
	add $t5, $t4, $t3
	lw $t3, 0($t5)
	sw $t2, -4128($fp)
	sw $t3, -4132($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -4132($fp)
	move $a2, $t0
	lw $t1, -4128($fp)
	move $a1, $t1
	lw $t2, -4120($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -4136($fp)

	lw $t0, -4136($fp)
	lw $t1, -4116($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	bne $t2, $t3, label1026

	j label1025

label1026:
	li $t0, 0
	addi $t1, $fp, -1068
	li $t2, 0
	li $t3, 2
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 28326
	lw $t1, 0($t2)
	div $t1, $t0
	mflo $t2
	li $t0, 0
	bne $t2, $t0, label1023

	j label1025

label1025:
	li $t0, 0
	lw $t1, -1700($fp)
	bne $t1, $t0, label1031

	j label1024

label1031:
	li $t0, 0
	addi $t1, $fp, -1068
	li $t2, 1
	li $t3, 2
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	li $t1, 0
	bne $t0, $t1, label1023

	j label1024

label1023:
	li $t0, 1
	sw $t0, -4112($fp)

label1024:
	li $t0, 0
	addi $t1, $fp, -1036
	li $t2, 6
	mul $t0, $t0, $t2
	lw $t2, -4100($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	li $t0, 0
	addi $t1, $fp, -1084
	li $t4, 0
	li $t5, 1
	mul $t0, $t0, $t5
	add $t0, $t0, $t4
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t1, $t0
	lw $t0, 0($t4)
	lw $t1, 0($t3)
	mul $t3, $t1, $t0
	li $t0, 0
	lw $t1, -1732($fp)
	lw $t4, -1704($fp)
	add $t5, $t4, $t1
	li $t6, 0
	sw $t0, -4144($fp)
	sw $t3, -4140($fp)
	bne $t5, $t6, label1032

	j label1034

label1034:
	li $t0, 0
	lw $t1, -1708($fp)
	bne $t1, $t0, label1032

	j label1033

label1032:
	li $t0, 1
	sw $t0, -4144($fp)

label1033:
	li $t0, 0
	li $t1, 23999
	sw $t0, -4148($fp)
	lw $t2, -1500($fp)
	beq $t1, $t2, label1035

	j label1037

label1037:
	li $t0, 0
	lw $t1, -1712($fp)
	bne $t1, $t0, label1035

	j label1036

label1035:
	li $t0, 1
	sw $t0, -4148($fp)

label1036:
	li $t0, 56644
	li $t1, 0
	li $t2, 0
	sw $t0, -4152($fp)
	sw $t1, -4156($fp)
	lw $t3, -1888($fp)
	bne $t3, $t2, label1039

	j label1038

label1038:
	li $t0, 1
	sw $t0, -4156($fp)

label1039:
	lw $t0, -1716($fp)
	lw $t1, -4156($fp)
	div $t1, $t0
	mflo $t2
	sw $t2, -4160($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -4160($fp)
	move $a3, $t0
	lw $t1, -4152($fp)
	move $a2, $t1
	lw $t2, -4148($fp)
	move $a1, $t2
	lw $t3, -4144($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -4164($fp)

	lw $t0, -4164($fp)
	lw $t1, -4140($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	li $t4, 0
	li $t5, 17537
	li $t6, 0
	sw $t2, -4168($fp)
	sw $t3, -4172($fp)
	sw $t4, -4176($fp)
	bne $t5, $t6, label1043

	j label1042

label1042:
	li $t0, 1
	sw $t0, -4176($fp)

label1043:
	lw $t0, -1692($fp)
	lw $t1, -4176($fp)
	beq $t1, $t0, label1040

	j label1041

label1040:
	li $t0, 1
	sw $t0, -4172($fp)

label1041:
	li $t0, 36429
	li $t1, 0
	li $t2, 0
	sw $t0, -4180($fp)
	sw $t1, -4184($fp)
	lw $t3, -1568($fp)
	bne $t3, $t2, label1045

	j label1044

label1044:
	li $t0, 1
	sw $t0, -4184($fp)

label1045:
	lw $t0, -4104($fp)
	lw $t1, -4184($fp)
	mul $t2, $t1, $t0
	sw $t2, -4188($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -4188($fp)
	move $a3, $t0
	lw $t1, -4180($fp)
	move $a2, $t1
	lw $t2, -4172($fp)
	move $a1, $t2
	lw $t3, -1692($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -4192($fp)

	lw $t0, -4192($fp)
	lw $t1, -4168($fp)
	add $t2, $t1, $t0
	li $t3, 0
	li $t4, 0
	li $t5, 0
	li $t6, 41840
	lw $t7, -1720($fp)
	add $t8, $t6, $t7
	li $t6, 31917
	add $t9, $t8, $t6
	li $t6, 40531
	lw $t8, -1724($fp)
	div $t6, $t8
	mflo $s0
	sw $t3, -4196($fp)
	sw $t4, -4200($fp)
	sw $t5, -4204($fp)
	blt $t9, $s0, label1050

	j label1051

label1050:
	li $t0, 1
	sw $t0, -4204($fp)

label1051:
	li $t0, 44306
	lw $t1, -1728($fp)
	add $t2, $t1, $t0
	lw $t0, -1788($fp)
	add $t3, $t2, $t0
	lw $t2, -4204($fp)
	ble $t2, $t3, label1048

	j label1049

label1048:
	li $t0, 1
	sw $t0, -4200($fp)

label1049:
	li $t0, 39090
	lw $t1, -4200($fp)
	beq $t1, $t0, label1046

	j label1047

label1046:
	li $t0, 1
	sw $t0, -4196($fp)

label1047:
	li $t0, 0
	li $t1, 0
	li $t2, 53436
	sw $t0, -4208($fp)
	sw $t1, -4212($fp)
	lw $t3, -1596($fp)
	bge $t2, $t3, label1054

	j label1055

label1054:
	li $t0, 1
	sw $t0, -4212($fp)

label1055:
	li $t0, 0
	addi $t1, $fp, -716
	li $t2, 6
	mul $t0, $t0, $t2
	lw $t2, -4108($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	lw $t1, -1820($fp)
	sub $t3, $t0, $t1
	li $t0, 0
	lw $t4, -1892($fp)
	lw $t5, -1500($fp)
	mul $t6, $t5, $t4
	li $t7, 0
	sw $t0, -4220($fp)
	sw $t3, -4216($fp)
	bne $t6, $t7, label1056

	j label1058

label1058:
	li $t0, 17089
	li $t1, 0
	bne $t0, $t1, label1056

	j label1057

label1056:
	li $t0, 1
	sw $t0, -4220($fp)

label1057:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -4220($fp)
	move $a2, $t0
	lw $t1, -4216($fp)
	move $a1, $t1
	lw $t2, -4212($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -4224($fp)

	li $t0, 52514
	lw $t1, -4224($fp)
	mul $t2, $t1, $t0
	li $t0, 23131
	bge $t2, $t0, label1052

	j label1053

label1052:
	li $t0, 1
	sw $t0, -4208($fp)

label1053:
	lw $t1, -4208($fp)
	move $t0, $t1
	li $t2, 0
	li $t3, 0
	li $t4, 0
	li $t5, 6633
	li $t6, 0
	sw $t0, -1732($fp)
	sw $t2, -4228($fp)
	sw $t3, -4232($fp)
	sw $t4, -4236($fp)
	bne $t5, $t6, label1066

	j label1064

label1066:
	li $t0, 0
	lw $t1, -1736($fp)
	bne $t1, $t0, label1065

	j label1064

label1065:
	li $t0, 34925
	li $t1, 0
	bne $t0, $t1, label1063

	j label1064

label1063:
	li $t0, 1
	sw $t0, -4236($fp)

label1064:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1740($fp)
	move $a2, $t0
	lw $t1, -4236($fp)
	move $a1, $t1
	lw $t2, -1748($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -4240($fp)

	li $t0, 0
	addi $t1, $fp, -620
	li $t2, 1
	li $t3, 9
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	lw $t1, -4240($fp)
	div $t1, $t0
	mflo $t2
	li $t0, 0
	addi $t3, $fp, -1340
	li $t4, 6
	mul $t0, $t0, $t4
	lw $t4, -1796($fp)
	add $t0, $t0, $t4
	li $t5, 4
	mul $t0, $t0, $t5
	add $t5, $t3, $t0
	li $t0, -1
	lw $t3, 0($t5)
	mul $t5, $t0, $t3
	beq $t2, $t5, label1061

	j label1062

label1061:
	li $t0, 1
	sw $t0, -4232($fp)

label1062:
	li $t0, 41636
	lw $t1, -4232($fp)
	beq $t1, $t0, label1059

	j label1060

label1059:
	li $t0, 1
	sw $t0, -4228($fp)

label1060:

label1020:
	j label1015

label1014:
	li $t0, 0
	addi $t1, $fp, -1244
	li $t2, 2
	li $t3, 10
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	lw $t1, -1744($fp)
	mul $t2, $t0, $t1
	lw $t0, -1592($fp)
	mul $t3, $t2, $t0
	li $t2, -1
	mul $t4, $t2, $t3
	move $v0, $t4
	lw $ra, 4640($sp)
	lw $fp, 4636($sp)
	addi $sp, $sp, 4644
	jr $ra

label1015:
	j label1010

label1012:

label995:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -716
	li $t4, 1
	li $t5, 6
	mul $t2, $t2, $t5
	add $t2, $t2, $t4
	li $t4, 4
	mul $t2, $t2, $t4
	add $t4, $t3, $t2
	lw $t2, 0($t4)
	sw $t0, -4244($fp)
	sw $t1, -4248($fp)
	lw $t3, -1748($fp)
	ble $t2, $t3, label1070

	j label1071

label1070:
	li $t0, 1
	sw $t0, -4248($fp)

label1071:
	li $t0, 0
	li $t1, 0
	sw $t0, -4252($fp)
	sw $t1, -4256($fp)
	lw $t2, -1492($fp)
	lw $t3, -1752($fp)
	ble $t3, $t2, label1074

	j label1075

label1074:
	li $t0, 1
	sw $t0, -4256($fp)

label1075:
	lw $t0, -1732($fp)
	lw $t1, -4256($fp)
	bge $t1, $t0, label1072

	j label1073

label1072:
	li $t0, 1
	sw $t0, -4252($fp)

label1073:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -4252($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -4260($fp)

	lw $t0, -4260($fp)
	lw $t1, -4248($fp)
	beq $t1, $t0, label1069

	j label1068

label1069:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1340
	li $t3, 3
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	li $t1, 54874
	lw $t2, 0($t3)
	sw $t0, -4264($fp)
	bge $t2, $t1, label1076

	j label1077

label1076:
	li $t0, 1
	sw $t0, -4264($fp)

label1077:
	li $t0, 51840
	li $t1, -1
	mul $t2, $t1, $t0
	lw $t0, -4264($fp)
	ble $t0, $t2, label1067

	j label1068

label1067:
	li $t0, 1
	sw $t0, -4244($fp)

label1068:
	li $t0, 0
	addi $t1, $fp, -60
	li $t2, 0
	li $t3, 3
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	sw $t0, -4268($fp)

	li $v0, 1
	lw $t0, -4268($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -60
	li $t3, 1
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4272($fp)

	li $v0, 1
	lw $t0, -4272($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -60
	li $t3, 2
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4276($fp)

	li $v0, 1
	lw $t0, -4276($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1488($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1492($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1496($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1500($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1504($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1508($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1512($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1516($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1520($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1524($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1528($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1532($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1536($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1540($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1544($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1548($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -124
	li $t3, 0
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4280($fp)

	li $v0, 1
	lw $t0, -4280($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -124
	li $t3, 1
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4284($fp)

	li $v0, 1
	lw $t0, -4284($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -124
	li $t3, 2
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4288($fp)

	li $v0, 1
	lw $t0, -4288($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -124
	li $t3, 3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4292($fp)

	li $v0, 1
	lw $t0, -4292($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1552($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -284
	li $t3, 0
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4296($fp)

	li $v0, 1
	lw $t0, -4296($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -284
	li $t3, 1
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4300($fp)

	li $v0, 1
	lw $t0, -4300($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -284
	li $t3, 2
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4304($fp)

	li $v0, 1
	lw $t0, -4304($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -284
	li $t3, 3
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4308($fp)

	li $v0, 1
	lw $t0, -4308($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -284
	li $t3, 4
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4312($fp)

	li $v0, 1
	lw $t0, -4312($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -284
	li $t3, 5
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4316($fp)

	li $v0, 1
	lw $t0, -4316($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -284
	li $t3, 6
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4320($fp)

	li $v0, 1
	lw $t0, -4320($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -284
	li $t3, 7
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4324($fp)

	li $v0, 1
	lw $t0, -4324($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -284
	li $t3, 8
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4328($fp)

	li $v0, 1
	lw $t0, -4328($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -284
	li $t3, 9
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4332($fp)

	li $v0, 1
	lw $t0, -4332($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1556($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1560($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1564($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1568($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -364
	li $t3, 0
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4336($fp)

	li $v0, 1
	lw $t0, -4336($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -364
	li $t3, 1
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4340($fp)

	li $v0, 1
	lw $t0, -4340($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -364
	li $t3, 2
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4344($fp)

	li $v0, 1
	lw $t0, -4344($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -364
	li $t3, 3
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4348($fp)

	li $v0, 1
	lw $t0, -4348($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -364
	li $t3, 4
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4352($fp)

	li $v0, 1
	lw $t0, -4352($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1572($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1576($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1580($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1584($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1588($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1592($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1596($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1600($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1604($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1608($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1612($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1616($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1620($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1624($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1628($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1632($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1636($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -476
	li $t3, 0
	li $t4, 7
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4356($fp)

	li $v0, 1
	lw $t0, -4356($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -476
	li $t3, 1
	li $t4, 7
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4360($fp)

	li $v0, 1
	lw $t0, -4360($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -476
	li $t3, 2
	li $t4, 7
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4364($fp)

	li $v0, 1
	lw $t0, -4364($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -476
	li $t3, 3
	li $t4, 7
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4368($fp)

	li $v0, 1
	lw $t0, -4368($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -476
	li $t3, 4
	li $t4, 7
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4372($fp)

	li $v0, 1
	lw $t0, -4372($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -476
	li $t3, 5
	li $t4, 7
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4376($fp)

	li $v0, 1
	lw $t0, -4376($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -476
	li $t3, 6
	li $t4, 7
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4380($fp)

	li $v0, 1
	lw $t0, -4380($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1640($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1644($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1648($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -620
	li $t3, 0
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4384($fp)

	li $v0, 1
	lw $t0, -4384($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -620
	li $t3, 1
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4388($fp)

	li $v0, 1
	lw $t0, -4388($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -620
	li $t3, 2
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4392($fp)

	li $v0, 1
	lw $t0, -4392($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -620
	li $t3, 3
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4396($fp)

	li $v0, 1
	lw $t0, -4396($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -620
	li $t3, 4
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4400($fp)

	li $v0, 1
	lw $t0, -4400($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -620
	li $t3, 5
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4404($fp)

	li $v0, 1
	lw $t0, -4404($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -620
	li $t3, 6
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4408($fp)

	li $v0, 1
	lw $t0, -4408($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -620
	li $t3, 7
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4412($fp)

	li $v0, 1
	lw $t0, -4412($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -620
	li $t3, 8
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4416($fp)

	li $v0, 1
	lw $t0, -4416($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1652($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1656($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1660($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1664($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1668($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -716
	li $t3, 0
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4420($fp)

	li $v0, 1
	lw $t0, -4420($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -716
	li $t3, 1
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4424($fp)

	li $v0, 1
	lw $t0, -4424($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -716
	li $t3, 2
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4428($fp)

	li $v0, 1
	lw $t0, -4428($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -716
	li $t3, 3
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4432($fp)

	li $v0, 1
	lw $t0, -4432($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -716
	li $t3, 4
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4436($fp)

	li $v0, 1
	lw $t0, -4436($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -716
	li $t3, 5
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4440($fp)

	li $v0, 1
	lw $t0, -4440($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1672($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1676($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1680($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -780
	li $t3, 0
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4444($fp)

	li $v0, 1
	lw $t0, -4444($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -780
	li $t3, 1
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4448($fp)

	li $v0, 1
	lw $t0, -4448($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -780
	li $t3, 2
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4452($fp)

	li $v0, 1
	lw $t0, -4452($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -780
	li $t3, 3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4456($fp)

	li $v0, 1
	lw $t0, -4456($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1684($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1688($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -940
	li $t3, 0
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4460($fp)

	li $v0, 1
	lw $t0, -4460($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -940
	li $t3, 1
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4464($fp)

	li $v0, 1
	lw $t0, -4464($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -940
	li $t3, 2
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4468($fp)

	li $v0, 1
	lw $t0, -4468($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -940
	li $t3, 3
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4472($fp)

	li $v0, 1
	lw $t0, -4472($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -940
	li $t3, 4
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4476($fp)

	li $v0, 1
	lw $t0, -4476($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -940
	li $t3, 5
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4480($fp)

	li $v0, 1
	lw $t0, -4480($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -940
	li $t3, 6
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4484($fp)

	li $v0, 1
	lw $t0, -4484($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -940
	li $t3, 7
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4488($fp)

	li $v0, 1
	lw $t0, -4488($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -940
	li $t3, 8
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4492($fp)

	li $v0, 1
	lw $t0, -4492($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -940
	li $t3, 9
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4496($fp)

	li $v0, 1
	lw $t0, -4496($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1692($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1696($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1036
	li $t3, 0
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4500($fp)

	li $v0, 1
	lw $t0, -4500($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1036
	li $t3, 1
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4504($fp)

	li $v0, 1
	lw $t0, -4504($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1036
	li $t3, 2
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4508($fp)

	li $v0, 1
	lw $t0, -4508($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1036
	li $t3, 3
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4512($fp)

	li $v0, 1
	lw $t0, -4512($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1036
	li $t3, 4
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4516($fp)

	li $v0, 1
	lw $t0, -4516($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1036
	li $t3, 5
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4520($fp)

	li $v0, 1
	lw $t0, -4520($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1068
	li $t3, 0
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4524($fp)

	li $v0, 1
	lw $t0, -4524($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1068
	li $t3, 1
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4528($fp)

	li $v0, 1
	lw $t0, -4528($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1700($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1084
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4532($fp)

	li $v0, 1
	lw $t0, -4532($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1704($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1708($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1712($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1716($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1720($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1724($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1728($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1732($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1736($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1740($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1244
	li $t3, 0
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4536($fp)

	li $v0, 1
	lw $t0, -4536($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1244
	li $t3, 1
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4540($fp)

	li $v0, 1
	lw $t0, -4540($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1244
	li $t3, 2
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4544($fp)

	li $v0, 1
	lw $t0, -4544($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1244
	li $t3, 3
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4548($fp)

	li $v0, 1
	lw $t0, -4548($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1244
	li $t3, 4
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4552($fp)

	li $v0, 1
	lw $t0, -4552($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1244
	li $t3, 5
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4556($fp)

	li $v0, 1
	lw $t0, -4556($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1244
	li $t3, 6
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4560($fp)

	li $v0, 1
	lw $t0, -4560($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1244
	li $t3, 7
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4564($fp)

	li $v0, 1
	lw $t0, -4564($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1244
	li $t3, 8
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4568($fp)

	li $v0, 1
	lw $t0, -4568($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1244
	li $t3, 9
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4572($fp)

	li $v0, 1
	lw $t0, -4572($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1744($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1748($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1752($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1340
	li $t3, 0
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4576($fp)

	li $v0, 1
	lw $t0, -4576($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1340
	li $t3, 1
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4580($fp)

	li $v0, 1
	lw $t0, -4580($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1340
	li $t3, 2
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4584($fp)

	li $v0, 1
	lw $t0, -4584($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1340
	li $t3, 3
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4588($fp)

	li $v0, 1
	lw $t0, -4588($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1340
	li $t3, 4
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4592($fp)

	li $v0, 1
	lw $t0, -4592($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1340
	li $t3, 5
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4596($fp)

	li $v0, 1
	lw $t0, -4596($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1756($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1760($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1764($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1768($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1772($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1776($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1780($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1784($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1788($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1792($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1796($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1800($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1804($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1808($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1812($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1816($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1820($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1824($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1828($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1832($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1836($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1840($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1844($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1468
	li $t3, 0
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4600($fp)

	li $v0, 1
	lw $t0, -4600($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1468
	li $t3, 1
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4604($fp)

	li $v0, 1
	lw $t0, -4604($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1468
	li $t3, 2
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4608($fp)

	li $v0, 1
	lw $t0, -4608($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1468
	li $t3, 3
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4612($fp)

	li $v0, 1
	lw $t0, -4612($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1468
	li $t3, 4
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4616($fp)

	li $v0, 1
	lw $t0, -4616($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1468
	li $t3, 5
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4620($fp)

	li $v0, 1
	lw $t0, -4620($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1468
	li $t3, 6
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4624($fp)

	li $v0, 1
	lw $t0, -4624($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1468
	li $t3, 7
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4628($fp)

	li $v0, 1
	lw $t0, -4628($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1848($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1852($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1856($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1860($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1864($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1868($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1872($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1876($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1880($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1484
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -4632($fp)

	li $v0, 1
	lw $t0, -4632($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1884($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1888($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1892($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1896($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1900($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1904($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 7124
	lw $t2, -1756($fp)
	div $t2, $t1
	mflo $t3
	li $t1, -1
	mul $t4, $t1, $t3
	li $t1, 44133
	li $t3, 0
	li $t5, 0
	sw $t1, -4640($fp)
	sw $t3, -4644($fp)
	sw $t4, -4636($fp)
	lw $t6, -1788($fp)
	bne $t6, $t5, label1079

	j label1078

label1078:
	li $t0, 1
	sw $t0, -4644($fp)

label1079:
	lw $t0, -4644($fp)
	lw $t1, -4640($fp)
	div $t1, $t0
	mflo $t2
	lw $t3, -4636($fp)
	sub $t4, $t3, $t2
	move $v0, $t4
	lw $ra, 4640($sp)
	lw $fp, 4636($sp)
	addi $sp, $sp, 4644
	jr $ra

id_lwSLqNHeHB:
	addi $sp, $sp, -3324
	sw $ra, 3320($sp)
	sw $fp, 3316($sp)
	addi $fp, $sp, 3324
	sw $a0, -12($fp)
	sw $a1, -16($fp)

	li $t0, 10921
	move $t1, $t0
	li $t0, 30826
	move $t2, $t0
	li $t0, 60940
	move $t3, $t0
	li $t0, 34921
	move $t4, $t0
	li $t0, 21934
	move $t5, $t0
	li $t0, 12941
	move $t6, $t0
	li $t0, 5814
	move $t7, $t0
	li $t0, 0
	addi $t8, $fp, -32
	li $t9, 0
	li $s0, 1
	mul $t0, $t0, $s0
	add $t0, $t0, $t9
	li $t9, 4
	mul $t0, $t0, $t9
	add $t9, $t8, $t0
	li $t0, 63774
	sw $t0, 0($t9)
	li $t8, 44859
	move $s0, $t8
	li $t8, 46345
	move $s1, $t8
	li $t8, 42544
	move $s2, $t8
	li $t8, 18413
	move $s3, $t8
	li $t8, 34245
	move $s4, $t8
	li $t8, 59634
	move $s5, $t8
	li $t8, 0
	addi $s6, $fp, -176
	li $s7, 0
	sw $s5, -772($fp)
	li $s5, 9
	mul $t8, $t8, $s5
	add $t8, $t8, $s7
	li $s5, 4
	mul $t8, $t8, $s5
	add $s5, $s6, $t8
	li $t8, 5391
	sw $t8, 0($s5)
	li $s6, 0
	addi $s7, $fp, -176
	sw $s5, -3328($fp)
	li $s5, 1
	sw $s4, -768($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 57376
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -176
	sw $s5, -3332($fp)
	li $s5, 2
	sw $s4, -3336($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 731
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -176
	sw $s5, -3340($fp)
	li $s5, 3
	sw $s4, -3344($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 40317
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -176
	sw $s5, -3348($fp)
	li $s5, 4
	sw $s4, -3352($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 42404
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -176
	sw $s5, -3356($fp)
	li $s5, 5
	sw $s4, -3360($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 39619
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -176
	sw $s5, -3364($fp)
	li $s5, 6
	sw $s4, -3368($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 16417
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -176
	sw $s5, -3372($fp)
	li $s5, 7
	sw $s4, -3376($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 40933
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -176
	sw $s5, -3380($fp)
	li $s5, 8
	sw $s4, -3384($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 38434
	sw $s4, 0($s5)
	li $s6, 48299
	move $s7, $s6
	li $s6, 1266
	sw $s7, -776($fp)
	move $s7, $s6
	li $s6, 21180
	sw $s7, -780($fp)
	move $s7, $s6
	li $s6, 27097
	sw $s7, -784($fp)
	move $s7, $s6
	li $s6, 56140
	sw $s7, -788($fp)
	move $s7, $s6
	li $s6, 7484
	sw $s7, -792($fp)
	move $s7, $s6
	li $s6, 34221
	sw $s7, -796($fp)
	move $s7, $s6
	li $s6, 34737
	sw $s7, -800($fp)
	move $s7, $s6
	li $s6, 18405
	sw $s7, -804($fp)
	move $s7, $s6
	li $s6, 65047
	sw $s7, -808($fp)
	move $s7, $s6
	li $s6, 30142
	sw $s7, -812($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -816($fp)
	addi $s7, $fp, -336
	sw $s5, -3388($fp)
	li $s5, 0
	sw $s4, -3392($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 53326
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -336
	sw $s5, -3396($fp)
	li $s5, 1
	sw $s4, -3400($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 21445
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -336
	sw $s5, -3404($fp)
	li $s5, 2
	sw $s4, -3408($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 43083
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -336
	sw $s5, -3412($fp)
	li $s5, 3
	sw $s4, -3416($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 59140
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -336
	sw $s5, -3420($fp)
	li $s5, 4
	sw $s4, -3424($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 19684
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -336
	sw $s5, -3428($fp)
	li $s5, 5
	sw $s4, -3432($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 22406
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -336
	sw $s5, -3436($fp)
	li $s5, 6
	sw $s4, -3440($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 39950
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -336
	sw $s5, -3444($fp)
	li $s5, 7
	sw $s4, -3448($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 62228
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -336
	sw $s5, -3452($fp)
	li $s5, 8
	sw $s4, -3456($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 40820
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -336
	sw $s5, -3460($fp)
	li $s5, 9
	sw $s4, -3464($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 8659
	sw $s4, 0($s5)
	li $s6, 56326
	move $s7, $s6
	li $s6, 46211
	sw $s7, -820($fp)
	move $s7, $s6
	li $s6, 500
	sw $s7, -824($fp)
	move $s7, $s6
	li $s6, 57058
	sw $s7, -828($fp)
	move $s7, $s6
	li $s6, 20992
	sw $s7, -832($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -836($fp)
	addi $s7, $fp, -480
	sw $s5, -3468($fp)
	li $s5, 0
	sw $s4, -3472($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 42904
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -480
	sw $s5, -3476($fp)
	li $s5, 1
	sw $s4, -3480($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 31141
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -480
	sw $s5, -3484($fp)
	li $s5, 2
	sw $s4, -3488($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 37409
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -480
	sw $s5, -3492($fp)
	li $s5, 3
	sw $s4, -3496($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 18301
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -480
	sw $s5, -3500($fp)
	li $s5, 4
	sw $s4, -3504($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 4039
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -480
	sw $s5, -3508($fp)
	li $s5, 5
	sw $s4, -3512($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 20173
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -480
	sw $s5, -3516($fp)
	li $s5, 6
	sw $s4, -3520($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 19567
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -480
	sw $s5, -3524($fp)
	li $s5, 7
	sw $s4, -3528($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 25219
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -480
	sw $s5, -3532($fp)
	li $s5, 8
	sw $s4, -3536($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 47270
	sw $s4, 0($s5)
	li $s6, 10172
	move $s7, $s6
	li $s6, 32703
	sw $s7, -840($fp)
	move $s7, $s6
	li $s6, 15955
	sw $s7, -844($fp)
	move $s7, $s6
	li $s6, 44909
	sw $s7, -848($fp)
	move $s7, $s6
	li $s6, 51109
	sw $s7, -852($fp)
	move $s7, $s6
	li $s6, 15466
	sw $s7, -856($fp)
	move $s7, $s6
	li $s6, 9515
	sw $s7, -860($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -864($fp)
	addi $s7, $fp, -624
	sw $s5, -3540($fp)
	li $s5, 0
	sw $s4, -3544($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 38899
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -624
	sw $s5, -3548($fp)
	li $s5, 1
	sw $s4, -3552($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 36911
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -624
	sw $s5, -3556($fp)
	li $s5, 2
	sw $s4, -3560($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 52599
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -624
	sw $s5, -3564($fp)
	li $s5, 3
	sw $s4, -3568($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 32504
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -624
	sw $s5, -3572($fp)
	li $s5, 4
	sw $s4, -3576($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 56595
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -624
	sw $s5, -3580($fp)
	li $s5, 5
	sw $s4, -3584($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 9469
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -624
	sw $s5, -3588($fp)
	li $s5, 6
	sw $s4, -3592($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 6918
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -624
	sw $s5, -3596($fp)
	li $s5, 7
	sw $s4, -3600($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 53288
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -624
	sw $s5, -3604($fp)
	li $s5, 8
	sw $s4, -3608($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 50289
	sw $s4, 0($s5)
	li $s6, 15577
	move $s7, $s6
	li $s6, 0
	sw $s7, -868($fp)
	addi $s7, $fp, -720
	sw $s5, -3612($fp)
	li $s5, 0
	sw $s4, -3616($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 44078
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -720
	sw $s5, -3620($fp)
	li $s5, 1
	sw $s4, -3624($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 30965
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -720
	sw $s5, -3628($fp)
	li $s5, 2
	sw $s4, -3632($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 16077
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -720
	sw $s5, -3636($fp)
	li $s5, 3
	sw $s4, -3640($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 35600
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -720
	sw $s5, -3644($fp)
	li $s5, 4
	sw $s4, -3648($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 51957
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -720
	sw $s5, -3652($fp)
	li $s5, 5
	sw $s4, -3656($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 58982
	sw $s4, 0($s5)
	li $s6, 1206
	move $s7, $s6
	sw $t1, -724($fp)
	sw $t2, -728($fp)
	sw $t3, -732($fp)
	sw $t4, -736($fp)
	sw $t5, -740($fp)
	sw $t6, -744($fp)
	sw $t7, -748($fp)
	sw $s0, -752($fp)
	sw $s1, -756($fp)
	sw $s2, -760($fp)
	sw $s3, -764($fp)
	sw $s7, -872($fp)

label1080:
	li $t0, 0
	lw $t1, -792($fp)
	bne $t1, $t0, label1081

	j label1082

label1081:
	li $t0, -1
	lw $t1, -784($fp)
	mul $t2, $t0, $t1
	lw $t0, -748($fp)
	div $t0, $t2
	mflo $t3
	li $t2, 0
	bne $t3, $t2, label1083

	j label1084

label1083:

label1086:
	li $t0, 0
	addi $t1, $fp, -176
	li $t2, 0
	li $t3, 0
	sw $t0, -876($fp)
	sw $t1, -880($fp)
	sw $t2, -884($fp)
	lw $t4, -792($fp)
	bne $t4, $t3, label1091

	j label1090

label1091:
	li $t0, 0
	lw $t1, -808($fp)
	bne $t1, $t0, label1089

	j label1090

label1089:
	li $t0, 1
	sw $t0, -884($fp)

label1090:
	li $t0, 9
	lw $t1, -876($fp)
	mul $t1, $t1, $t0
	lw $t0, -884($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -880($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t3, -836($fp)
	sub $t5, $t3, $t4
	li $t4, 0
	sw $t1, -876($fp)
	bne $t5, $t4, label1087

	j label1088

label1087:
	li $t0, 0
	li $t1, 23831
	li $t2, 11747
	add $t3, $t1, $t2
	sw $t0, -888($fp)
	lw $t1, -796($fp)
	ble $t1, $t3, label1094

	j label1093

label1094:
	li $t0, 44005
	lw $t1, -784($fp)
	div $t1, $t0
	mflo $t2
	li $t0, 0
	bne $t2, $t0, label1092

	j label1093

label1092:
	li $t0, 1
	sw $t0, -888($fp)

label1093:
	j label1086

label1088:
	j label1085

label1084:
	li $t0, 31315
	move $t1, $t0
	li $t0, 30465
	move $t2, $t0
	li $t0, 0
	addi $t3, $fp, -920
	li $t4, 0
	li $t5, 2
	mul $t0, $t0, $t5
	add $t0, $t0, $t4
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t3, $t0
	li $t0, 25738
	sw $t0, 0($t4)
	li $t3, 0
	addi $t5, $fp, -920
	li $t6, 1
	li $t7, 2
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 41487
	sw $t3, 0($t6)
	li $t5, 0
	addi $t7, $fp, -968
	li $t8, 0
	li $t9, 3
	mul $t5, $t5, $t9
	add $t5, $t5, $t8
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t7, $t5
	li $t5, 63168
	sw $t5, 0($t8)
	li $t7, 0
	addi $t9, $fp, -968
	li $s0, 1
	li $s1, 3
	mul $t7, $t7, $s1
	add $t7, $t7, $s0
	li $s0, 4
	mul $t7, $t7, $s0
	add $s0, $t9, $t7
	li $t7, 41693
	sw $t7, 0($s0)
	li $t9, 0
	addi $s1, $fp, -968
	li $s2, 2
	li $s3, 3
	mul $t9, $t9, $s3
	add $t9, $t9, $s2
	li $s2, 4
	mul $t9, $t9, $s2
	add $s2, $s1, $t9
	li $t9, 20860
	sw $t9, 0($s2)
	li $s1, 48741
	move $s3, $s1
	li $s1, 57159
	move $s4, $s1
	li $s1, 30376
	move $s5, $s1
	li $s1, 22105
	move $s6, $s1
	li $s1, 28534
	move $s7, $s1
	li $s1, 17439
	sw $s7, -1396($fp)
	move $s7, $s1
	li $s1, 0
	sw $s7, -1400($fp)
	addi $s7, $fp, -1096
	sw $s6, -1392($fp)
	li $s6, 0
	sw $s5, -1388($fp)
	li $s5, 8
	mul $s1, $s1, $s5
	add $s1, $s1, $s6
	li $s5, 4
	mul $s1, $s1, $s5
	add $s5, $s7, $s1
	li $s1, 54609
	sw $s1, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1096
	sw $s5, -3660($fp)
	li $s5, 1
	sw $s4, -1384($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 19594
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1096
	sw $s5, -3664($fp)
	li $s5, 2
	sw $s4, -3668($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 26908
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1096
	sw $s5, -3672($fp)
	li $s5, 3
	sw $s4, -3676($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 61527
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1096
	sw $s5, -3680($fp)
	li $s5, 4
	sw $s4, -3684($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 7346
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1096
	sw $s5, -3688($fp)
	li $s5, 5
	sw $s4, -3692($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 11662
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1096
	sw $s5, -3696($fp)
	li $s5, 6
	sw $s4, -3700($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 11568
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1096
	sw $s5, -3704($fp)
	li $s5, 7
	sw $s4, -3708($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 51424
	sw $s4, 0($s5)
	li $s6, 42627
	move $s7, $s6
	li $s6, 0
	sw $s7, -1404($fp)
	addi $s7, $fp, -1128
	sw $s5, -3712($fp)
	li $s5, 0
	sw $s4, -3716($fp)
	li $s4, 2
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 27646
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1128
	sw $s5, -3720($fp)
	li $s5, 1
	sw $s4, -3724($fp)
	li $s4, 2
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 21489
	sw $s4, 0($s5)
	li $s6, 29048
	move $s7, $s6
	li $s6, 21092
	sw $s7, -1408($fp)
	move $s7, $s6
	li $s6, 22695
	sw $s7, -1412($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -1416($fp)
	addi $s7, $fp, -1208
	sw $s5, -3728($fp)
	li $s5, 0
	sw $s4, -3732($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 52879
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1208
	sw $s5, -3736($fp)
	li $s5, 1
	sw $s4, -3740($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 32839
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1208
	sw $s5, -3744($fp)
	li $s5, 2
	sw $s4, -3748($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 27940
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1208
	sw $s5, -3752($fp)
	li $s5, 3
	sw $s4, -3756($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 31347
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1208
	sw $s5, -3760($fp)
	li $s5, 4
	sw $s4, -3764($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 64154
	sw $s4, 0($s5)
	li $s6, 58405
	move $s7, $s6
	li $s6, 57085
	sw $s7, -1420($fp)
	move $s7, $s6
	li $s6, 40105
	sw $s7, -1424($fp)
	move $s7, $s6
	li $s6, 56038
	sw $s7, -1428($fp)
	move $s7, $s6
	li $s6, 33242
	sw $s7, -1432($fp)
	move $s7, $s6
	li $s6, 60966
	sw $s7, -1436($fp)
	move $s7, $s6
	li $s6, 39243
	sw $s7, -1440($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -1444($fp)
	addi $s7, $fp, -1272
	sw $s5, -3768($fp)
	li $s5, 0
	sw $s4, -3772($fp)
	li $s4, 4
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 24865
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1272
	sw $s5, -3776($fp)
	li $s5, 1
	sw $s4, -3780($fp)
	li $s4, 4
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 25806
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1272
	sw $s5, -3784($fp)
	li $s5, 2
	sw $s4, -3788($fp)
	li $s4, 4
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 61348
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1272
	sw $s5, -3792($fp)
	li $s5, 3
	sw $s4, -3796($fp)
	li $s4, 4
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 53400
	sw $s4, 0($s5)
	li $s6, 43245
	move $s7, $s6
	li $s6, 50421
	sw $s7, -1448($fp)
	move $s7, $s6
	li $s6, 7458
	sw $s7, -1452($fp)
	move $s7, $s6
	li $s6, 4617
	sw $s7, -1456($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -1460($fp)
	addi $s7, $fp, -1368
	sw $s5, -3800($fp)
	li $s5, 0
	sw $s4, -3804($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 46412
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1368
	sw $s5, -3808($fp)
	li $s5, 1
	sw $s4, -3812($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 14804
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1368
	sw $s5, -3816($fp)
	li $s5, 2
	sw $s4, -3820($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 16279
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1368
	sw $s5, -3824($fp)
	li $s5, 3
	sw $s4, -3828($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 57981
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1368
	sw $s5, -3832($fp)
	li $s5, 4
	sw $s4, -3836($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 692
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1368
	sw $s5, -3840($fp)
	li $s5, 5
	sw $s4, -3844($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 58906
	sw $s4, 0($s5)
	sw $t1, -1372($fp)
	sw $t2, -1376($fp)
	sw $s3, -1380($fp)

label1095:
	li $t0, 0
	addi $t1, $fp, -32
	li $t2, 0
	li $t3, 0
	addi $t4, $fp, -968
	li $t5, 0
	li $t6, 3
	mul $t3, $t3, $t6
	add $t3, $t3, $t5
	li $t5, 4
	mul $t3, $t3, $t5
	add $t5, $t4, $t3
	lw $t3, 0($t5)
	sw $t0, -1464($fp)
	sw $t1, -1468($fp)
	sw $t2, -1472($fp)
	lw $t4, -1384($fp)
	ble $t3, $t4, label1098

	j label1099

label1098:
	li $t0, 1
	sw $t0, -1472($fp)

label1099:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1472($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -1476($fp)

	lw $t0, -868($fp)
	lw $t1, -1476($fp)
	mul $t2, $t1, $t0
	li $t3, 1
	lw $t4, -1464($fp)
	mul $t4, $t4, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t3, $t3, $t2
	lw $t2, -1468($fp)
	add $t4, $t2, $t3
	li $t5, 22419
	lw $t6, 0($t4)
	sw $t3, -1464($fp)
	bne $t6, $t5, label1096

	j label1097

label1096:
	li $t0, 41183
	li $t1, 44876
	div $t0, $t1
	mflo $t2
	sw $t2, -1480($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1480($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -1484($fp)

	li $t0, 0
	lw $t1, -1484($fp)
	bne $t1, $t0, label1100

	j label1101

label1100:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -1488($fp)
	sw $t1, -1492($fp)
	lw $t3, -16($fp)
	bne $t3, $t2, label1109

	j label1108

label1108:
	li $t0, 1
	sw $t0, -1492($fp)

label1109:
	li $t0, 9762
	lw $t1, -1492($fp)
	mul $t2, $t1, $t0
	li $t0, 8486
	beq $t2, $t0, label1106

	j label1107

label1106:
	li $t0, 1
	sw $t0, -1488($fp)

label1107:
	lw $t1, -1488($fp)
	move $t0, $t1
	li $t2, 0
	sw $t0, -724($fp)
	bne $t0, $t2, label1103

	j label1104

label1103:
	li $t0, 0
	li $t1, 0
	sw $t0, -1496($fp)
	lw $t2, -1456($fp)
	bne $t2, $t1, label1114

	j label1113

label1113:
	li $t0, 1
	sw $t0, -1496($fp)

label1114:
	li $t0, -1
	lw $t1, -1496($fp)
	mul $t2, $t0, $t1
	sw $t2, -1500($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1500($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -1504($fp)

	li $t0, 0
	lw $t1, -1504($fp)
	bne $t1, $t0, label1110

	j label1111

label1110:
	li $t0, 7281
	move $t1, $t0
	li $t0, 0
	addi $t2, $fp, -920
	li $t3, 0
	lw $t4, -728($fp)
	div $t4, $t1
	mflo $t5
	li $t6, -1
	mul $t7, $t6, $t5
	li $t5, 0
	sw $t0, -1512($fp)
	sw $t1, -1508($fp)
	sw $t2, -1516($fp)
	sw $t3, -1520($fp)
	bne $t7, $t5, label1116

	j label1115

label1115:
	li $t0, 1
	sw $t0, -1520($fp)

label1116:
	li $t0, 2
	lw $t1, -1512($fp)
	mul $t1, $t1, $t0
	lw $t0, -1520($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -1516($fp)
	add $t3, $t2, $t1
	li $t4, 0
	li $t5, 0
	addi $t6, $fp, -1368
	li $t7, 0
	li $t8, 0
	sw $t1, -1512($fp)
	sw $t4, -1524($fp)
	sw $t5, -1528($fp)
	sw $t6, -1532($fp)
	sw $t7, -1536($fp)
	lw $t9, -1404($fp)
	bne $t9, $t8, label1122

	j label1121

label1122:
	li $t0, 41110
	li $t1, 0
	bne $t0, $t1, label1120

	j label1121

label1120:
	li $t0, 1
	sw $t0, -1536($fp)

label1121:
	li $t0, 6
	lw $t1, -1528($fp)
	mul $t1, $t1, $t0
	lw $t0, -1536($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -1532($fp)
	add $t3, $t2, $t1
	li $t4, 0
	li $t5, 0
	sw $t1, -1528($fp)
	sw $t3, -1540($fp)
	sw $t4, -1544($fp)
	lw $t6, -828($fp)
	bne $t6, $t5, label1124

	j label1123

label1123:
	li $t0, 1
	sw $t0, -1544($fp)

label1124:
	lw $t1, -1540($fp)
	lw $t0, 0($t1)
	lw $t2, -1544($fp)
	sub $t3, $t0, $t2
	li $t0, 0
	bne $t3, $t0, label1119

	j label1118

label1119:
	li $t0, 0
	li $t1, -1
	lw $t2, -756($fp)
	mul $t3, $t1, $t2
	li $t1, 0
	sw $t0, -1548($fp)
	bne $t3, $t1, label1126

	j label1125

label1125:
	li $t0, 1
	sw $t0, -1548($fp)

label1126:
	li $t0, 7105
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, 150
	add $t1, $t2, $t0
	sw $t1, -1552($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1552($fp)
	move $a1, $t0
	lw $t1, -1548($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1556($fp)

	li $t0, -1
	lw $t1, -1556($fp)
	mul $t2, $t0, $t1
	li $t0, 32659
	li $t3, 47210
	mul $t4, $t0, $t3
	li $t0, 56188
	sub $t3, $t4, $t0
	sw $t2, -1560($fp)
	sw $t3, -1564($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1564($fp)
	move $a1, $t0
	lw $t1, -1560($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1568($fp)

	li $t0, 0
	lw $t1, -1568($fp)
	bne $t1, $t0, label1118

	j label1117

label1117:
	li $t0, 1
	sw $t0, -1524($fp)

label1118:
	lw $t0, -816($fp)
	lw $t1, -728($fp)
	sub $t2, $t1, $t0
	li $t3, 0
	li $t4, 366
	li $t5, -1
	mul $t6, $t5, $t4
	li $t4, 0
	sw $t3, -1572($fp)
	bne $t6, $t4, label1129

	j label1128

label1129:
	li $t0, 0
	li $t1, 0
	sw $t0, -1576($fp)
	lw $t2, -1508($fp)
	bne $t2, $t1, label1131

	j label1130

label1130:
	li $t0, 1
	sw $t0, -1576($fp)

label1131:
	lw $t0, -1576($fp)
	lw $t1, -1456($fp)
	add $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label1127

	j label1128

label1127:
	li $t0, 1
	sw $t0, -1572($fp)

label1128:
	lw $t1, -1384($fp)
	move $t0, $t1
	sw $t0, -1424($fp)
	j label1112

label1111:
	li $t0, 42640
	li $t1, 0
	bne $t0, $t1, label1132

	j label1133

label1132:
	li $t0, 29896
	move $t1, $t0
	sw $t1, -1404($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1404($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -1580($fp)

	lw $t1, -1580($fp)
	move $t0, $t1
	sw $t0, -1396($fp)
	move $v0, $t0
	lw $ra, 3320($sp)
	lw $fp, 3316($sp)
	addi $sp, $sp, 3324
	jr $ra

	j label1134

label1133:

label1135:
	li $t0, 0
	li $t1, 0
	sw $t0, -1584($fp)
	lw $t2, -860($fp)
	bne $t2, $t1, label1139

	j label1138

label1138:
	li $t0, 1
	sw $t0, -1584($fp)

label1139:
	li $t0, 25231
	lw $t1, -1584($fp)
	mul $t2, $t1, $t0
	li $t0, 0
	li $t3, 0
	addi $t4, $fp, -32
	li $t5, 0
	li $t6, 1
	mul $t3, $t3, $t6
	add $t3, $t3, $t5
	li $t5, 4
	mul $t3, $t3, $t5
	add $t5, $t4, $t3
	lw $t3, 0($t5)
	li $t4, 0
	sw $t0, -1592($fp)
	sw $t2, -1588($fp)
	bne $t3, $t4, label1141

	j label1140

label1140:
	li $t0, 1
	sw $t0, -1592($fp)

label1141:
	lw $t0, -1592($fp)
	lw $t1, -1588($fp)
	sub $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label1136

	j label1137

label1136:
	li $t0, 0
	addi $t1, $fp, -1128
	li $t2, 2
	mul $t0, $t0, $t2
	lw $t2, -784($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	li $t0, -1
	lw $t1, 0($t3)
	mul $t3, $t0, $t1
	lw $t0, -1408($fp)
	mul $t1, $t0, $t3
	li $t3, 13095
	sub $t4, $t1, $t3
	li $t1, 0
	bne $t4, $t1, label1142

	j label1143

label1142:
	li $t0, 46155
	lw $t1, -1384($fp)
	add $t2, $t0, $t1
	li $t0, 0
	li $t3, 10594
	li $t4, -1
	mul $t5, $t4, $t3
	li $t3, 20553
	sw $t0, -1600($fp)
	sw $t2, -1596($fp)
	beq $t5, $t3, label1145

	j label1146

label1145:
	li $t0, 1
	sw $t0, -1600($fp)

label1146:
	li $t0, 0
	li $t1, 50773
	li $t2, 57006
	sw $t0, -1604($fp)
	bgt $t1, $t2, label1147

	j label1148

label1147:
	li $t0, 1
	sw $t0, -1604($fp)

label1148:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1604($fp)
	move $a1, $t0
	lw $t1, -1600($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1608($fp)

	lw $t0, -1608($fp)
	lw $t1, -1380($fp)
	mul $t2, $t1, $t0
	li $t3, -1
	mul $t4, $t3, $t2
	lw $t2, -1596($fp)
	sub $t3, $t2, $t4
	j label1144

label1143:
	li $t0, 35357

label1144:
	j label1135

label1137:

label1134:

label1112:
	j label1105

label1104:
	li $t0, 0
	lw $t1, -856($fp)
	lw $t2, -1392($fp)
	mul $t3, $t2, $t1
	li $t4, 0
	sw $t0, -1612($fp)
	bne $t3, $t4, label1151

	j label1150

label1151:
	li $t0, 1516
	li $t1, 0
	bne $t0, $t1, label1149

	j label1150

label1149:
	li $t0, 1
	sw $t0, -1612($fp)

label1150:
	li $t0, 0
	addi $t1, $fp, -1208
	li $t2, 5
	mul $t0, $t0, $t2
	lw $t2, -816($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	li $t0, -1
	lw $t1, 0($t3)
	mul $t3, $t0, $t1
	lw $t1, -1392($fp)
	move $t0, $t1
	li $t4, 0
	li $t5, 0
	li $t6, 0
	li $t7, 49451
	sw $t0, -736($fp)
	sw $t3, -1616($fp)
	sw $t4, -1620($fp)
	sw $t5, -1624($fp)
	sw $t6, -1628($fp)
	lw $t8, -780($fp)
	bne $t8, $t7, label1157

	j label1158

label1157:
	li $t0, 1
	sw $t0, -1628($fp)

label1158:
	lw $t0, -1448($fp)
	lw $t1, -1628($fp)
	bne $t1, $t0, label1155

	j label1156

label1155:
	li $t0, 1
	sw $t0, -1624($fp)

label1156:
	li $t0, 0
	li $t1, 0
	sw $t0, -1632($fp)
	lw $t2, -1436($fp)
	bne $t2, $t1, label1162

	j label1160

label1162:
	li $t0, 0
	lw $t1, -1384($fp)
	bne $t1, $t0, label1161

	j label1160

label1161:
	li $t0, 36050
	li $t1, 0
	bne $t0, $t1, label1159

	j label1160

label1159:
	li $t0, 1
	sw $t0, -1632($fp)

label1160:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1392($fp)
	move $a2, $t0
	lw $t1, -1632($fp)
	move $a1, $t1
	lw $t2, -1624($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1636($fp)

	li $t0, 0
	lw $t1, -1636($fp)
	bne $t1, $t0, label1154

	j label1153

label1154:
	li $t0, 60423
	li $t1, 0
	bne $t0, $t1, label1152

	j label1153

label1152:
	li $t0, 1
	sw $t0, -1620($fp)

label1153:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1620($fp)
	move $a3, $t0
	lw $t1, -736($fp)
	move $a2, $t1
	lw $t2, -1616($fp)
	move $a1, $t2
	lw $t3, -1612($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4

label1105:
	j label1102

label1101:
	lw $t0, -1384($fp)
	lw $t1, -812($fp)
	add $t2, $t1, $t0
	li $t3, 0
	li $t4, 4006
	li $t5, -1
	mul $t6, $t5, $t4
	li $t4, 0
	sw $t2, -1640($fp)
	sw $t3, -1644($fp)
	bne $t6, $t4, label1167

	j label1166

label1166:
	li $t0, 1
	sw $t0, -1644($fp)

label1167:
	li $t0, 58231
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, 0
	li $t1, 0
	sw $t0, -1652($fp)
	sw $t2, -1648($fp)
	lw $t3, -760($fp)
	bne $t3, $t1, label1168

	j label1171

label1171:
	li $t0, 17306
	li $t1, 0
	bne $t0, $t1, label1168

	j label1170

label1170:
	li $t0, 45189
	li $t1, 0
	bne $t0, $t1, label1168

	j label1169

label1168:
	li $t0, 1
	sw $t0, -1652($fp)

label1169:
	li $t0, 37572
	lw $t1, -824($fp)
	div $t1, $t0
	mflo $t2
	li $t0, 0
	li $t3, 27068
	lw $t4, -1404($fp)
	add $t5, $t3, $t4
	li $t3, 0
	sw $t0, -1660($fp)
	sw $t2, -1656($fp)
	bne $t5, $t3, label1172

	j label1174

label1174:
	li $t0, 0
	lw $t1, -1440($fp)
	bne $t1, $t0, label1172

	j label1173

label1172:
	li $t0, 1
	sw $t0, -1660($fp)

label1173:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1660($fp)
	move $a3, $t0
	lw $t1, -1656($fp)
	move $a2, $t1
	lw $t2, -1652($fp)
	move $a1, $t2
	lw $t3, -1648($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1664($fp)

	lw $t0, -1664($fp)
	lw $t1, -1644($fp)
	add $t2, $t1, $t0
	lw $t3, -1640($fp)
	beq $t3, $t2, label1163

	j label1164

label1163:

label1175:
	li $t0, 0
	lw $t1, -1448($fp)
	lw $t2, -844($fp)
	mul $t3, $t2, $t1
	li $t4, 53676
	sw $t0, -1668($fp)
	bne $t3, $t4, label1178

	j label1179

label1178:
	li $t0, 1
	sw $t0, -1668($fp)

label1179:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1668($fp)
	move $a1, $t0
	lw $t1, -820($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1672($fp)

	li $t0, 0
	lw $t1, -1672($fp)
	bne $t1, $t0, label1176

	j label1177

label1176:
	li $t0, 44853
	li $t1, -1
	mul $t2, $t1, $t0
	lw $t0, -1420($fp)
	div $t0, $t2
	mflo $t1
	move $v0, $t1
	lw $ra, 3320($sp)
	lw $fp, 3316($sp)
	addi $sp, $sp, 3324
	jr $ra

	j label1175

label1177:
	j label1165

label1164:
	li $t0, -1
	lw $t1, -728($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label1180

	j label1181

label1180:
	li $t0, 2642
	lw $t1, -1440($fp)
	mul $t2, $t0, $t1
	sw $t2, -1676($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1676($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -1680($fp)

	li $t0, -1
	lw $t1, -1680($fp)
	mul $t2, $t0, $t1
	j label1182

label1181:
	li $t0, 0
	li $t1, 60781
	li $t2, 0
	li $t3, 0
	sw $t0, -1684($fp)
	sw $t1, -1688($fp)
	sw $t2, -1692($fp)
	lw $t4, -784($fp)
	bne $t4, $t3, label1186

	j label1185

label1185:
	li $t0, 1
	sw $t0, -1692($fp)

label1186:
	lw $t0, -1692($fp)
	lw $t1, -1688($fp)
	bne $t1, $t0, label1183

	j label1184

label1183:
	li $t0, 1
	sw $t0, -1684($fp)

label1184:

label1182:

label1165:

label1102:
	j label1095

label1097:

label1187:
	li $t0, 0
	li $t1, 45003
	li $t2, 0
	sw $t0, -1696($fp)
	bne $t1, $t2, label1191

	j label1190

label1190:
	li $t0, 1
	sw $t0, -1696($fp)

label1191:
	li $t0, -1
	lw $t1, -1696($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label1188

	j label1189

label1188:
	li $t0, 0
	addi $t1, $fp, -1776
	li $t2, 0
	li $t3, 5
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 35302
	sw $t0, 0($t2)
	li $t1, 0
	addi $t3, $fp, -1776
	li $t4, 1
	li $t5, 5
	mul $t1, $t1, $t5
	add $t1, $t1, $t4
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t3, $t1
	li $t1, 42455
	sw $t1, 0($t4)
	li $t3, 0
	addi $t5, $fp, -1776
	li $t6, 2
	li $t7, 5
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 35656
	sw $t3, 0($t6)
	li $t5, 0
	addi $t7, $fp, -1776
	li $t8, 3
	li $t9, 5
	mul $t5, $t5, $t9
	add $t5, $t5, $t8
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t7, $t5
	li $t5, 35668
	sw $t5, 0($t8)
	li $t7, 0
	addi $t9, $fp, -1776
	li $s0, 4
	li $s1, 5
	mul $t7, $t7, $s1
	add $t7, $t7, $s0
	li $s0, 4
	mul $t7, $t7, $s0
	add $s0, $t9, $t7
	li $t7, 19560
	sw $t7, 0($s0)
	li $t9, 16
	move $s1, $t9
	li $t9, 60899
	move $s2, $t9
	li $t9, 22470
	move $s3, $t9
	li $t9, 25724
	move $s4, $t9
	li $t9, 8459
	li $s5, 3090
	li $s6, -1
	mul $s7, $s6, $s5
	mul $s5, $t9, $s7
	li $t9, 0
	sw $s1, -1780($fp)
	sw $s2, -1784($fp)
	sw $s3, -1788($fp)
	sw $s4, -1792($fp)
	bne $s5, $t9, label1192

	j label1195

label1195:
	li $t0, 0
	lw $t1, -756($fp)
	bne $t1, $t0, label1192

	j label1193

label1192:
	li $t0, 0
	li $t1, 36318
	lw $t2, -816($fp)
	mul $t3, $t1, $t2
	li $t1, -1
	mul $t4, $t1, $t3
	lw $t1, -852($fp)
	add $t3, $t1, $t4
	li $t4, 0
	sw $t0, -1796($fp)
	bne $t3, $t4, label1198

	j label1197

label1198:
	li $t0, 0
	li $t1, 0
	sw $t0, -1800($fp)
	lw $t2, -1788($fp)
	bne $t2, $t1, label1200

	j label1199

label1199:
	li $t0, 1
	sw $t0, -1800($fp)

label1200:
	li $t0, 29012
	lw $t1, -1800($fp)
	sub $t2, $t1, $t0
	li $t0, 53863
	lw $t3, -1792($fp)
	sub $t4, $t0, $t3
	bgt $t2, $t4, label1196

	j label1197

label1196:
	li $t0, 1
	sw $t0, -1796($fp)

label1197:
	lw $t0, -1796($fp)
	move $v0, $t0
	lw $ra, 3320($sp)
	lw $fp, 3316($sp)
	addi $sp, $sp, 3324
	jr $ra

	j label1194

label1193:

label1201:
	li $t0, 27789
	li $t1, 0
	bne $t0, $t1, label1202

	j label1203

label1202:
	li $t0, 0
	li $t1, 0
	sw $t0, -1804($fp)
	lw $t2, -1416($fp)
	bne $t2, $t1, label1209

	j label1208

label1208:
	li $t0, 1
	sw $t0, -1804($fp)

label1209:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -480
	li $t3, 3
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	li $t2, 0
	sw $t0, -1808($fp)
	bne $t1, $t2, label1211

	j label1210

label1210:
	li $t0, 1
	sw $t0, -1808($fp)

label1211:
	lw $t0, -1808($fp)
	lw $t1, -1804($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label1204

	j label1207

label1207:
	li $t0, 11704
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, 0
	bne $t2, $t0, label1205

	j label1204

label1204:
	li $t0, 0
	lw $t1, -788($fp)
	lw $t2, -852($fp)
	mul $t3, $t2, $t1
	lw $t4, -724($fp)
	add $t5, $t4, $t3
	li $t3, 0
	sw $t0, -1812($fp)
	bne $t5, $t3, label1215

	j label1214

label1215:
	li $t0, 34884
	lw $t1, -784($fp)
	bne $t1, $t0, label1212

	j label1214

label1214:
	li $t0, 0
	addi $t1, $fp, -624
	li $t2, 0
	li $t3, 0
	sw $t0, -1816($fp)
	sw $t1, -1820($fp)
	sw $t2, -1824($fp)
	lw $t4, -752($fp)
	bne $t4, $t3, label1218

	j label1217

label1218:
	li $t0, 0
	lw $t1, -772($fp)
	bne $t1, $t0, label1216

	j label1217

label1216:
	li $t0, 1
	sw $t0, -1824($fp)

label1217:
	li $t0, 9
	lw $t1, -1816($fp)
	mul $t1, $t1, $t0
	lw $t0, -1824($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -1820($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	li $t3, 0
	sw $t1, -1816($fp)
	bne $t4, $t3, label1212

	j label1213

label1212:
	li $t0, 1
	sw $t0, -1812($fp)

label1213:
	j label1206

label1205:
	li $t0, 0
	li $t1, 50266
	li $t2, 0
	sw $t0, -1828($fp)
	bne $t1, $t2, label1220

	j label1219

label1219:
	li $t0, 1
	sw $t0, -1828($fp)

label1220:
	li $t0, 0
	addi $t1, $fp, -32
	li $t2, 0
	li $t3, 1
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, -1
	lw $t1, 0($t2)
	mul $t2, $t0, $t1
	lw $t0, -1828($fp)
	sub $t1, $t0, $t2

label1206:
	j label1201

label1203:

label1194:
	li $t0, 0
	addi $t1, $fp, -1776
	li $t2, 0
	li $t3, 5
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	sw $t0, -1832($fp)

	li $v0, 1
	lw $t0, -1832($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1776
	li $t3, 1
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1836($fp)

	li $v0, 1
	lw $t0, -1836($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1776
	li $t3, 2
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1840($fp)

	li $v0, 1
	lw $t0, -1840($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1776
	li $t3, 3
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1844($fp)

	li $v0, 1
	lw $t0, -1844($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1776
	li $t3, 4
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1848($fp)

	li $v0, 1
	lw $t0, -1848($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1780($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1784($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1788($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1792($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 2036
	li $t3, 0
	addi $t4, $fp, -1776
	li $t5, 1
	li $t6, 5
	mul $t3, $t3, $t6
	add $t3, $t3, $t5
	li $t5, 4
	mul $t3, $t3, $t5
	add $t5, $t4, $t3
	lw $t3, 0($t5)
	add $t4, $t2, $t3
	li $t2, 0
	li $t3, 29105
	move $t5, $t3
	lw $t3, -776($fp)
	lw $t6, -1784($fp)
	div $t6, $t3
	mflo $t7
	li $t8, 49040
	mul $t9, $t7, $t8
	sw $t1, -1852($fp)
	sw $t2, -1860($fp)
	sw $t4, -1856($fp)
	sw $t5, -1396($fp)
	sw $t9, -1864($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1864($fp)
	move $a1, $t0
	lw $t1, -1396($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1868($fp)

	li $t0, 0
	lw $t1, -1868($fp)
	bne $t1, $t0, label1225

	j label1224

label1224:
	li $t0, 1
	sw $t0, -1860($fp)

label1225:
	li $t0, 0
	li $t1, 0
	li $t2, 44468
	li $t3, 0
	sw $t0, -1872($fp)
	sw $t1, -1876($fp)
	bne $t2, $t3, label1229

	j label1228

label1228:
	li $t0, 1
	sw $t0, -1876($fp)

label1229:
	li $t0, 31747
	lw $t1, -1876($fp)
	bne $t1, $t0, label1226

	j label1227

label1226:
	li $t0, 1
	sw $t0, -1872($fp)

label1227:
	lw $t1, -808($fp)
	move $t0, $t1
	sw $t0, -1420($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1420($fp)
	move $a1, $t0
	lw $t1, -1872($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1880($fp)

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -624
	li $t3, 5
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	li $t2, 0
	sw $t0, -1884($fp)
	bne $t1, $t2, label1231

	j label1230

label1230:
	li $t0, 1
	sw $t0, -1884($fp)

label1231:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1412($fp)
	move $a3, $t0
	lw $t1, -1884($fp)
	move $a2, $t1
	lw $t2, -1880($fp)
	move $a1, $t2
	lw $t3, -1860($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1888($fp)

	lw $t0, -864($fp)
	lw $t1, -1888($fp)
	mul $t2, $t1, $t0
	lw $t3, -1856($fp)
	sub $t4, $t3, $t2
	li $t2, 0
	bne $t4, $t2, label1221

	j label1223

label1223:
	li $t0, 1513
	lw $t1, -1424($fp)
	div $t0, $t1
	mflo $t2
	li $t0, 0
	bne $t2, $t0, label1221

	j label1222

label1221:
	li $t0, 1
	sw $t0, -1852($fp)

label1222:
	lw $t0, -1852($fp)
	move $v0, $t0
	lw $ra, 3320($sp)
	lw $fp, 3316($sp)
	addi $sp, $sp, 3324
	jr $ra

label1232:
	li $t0, 0
	addi $t1, $fp, -624
	li $t2, 0
	addi $t3, $fp, -1128
	li $t4, 0
	li $t5, 21205
	sw $t0, -1892($fp)
	sw $t1, -1896($fp)
	sw $t2, -1900($fp)
	sw $t3, -1904($fp)
	sw $t4, -1908($fp)
	lw $t6, -728($fp)
	bgt $t5, $t6, label1235

	j label1236

label1235:
	li $t0, 1
	sw $t0, -1908($fp)

label1236:
	li $t0, 2
	lw $t1, -1900($fp)
	mul $t1, $t1, $t0
	lw $t0, -1908($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -1904($fp)
	add $t3, $t2, $t1
	li $t4, 9
	lw $t5, -1892($fp)
	mul $t5, $t5, $t4
	lw $t4, 0($t3)
	add $t3, $t5, $t4
	li $t4, 4
	mul $t3, $t3, $t4
	lw $t4, -1896($fp)
	add $t5, $t4, $t3
	lw $t6, 0($t5)
	li $t5, 0
	sw $t1, -1900($fp)
	sw $t3, -1892($fp)
	bne $t6, $t5, label1233

	j label1234

label1233:

label1237:
	li $t0, 0
	li $t1, 0
	sw $t0, -1912($fp)
	lw $t2, -1384($fp)
	bne $t2, $t1, label1240

	j label1242

label1242:
	li $t0, 0
	lw $t1, -1780($fp)
	bne $t1, $t0, label1240

	j label1241

label1240:
	li $t0, 1
	sw $t0, -1912($fp)

label1241:
	li $t0, 0
	li $t1, 59592
	li $t2, 0
	sw $t0, -1916($fp)
	bne $t1, $t2, label1245

	j label1244

label1245:
	li $t0, 0
	lw $t1, -732($fp)
	bne $t1, $t0, label1243

	j label1244

label1243:
	li $t0, 1
	sw $t0, -1916($fp)

label1244:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1916($fp)
	move $a1, $t0
	lw $t1, -1912($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1920($fp)

	li $t0, 0
	addi $t1, $fp, -624
	li $t2, -1
	lw $t3, -740($fp)
	mul $t4, $t2, $t3
	li $t2, 9
	mul $t0, $t0, $t2
	add $t0, $t0, $t4
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	lw $t1, -1920($fp)
	div $t1, $t0
	mflo $t2
	li $t0, -1
	mul $t4, $t0, $t2
	li $t0, 0
	bne $t4, $t0, label1238

	j label1239

label1238:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1776
	li $t3, 0
	addi $t4, $fp, -624
	li $t5, 4
	li $t6, 9
	mul $t3, $t3, $t6
	add $t3, $t3, $t5
	li $t5, 4
	mul $t3, $t3, $t5
	add $t5, $t4, $t3
	li $t3, 5
	mul $t1, $t1, $t3
	lw $t3, 0($t5)
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	li $t2, 0
	sw $t0, -1924($fp)
	bne $t1, $t2, label1247

	j label1246

label1246:
	li $t0, 1
	sw $t0, -1924($fp)

label1247:
	li $t0, 0
	li $t1, 59608
	li $t2, 32545
	mul $t3, $t1, $t2
	li $t1, 0
	sw $t0, -1928($fp)
	bne $t3, $t1, label1250

	j label1249

label1250:
	li $t0, 0
	lw $t1, -1792($fp)
	bne $t1, $t0, label1248

	j label1249

label1248:
	li $t0, 1
	sw $t0, -1928($fp)

label1249:
	li $t0, 0
	addi $t1, $fp, -1128
	li $t2, 0
	li $t3, 2
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	lw $t1, -1416($fp)
	sub $t2, $t0, $t1
	sw $t2, -1932($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1932($fp)
	move $a1, $t0
	lw $t1, -1928($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1936($fp)

	lw $t0, -1936($fp)
	lw $t1, -1924($fp)
	add $t2, $t1, $t0
	move $v0, $t2
	lw $ra, 3320($sp)
	lw $fp, 3316($sp)
	addi $sp, $sp, 3324
	jr $ra

	j label1237

label1239:
	j label1232

label1234:
	j label1187

label1189:
	li $t0, 0
	li $t1, 41004
	li $t2, 0
	sw $t0, -1940($fp)
	bne $t1, $t2, label1254

	j label1255

label1254:
	li $t0, 1
	sw $t0, -1940($fp)

label1255:
	li $t0, -1
	lw $t1, -1940($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label1251

	j label1252

label1251:
	li $t0, 0
	li $t1, 0
	li $t2, 789
	li $t3, 56115
	li $t4, -1
	mul $t5, $t4, $t3
	sw $t0, -1944($fp)
	sw $t1, -1948($fp)
	beq $t2, $t5, label1261

	j label1262

label1261:
	li $t0, 1
	sw $t0, -1948($fp)

label1262:
	lw $t0, -852($fp)
	lw $t1, -1948($fp)
	bgt $t1, $t0, label1259

	j label1260

label1259:
	li $t0, 1
	sw $t0, -1944($fp)

label1260:
	li $t0, 4480
	lw $t1, -852($fp)
	mul $t2, $t1, $t0
	lw $t0, -1944($fp)
	beq $t0, $t2, label1256

	j label1257

label1256:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -176
	li $t4, -1
	lw $t5, -728($fp)
	mul $t6, $t4, $t5
	li $t4, 9
	mul $t2, $t2, $t4
	add $t2, $t2, $t6
	li $t4, 4
	mul $t2, $t2, $t4
	add $t4, $t3, $t2
	li $t2, 0
	li $t3, 54652
	li $t6, 0
	sw $t0, -1952($fp)
	sw $t1, -1956($fp)
	sw $t2, -1964($fp)
	sw $t4, -1960($fp)
	bne $t3, $t6, label1268

	j label1267

label1267:
	li $t0, 1
	sw $t0, -1964($fp)

label1268:
	lw $t1, -1960($fp)
	lw $t0, 0($t1)
	lw $t2, -1964($fp)
	ble $t0, $t2, label1265

	j label1266

label1265:
	li $t0, 1
	sw $t0, -1956($fp)

label1266:
	li $t0, 18368
	lw $t1, -1956($fp)
	blt $t1, $t0, label1263

	j label1264

label1263:
	li $t0, 1
	sw $t0, -1952($fp)

label1264:
	j label1258

label1257:

label1269:
	li $t0, 0
	addi $t1, $fp, -1368
	li $t2, 0
	li $t3, 6
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 0
	li $t1, 0
	sw $t0, -1972($fp)
	sw $t2, -1968($fp)
	lw $t3, -768($fp)
	bne $t3, $t1, label1274

	j label1273

label1273:
	li $t0, 1
	sw $t0, -1972($fp)

label1274:
	lw $t1, -1968($fp)
	lw $t0, 0($t1)
	lw $t2, -1972($fp)
	div $t0, $t2
	mflo $t3
	lw $t0, -780($fp)
	ble $t3, $t0, label1270

	j label1272

label1272:
	li $t0, 30072
	lw $t1, -776($fp)
	add $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label1275

	j label1271

label1275:
	lw $t0, -800($fp)
	lw $t1, -736($fp)
	ble $t1, $t0, label1270

	j label1271

label1270:
	lw $t0, -16($fp)
	lw $t1, -12($fp)
	sub $t2, $t1, $t0
	li $t3, 38198
	add $t4, $t2, $t3
	li $t2, 0
	li $t3, 29226
	li $t5, -1
	mul $t6, $t5, $t3
	li $t3, 0
	sw $t2, -1980($fp)
	sw $t4, -1976($fp)
	bne $t6, $t3, label1281

	j label1280

label1281:
	li $t0, 45783
	li $t1, 0
	bne $t0, $t1, label1279

	j label1280

label1279:
	li $t0, 1
	sw $t0, -1980($fp)

label1280:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -32
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	li $t1, 41148
	lw $t2, 0($t3)
	sw $t0, -1984($fp)
	bne $t2, $t1, label1282

	j label1283

label1282:
	li $t0, 1
	sw $t0, -1984($fp)

label1283:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1984($fp)
	move $a2, $t0
	lw $t1, -1980($fp)
	move $a1, $t1
	lw $t2, -1976($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1988($fp)

	li $t0, 65393
	lw $t1, -1988($fp)
	bge $t1, $t0, label1276

	j label1277

label1276:
	li $t0, 0
	li $t1, 60368
	li $t2, 0
	sw $t0, -1992($fp)
	bne $t1, $t2, label1288

	j label1287

label1287:
	li $t0, 1
	sw $t0, -1992($fp)

label1288:
	lw $t1, -1992($fp)
	move $t0, $t1
	li $t2, 0
	sw $t0, -732($fp)
	bne $t0, $t2, label1284

	j label1285

label1284:
	li $t0, 0
	addi $t1, $fp, -624
	li $t2, 24652
	lw $t3, -1396($fp)
	mul $t4, $t2, $t3
	li $t2, 44326
	mul $t5, $t4, $t2
	sw $t0, -1996($fp)
	sw $t1, -2000($fp)
	sw $t5, -2004($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2004($fp)
	move $a1, $t0
	lw $t1, -1456($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -2008($fp)

	lw $t0, -796($fp)
	lw $t1, -2008($fp)
	sub $t2, $t1, $t0
	li $t3, -1
	lw $t4, -792($fp)
	mul $t5, $t3, $t4
	sub $t3, $t2, $t5
	li $t2, 9
	lw $t5, -1996($fp)
	mul $t5, $t5, $t2
	add $t2, $t5, $t3
	li $t3, 4
	mul $t2, $t2, $t3
	lw $t3, -2000($fp)
	add $t5, $t3, $t2
	lw $t6, 0($t5)
	sw $t2, -1996($fp)
	move $v0, $t6
	lw $ra, 3320($sp)
	lw $fp, 3316($sp)
	addi $sp, $sp, 3324
	jr $ra

	j label1286

label1285:
	li $t0, 26579
	move $t1, $t0
	li $t0, 0
	li $t2, 3402
	move $t3, $t2
	li $t2, 2726
	lw $t4, -728($fp)
	add $t5, $t2, $t4
	lw $t2, -1412($fp)
	add $t6, $t5, $t2
	sw $t0, -2016($fp)
	sw $t1, -2012($fp)
	sw $t3, -856($fp)
	sw $t6, -2020($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2020($fp)
	move $a1, $t0
	lw $t1, -856($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -2024($fp)

	li $t0, -1
	lw $t1, -2024($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	addi $t3, $fp, -1128
	li $t4, 1
	li $t5, 2
	mul $t0, $t0, $t5
	add $t0, $t0, $t4
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t3, $t0
	li $t0, 62318
	lw $t3, 0($t4)
	add $t4, $t3, $t0
	li $t0, 0
	li $t3, 65274
	li $t5, 0
	sw $t0, -2036($fp)
	sw $t2, -2028($fp)
	sw $t4, -2032($fp)
	bne $t3, $t5, label1292

	j label1291

label1291:
	li $t0, 1
	sw $t0, -2036($fp)

label1292:
	lw $t0, -2036($fp)
	lw $t1, -2032($fp)
	add $t2, $t1, $t0
	lw $t3, -2028($fp)
	bne $t3, $t2, label1289

	j label1290

label1289:
	li $t0, 1
	sw $t0, -2016($fp)

label1290:
	li $t0, 0
	li $t1, 65372
	li $t2, 1
	mul $t3, $t1, $t2
	li $t1, 32283
	sw $t0, -2040($fp)
	beq $t3, $t1, label1293

	j label1294

label1293:
	li $t0, 1
	sw $t0, -2040($fp)

label1294:
	li $t0, 0
	li $t1, 0
	sw $t0, -2044($fp)
	lw $t2, -2012($fp)
	bne $t2, $t1, label1296

	j label1295

label1295:
	li $t0, 1
	sw $t0, -2044($fp)

label1296:
	lw $t0, -772($fp)
	lw $t1, -2044($fp)
	div $t1, $t0
	mflo $t2
	sw $t2, -2048($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2048($fp)
	move $a1, $t0
	lw $t1, -2040($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -2052($fp)

	li $t0, 0
	li $t1, 63071
	lw $t2, -856($fp)
	add $t3, $t2, $t1
	sw $t0, -2056($fp)
	sw $t3, -2060($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2060($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -2064($fp)

	li $t0, 10650
	lw $t1, -2064($fp)
	beq $t1, $t0, label1297

	j label1298

label1297:
	li $t0, 1
	sw $t0, -2056($fp)

label1298:
	li $t0, 7751
	sw $t0, -2068($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2068($fp)
	move $a1, $t0
	lw $t1, -2056($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -2072($fp)

	li $t0, -1
	lw $t1, -2072($fp)
	mul $t2, $t0, $t1
	lw $t0, -2052($fp)
	sub $t3, $t0, $t2

label1286:
	j label1278

label1277:
	li $t0, 0
	addi $t1, $fp, -336
	li $t2, 0
	li $t3, 63861
	sw $t0, -2076($fp)
	sw $t1, -2080($fp)
	sw $t2, -2084($fp)
	lw $t4, -736($fp)
	bge $t4, $t3, label1303

	j label1304

label1303:
	li $t0, 1
	sw $t0, -2084($fp)

label1304:
	li $t0, 10
	lw $t1, -2076($fp)
	mul $t1, $t1, $t0
	lw $t0, -2084($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -2080($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	li $t3, 0
	sw $t1, -2076($fp)
	bne $t4, $t3, label1302

	j label1300

label1302:
	li $t0, 0
	li $t1, 1229
	sw $t0, -2088($fp)
	lw $t2, -736($fp)
	bgt $t1, $t2, label1305

	j label1306

label1305:
	li $t0, 1
	sw $t0, -2088($fp)

label1306:
	li $t0, 12232
	li $t1, -1
	mul $t2, $t1, $t0
	lw $t0, -2088($fp)
	bge $t0, $t2, label1299

	j label1300

label1299:

label1307:
	li $t0, 0
	lw $t1, -812($fp)
	bne $t1, $t0, label1308

	j label1309

label1308:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 52977
	li $t4, 19597
	sw $t0, -2092($fp)
	sw $t1, -2096($fp)
	sw $t2, -2100($fp)
	blt $t3, $t4, label1315

	j label1316

label1315:
	li $t0, 1
	sw $t0, -2100($fp)

label1316:
	li $t0, 15546
	lw $t1, -2100($fp)
	blt $t1, $t0, label1313

	j label1314

label1313:
	li $t0, 1
	sw $t0, -2096($fp)

label1314:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2096($fp)
	move $a1, $t0
	lw $t1, -1424($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -2104($fp)

	li $t0, 0
	li $t1, 31937
	li $t2, 0
	sw $t0, -2108($fp)
	bne $t1, $t2, label1319

	j label1318

label1319:
	li $t0, 0
	lw $t1, -836($fp)
	bne $t1, $t0, label1317

	j label1318

label1317:
	li $t0, 1
	sw $t0, -2108($fp)

label1318:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2108($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -2112($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2112($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -2116($fp)

	li $t0, 0
	li $t1, 0
	sw $t0, -2120($fp)
	lw $t2, -852($fp)
	bne $t2, $t1, label1323

	j label1321

label1323:
	li $t0, 0
	lw $t1, -1444($fp)
	bne $t1, $t0, label1322

	j label1321

label1322:
	li $t0, 0
	lw $t1, -752($fp)
	bne $t1, $t0, label1320

	j label1321

label1320:
	li $t0, 1
	sw $t0, -2120($fp)

label1321:
	li $t0, 0
	li $t1, 0
	li $t2, 49670
	li $t3, 0
	sw $t0, -2124($fp)
	sw $t1, -2128($fp)
	bne $t2, $t3, label1327

	j label1326

label1326:
	li $t0, 1
	sw $t0, -2128($fp)

label1327:
	li $t0, 53745
	lw $t1, -2128($fp)
	bge $t1, $t0, label1324

	j label1325

label1324:
	li $t0, 1
	sw $t0, -2124($fp)

label1325:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2124($fp)
	move $a2, $t0
	lw $t1, -2120($fp)
	move $a1, $t1
	lw $t2, -2116($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2132($fp)

	lw $t0, -2132($fp)
	lw $t1, -2104($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label1310

	j label1312

label1312:
	li $t0, 0
	li $t1, 0
	sw $t0, -2136($fp)
	lw $t2, -1416($fp)
	bne $t2, $t1, label1329

	j label1328

label1328:
	li $t0, 1
	sw $t0, -2136($fp)

label1329:
	li $t0, 61164
	lw $t1, -2136($fp)
	mul $t2, $t1, $t0
	li $t0, 0
	bne $t2, $t0, label1310

	j label1311

label1310:
	li $t0, 1
	sw $t0, -2092($fp)

label1311:
	lw $t0, -2092($fp)
	move $v0, $t0
	lw $ra, 3320($sp)
	lw $fp, 3316($sp)
	addi $sp, $sp, 3324
	jr $ra

	j label1307

label1309:
	j label1301

label1300:
	li $t0, 29917
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, 0
	bne $t2, $t0, label1331

	j label1333

label1333:
	li $t0, 53987
	li $t1, 26891
	sub $t2, $t0, $t1
	lw $t0, -848($fp)
	blt $t0, $t2, label1330

	j label1331

label1330:
	li $t0, 5529
	li $t1, 21724
	div $t0, $t1
	mflo $t2
	move $t0, $t2
	sw $t0, -784($fp)
	j label1332

label1331:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 0
	sw $t0, -2140($fp)
	sw $t1, -2144($fp)
	sw $t2, -2148($fp)
	lw $t4, -756($fp)
	bne $t4, $t3, label1338

	j label1340

label1340:
	li $t0, 0
	lw $t1, -740($fp)
	bne $t1, $t0, label1338

	j label1339

label1338:
	li $t0, 1
	sw $t0, -2148($fp)

label1339:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2148($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -2152($fp)

	li $t0, 0
	li $t1, 0
	sw $t0, -2156($fp)
	lw $t2, -804($fp)
	bne $t2, $t1, label1342

	j label1341

label1341:
	li $t0, 1
	sw $t0, -2156($fp)

label1342:
	lw $t0, -2156($fp)
	lw $t1, -2152($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	li $t4, 0
	sw $t2, -2160($fp)
	sw $t3, -2164($fp)
	lw $t5, -824($fp)
	bne $t5, $t4, label1344

	j label1343

label1343:
	li $t0, 1
	sw $t0, -2164($fp)

label1344:
	li $t0, -1
	lw $t1, -2164($fp)
	mul $t2, $t0, $t1
	lw $t0, -2160($fp)
	beq $t0, $t2, label1336

	j label1337

label1336:
	li $t0, 1
	sw $t0, -2144($fp)

label1337:
	li $t0, 0
	li $t1, 30182
	sw $t0, -2168($fp)
	lw $t2, -856($fp)
	beq $t1, $t2, label1347

	j label1346

label1347:
	li $t0, 0
	lw $t1, -12($fp)
	bne $t1, $t0, label1345

	j label1346

label1345:
	li $t0, 1
	sw $t0, -2168($fp)

label1346:
	li $t0, 32634
	lw $t1, -800($fp)
	sub $t2, $t1, $t0
	li $t0, 0
	li $t3, 0
	li $t4, 48302
	li $t5, 33584
	sw $t0, -2176($fp)
	sw $t2, -2172($fp)
	sw $t3, -2180($fp)
	bne $t4, $t5, label1350

	j label1351

label1350:
	li $t0, 1
	sw $t0, -2180($fp)

label1351:
	li $t0, 35360
	lw $t1, -2180($fp)
	beq $t1, $t0, label1348

	j label1349

label1348:
	li $t0, 1
	sw $t0, -2176($fp)

label1349:
	li $t0, 10859
	lw $t1, -1432($fp)
	mul $t2, $t1, $t0
	lw $t0, -1392($fp)
	div $t2, $t0
	mflo $t3
	lw $t4, -1384($fp)
	move $t2, $t4
	sw $t2, -1448($fp)
	sw $t3, -2184($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1448($fp)
	move $a3, $t0
	lw $t1, -2184($fp)
	move $a2, $t1
	lw $t2, -2176($fp)
	move $a1, $t2
	lw $t3, -2172($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2188($fp)

	li $t0, 0
	li $t1, -1
	lw $t2, -844($fp)
	mul $t3, $t1, $t2
	li $t1, 0
	sw $t0, -2192($fp)
	bne $t3, $t1, label1353

	j label1352

label1352:
	li $t0, 1
	sw $t0, -2192($fp)

label1353:
	li $t0, 0
	li $t1, 58191
	li $t2, -1
	mul $t3, $t2, $t1
	sw $t0, -2196($fp)
	lw $t1, -780($fp)
	beq $t3, $t1, label1354

	j label1355

label1354:
	li $t0, 1
	sw $t0, -2196($fp)

label1355:
	li $t0, 32142
	sw $t0, -2200($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2200($fp)
	move $a1, $t0
	lw $t1, -2196($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -2204($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2204($fp)
	move $a2, $t0
	lw $t1, -2192($fp)
	move $a1, $t1
	lw $t2, -2188($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2208($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2208($fp)
	move $a1, $t0
	lw $t1, -2168($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -2212($fp)

	lw $t0, -2212($fp)
	lw $t1, -2144($fp)
	ble $t1, $t0, label1334

	j label1335

label1334:
	li $t0, 1
	sw $t0, -2140($fp)

label1335:

label1332:

label1301:

label1278:
	j label1269

label1271:

label1258:
	j label1253

label1252:

label1356:
	li $t0, 10598
	li $t1, -1
	mul $t2, $t1, $t0
	lw $t0, -820($fp)
	mul $t1, $t0, $t2
	li $t2, 0
	bne $t1, $t2, label1357

	j label1358

label1357:
	li $t0, 0
	addi $t1, $fp, -920
	li $t2, 0
	li $t3, 58027
	sw $t0, -2216($fp)
	sw $t1, -2220($fp)
	sw $t2, -2224($fp)
	lw $t4, -1416($fp)
	blt $t3, $t4, label1362

	j label1363

label1362:
	li $t0, 1
	sw $t0, -2224($fp)

label1363:
	li $t0, 2
	lw $t1, -2216($fp)
	mul $t1, $t1, $t0
	lw $t0, -2224($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -2220($fp)
	add $t3, $t2, $t1
	li $t4, 0
	addi $t5, $fp, -1128
	lw $t6, -1428($fp)
	lw $t7, -772($fp)
	div $t7, $t6
	mflo $t8
	li $t9, 2
	mul $t4, $t4, $t9
	add $t4, $t4, $t8
	li $t8, 4
	mul $t4, $t4, $t8
	add $t8, $t5, $t4
	lw $t4, 0($t8)
	lw $t5, 0($t3)
	mul $t3, $t5, $t4
	li $t4, -1
	mul $t5, $t4, $t3
	li $t3, 0
	sw $t1, -2216($fp)
	bne $t5, $t3, label1359

	j label1360

label1359:

label1364:
	lw $t0, -1404($fp)
	lw $t1, -1384($fp)
	add $t2, $t1, $t0
	lw $t3, -768($fp)
	bne $t3, $t2, label1365

	j label1366

label1365:

label1367:
	li $t0, 0
	li $t1, -1
	lw $t2, -1432($fp)
	mul $t3, $t1, $t2
	li $t1, 0
	sw $t0, -2228($fp)
	bne $t3, $t1, label1372

	j label1371

label1372:
	li $t0, 0
	lw $t1, -852($fp)
	bne $t1, $t0, label1370

	j label1371

label1370:
	li $t0, 1
	sw $t0, -2228($fp)

label1371:
	li $t0, 22996
	lw $t1, -760($fp)
	mul $t2, $t1, $t0
	li $t0, 42881
	mul $t3, $t2, $t0
	li $t0, -1
	lw $t2, -868($fp)
	mul $t4, $t0, $t2
	lw $t0, -1372($fp)
	sub $t5, $t4, $t0
	li $t4, 0
	li $t6, 0
	sw $t3, -2232($fp)
	sw $t4, -2240($fp)
	sw $t5, -2236($fp)
	lw $t7, -1452($fp)
	bne $t7, $t6, label1373

	j label1374

label1373:
	li $t0, 1
	sw $t0, -2240($fp)

label1374:
	lw $t1, -824($fp)
	move $t0, $t1
	sw $t0, -836($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -836($fp)
	move $a3, $t0
	lw $t1, -752($fp)
	move $a2, $t1
	lw $t2, -2240($fp)
	move $a1, $t2
	lw $t3, -2236($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2244($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2244($fp)
	move $a2, $t0
	lw $t1, -2232($fp)
	move $a1, $t1
	lw $t2, -2228($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2248($fp)

	li $t0, -1
	lw $t1, -2248($fp)
	mul $t2, $t0, $t1
	li $t0, -1
	mul $t3, $t0, $t2
	li $t0, -1
	mul $t2, $t0, $t3
	li $t0, 0
	bne $t2, $t0, label1368

	j label1369

label1368:

label1375:
	lw $t0, -1396($fp)
	lw $t1, -824($fp)
	mul $t2, $t1, $t0
	li $t3, -1
	mul $t4, $t3, $t2
	li $t2, 55562
	li $t3, 33647
	mul $t5, $t2, $t3
	add $t2, $t4, $t5
	li $t3, 0
	li $t4, 0
	sw $t2, -2252($fp)
	sw $t3, -2256($fp)
	lw $t5, -1416($fp)
	bne $t5, $t4, label1380

	j label1379

label1379:
	li $t0, 1
	sw $t0, -2256($fp)

label1380:
	lw $t0, -2256($fp)
	lw $t1, -2252($fp)
	beq $t1, $t0, label1376

	j label1378

label1378:
	li $t0, 50633
	lw $t1, -728($fp)
	add $t2, $t0, $t1
	lw $t0, -752($fp)
	blt $t2, $t0, label1381

	j label1377

label1381:
	li $t0, 53887
	lw $t1, -1376($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label1376

	j label1377

label1376:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 0
	li $t4, 34876
	li $t5, 0
	sw $t0, -2260($fp)
	sw $t1, -2264($fp)
	sw $t2, -2268($fp)
	sw $t3, -2272($fp)
	bne $t4, $t5, label1390

	j label1389

label1389:
	li $t0, 1
	sw $t0, -2272($fp)

label1390:
	lw $t0, -1384($fp)
	lw $t1, -2272($fp)
	add $t2, $t1, $t0
	lw $t3, -728($fp)
	beq $t2, $t3, label1387

	j label1388

label1387:
	li $t0, 1
	sw $t0, -2268($fp)

label1388:
	lw $t0, -800($fp)
	lw $t1, -2268($fp)
	blt $t1, $t0, label1385

	j label1386

label1385:
	li $t0, 1
	sw $t0, -2264($fp)

label1386:
	li $t0, 62865
	li $t1, 41329
	sub $t2, $t0, $t1
	lw $t0, -2264($fp)
	beq $t0, $t2, label1384

	j label1383

label1384:
	li $t0, 0
	addi $t1, $fp, -1096
	li $t2, 8
	mul $t0, $t0, $t2
	lw $t2, -12($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	li $t0, 54474
	li $t1, -1
	mul $t4, $t1, $t0
	lw $t0, 0($t3)
	blt $t0, $t4, label1382

	j label1383

label1382:
	li $t0, 1
	sw $t0, -2260($fp)

label1383:
	j label1375

label1377:
	j label1367

label1369:
	j label1364

label1366:
	j label1361

label1360:
	li $t0, 0
	addi $t1, $fp, -1368
	li $t2, 0
	li $t3, 0
	sw $t0, -2276($fp)
	sw $t1, -2280($fp)
	sw $t2, -2284($fp)
	lw $t4, -852($fp)
	bne $t4, $t3, label1396

	j label1395

label1395:
	li $t0, 1
	sw $t0, -2284($fp)

label1396:
	li $t0, 6
	lw $t1, -2276($fp)
	mul $t1, $t1, $t0
	lw $t0, -2284($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -2280($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	li $t3, 0
	sw $t1, -2276($fp)
	bne $t4, $t3, label1394

	j label1392

label1394:
	li $t0, 0
	li $t1, 12875
	lw $t2, -744($fp)
	sub $t3, $t2, $t1
	li $t1, 0
	sw $t0, -2288($fp)
	bne $t3, $t1, label1399

	j label1398

label1399:
	li $t0, 7730
	li $t1, 0
	bne $t0, $t1, label1397

	j label1398

label1397:
	li $t0, 1
	sw $t0, -2288($fp)

label1398:
	li $t0, 0
	addi $t1, $fp, -1272
	li $t2, 4
	mul $t0, $t0, $t2
	lw $t2, -1388($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	li $t0, -1
	lw $t1, 0($t3)
	mul $t3, $t0, $t1
	li $t0, 38608
	li $t1, -1
	mul $t4, $t1, $t0
	li $t0, -1
	mul $t1, $t0, $t4
	sw $t1, -2296($fp)
	sw $t3, -2292($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2296($fp)
	move $a2, $t0
	lw $t1, -2292($fp)
	move $a1, $t1
	lw $t2, -2288($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2300($fp)

	li $t0, 0
	addi $t1, $fp, -1272
	li $t2, 4
	mul $t0, $t0, $t2
	lw $t2, -744($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	lw $t1, -2300($fp)
	mul $t3, $t1, $t0
	li $t0, 0
	bne $t3, $t0, label1391

	j label1392

label1391:
	li $t0, 1084
	li $t1, -1
	mul $t2, $t1, $t0
	lw $t0, -756($fp)
	sub $t1, $t2, $t0
	sw $t1, -2304($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1452($fp)
	move $a1, $t0
	lw $t1, -2304($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -2308($fp)

	li $t0, 0
	lw $t1, -2308($fp)
	bne $t1, $t0, label1400

	j label1403

label1403:
	li $t0, 0
	lw $t1, -804($fp)
	bne $t1, $t0, label1400

	j label1401

label1400:

label1404:
	li $t0, 3358
	lw $t1, -788($fp)
	lw $t2, -1400($fp)
	add $t3, $t2, $t1
	li $t4, -1
	lw $t5, -1384($fp)
	mul $t6, $t4, $t5
	sw $t0, -2312($fp)
	sw $t3, -2316($fp)
	sw $t6, -2320($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2320($fp)
	move $a2, $t0
	lw $t1, -2316($fp)
	move $a1, $t1
	lw $t2, -2312($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2324($fp)

	lw $t1, -2324($fp)
	move $t0, $t1
	li $t2, 0
	sw $t0, -736($fp)
	bne $t0, $t2, label1405

	j label1406

label1405:
	li $t0, 0
	li $t1, 0
	sw $t0, -2328($fp)
	lw $t2, -736($fp)
	bne $t2, $t1, label1409

	j label1408

label1409:
	li $t0, 0
	lw $t1, -860($fp)
	bne $t1, $t0, label1407

	j label1408

label1407:
	li $t0, 1
	sw $t0, -2328($fp)

label1408:
	lw $t1, -2328($fp)
	move $t0, $t1
	move $t2, $t0
	sw $t0, -856($fp)
	sw $t2, -756($fp)
	move $v0, $t2
	lw $ra, 3320($sp)
	lw $fp, 3316($sp)
	addi $sp, $sp, 3324
	jr $ra

	j label1404

label1406:
	j label1402

label1401:
	lw $t1, -1460($fp)
	move $t0, $t1
	sw $t0, -848($fp)
	move $v0, $t0
	lw $ra, 3320($sp)
	lw $fp, 3316($sp)
	addi $sp, $sp, 3324
	jr $ra

label1402:
	j label1393

label1392:
	li $t0, 0
	addi $t1, $fp, -2472
	li $t2, 0
	li $t3, 9
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 2989
	sw $t0, 0($t2)
	li $t1, 0
	addi $t3, $fp, -2472
	li $t4, 1
	li $t5, 9
	mul $t1, $t1, $t5
	add $t1, $t1, $t4
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t3, $t1
	li $t1, 55071
	sw $t1, 0($t4)
	li $t3, 0
	addi $t5, $fp, -2472
	li $t6, 2
	li $t7, 9
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 30249
	sw $t3, 0($t6)
	li $t5, 0
	addi $t7, $fp, -2472
	li $t8, 3
	li $t9, 9
	mul $t5, $t5, $t9
	add $t5, $t5, $t8
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t7, $t5
	li $t5, 8519
	sw $t5, 0($t8)
	li $t7, 0
	addi $t9, $fp, -2472
	li $s0, 4
	li $s1, 9
	mul $t7, $t7, $s1
	add $t7, $t7, $s0
	li $s0, 4
	mul $t7, $t7, $s0
	add $s0, $t9, $t7
	li $t7, 43380
	sw $t7, 0($s0)
	li $t9, 0
	addi $s1, $fp, -2472
	li $s2, 5
	li $s3, 9
	mul $t9, $t9, $s3
	add $t9, $t9, $s2
	li $s2, 4
	mul $t9, $t9, $s2
	add $s2, $s1, $t9
	li $t9, 51972
	sw $t9, 0($s2)
	li $s1, 0
	addi $s3, $fp, -2472
	li $s4, 6
	li $s5, 9
	mul $s1, $s1, $s5
	add $s1, $s1, $s4
	li $s4, 4
	mul $s1, $s1, $s4
	add $s4, $s3, $s1
	li $s1, 38701
	sw $s1, 0($s4)
	li $s3, 0
	addi $s5, $fp, -2472
	li $s6, 7
	li $s7, 9
	mul $s3, $s3, $s7
	add $s3, $s3, $s6
	li $s6, 4
	mul $s3, $s3, $s6
	add $s6, $s5, $s3
	li $s3, 10478
	sw $s3, 0($s6)
	li $s5, 0
	addi $s7, $fp, -2472
	sw $s6, -3848($fp)
	li $s6, 8
	sw $s4, -3852($fp)
	li $s4, 9
	mul $s5, $s5, $s4
	add $s4, $s5, $s6
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 34739
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -624
	sw $s5, -3856($fp)
	li $s5, 7
	sw $s4, -3860($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, -1
	lw $s6, 0($s5)
	mul $s5, $s4, $s6
	move $s4, $s5
	li $s5, 0
	li $s6, 0
	addi $s7, $fp, -968
	sw $s7, -2484($fp)
	li $s7, 0
	sw $s7, -2488($fp)
	li $s7, 0
	sw $s4, -788($fp)
	sw $s5, -2476($fp)
	sw $s6, -2480($fp)
	sw $s6, -2480($fp)
	lw $s6, -756($fp)
	bne $s6, $s7, label1414

	j label1413

label1413:
	li $t0, 1
	sw $t0, -2488($fp)

label1414:
	li $t0, 3
	lw $t1, -2480($fp)
	mul $t1, $t1, $t0
	lw $t0, -2488($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -2484($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t3, -844($fp)
	sub $t5, $t4, $t3
	li $t4, 0
	sw $t1, -2480($fp)
	bne $t5, $t4, label1412

	j label1411

label1412:
	li $t0, 0
	addi $t1, $fp, -2472
	li $t2, 9
	mul $t0, $t0, $t2
	lw $t2, -732($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	li $t0, -1
	lw $t1, 0($t3)
	mul $t3, $t0, $t1
	li $t0, -1
	mul $t1, $t0, $t3
	li $t0, 0
	bne $t1, $t0, label1410

	j label1411

label1410:
	li $t0, 1
	sw $t0, -2476($fp)

label1411:

label1393:

label1361:
	j label1356

label1358:

label1253:

label1085:
	j label1080

label1082:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -720
	li $t3, 0
	li $t4, 45598
	li $t5, 64940
	sw $t0, -2492($fp)
	sw $t1, -2496($fp)
	sw $t2, -2500($fp)
	sw $t3, -2504($fp)
	bge $t4, $t5, label1417

	j label1418

label1417:
	li $t0, 1
	sw $t0, -2504($fp)

label1418:
	li $t0, 6
	lw $t1, -2496($fp)
	mul $t1, $t1, $t0
	lw $t0, -2504($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -2500($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	li $t3, 0
	sw $t1, -2496($fp)
	bne $t4, $t3, label1416

	j label1415

label1415:
	li $t0, 1
	sw $t0, -2492($fp)

label1416:
	li $t0, -1
	lw $t1, -2492($fp)
	mul $t2, $t0, $t1

	li $v0, 1
	lw $t0, -724($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -728($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -732($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -736($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -740($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -744($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -748($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -32
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2508($fp)

	li $v0, 1
	lw $t0, -2508($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -752($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -756($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -760($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -764($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -768($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -772($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -176
	li $t3, 0
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2512($fp)

	li $v0, 1
	lw $t0, -2512($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -176
	li $t3, 1
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2516($fp)

	li $v0, 1
	lw $t0, -2516($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -176
	li $t3, 2
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2520($fp)

	li $v0, 1
	lw $t0, -2520($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -176
	li $t3, 3
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2524($fp)

	li $v0, 1
	lw $t0, -2524($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -176
	li $t3, 4
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2528($fp)

	li $v0, 1
	lw $t0, -2528($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -176
	li $t3, 5
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2532($fp)

	li $v0, 1
	lw $t0, -2532($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -176
	li $t3, 6
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2536($fp)

	li $v0, 1
	lw $t0, -2536($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -176
	li $t3, 7
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2540($fp)

	li $v0, 1
	lw $t0, -2540($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -176
	li $t3, 8
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2544($fp)

	li $v0, 1
	lw $t0, -2544($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -776($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -780($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -784($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -788($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -792($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -796($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -800($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -804($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -808($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -812($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -816($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -336
	li $t3, 0
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2548($fp)

	li $v0, 1
	lw $t0, -2548($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -336
	li $t3, 1
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2552($fp)

	li $v0, 1
	lw $t0, -2552($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -336
	li $t3, 2
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2556($fp)

	li $v0, 1
	lw $t0, -2556($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -336
	li $t3, 3
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2560($fp)

	li $v0, 1
	lw $t0, -2560($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -336
	li $t3, 4
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2564($fp)

	li $v0, 1
	lw $t0, -2564($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -336
	li $t3, 5
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2568($fp)

	li $v0, 1
	lw $t0, -2568($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -336
	li $t3, 6
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2572($fp)

	li $v0, 1
	lw $t0, -2572($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -336
	li $t3, 7
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2576($fp)

	li $v0, 1
	lw $t0, -2576($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -336
	li $t3, 8
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2580($fp)

	li $v0, 1
	lw $t0, -2580($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -336
	li $t3, 9
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2584($fp)

	li $v0, 1
	lw $t0, -2584($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -820($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -824($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -828($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -832($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -836($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -480
	li $t3, 0
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2588($fp)

	li $v0, 1
	lw $t0, -2588($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -480
	li $t3, 1
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2592($fp)

	li $v0, 1
	lw $t0, -2592($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -480
	li $t3, 2
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2596($fp)

	li $v0, 1
	lw $t0, -2596($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -480
	li $t3, 3
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2600($fp)

	li $v0, 1
	lw $t0, -2600($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -480
	li $t3, 4
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2604($fp)

	li $v0, 1
	lw $t0, -2604($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -480
	li $t3, 5
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2608($fp)

	li $v0, 1
	lw $t0, -2608($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -480
	li $t3, 6
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2612($fp)

	li $v0, 1
	lw $t0, -2612($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -480
	li $t3, 7
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2616($fp)

	li $v0, 1
	lw $t0, -2616($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -480
	li $t3, 8
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2620($fp)

	li $v0, 1
	lw $t0, -2620($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -840($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -844($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -848($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -852($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -856($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -860($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -864($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -624
	li $t3, 0
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2624($fp)

	li $v0, 1
	lw $t0, -2624($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -624
	li $t3, 1
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2628($fp)

	li $v0, 1
	lw $t0, -2628($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -624
	li $t3, 2
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2632($fp)

	li $v0, 1
	lw $t0, -2632($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -624
	li $t3, 3
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2636($fp)

	li $v0, 1
	lw $t0, -2636($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -624
	li $t3, 4
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2640($fp)

	li $v0, 1
	lw $t0, -2640($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -624
	li $t3, 5
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2644($fp)

	li $v0, 1
	lw $t0, -2644($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -624
	li $t3, 6
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2648($fp)

	li $v0, 1
	lw $t0, -2648($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -624
	li $t3, 7
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2652($fp)

	li $v0, 1
	lw $t0, -2652($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -624
	li $t3, 8
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2656($fp)

	li $v0, 1
	lw $t0, -2656($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -868($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -720
	li $t3, 0
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2660($fp)

	li $v0, 1
	lw $t0, -2660($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -720
	li $t3, 1
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2664($fp)

	li $v0, 1
	lw $t0, -2664($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -720
	li $t3, 2
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2668($fp)

	li $v0, 1
	lw $t0, -2668($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -720
	li $t3, 3
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2672($fp)

	li $v0, 1
	lw $t0, -2672($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -720
	li $t3, 4
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2676($fp)

	li $v0, 1
	lw $t0, -2676($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -720
	li $t3, 5
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2680($fp)

	li $v0, 1
	lw $t0, -2680($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -872($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t1, -2684($fp)
	lw $t3, -852($fp)
	bne $t3, $t2, label1421

	j label1420

label1421:
	li $t0, 0
	addi $t1, $fp, -32
	li $t2, 1
	mul $t0, $t0, $t2
	lw $t2, -820($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	li $t0, 12445
	li $t1, 56196
	mul $t4, $t0, $t1
	lw $t0, 0($t3)
	add $t1, $t0, $t4
	li $t0, 0
	bne $t1, $t0, label1419

	j label1420

label1419:
	li $t0, 1
	sw $t0, -2684($fp)

label1420:
	lw $t0, -2684($fp)
	move $v0, $t0
	lw $ra, 3320($sp)
	lw $fp, 3316($sp)
	addi $sp, $sp, 3324
	jr $ra

	li $t0, 57431
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -32
	li $t4, 1
	mul $t2, $t2, $t4
	lw $t4, -772($fp)
	add $t2, $t2, $t4
	li $t5, 4
	mul $t2, $t2, $t5
	add $t5, $t3, $t2
	li $t2, -1
	lw $t3, 0($t5)
	mul $t5, $t2, $t3
	li $t2, 0
	sw $t0, -2688($fp)
	sw $t1, -2692($fp)
	bne $t5, $t2, label1426

	j label1425

label1425:
	li $t0, 1
	sw $t0, -2692($fp)

label1426:
	lw $t0, -2692($fp)
	lw $t1, -2688($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	bne $t2, $t3, label1422

	j label1423

label1422:
	li $t0, 0
	li $t1, 35442
	li $t2, 0
	addi $t3, $fp, -480
	li $t4, 3
	li $t5, 9
	mul $t2, $t2, $t5
	add $t2, $t2, $t4
	li $t4, 4
	mul $t2, $t2, $t4
	add $t4, $t3, $t2
	li $t2, -1
	lw $t3, 0($t4)
	mul $t4, $t2, $t3
	sw $t0, -2696($fp)
	beq $t1, $t4, label1427

	j label1428

label1427:
	li $t0, 1
	sw $t0, -2696($fp)

label1428:
	lw $t0, -2696($fp)
	move $v0, $t0
	lw $ra, 3320($sp)
	lw $fp, 3316($sp)
	addi $sp, $sp, 3324
	jr $ra

	j label1424

label1423:
	li $t0, 0
	addi $t1, $fp, -624
	li $t2, 6
	li $t3, 9
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	lw $t1, -864($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	sw $t0, -2704($fp)
	sw $t2, -2700($fp)
	lw $t3, -764($fp)
	lw $t4, -872($fp)
	blt $t4, $t3, label1432

	j label1434

label1434:
	li $t0, 35809
	li $t1, 0
	bne $t0, $t1, label1432

	j label1433

label1432:
	li $t0, 1
	sw $t0, -2704($fp)

label1433:
	li $t0, 0
	li $t1, 38429
	lw $t2, -788($fp)
	mul $t3, $t2, $t1
	lw $t1, -732($fp)
	div $t3, $t1
	mflo $t4
	li $t3, 15968
	li $t5, 0
	li $t6, 11602
	li $t7, 0
	sw $t0, -2708($fp)
	sw $t3, -2716($fp)
	sw $t4, -2712($fp)
	sw $t5, -2720($fp)
	bne $t6, $t7, label1438

	j label1437

label1437:
	li $t0, 1
	sw $t0, -2720($fp)

label1438:
	li $t0, 27367
	lw $t1, -2720($fp)
	sub $t2, $t1, $t0
	li $t0, 0
	lw $t4, -832($fp)
	move $t3, $t4
	li $t5, 0
	addi $t6, $fp, -32
	li $t7, 1
	mul $t5, $t5, $t7
	lw $t7, -736($fp)
	add $t5, $t5, $t7
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t6, $t5
	li $t5, 0
	li $t6, 0
	li $t9, 28843
	sw $t0, -2728($fp)
	sw $t2, -2724($fp)
	sw $t3, -860($fp)
	sw $t5, -2736($fp)
	sw $t6, -2740($fp)
	sw $t8, -2732($fp)
	lw $s0, -816($fp)
	beq $s0, $t9, label1444

	j label1445

label1444:
	li $t0, 1
	sw $t0, -2740($fp)

label1445:
	li $t0, 19332
	lw $t1, -2740($fp)
	beq $t1, $t0, label1442

	j label1443

label1442:
	li $t0, 1
	sw $t0, -2736($fp)

label1443:
	li $t0, 0
	li $t1, 439
	sw $t0, -2744($fp)
	lw $t2, -724($fp)
	blt $t2, $t1, label1446

	j label1447

label1446:
	li $t0, 1
	sw $t0, -2744($fp)

label1447:
	lw $t1, -2732($fp)
	lw $t0, 0($t1)
	sw $t0, -2748($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2744($fp)
	move $a3, $t0
	lw $t1, -2736($fp)
	move $a2, $t1
	lw $t2, -2748($fp)
	move $a1, $t2
	lw $t3, -860($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2752($fp)

	li $t0, 0
	lw $t1, -2752($fp)
	bne $t1, $t0, label1439

	j label1441

label1441:
	li $t0, 29928
	li $t1, 0
	bne $t0, $t1, label1439

	j label1440

label1439:
	li $t0, 1
	sw $t0, -2728($fp)

label1440:
	li $t0, 0
	li $t1, 22691
	sw $t0, -2756($fp)
	lw $t2, -868($fp)
	beq $t2, $t1, label1448

	j label1450

label1450:
	li $t0, 3429
	li $t1, 0
	bne $t0, $t1, label1448

	j label1449

label1448:
	li $t0, 1
	sw $t0, -2756($fp)

label1449:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2756($fp)
	move $a1, $t0
	lw $t1, -2728($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -2760($fp)

	li $t0, 19463
	lw $t1, -2760($fp)
	sub $t2, $t1, $t0
	sw $t2, -2764($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2764($fp)
	move $a2, $t0
	lw $t1, -2724($fp)
	move $a1, $t1
	lw $t2, -2716($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2768($fp)

	li $t0, 0
	li $t1, 52940
	li $t2, 0
	sw $t0, -2772($fp)
	bne $t1, $t2, label1451

	j label1454

label1454:
	li $t0, 11948
	li $t1, 0
	bne $t0, $t1, label1451

	j label1453

label1453:
	li $t0, 0
	lw $t1, -760($fp)
	bne $t1, $t0, label1451

	j label1452

label1451:
	li $t0, 1
	sw $t0, -2772($fp)

label1452:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2772($fp)
	move $a2, $t0
	lw $t1, -2768($fp)
	move $a1, $t1
	lw $t2, -2712($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2776($fp)

	li $t0, 0
	lw $t1, -2776($fp)
	bne $t1, $t0, label1436

	j label1435

label1435:
	li $t0, 1
	sw $t0, -2708($fp)

label1436:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -768($fp)
	move $a3, $t0
	lw $t1, -2708($fp)
	move $a2, $t1
	lw $t2, -2704($fp)
	move $a1, $t2
	lw $t3, -2700($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2780($fp)

	li $t0, 62843
	lw $t1, -2780($fp)
	add $t2, $t1, $t0
	li $t0, 0
	bne $t2, $t0, label1429

	j label1430

label1429:
	li $t0, 39377
	move $t1, $t0
	li $t0, 50649
	move $t2, $t0
	li $t0, 0
	addi $t3, $fp, -2908
	li $t4, 0
	li $t5, 8
	mul $t0, $t0, $t5
	add $t0, $t0, $t4
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t3, $t0
	li $t0, 7786
	sw $t0, 0($t4)
	li $t3, 0
	addi $t5, $fp, -2908
	li $t6, 1
	li $t7, 8
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 8580
	sw $t3, 0($t6)
	li $t5, 0
	addi $t7, $fp, -2908
	li $t8, 2
	li $t9, 8
	mul $t5, $t5, $t9
	add $t5, $t5, $t8
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t7, $t5
	li $t5, 57398
	sw $t5, 0($t8)
	li $t7, 0
	addi $t9, $fp, -2908
	li $s0, 3
	li $s1, 8
	mul $t7, $t7, $s1
	add $t7, $t7, $s0
	li $s0, 4
	mul $t7, $t7, $s0
	add $s0, $t9, $t7
	li $t7, 53625
	sw $t7, 0($s0)
	li $t9, 0
	addi $s1, $fp, -2908
	li $s2, 4
	li $s3, 8
	mul $t9, $t9, $s3
	add $t9, $t9, $s2
	li $s2, 4
	mul $t9, $t9, $s2
	add $s2, $s1, $t9
	li $t9, 54178
	sw $t9, 0($s2)
	li $s1, 0
	addi $s3, $fp, -2908
	li $s4, 5
	li $s5, 8
	mul $s1, $s1, $s5
	add $s1, $s1, $s4
	li $s4, 4
	mul $s1, $s1, $s4
	add $s4, $s3, $s1
	li $s1, 56802
	sw $s1, 0($s4)
	li $s3, 0
	addi $s5, $fp, -2908
	li $s6, 6
	li $s7, 8
	mul $s3, $s3, $s7
	add $s3, $s3, $s6
	li $s6, 4
	mul $s3, $s3, $s6
	add $s6, $s5, $s3
	li $s3, 534
	sw $s3, 0($s6)
	li $s5, 0
	addi $s7, $fp, -2908
	sw $s6, -3864($fp)
	li $s6, 7
	sw $s4, -3868($fp)
	li $s4, 8
	mul $s5, $s5, $s4
	add $s4, $s5, $s6
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 44839
	sw $s4, 0($s5)
	li $s6, 48697
	move $s7, $s6
	li $s6, 35976
	sw $s7, -2920($fp)
	move $s7, $s6
	sw $t1, -2912($fp)
	sw $t2, -2916($fp)
	sw $s7, -2924($fp)

label1455:
	li $t0, 0
	li $t1, 0
	li $t2, -1
	lw $t3, -2912($fp)
	mul $t4, $t2, $t3
	sw $t0, -2928($fp)
	sw $t1, -2932($fp)
	lw $t2, -792($fp)
	bne $t4, $t2, label1460

	j label1461

label1460:
	li $t0, 1
	sw $t0, -2932($fp)

label1461:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2932($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -2936($fp)

	li $t0, 0
	lw $t1, -2936($fp)
	bne $t1, $t0, label1459

	j label1458

label1458:
	li $t0, 1
	sw $t0, -2928($fp)

label1459:
	lw $t1, -2928($fp)
	move $t0, $t1
	li $t2, 0
	sw $t0, -848($fp)
	bne $t0, $t2, label1456

	j label1457

label1456:

label1462:
	li $t0, 0
	lw $t1, -840($fp)
	bne $t1, $t0, label1463

	j label1464

label1463:
	li $t0, 0
	li $t1, 12845
	li $t2, 0
	li $t3, 0
	li $t4, 30618
	sw $t0, -2940($fp)
	sw $t1, -2944($fp)
	sw $t2, -2948($fp)
	sw $t3, -2952($fp)
	lw $t5, -2916($fp)
	bge $t4, $t5, label1469

	j label1470

label1469:
	li $t0, 1
	sw $t0, -2952($fp)

label1470:
	li $t0, 39529
	lw $t1, -2952($fp)
	ble $t1, $t0, label1467

	j label1468

label1467:
	li $t0, 1
	sw $t0, -2948($fp)

label1468:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2948($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -2956($fp)

	lw $t0, -2956($fp)
	lw $t1, -2944($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	li $t4, 0
	li $t5, -1
	lw $t6, -2920($fp)
	mul $t7, $t5, $t6
	li $t5, 0
	sw $t2, -2960($fp)
	sw $t3, -2964($fp)
	sw $t4, -2968($fp)
	bne $t7, $t5, label1474

	j label1473

label1473:
	li $t0, 1
	sw $t0, -2968($fp)

label1474:
	li $t0, 31484
	move $t1, $t0
	li $t0, 0
	li $t2, 0
	sw $t0, -2972($fp)
	sw $t1, -844($fp)
	lw $t3, -740($fp)
	bne $t3, $t2, label1478

	j label1476

label1478:
	li $t0, 891
	li $t1, 0
	bne $t0, $t1, label1477

	j label1476

label1477:
	li $t0, 0
	lw $t1, -852($fp)
	bne $t1, $t0, label1475

	j label1476

label1475:
	li $t0, 1
	sw $t0, -2972($fp)

label1476:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2972($fp)
	move $a2, $t0
	lw $t1, -844($fp)
	move $a1, $t1
	lw $t2, -2968($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2976($fp)

	li $t0, 0
	lw $t1, -2976($fp)
	bne $t1, $t0, label1471

	j label1472

label1471:
	li $t0, 1
	sw $t0, -2964($fp)

label1472:
	lw $t0, -2964($fp)
	lw $t1, -2960($fp)
	blt $t1, $t0, label1465

	j label1466

label1465:
	li $t0, 1
	sw $t0, -2940($fp)

label1466:
	lw $t0, -2940($fp)
	move $v0, $t0
	lw $ra, 3320($sp)
	lw $fp, 3316($sp)
	addi $sp, $sp, 3324
	jr $ra

	j label1462

label1464:
	j label1455

label1457:

	li $v0, 1
	lw $t0, -2912($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -2916($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2908
	li $t3, 0
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2980($fp)

	li $v0, 1
	lw $t0, -2980($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2908
	li $t3, 1
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2984($fp)

	li $v0, 1
	lw $t0, -2984($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2908
	li $t3, 2
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2988($fp)

	li $v0, 1
	lw $t0, -2988($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2908
	li $t3, 3
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2992($fp)

	li $v0, 1
	lw $t0, -2992($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2908
	li $t3, 4
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2996($fp)

	li $v0, 1
	lw $t0, -2996($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2908
	li $t3, 5
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3000($fp)

	li $v0, 1
	lw $t0, -3000($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2908
	li $t3, 6
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3004($fp)

	li $v0, 1
	lw $t0, -3004($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2908
	li $t3, 7
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3008($fp)

	li $v0, 1
	lw $t0, -3008($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -2920($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -2924($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t1, -3012($fp)
	lw $t3, -828($fp)
	bne $t3, $t2, label1479

	j label1481

label1481:
	li $t0, 12423
	li $t1, 0
	bne $t0, $t1, label1482

	j label1480

label1482:
	li $t0, 47452
	li $t1, 0
	bne $t0, $t1, label1479

	j label1480

label1479:
	li $t0, 1
	sw $t0, -3012($fp)

label1480:
	lw $t1, -3012($fp)
	move $t0, $t1
	sw $t0, -736($fp)
	move $v0, $t0
	lw $ra, 3320($sp)
	lw $fp, 3316($sp)
	addi $sp, $sp, 3324
	jr $ra

	li $v0, 1
	lw $t0, -2912($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -2916($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2908
	li $t3, 0
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3016($fp)

	li $v0, 1
	lw $t0, -3016($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2908
	li $t3, 1
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3020($fp)

	li $v0, 1
	lw $t0, -3020($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2908
	li $t3, 2
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3024($fp)

	li $v0, 1
	lw $t0, -3024($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2908
	li $t3, 3
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3028($fp)

	li $v0, 1
	lw $t0, -3028($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2908
	li $t3, 4
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3032($fp)

	li $v0, 1
	lw $t0, -3032($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2908
	li $t3, 5
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3036($fp)

	li $v0, 1
	lw $t0, -3036($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2908
	li $t3, 6
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3040($fp)

	li $v0, 1
	lw $t0, -3040($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2908
	li $t3, 7
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3044($fp)

	li $v0, 1
	lw $t0, -3044($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -2920($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -2924($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -336
	li $t4, 6
	li $t5, 10
	mul $t2, $t2, $t5
	add $t2, $t2, $t4
	li $t4, 4
	mul $t2, $t2, $t4
	add $t4, $t3, $t2
	li $t2, -1
	lw $t3, 0($t4)
	mul $t4, $t2, $t3
	li $t2, 10759
	li $t3, 0
	li $t5, 31826
	sw $t1, -3048($fp)
	sw $t2, -3056($fp)
	sw $t3, -3060($fp)
	sw $t4, -3052($fp)
	lw $t6, -828($fp)
	bgt $t5, $t6, label1487

	j label1486

label1487:
	li $t0, 0
	lw $t1, -756($fp)
	bne $t1, $t0, label1485

	j label1486

label1485:
	li $t0, 1
	sw $t0, -3060($fp)

label1486:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2908
	li $t3, 8
	mul $t1, $t1, $t3
	lw $t3, -776($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	li $t1, 40230
	lw $t2, 0($t4)
	sw $t0, -3064($fp)
	beq $t2, $t1, label1488

	j label1489

label1488:
	li $t0, 1
	sw $t0, -3064($fp)

label1489:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3064($fp)
	move $a3, $t0
	lw $t1, -3060($fp)
	move $a2, $t1
	lw $t2, -3056($fp)
	move $a1, $t2
	lw $t3, -3052($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -3068($fp)

	li $t0, 0
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -624
	li $t4, 4
	li $t5, 9
	mul $t2, $t2, $t5
	add $t2, $t2, $t4
	li $t4, 4
	mul $t2, $t2, $t4
	add $t4, $t3, $t2
	lw $t2, 0($t4)
	li $t3, 0
	sw $t0, -3072($fp)
	sw $t1, -3076($fp)
	bne $t2, $t3, label1493

	j label1492

label1492:
	li $t0, 1
	sw $t0, -3076($fp)

label1493:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3076($fp)
	move $a1, $t0
	lw $t1, -812($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -3080($fp)

	li $t0, 0
	lw $t1, -3080($fp)
	bne $t1, $t0, label1491

	j label1490

label1490:
	li $t0, 1
	sw $t0, -3072($fp)

label1491:
	lw $t0, -3072($fp)
	lw $t1, -3068($fp)
	bne $t1, $t0, label1483

	j label1484

label1483:
	li $t0, 1
	sw $t0, -3048($fp)

label1484:
	lw $t0, -3048($fp)
	move $v0, $t0
	lw $ra, 3320($sp)
	lw $fp, 3316($sp)
	addi $sp, $sp, 3324
	jr $ra

	li $t0, -1
	lw $t1, -804($fp)
	mul $t2, $t0, $t1
	li $t0, -1
	mul $t3, $t0, $t2
	sw $t3, -3084($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3084($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -3088($fp)

	li $t0, -1
	lw $t1, -3088($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	addi $t3, $fp, -2908
	li $t4, 8
	mul $t0, $t0, $t4
	lw $t4, -728($fp)
	add $t0, $t0, $t4
	li $t5, 4
	mul $t0, $t0, $t5
	add $t5, $t3, $t0
	li $t0, 0
	li $t3, 0
	li $t6, 43659
	sw $t0, -3100($fp)
	sw $t2, -3092($fp)
	sw $t3, -3104($fp)
	sw $t5, -3096($fp)
	lw $t7, -800($fp)
	ble $t6, $t7, label1496

	j label1497

label1496:
	li $t0, 1
	sw $t0, -3104($fp)

label1497:
	li $t0, 60151
	li $t1, 0
	li $t2, 41921
	lw $t3, -856($fp)
	add $t4, $t2, $t3
	sw $t0, -3108($fp)
	sw $t1, -3112($fp)
	lw $t2, -2924($fp)
	blt $t4, $t2, label1498

	j label1499

label1498:
	li $t0, 1
	sw $t0, -3112($fp)

label1499:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -3112($fp)
	move $a2, $t0
	lw $t1, -3108($fp)
	move $a1, $t1
	lw $t2, -3104($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -3116($fp)

	li $t0, 55607
	lw $t1, -3116($fp)
	bne $t1, $t0, label1494

	j label1495

label1494:
	li $t0, 1
	sw $t0, -3100($fp)

label1495:
	li $t0, 57458
	move $t1, $t0
	lw $t2, -3096($fp)
	lw $t0, 0($t2)
	sw $t0, -3120($fp)
	sw $t1, -824($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -824($fp)
	move $a3, $t0
	lw $t1, -3100($fp)
	move $a2, $t1
	lw $t2, -3120($fp)
	move $a1, $t2
	lw $t3, -3092($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -3124($fp)

	lw $t0, -752($fp)
	lw $t1, -3124($fp)
	div $t1, $t0
	mflo $t2
	j label1431

label1430:
	li $t0, 15762
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, 0
	li $t1, 0
	sw $t0, -3132($fp)
	sw $t2, -3128($fp)
	lw $t3, -800($fp)
	bne $t3, $t1, label1504

	j label1503

label1503:
	li $t0, 1
	sw $t0, -3132($fp)

label1504:
	li $t0, -1
	lw $t1, -3132($fp)
	mul $t2, $t0, $t1
	lw $t0, -780($fp)
	sub $t3, $t2, $t0
	lw $t2, -3128($fp)
	bge $t2, $t3, label1500

	j label1501

label1500:

label1505:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -3136($fp)
	sw $t1, -3140($fp)
	lw $t3, -780($fp)
	bne $t3, $t2, label1510

	j label1511

label1510:
	li $t0, 1
	sw $t0, -3140($fp)

label1511:
	lw $t0, -816($fp)
	lw $t1, -3140($fp)
	beq $t1, $t0, label1508

	j label1509

label1508:
	li $t0, 1
	sw $t0, -3136($fp)

label1509:
	li $t0, 40720
	lw $t1, -3136($fp)
	bne $t1, $t0, label1506

	j label1507

label1506:
	li $t0, 0
	li $t1, 65244
	li $t2, 0
	sw $t0, -3144($fp)
	bne $t1, $t2, label1513

	j label1512

label1512:
	li $t0, 1
	sw $t0, -3144($fp)

label1513:
	lw $t0, -800($fp)
	lw $t1, -3144($fp)
	add $t2, $t1, $t0
	move $v0, $t2
	lw $ra, 3320($sp)
	lw $fp, 3316($sp)
	addi $sp, $sp, 3324
	jr $ra

	j label1505

label1507:
	j label1502

label1501:
	li $t0, 24342
	move $v0, $t0
	lw $ra, 3320($sp)
	lw $fp, 3316($sp)
	addi $sp, $sp, 3324
	jr $ra

label1502:

label1431:

label1424:

	li $v0, 1
	lw $t0, -724($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -728($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -732($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -736($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -740($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -744($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -748($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -32
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3148($fp)

	li $v0, 1
	lw $t0, -3148($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -752($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -756($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -760($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -764($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -768($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -772($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -176
	li $t3, 0
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3152($fp)

	li $v0, 1
	lw $t0, -3152($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -176
	li $t3, 1
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3156($fp)

	li $v0, 1
	lw $t0, -3156($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -176
	li $t3, 2
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3160($fp)

	li $v0, 1
	lw $t0, -3160($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -176
	li $t3, 3
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3164($fp)

	li $v0, 1
	lw $t0, -3164($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -176
	li $t3, 4
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3168($fp)

	li $v0, 1
	lw $t0, -3168($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -176
	li $t3, 5
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3172($fp)

	li $v0, 1
	lw $t0, -3172($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -176
	li $t3, 6
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3176($fp)

	li $v0, 1
	lw $t0, -3176($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -176
	li $t3, 7
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3180($fp)

	li $v0, 1
	lw $t0, -3180($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -176
	li $t3, 8
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3184($fp)

	li $v0, 1
	lw $t0, -3184($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -776($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -780($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -784($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -788($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -792($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -796($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -800($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -804($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -808($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -812($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -816($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -336
	li $t3, 0
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3188($fp)

	li $v0, 1
	lw $t0, -3188($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -336
	li $t3, 1
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3192($fp)

	li $v0, 1
	lw $t0, -3192($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -336
	li $t3, 2
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3196($fp)

	li $v0, 1
	lw $t0, -3196($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -336
	li $t3, 3
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3200($fp)

	li $v0, 1
	lw $t0, -3200($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -336
	li $t3, 4
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3204($fp)

	li $v0, 1
	lw $t0, -3204($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -336
	li $t3, 5
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3208($fp)

	li $v0, 1
	lw $t0, -3208($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -336
	li $t3, 6
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3212($fp)

	li $v0, 1
	lw $t0, -3212($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -336
	li $t3, 7
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3216($fp)

	li $v0, 1
	lw $t0, -3216($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -336
	li $t3, 8
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3220($fp)

	li $v0, 1
	lw $t0, -3220($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -336
	li $t3, 9
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3224($fp)

	li $v0, 1
	lw $t0, -3224($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -820($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -824($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -828($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -832($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -836($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -480
	li $t3, 0
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3228($fp)

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
	addi $t2, $fp, -480
	li $t3, 1
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3232($fp)

	li $v0, 1
	lw $t0, -3232($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -480
	li $t3, 2
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3236($fp)

	li $v0, 1
	lw $t0, -3236($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -480
	li $t3, 3
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3240($fp)

	li $v0, 1
	lw $t0, -3240($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -480
	li $t3, 4
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3244($fp)

	li $v0, 1
	lw $t0, -3244($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -480
	li $t3, 5
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3248($fp)

	li $v0, 1
	lw $t0, -3248($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -480
	li $t3, 6
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3252($fp)

	li $v0, 1
	lw $t0, -3252($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -480
	li $t3, 7
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3256($fp)

	li $v0, 1
	lw $t0, -3256($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -480
	li $t3, 8
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3260($fp)

	li $v0, 1
	lw $t0, -3260($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -840($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -844($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -848($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -852($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -856($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -860($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -864($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -624
	li $t3, 0
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3264($fp)

	li $v0, 1
	lw $t0, -3264($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -624
	li $t3, 1
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3268($fp)

	li $v0, 1
	lw $t0, -3268($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -624
	li $t3, 2
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3272($fp)

	li $v0, 1
	lw $t0, -3272($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -624
	li $t3, 3
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3276($fp)

	li $v0, 1
	lw $t0, -3276($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -624
	li $t3, 4
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3280($fp)

	li $v0, 1
	lw $t0, -3280($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -624
	li $t3, 5
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3284($fp)

	li $v0, 1
	lw $t0, -3284($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -624
	li $t3, 6
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3288($fp)

	li $v0, 1
	lw $t0, -3288($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -624
	li $t3, 7
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3292($fp)

	li $v0, 1
	lw $t0, -3292($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -624
	li $t3, 8
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3296($fp)

	li $v0, 1
	lw $t0, -3296($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -868($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -720
	li $t3, 0
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3300($fp)

	li $v0, 1
	lw $t0, -3300($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -720
	li $t3, 1
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3304($fp)

	li $v0, 1
	lw $t0, -3304($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -720
	li $t3, 2
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3308($fp)

	li $v0, 1
	lw $t0, -3308($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -720
	li $t3, 3
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3312($fp)

	li $v0, 1
	lw $t0, -3312($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -720
	li $t3, 4
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3316($fp)

	li $v0, 1
	lw $t0, -3316($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -720
	li $t3, 5
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -3320($fp)

	li $v0, 1
	lw $t0, -3320($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -872($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 32582
	lw $t3, -840($fp)
	mul $t4, $t2, $t3
	lw $t2, -752($fp)
	div $t4, $t2
	mflo $t5
	lw $t4, -744($fp)
	mul $t6, $t5, $t4
	sw $t1, -3324($fp)
	lw $t5, -724($fp)
	bgt $t5, $t6, label1514

	j label1515

label1514:
	li $t0, 1
	sw $t0, -3324($fp)

label1515:
	lw $t0, -3324($fp)
	move $v0, $t0
	lw $ra, 3320($sp)
	lw $fp, 3316($sp)
	addi $sp, $sp, 3324
	jr $ra

eDq:
	addi $sp, $sp, -2060
	sw $ra, 2056($sp)
	sw $fp, 2052($sp)
	addi $fp, $sp, 2060
	sw $a0, -12($fp)
	sw $a1, -16($fp)
	sw $a2, -20($fp)
	sw $a3, -24($fp)

	li $t0, 0
	addi $t1, $fp, -120
	li $t2, 0
	li $t3, 6
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 53333
	sw $t0, 0($t2)
	li $t1, 0
	addi $t3, $fp, -120
	li $t4, 1
	li $t5, 6
	mul $t1, $t1, $t5
	add $t1, $t1, $t4
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t3, $t1
	li $t1, 12985
	sw $t1, 0($t4)
	li $t3, 0
	addi $t5, $fp, -120
	li $t6, 2
	li $t7, 6
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 23848
	sw $t3, 0($t6)
	li $t5, 0
	addi $t7, $fp, -120
	li $t8, 3
	li $t9, 6
	mul $t5, $t5, $t9
	add $t5, $t5, $t8
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t7, $t5
	li $t5, 53868
	sw $t5, 0($t8)
	li $t7, 0
	addi $t9, $fp, -120
	li $s0, 4
	li $s1, 6
	mul $t7, $t7, $s1
	add $t7, $t7, $s0
	li $s0, 4
	mul $t7, $t7, $s0
	add $s0, $t9, $t7
	li $t7, 57824
	sw $t7, 0($s0)
	li $t9, 0
	addi $s1, $fp, -120
	li $s2, 5
	li $s3, 6
	mul $t9, $t9, $s3
	add $t9, $t9, $s2
	li $s2, 4
	mul $t9, $t9, $s2
	add $s2, $s1, $t9
	li $t9, 7009
	sw $t9, 0($s2)
	li $s1, 0
	addi $s3, $fp, -136
	li $s4, 0
	li $s5, 1
	mul $s1, $s1, $s5
	add $s1, $s1, $s4
	li $s4, 4
	mul $s1, $s1, $s4
	add $s4, $s3, $s1
	li $s1, 24308
	sw $s1, 0($s4)
	li $s3, 0
	addi $s5, $fp, -296
	li $s6, 0
	li $s7, 10
	mul $s3, $s3, $s7
	add $s3, $s3, $s6
	li $s6, 4
	mul $s3, $s3, $s6
	add $s6, $s5, $s3
	li $s3, 5133
	sw $s3, 0($s6)
	li $s5, 0
	addi $s7, $fp, -296
	sw $s6, -2064($fp)
	li $s6, 1
	sw $s4, -2068($fp)
	li $s4, 10
	mul $s5, $s5, $s4
	add $s4, $s5, $s6
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 37627
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -296
	sw $s5, -2072($fp)
	li $s5, 2
	sw $s4, -2076($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 63838
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -296
	sw $s5, -2080($fp)
	li $s5, 3
	sw $s4, -2084($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 36617
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -296
	sw $s5, -2088($fp)
	li $s5, 4
	sw $s4, -2092($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 38519
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -296
	sw $s5, -2096($fp)
	li $s5, 5
	sw $s4, -2100($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 10725
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -296
	sw $s5, -2104($fp)
	li $s5, 6
	sw $s4, -2108($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 18533
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -296
	sw $s5, -2112($fp)
	li $s5, 7
	sw $s4, -2116($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 51012
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -296
	sw $s5, -2120($fp)
	li $s5, 8
	sw $s4, -2124($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 50515
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -296
	sw $s5, -2128($fp)
	li $s5, 9
	sw $s4, -2132($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 29292
	sw $s4, 0($s5)
	li $s6, 17302
	move $s7, $s6
	li $s6, 25209
	sw $s7, -668($fp)
	move $s7, $s6
	li $s6, 4444
	sw $s7, -672($fp)
	move $s7, $s6
	li $s6, 6283
	sw $s7, -676($fp)
	move $s7, $s6
	li $s6, 3332
	sw $s7, -680($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -684($fp)
	addi $s7, $fp, -424
	sw $s5, -2136($fp)
	li $s5, 0
	sw $s4, -2140($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 64595
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -424
	sw $s5, -2144($fp)
	li $s5, 1
	sw $s4, -2148($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 48205
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -424
	sw $s5, -2152($fp)
	li $s5, 2
	sw $s4, -2156($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 58939
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -424
	sw $s5, -2160($fp)
	li $s5, 3
	sw $s4, -2164($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 56517
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -424
	sw $s5, -2168($fp)
	li $s5, 4
	sw $s4, -2172($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 63967
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -424
	sw $s5, -2176($fp)
	li $s5, 5
	sw $s4, -2180($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 34123
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -424
	sw $s5, -2184($fp)
	li $s5, 6
	sw $s4, -2188($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 56226
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -424
	sw $s5, -2192($fp)
	li $s5, 7
	sw $s4, -2196($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 22774
	sw $s4, 0($s5)
	li $s6, 1169
	move $s7, $s6
	li $s6, 44023
	sw $s7, -688($fp)
	move $s7, $s6
	li $s6, 35759
	sw $s7, -692($fp)
	move $s7, $s6
	li $s6, 25017
	sw $s7, -696($fp)
	move $s7, $s6
	li $s6, 32355
	sw $s7, -700($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -704($fp)
	addi $s7, $fp, -472
	sw $s5, -2200($fp)
	li $s5, 0
	sw $s4, -2204($fp)
	li $s4, 3
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 28047
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -472
	sw $s5, -2208($fp)
	li $s5, 1
	sw $s4, -2212($fp)
	li $s4, 3
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 32026
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -472
	sw $s5, -2216($fp)
	li $s5, 2
	sw $s4, -2220($fp)
	li $s4, 3
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 56664
	sw $s4, 0($s5)
	li $s6, 33180
	move $s7, $s6
	li $s6, 4118
	sw $s7, -708($fp)
	move $s7, $s6
	li $s6, 54966
	sw $s7, -712($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -716($fp)
	addi $s7, $fp, -504
	sw $s5, -2224($fp)
	li $s5, 0
	sw $s4, -2228($fp)
	li $s4, 2
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 4261
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -504
	sw $s5, -2232($fp)
	li $s5, 1
	sw $s4, -2236($fp)
	li $s4, 2
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 42637
	sw $s4, 0($s5)
	li $s6, 155
	move $s7, $s6
	li $s6, 22794
	sw $s7, -720($fp)
	move $s7, $s6
	li $s6, 28113
	sw $s7, -724($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -728($fp)
	addi $s7, $fp, -664
	sw $s5, -2240($fp)
	li $s5, 0
	sw $s4, -2244($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 50670
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -664
	sw $s5, -2248($fp)
	li $s5, 1
	sw $s4, -2252($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 52086
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -664
	sw $s5, -2256($fp)
	li $s5, 2
	sw $s4, -2260($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 45416
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -664
	sw $s5, -2264($fp)
	li $s5, 3
	sw $s4, -2268($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 10344
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -664
	sw $s5, -2272($fp)
	li $s5, 4
	sw $s4, -2276($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 56530
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -664
	sw $s5, -2280($fp)
	li $s5, 5
	sw $s4, -2284($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 51699
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -664
	sw $s5, -2288($fp)
	li $s5, 6
	sw $s4, -2292($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 13676
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -664
	sw $s5, -2296($fp)
	li $s5, 7
	sw $s4, -2300($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 55589
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -664
	sw $s5, -2304($fp)
	li $s5, 8
	sw $s4, -2308($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 34368
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -664
	sw $s5, -2312($fp)
	li $s5, 9
	sw $s4, -2316($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 7080
	sw $s4, 0($s5)
	li $s6, 46571
	move $s7, $s6
	li $s6, 32800
	sw $s7, -732($fp)
	move $s7, $s6
	li $s6, 41203
	sw $s7, -736($fp)
	move $s7, $s6
	li $s6, 37261
	sw $s7, -740($fp)
	move $s7, $s6
	li $s6, 55574
	sw $s7, -744($fp)
	move $s7, $s6
	li $s6, 42373
	sw $s7, -748($fp)
	li $s7, 0
	bne $s6, $s7, label1516

	j label1517

label1516:

label1519:
	li $t0, 0
	addi $t1, $fp, -296
	li $t2, 10
	mul $t0, $t0, $t2
	lw $t2, -748($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	sw $t0, -752($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -752($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -756($fp)

	li $t0, 0
	lw $t1, -756($fp)
	bne $t1, $t0, label1520

	j label1521

label1520:
	li $t0, 15748
	li $t1, 25797
	li $t2, 1854
	div $t1, $t2
	mflo $t3
	add $t1, $t0, $t3
	lw $t0, -696($fp)
	ble $t0, $t1, label1522

	j label1523

label1522:

label1525:
	li $t0, 0
	addi $t1, $fp, -472
	li $t2, 0
	li $t3, 48104
	li $t4, 0
	sw $t0, -760($fp)
	sw $t1, -764($fp)
	sw $t2, -768($fp)
	bne $t3, $t4, label1529

	j label1528

label1528:
	li $t0, 1
	sw $t0, -768($fp)

label1529:
	li $t0, 53844
	lw $t1, -20($fp)
	div $t0, $t1
	mflo $t2
	lw $t0, -768($fp)
	add $t3, $t0, $t2
	li $t2, 3
	lw $t4, -760($fp)
	mul $t4, $t4, $t2
	add $t2, $t4, $t3
	li $t3, 4
	mul $t2, $t2, $t3
	lw $t3, -764($fp)
	add $t4, $t3, $t2
	lw $t5, 0($t4)
	li $t4, 0
	sw $t2, -760($fp)
	bne $t5, $t4, label1526

	j label1527

label1526:
	li $t0, 33881
	move $t1, $t0
	li $t0, 39232
	move $t2, $t0
	li $t0, 21488
	move $t3, $t0
	li $t0, 37999
	move $t4, $t0
	li $t0, 28662
	move $t5, $t0
	sw $t1, -772($fp)
	sw $t2, -776($fp)
	sw $t3, -780($fp)
	sw $t4, -784($fp)
	sw $t5, -788($fp)

label1530:
	lw $t0, -724($fp)
	lw $t1, -736($fp)
	beq $t1, $t0, label1531

	j label1533

label1533:
	li $t0, 0
	lw $t1, -728($fp)
	bne $t1, $t0, label1531

	j label1532

label1531:
	li $t0, 0
	addi $t1, $fp, -868
	li $t2, 0
	li $t3, 5
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 25749
	sw $t0, 0($t2)
	li $t1, 0
	addi $t3, $fp, -868
	li $t4, 1
	li $t5, 5
	mul $t1, $t1, $t5
	add $t1, $t1, $t4
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t3, $t1
	li $t1, 15100
	sw $t1, 0($t4)
	li $t3, 0
	addi $t5, $fp, -868
	li $t6, 2
	li $t7, 5
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 28817
	sw $t3, 0($t6)
	li $t5, 0
	addi $t7, $fp, -868
	li $t8, 3
	li $t9, 5
	mul $t5, $t5, $t9
	add $t5, $t5, $t8
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t7, $t5
	li $t5, 48543
	sw $t5, 0($t8)
	li $t7, 0
	addi $t9, $fp, -868
	li $s0, 4
	li $s1, 5
	mul $t7, $t7, $s1
	add $t7, $t7, $s0
	li $s0, 4
	mul $t7, $t7, $s0
	add $s0, $t9, $t7
	li $t7, 43213
	sw $t7, 0($s0)
	li $t9, 0
	addi $s1, $fp, -1028
	li $s2, 0
	li $s3, 10
	mul $t9, $t9, $s3
	add $t9, $t9, $s2
	li $s2, 4
	mul $t9, $t9, $s2
	add $s2, $s1, $t9
	li $t9, 13951
	sw $t9, 0($s2)
	li $s1, 0
	addi $s3, $fp, -1028
	li $s4, 1
	li $s5, 10
	mul $s1, $s1, $s5
	add $s1, $s1, $s4
	li $s4, 4
	mul $s1, $s1, $s4
	add $s4, $s3, $s1
	li $s1, 35093
	sw $s1, 0($s4)
	li $s3, 0
	addi $s5, $fp, -1028
	li $s6, 2
	li $s7, 10
	mul $s3, $s3, $s7
	add $s3, $s3, $s6
	li $s6, 4
	mul $s3, $s3, $s6
	add $s6, $s5, $s3
	li $s3, 23093
	sw $s3, 0($s6)
	li $s5, 0
	addi $s7, $fp, -1028
	sw $s6, -2320($fp)
	li $s6, 3
	sw $s4, -2324($fp)
	li $s4, 10
	mul $s5, $s5, $s4
	add $s4, $s5, $s6
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 24295
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1028
	sw $s5, -2328($fp)
	li $s5, 4
	sw $s4, -2332($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 26088
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1028
	sw $s5, -2336($fp)
	li $s5, 5
	sw $s4, -2340($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 9257
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1028
	sw $s5, -2344($fp)
	li $s5, 6
	sw $s4, -2348($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 37972
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1028
	sw $s5, -2352($fp)
	li $s5, 7
	sw $s4, -2356($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 16141
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1028
	sw $s5, -2360($fp)
	li $s5, 8
	sw $s4, -2364($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 43625
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1028
	sw $s5, -2368($fp)
	li $s5, 9
	sw $s4, -2372($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 45052
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1076
	sw $s5, -2376($fp)
	li $s5, 0
	sw $s4, -2380($fp)
	li $s4, 3
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 62712
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1076
	sw $s5, -2384($fp)
	li $s5, 1
	sw $s4, -2388($fp)
	li $s4, 3
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 10889
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1076
	sw $s5, -2392($fp)
	li $s5, 2
	sw $s4, -2396($fp)
	li $s4, 3
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 20719
	sw $s4, 0($s5)
	li $s6, 34437
	move $s7, $s6
	li $s6, 927
	sw $s5, -2400($fp)
	move $s5, $s6
	li $s6, 0
	sw $s5, -1084($fp)
	addi $s5, $fp, -504
	sw $s4, -2404($fp)
	li $s4, 2
	mul $s6, $s6, $s4
	add $s4, $s6, $s7
	li $s6, 4
	mul $s4, $s4, $s6
	add $s6, $s5, $s4
	li $s4, 63092
	li $s5, 1
	sw $s7, -1080($fp)
	mul $s7, $s4, $s5
	li $s4, 26724
	move $s5, $s4
	li $s4, 0
	sw $s7, -1092($fp)
	li $s7, 64947
	sw $s6, -1088($fp)
	li $s6, 0
	sw $s4, -1096($fp)
	sw $s5, -1084($fp)
	bne $s7, $s6, label1535

	j label1534

label1534:
	li $t0, 1
	sw $t0, -1096($fp)

label1535:
	li $t0, 32754
	lw $t1, -1096($fp)
	mul $t2, $t1, $t0
	lw $t3, -1088($fp)
	lw $t0, 0($t3)
	sw $t0, -1104($fp)
	sw $t2, -1100($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1100($fp)
	move $a3, $t0
	lw $t1, -1084($fp)
	move $a2, $t1
	lw $t2, -1092($fp)
	move $a1, $t2
	lw $t3, -1104($fp)
	move $a0, $t3
	jal eDq
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4

	li $v0, 1
	lw $t0, -1080($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -424
	li $t3, 0
	li $t4, 15032
	li $t5, 0
	sw $t1, -1108($fp)
	sw $t2, -1112($fp)
	sw $t3, -1116($fp)
	bne $t4, $t5, label1538

	j label1537

label1538:
	li $t0, 33292
	li $t1, 0
	bne $t0, $t1, label1536

	j label1537

label1536:
	li $t0, 1
	sw $t0, -1116($fp)

label1537:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1116($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -1120($fp)

	li $t0, 6450
	move $t1, $t0
	li $t0, 36520
	lw $t2, -704($fp)
	sub $t3, $t0, $t2
	lw $t0, -736($fp)
	lw $t4, -1080($fp)
	mul $t5, $t4, $t0
	li $t6, 5755
	div $t5, $t6
	mflo $t7
	sw $t1, -12($fp)
	sw $t3, -1124($fp)
	sw $t7, -1128($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1128($fp)
	move $a3, $t0
	lw $t1, -1124($fp)
	move $a2, $t1
	lw $t2, -12($fp)
	move $a1, $t2
	lw $t3, -1120($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1132($fp)

	li $t0, 35112
	lw $t1, -776($fp)
	mul $t2, $t1, $t0
	lw $t0, -1132($fp)
	sub $t3, $t0, $t2
	li $t2, 8
	lw $t4, -1108($fp)
	mul $t4, $t4, $t2
	add $t2, $t4, $t3
	li $t3, 4
	mul $t2, $t2, $t3
	lw $t3, -1112($fp)
	add $t4, $t3, $t2
	lw $t5, 0($t4)
	sw $t2, -1108($fp)
	move $v0, $t5
	lw $ra, 2056($sp)
	lw $fp, 2052($sp)
	addi $sp, $sp, 2060
	jr $ra

label1539:
	li $t0, 0
	li $t1, 62269
	lw $t2, -788($fp)
	sub $t3, $t1, $t2
	li $t1, 20855
	sw $t0, -1136($fp)
	ble $t3, $t1, label1543

	j label1544

label1543:
	li $t0, 1
	sw $t0, -1136($fp)

label1544:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1136($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -1140($fp)

	li $t0, 0
	lw $t1, -1140($fp)
	bne $t1, $t0, label1542

	j label1541

label1542:
	li $t0, 0
	addi $t1, $fp, -120
	li $t2, 4
	li $t3, 6
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	li $t1, 0
	bne $t0, $t1, label1540

	j label1541

label1540:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 0
	li $t4, 64068
	li $t5, 12344
	li $t6, 14834
	div $t5, $t6
	mflo $t7
	sw $t0, -1144($fp)
	sw $t1, -1148($fp)
	sw $t2, -1152($fp)
	sw $t3, -1156($fp)
	bgt $t4, $t7, label1551

	j label1552

label1551:
	li $t0, 1
	sw $t0, -1156($fp)

label1552:
	li $t0, 21626
	lw $t1, -1156($fp)
	bge $t1, $t0, label1549

	j label1550

label1549:
	li $t0, 1
	sw $t0, -1152($fp)

label1550:
	lw $t0, -724($fp)
	lw $t1, -1152($fp)
	bne $t1, $t0, label1547

	j label1548

label1547:
	li $t0, 1
	sw $t0, -1148($fp)

label1548:
	li $t0, -1
	lw $t1, -716($fp)
	mul $t2, $t0, $t1
	lw $t0, -1148($fp)
	bgt $t0, $t2, label1545

	j label1546

label1545:
	li $t0, 1
	sw $t0, -1144($fp)

label1546:
	j label1539

label1541:
	li $t0, 36640
	move $t1, $t0
	li $t0, 40922
	move $t2, $t0
	li $t0, 0
	addi $t3, $fp, -1300
	li $t4, 0
	li $t5, 9
	mul $t0, $t0, $t5
	add $t0, $t0, $t4
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t3, $t0
	li $t0, 30883
	sw $t0, 0($t4)
	li $t3, 0
	addi $t5, $fp, -1300
	li $t6, 1
	li $t7, 9
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 9076
	sw $t3, 0($t6)
	li $t5, 0
	addi $t7, $fp, -1300
	li $t8, 2
	li $t9, 9
	mul $t5, $t5, $t9
	add $t5, $t5, $t8
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t7, $t5
	li $t5, 57063
	sw $t5, 0($t8)
	li $t7, 0
	addi $t9, $fp, -1300
	li $s0, 3
	li $s1, 9
	mul $t7, $t7, $s1
	add $t7, $t7, $s0
	li $s0, 4
	mul $t7, $t7, $s0
	add $s0, $t9, $t7
	li $t7, 8972
	sw $t7, 0($s0)
	li $t9, 0
	addi $s1, $fp, -1300
	li $s2, 4
	li $s3, 9
	mul $t9, $t9, $s3
	add $t9, $t9, $s2
	li $s2, 4
	mul $t9, $t9, $s2
	add $s2, $s1, $t9
	li $t9, 54128
	sw $t9, 0($s2)
	li $s1, 0
	addi $s3, $fp, -1300
	li $s4, 5
	li $s5, 9
	mul $s1, $s1, $s5
	add $s1, $s1, $s4
	li $s4, 4
	mul $s1, $s1, $s4
	add $s4, $s3, $s1
	li $s1, 54240
	sw $s1, 0($s4)
	li $s3, 0
	addi $s5, $fp, -1300
	li $s6, 6
	li $s7, 9
	mul $s3, $s3, $s7
	add $s3, $s3, $s6
	li $s6, 4
	mul $s3, $s3, $s6
	add $s6, $s5, $s3
	li $s3, 19862
	sw $s3, 0($s6)
	li $s5, 0
	addi $s7, $fp, -1300
	sw $s6, -2408($fp)
	li $s6, 7
	sw $s4, -2412($fp)
	li $s4, 9
	mul $s5, $s5, $s4
	add $s4, $s5, $s6
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 9311
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1300
	sw $s5, -2416($fp)
	li $s5, 8
	sw $s4, -2420($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 23141
	sw $s4, 0($s5)
	li $s6, 0
	li $s7, 0
	sw $s7, -1316($fp)
	li $s7, 0
	sw $s7, -1320($fp)
	li $s7, 20789
	sw $s6, -1312($fp)
	li $s6, -1
	sw $s5, -2424($fp)
	mul $s5, $s6, $s7
	li $s6, 6868
	sw $t1, -1304($fp)
	sw $t2, -1308($fp)
	bne $s5, $s6, label1557

	j label1558

label1557:
	li $t0, 1
	sw $t0, -1320($fp)

label1558:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -1300
	li $t4, 9
	mul $t2, $t2, $t4
	lw $t4, -696($fp)
	add $t2, $t2, $t4
	li $t5, 4
	mul $t2, $t2, $t5
	add $t5, $t3, $t2
	li $t2, 7791
	lw $t3, 0($t5)
	sw $t0, -1324($fp)
	sw $t1, -1328($fp)
	beq $t3, $t2, label1561

	j label1562

label1561:
	li $t0, 1
	sw $t0, -1328($fp)

label1562:
	li $t0, 47514
	lw $t1, -708($fp)
	mul $t2, $t1, $t0
	lw $t0, -672($fp)
	div $t2, $t0
	mflo $t3
	li $t2, 0
	li $t4, 0
	addi $t5, $fp, -1076
	li $t6, 1
	li $t7, 3
	mul $t4, $t4, $t7
	add $t4, $t4, $t6
	li $t6, 4
	mul $t4, $t4, $t6
	add $t6, $t5, $t4
	li $t4, 62546
	lw $t5, 0($t6)
	sw $t2, -1336($fp)
	sw $t3, -1332($fp)
	ble $t5, $t4, label1563

	j label1564

label1563:
	li $t0, 1
	sw $t0, -1336($fp)

label1564:
	lw $t0, -708($fp)
	lw $t1, -688($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 39571
	add $t4, $t2, $t3
	sw $t4, -1340($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1340($fp)
	move $a3, $t0
	lw $t1, -1336($fp)
	move $a2, $t1
	lw $t2, -1332($fp)
	move $a1, $t2
	lw $t3, -1328($fp)
	move $a0, $t3
	jal eDq
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1344($fp)

	lw $t0, -776($fp)
	lw $t1, -1344($fp)
	bne $t1, $t0, label1559

	j label1560

label1559:
	li $t0, 1
	sw $t0, -1324($fp)

label1560:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1324($fp)
	move $a1, $t0
	lw $t1, -1320($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1348($fp)

	li $t0, 0
	lw $t1, -1348($fp)
	bne $t1, $t0, label1556

	j label1555

label1555:
	li $t0, 1
	sw $t0, -1316($fp)

label1556:
	li $t0, 0
	addi $t1, $fp, -136
	li $t2, 1
	mul $t0, $t0, $t2
	lw $t2, -1304($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	li $t0, 0
	addi $t1, $fp, -120
	li $t4, 5
	li $t5, 6
	mul $t0, $t0, $t5
	add $t0, $t0, $t4
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t1, $t0
	lw $t0, 0($t4)
	lw $t1, 0($t3)
	mul $t3, $t1, $t0
	lw $t0, -1316($fp)
	blt $t0, $t3, label1553

	j label1554

label1553:
	li $t0, 1
	sw $t0, -1312($fp)

label1554:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1076
	li $t3, 0
	li $t4, 0
	sw $t0, -1352($fp)
	sw $t1, -1356($fp)
	sw $t2, -1360($fp)
	sw $t3, -1364($fp)
	sw $t4, -1368($fp)
	lw $t5, -784($fp)
	lw $t6, -772($fp)
	beq $t6, $t5, label1570

	j label1571

label1570:
	li $t0, 1
	sw $t0, -1368($fp)

label1571:
	li $t0, 45326
	lw $t1, -1368($fp)
	beq $t1, $t0, label1568

	j label1569

label1568:
	li $t0, 1
	sw $t0, -1364($fp)

label1569:
	li $t0, 3
	lw $t1, -1356($fp)
	mul $t1, $t1, $t0
	lw $t0, -1364($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -1360($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	li $t3, 0
	sw $t1, -1356($fp)
	bne $t4, $t3, label1565

	j label1567

label1567:
	li $t0, 0
	li $t1, 16571
	li $t2, 0
	sw $t0, -1372($fp)
	bne $t1, $t2, label1573

	j label1572

label1572:
	li $t0, 1
	sw $t0, -1372($fp)

label1573:
	lw $t0, -784($fp)
	lw $t1, -1372($fp)
	div $t1, $t0
	mflo $t2
	lw $t4, -696($fp)
	move $t3, $t4
	li $t5, 0
	li $t6, 30264
	li $t7, 0
	sw $t2, -1376($fp)
	sw $t3, -724($fp)
	sw $t5, -1380($fp)
	bne $t6, $t7, label1576

	j label1575

label1576:
	li $t0, 0
	lw $t1, -708($fp)
	bne $t1, $t0, label1574

	j label1575

label1574:
	li $t0, 1
	sw $t0, -1380($fp)

label1575:
	li $t0, 0
	li $t1, 645
	li $t2, 0
	sw $t0, -1384($fp)
	bne $t1, $t2, label1579

	j label1578

label1579:
	li $t0, 0
	lw $t1, -20($fp)
	bne $t1, $t0, label1577

	j label1578

label1577:
	li $t0, 1
	sw $t0, -1384($fp)

label1578:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1384($fp)
	move $a2, $t0
	lw $t1, -1380($fp)
	move $a1, $t1
	lw $t2, -724($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1388($fp)

	lw $t0, -1388($fp)
	lw $t1, -1376($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label1565

	j label1566

label1565:
	li $t0, 1
	sw $t0, -1352($fp)

label1566:
	li $t0, 0
	li $t1, 14964
	lw $t2, -672($fp)
	add $t3, $t1, $t2
	li $t1, 0
	li $t4, 0
	li $t5, 0
	sw $t0, -1392($fp)
	sw $t1, -1400($fp)
	sw $t3, -1396($fp)
	sw $t4, -1404($fp)
	lw $t6, -1304($fp)
	bne $t6, $t5, label1587

	j label1586

label1586:
	li $t0, 1
	sw $t0, -1404($fp)

label1587:
	lw $t0, -712($fp)
	lw $t1, -1404($fp)
	bne $t1, $t0, label1584

	j label1585

label1584:
	li $t0, 1
	sw $t0, -1400($fp)

label1585:
	lw $t1, -724($fp)
	move $t0, $t1
	li $t2, 10005
	lw $t3, -788($fp)
	add $t4, $t2, $t3
	add $t2, $t4, $t1
	sw $t0, -732($fp)
	sw $t2, -1408($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1408($fp)
	move $a2, $t0
	lw $t1, -732($fp)
	move $a1, $t1
	lw $t2, -1400($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1412($fp)

	li $t0, 64713
	li $t1, 0
	li $t2, 0
	li $t3, 27309
	lw $t4, -1308($fp)
	sub $t5, $t3, $t4
	li $t3, 0
	sw $t0, -1416($fp)
	sw $t1, -1420($fp)
	sw $t2, -1424($fp)
	bne $t5, $t3, label1590

	j label1592

label1592:
	li $t0, 24839
	li $t1, 0
	bne $t0, $t1, label1590

	j label1591

label1590:
	li $t0, 1
	sw $t0, -1424($fp)

label1591:
	li $t0, 20803
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, 0
	li $t1, 63949
	sw $t0, -1432($fp)
	sw $t2, -1428($fp)
	lw $t3, -776($fp)
	beq $t3, $t1, label1595

	j label1594

label1595:
	li $t0, 0
	lw $t1, -736($fp)
	bne $t1, $t0, label1593

	j label1594

label1593:
	li $t0, 1
	sw $t0, -1432($fp)

label1594:
	lw $t1, -16($fp)
	move $t0, $t1
	sw $t0, -780($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -780($fp)
	move $a3, $t0
	lw $t1, -1432($fp)
	move $a2, $t1
	lw $t2, -1428($fp)
	move $a1, $t2
	lw $t3, -1424($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1436($fp)

	li $t0, 0
	lw $t1, -1436($fp)
	bne $t1, $t0, label1589

	j label1588

label1588:
	li $t0, 1
	sw $t0, -1420($fp)

label1589:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1420($fp)
	move $a3, $t0
	lw $t1, -1416($fp)
	move $a2, $t1
	lw $t2, -1412($fp)
	move $a1, $t2
	lw $t3, -1396($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1440($fp)

	li $t0, 0
	lw $t1, -1440($fp)
	bne $t1, $t0, label1583

	j label1582

label1583:
	li $t0, 0
	lw $t1, -696($fp)
	bne $t1, $t0, label1580

	j label1582

label1582:
	li $t0, 225
	lw $t1, -696($fp)
	beq $t0, $t1, label1580

	j label1581

label1580:
	li $t0, 1
	sw $t0, -1392($fp)

label1581:
	lw $t1, -1392($fp)
	move $t0, $t1
	li $t2, 0
	li $t3, 0
	addi $t4, $fp, -504
	li $t5, 1
	li $t6, 2
	mul $t3, $t3, $t6
	add $t3, $t3, $t5
	li $t5, 4
	mul $t3, $t3, $t5
	add $t5, $t4, $t3
	lw $t3, 0($t5)
	li $t4, 0
	sw $t0, -728($fp)
	sw $t2, -1444($fp)
	bne $t3, $t4, label1600

	j label1599

label1599:
	li $t0, 1
	sw $t0, -1444($fp)

label1600:
	lw $t1, -1444($fp)
	move $t0, $t1
	li $t2, 0
	sw $t0, -716($fp)
	bne $t0, $t2, label1596

	j label1597

label1596:

label1601:
	li $t0, 57288
	li $t1, 0
	bne $t0, $t1, label1602

	j label1604

label1604:
	li $t0, -1
	lw $t1, -20($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label1602

	j label1603

label1602:
	li $t0, 0
	addi $t1, $fp, -1076
	li $t2, 0
	li $t3, 3
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	j label1601

label1603:
	j label1598

label1597:

label1605:
	li $t0, 0
	addi $t1, $fp, -1028
	li $t2, 10
	mul $t0, $t0, $t2
	lw $t2, -672($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	li $t0, 0
	li $t1, 45992
	sw $t0, -1452($fp)
	sw $t3, -1448($fp)
	lw $t4, -736($fp)
	bge $t4, $t1, label1608

	j label1609

label1608:
	li $t0, 1
	sw $t0, -1452($fp)

label1609:
	lw $t1, -1448($fp)
	lw $t0, 0($t1)
	sw $t0, -1456($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1452($fp)
	move $a1, $t0
	lw $t1, -1456($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1460($fp)

	li $t0, 0
	addi $t1, $fp, -296
	li $t2, 10
	mul $t0, $t0, $t2
	lw $t2, -696($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	lw $t1, -1460($fp)
	add $t3, $t1, $t0
	sub $t0, $t3, $t2
	li $t3, 0
	li $t4, 0
	addi $t5, $fp, -120
	li $t6, 0
	li $t7, 6
	mul $t4, $t4, $t7
	add $t4, $t4, $t6
	li $t6, 4
	mul $t4, $t4, $t6
	add $t6, $t5, $t4
	lw $t4, 0($t6)
	li $t5, 0
	sw $t0, -1464($fp)
	sw $t3, -1468($fp)
	bne $t4, $t5, label1611

	j label1610

label1610:
	li $t0, 1
	sw $t0, -1468($fp)

label1611:
	lw $t0, -1468($fp)
	lw $t1, -1464($fp)
	sub $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label1606

	j label1607

label1606:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -868
	li $t4, 2
	li $t5, 5
	mul $t2, $t2, $t5
	add $t2, $t2, $t4
	li $t4, 4
	mul $t2, $t2, $t4
	add $t4, $t3, $t2
	lw $t2, 0($t4)
	sw $t0, -1472($fp)
	sw $t1, -1476($fp)
	lw $t3, -720($fp)
	bgt $t3, $t2, label1614

	j label1615

label1614:
	li $t0, 1
	sw $t0, -1476($fp)

label1615:
	lw $t0, -20($fp)
	lw $t1, -1476($fp)
	beq $t1, $t0, label1612

	j label1613

label1612:
	li $t0, 1
	sw $t0, -1472($fp)

label1613:
	j label1605

label1607:

label1598:
	j label1530

label1532:

	li $v0, 1
	lw $t0, -772($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -776($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -780($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -784($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -788($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 12260
	move $t2, $t1
	sw $t2, -772($fp)
	move $v0, $t2
	lw $ra, 2056($sp)
	lw $fp, 2052($sp)
	addi $sp, $sp, 2060
	jr $ra

	li $v0, 1
	lw $t0, -772($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -776($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -780($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -784($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -788($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 11389
	lw $t4, -736($fp)
	div $t4, $t3
	mflo $t5
	li $t3, -1
	mul $t6, $t3, $t5
	li $t3, 1
	mul $t1, $t1, $t3
	add $t1, $t1, $t6
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	li $t1, -1
	lw $t2, 0($t3)
	mul $t3, $t1, $t2
	move $v0, $t3
	lw $ra, 2056($sp)
	lw $fp, 2052($sp)
	addi $sp, $sp, 2060
	jr $ra

	li $t0, 17752
	move $t1, $t0
	li $t0, 18539
	move $t2, $t0
	li $t0, 0
	addi $t3, $fp, -1492
	li $t4, 0
	li $t5, 1
	mul $t0, $t0, $t5
	add $t0, $t0, $t4
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t3, $t0
	li $t0, 51935
	sw $t0, 0($t4)
	li $t3, 14763
	move $t5, $t3
	li $t3, 58110
	move $t6, $t3
	li $t3, 33394
	move $t7, $t3
	li $t3, 48294
	move $t8, $t3
	sw $t1, -1496($fp)
	sw $t2, -1500($fp)
	sw $t5, -1504($fp)
	sw $t6, -1508($fp)
	sw $t7, -1512($fp)
	sw $t8, -1516($fp)

	li $v0, 1
	lw $t0, -1496($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1500($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1492
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1520($fp)

	li $v0, 1
	lw $t0, -1520($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1504($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1508($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1512($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1516($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 0
	li $t4, 0
	addi $t5, $fp, -472
	li $t6, 3
	mul $t4, $t4, $t6
	lw $t6, -724($fp)
	add $t4, $t4, $t6
	li $t7, 4
	mul $t4, $t4, $t7
	add $t7, $t5, $t4
	lw $t4, 0($t7)
	sw $t1, -1524($fp)
	sw $t2, -1528($fp)
	sw $t3, -1532($fp)
	sw $t4, -1536($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1536($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -1540($fp)

	li $t0, -1
	lw $t1, -1540($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	li $t3, 0
	sw $t0, -1548($fp)
	sw $t2, -1544($fp)
	lw $t4, -1496($fp)
	bne $t4, $t3, label1623

	j label1622

label1622:
	li $t0, 1
	sw $t0, -1548($fp)

label1623:
	lw $t0, -716($fp)
	lw $t1, -1548($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	li $t4, 37900
	li $t5, 0
	li $t6, 0
	li $t7, 49966
	sw $t2, -1552($fp)
	sw $t3, -1556($fp)
	sw $t4, -1560($fp)
	sw $t5, -1564($fp)
	sw $t6, -1568($fp)
	lw $t8, -1500($fp)
	ble $t7, $t8, label1628

	j label1629

label1628:
	li $t0, 1
	sw $t0, -1568($fp)

label1629:
	lw $t0, -1516($fp)
	lw $t1, -1568($fp)
	bne $t1, $t0, label1626

	j label1627

label1626:
	li $t0, 1
	sw $t0, -1564($fp)

label1627:
	li $t0, 0
	lw $t1, -780($fp)
	lw $t2, -728($fp)
	sub $t3, $t2, $t1
	li $t4, 13022
	sw $t0, -1572($fp)
	bne $t3, $t4, label1630

	j label1631

label1630:
	li $t0, 1
	sw $t0, -1572($fp)

label1631:
	li $t0, 38545
	lw $t1, -700($fp)
	add $t2, $t1, $t0
	lw $t0, -672($fp)
	sub $t3, $t2, $t0
	li $t2, 0
	lw $t4, -1516($fp)
	lw $t5, -740($fp)
	div $t5, $t4
	mflo $t6
	li $t7, 0
	sw $t2, -1580($fp)
	sw $t3, -1576($fp)
	bne $t6, $t7, label1634

	j label1633

label1634:
	li $t0, 64930
	li $t1, 0
	bne $t0, $t1, label1632

	j label1633

label1632:
	li $t0, 1
	sw $t0, -1580($fp)

label1633:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1580($fp)
	move $a3, $t0
	lw $t1, -1576($fp)
	move $a2, $t1
	lw $t2, -1572($fp)
	move $a1, $t2
	lw $t3, -1564($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1584($fp)

	li $t0, 23027
	lw $t1, -1584($fp)
	sub $t2, $t1, $t0
	sw $t2, -1588($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1588($fp)
	move $a1, $t0
	lw $t1, -1560($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1592($fp)

	li $t0, 37723
	lw $t1, -1592($fp)
	bne $t1, $t0, label1624

	j label1625

label1624:
	li $t0, 1
	sw $t0, -1556($fp)

label1625:
	li $t0, 0
	li $t1, 26703
	li $t2, 47866
	sub $t3, $t1, $t2
	li $t1, 58526
	sw $t0, -1596($fp)
	ble $t3, $t1, label1635

	j label1636

label1635:
	li $t0, 1
	sw $t0, -1596($fp)

label1636:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1596($fp)
	move $a3, $t0
	lw $t1, -1556($fp)
	move $a2, $t1
	lw $t2, -1552($fp)
	move $a1, $t2
	lw $t3, -1544($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1600($fp)

	li $t0, 25116
	li $t1, 0
	li $t2, 48091
	li $t3, 44677
	sub $t4, $t2, $t3
	li $t2, 32605
	sw $t0, -1604($fp)
	sw $t1, -1608($fp)
	beq $t4, $t2, label1637

	j label1638

label1637:
	li $t0, 1
	sw $t0, -1608($fp)

label1638:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1608($fp)
	move $a2, $t0
	lw $t1, -1604($fp)
	move $a1, $t1
	lw $t2, -1600($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1612($fp)

	lw $t0, -1516($fp)
	lw $t1, -680($fp)
	div $t1, $t0
	mflo $t2
	lw $t3, -1612($fp)
	sub $t4, $t3, $t2
	li $t2, 39844
	bge $t4, $t2, label1620

	j label1621

label1620:
	li $t0, 1
	sw $t0, -1532($fp)

label1621:
	lw $t0, -736($fp)
	lw $t1, -1532($fp)
	bne $t1, $t0, label1618

	j label1619

label1618:
	li $t0, 1
	sw $t0, -1528($fp)

label1619:
	lw $t0, -1512($fp)
	lw $t1, -1528($fp)
	blt $t1, $t0, label1616

	j label1617

label1616:
	li $t0, 1
	sw $t0, -1524($fp)

label1617:
	lw $t0, -1524($fp)
	move $v0, $t0
	lw $ra, 2056($sp)
	lw $fp, 2052($sp)
	addi $sp, $sp, 2060
	jr $ra

	li $v0, 1
	lw $t0, -1496($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1500($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1492
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1616($fp)

	li $v0, 1
	lw $t0, -1616($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1504($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1508($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1512($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1516($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t1, -1620($fp)
	lw $t3, -1516($fp)
	bne $t3, $t2, label1639

	j label1640

label1639:
	li $t0, 1
	sw $t0, -1620($fp)

label1640:
	lw $t0, -1620($fp)
	move $v0, $t0
	lw $ra, 2056($sp)
	lw $fp, 2052($sp)
	addi $sp, $sp, 2060
	jr $ra

label1641:
	li $t0, 0
	li $t1, 39800
	lw $t2, -1504($fp)
	mul $t3, $t2, $t1
	li $t1, 0
	sw $t0, -1624($fp)
	bne $t3, $t1, label1646

	j label1645

label1646:
	li $t0, 0
	lw $t1, -1508($fp)
	bne $t1, $t0, label1644

	j label1645

label1644:
	li $t0, 1
	sw $t0, -1624($fp)

label1645:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1624($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -1628($fp)

	li $t0, 28686
	lw $t1, -1628($fp)
	beq $t1, $t0, label1642

	j label1643

label1642:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -120
	li $t4, 6
	mul $t2, $t2, $t4
	lw $t4, -724($fp)
	add $t2, $t2, $t4
	li $t5, 4
	mul $t2, $t2, $t5
	add $t5, $t3, $t2
	li $t2, 20300
	li $t3, -1
	mul $t6, $t3, $t2
	li $t2, 54785
	sub $t3, $t6, $t2
	lw $t2, 0($t5)
	sw $t0, -1632($fp)
	sw $t1, -1636($fp)
	sw $t2, -1644($fp)
	sw $t3, -1640($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1640($fp)
	move $a1, $t0
	lw $t1, -1644($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1648($fp)

	li $t0, 0
	lw $t1, -1648($fp)
	bne $t1, $t0, label1651

	j label1650

label1650:
	li $t0, 1
	sw $t0, -1636($fp)

label1651:
	li $t0, -1
	lw $t1, -1636($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label1647

	j label1649

label1649:
	li $t0, 0
	li $t1, 0
	li $t2, 34079
	sw $t0, -1652($fp)
	sw $t1, -1656($fp)
	lw $t3, -784($fp)
	beq $t2, $t3, label1654

	j label1655

label1654:
	li $t0, 1
	sw $t0, -1656($fp)

label1655:
	li $t0, 23898
	lw $t1, -1656($fp)
	bne $t1, $t0, label1652

	j label1653

label1652:
	li $t0, 1
	sw $t0, -1652($fp)

label1653:
	lw $t0, -680($fp)
	lw $t1, -1652($fp)
	ble $t1, $t0, label1647

	j label1648

label1647:
	li $t0, 1
	sw $t0, -1632($fp)

label1648:
	lw $t0, -1632($fp)
	move $v0, $t0
	lw $ra, 2056($sp)
	lw $fp, 2052($sp)
	addi $sp, $sp, 2060
	jr $ra

	j label1641

label1643:

label1656:
	li $t0, 25023
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, 0
	li $t1, 46339
	li $t3, 0
	sw $t0, -1664($fp)
	sw $t2, -1660($fp)
	bne $t1, $t3, label1660

	j label1659

label1659:
	li $t0, 1
	sw $t0, -1664($fp)

label1660:
	lw $t0, -788($fp)
	lw $t1, -1664($fp)
	add $t2, $t1, $t0
	sw $t2, -1668($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1668($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -1672($fp)

	lw $t0, -1672($fp)
	lw $t1, -1660($fp)
	sub $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label1657

	j label1658

label1657:
	li $t0, 0
	addi $t1, $fp, -504
	li $t2, 0
	li $t3, 2
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, -1
	lw $t1, 0($t2)
	mul $t2, $t0, $t1
	li $t0, 64879
	li $t1, 21687
	li $t3, 57539
	mul $t4, $t1, $t3
	sw $t0, -1680($fp)
	sw $t2, -1676($fp)
	sw $t4, -1684($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1684($fp)
	move $a2, $t0
	lw $t1, -1680($fp)
	move $a1, $t1
	lw $t2, -1676($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4

	j label1656

label1658:

	li $v0, 1
	lw $t0, -1496($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1500($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1492
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1688($fp)

	li $v0, 1
	lw $t0, -1688($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1504($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1508($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1512($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1516($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 57453
	lw $t4, -776($fp)
	move $t3, $t4
	li $t5, 0
	addi $t6, $fp, -136
	li $t7, 0
	li $t8, 1
	mul $t5, $t5, $t8
	add $t5, $t5, $t7
	li $t7, 4
	mul $t5, $t5, $t7
	add $t7, $t6, $t5
	li $t5, -1
	lw $t6, 0($t7)
	mul $t7, $t5, $t6
	sw $t1, -1692($fp)
	sw $t2, -1696($fp)
	sw $t3, -708($fp)
	sw $t7, -1700($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1700($fp)
	move $a1, $t0
	lw $t1, -708($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1704($fp)

	lw $t0, -1704($fp)
	lw $t1, -1696($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 29818
	sub $t4, $t2, $t3
	li $t2, 0
	addi $t3, $fp, -1492
	li $t5, 0
	li $t6, 1
	mul $t2, $t2, $t6
	add $t2, $t2, $t5
	li $t5, 4
	mul $t2, $t2, $t5
	add $t5, $t3, $t2
	lw $t2, 0($t5)
	bge $t4, $t2, label1661

	j label1662

label1661:
	li $t0, 1
	sw $t0, -1692($fp)

label1662:
	lw $t0, -1692($fp)
	move $v0, $t0
	lw $ra, 2056($sp)
	lw $fp, 2052($sp)
	addi $sp, $sp, 2060
	jr $ra

	li $v0, 1
	lw $t0, -1496($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1500($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1492
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1708($fp)

	li $v0, 1
	lw $t0, -1708($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1504($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1508($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1512($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1516($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	sw $t1, -1712($fp)
	lw $t2, -736($fp)
	lw $t3, -1504($fp)
	beq $t3, $t2, label1663

	j label1664

label1663:
	li $t0, 1
	sw $t0, -1712($fp)

label1664:
	lw $t1, -748($fp)
	move $t0, $t1
	sw $t0, -744($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -744($fp)
	move $a2, $t0
	lw $t1, -780($fp)
	move $a1, $t1
	lw $t2, -1712($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1716($fp)

	lw $t0, -1716($fp)
	move $v0, $t0
	lw $ra, 2056($sp)
	lw $fp, 2052($sp)
	addi $sp, $sp, 2060
	jr $ra

	j label1525

label1527:
	j label1524

label1523:
	li $t0, 0
	li $t1, 38906
	lw $t2, -716($fp)
	div $t2, $t1
	mflo $t3
	lw $t1, -672($fp)
	lw $t4, -744($fp)
	add $t5, $t4, $t1
	sw $t0, -1720($fp)
	bge $t3, $t5, label1665

	j label1666

label1665:
	li $t0, 1
	sw $t0, -1720($fp)

label1666:
	lw $t1, -1720($fp)
	move $t0, $t1
	sw $t0, -20($fp)
	move $v0, $t0
	lw $ra, 2056($sp)
	lw $fp, 2052($sp)
	addi $sp, $sp, 2060
	jr $ra

label1524:
	j label1519

label1521:
	j label1518

label1517:
	li $t0, 0
	li $t1, 10811
	sw $t0, -1724($fp)
	lw $t2, -708($fp)
	bgt $t1, $t2, label1670

	j label1671

label1670:
	li $t0, 1
	sw $t0, -1724($fp)

label1671:
	lw $t0, -708($fp)
	lw $t1, -668($fp)
	mul $t2, $t1, $t0
	sw $t2, -1728($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1728($fp)
	move $a1, $t0
	lw $t1, -1724($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1732($fp)

	lw $t0, -688($fp)
	lw $t1, -1732($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label1667

	j label1668

label1667:

label1672:
	li $t0, 0
	addi $t1, $fp, -664
	li $t2, 0
	li $t3, 0
	sw $t0, -1736($fp)
	sw $t1, -1740($fp)
	sw $t2, -1744($fp)
	lw $t4, -20($fp)
	bne $t4, $t3, label1675

	j label1677

label1677:
	li $t0, 0
	lw $t1, -732($fp)
	bne $t1, $t0, label1675

	j label1676

label1675:
	li $t0, 1
	sw $t0, -1744($fp)

label1676:
	lw $t1, -704($fp)
	move $t0, $t1
	li $t2, 0
	li $t3, 0
	sw $t0, -692($fp)
	sw $t2, -1748($fp)
	sw $t3, -1752($fp)
	lw $t4, -680($fp)
	lw $t5, -712($fp)
	ble $t5, $t4, label1680

	j label1681

label1680:
	li $t0, 1
	sw $t0, -1752($fp)

label1681:
	lw $t0, -716($fp)
	lw $t1, -1752($fp)
	ble $t1, $t0, label1678

	j label1679

label1678:
	li $t0, 1
	sw $t0, -1748($fp)

label1679:
	li $t0, 0
	li $t1, 40550
	sw $t0, -1756($fp)
	lw $t2, -748($fp)
	bge $t2, $t1, label1682

	j label1683

label1682:
	li $t0, 1
	sw $t0, -1756($fp)

label1683:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1756($fp)
	move $a3, $t0
	lw $t1, -1748($fp)
	move $a2, $t1
	lw $t2, -692($fp)
	move $a1, $t2
	lw $t3, -1744($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1760($fp)

	li $t0, 10
	lw $t1, -1736($fp)
	mul $t1, $t1, $t0
	lw $t0, -1760($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -1740($fp)
	add $t3, $t2, $t1
	li $t4, -1
	lw $t5, 0($t3)
	mul $t3, $t4, $t5
	li $t4, 0
	sw $t1, -1736($fp)
	bne $t3, $t4, label1673

	j label1674

label1673:

label1684:
	li $t0, 0
	addi $t1, $fp, -120
	li $t2, 6
	mul $t0, $t0, $t2
	lw $t2, -724($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	li $t1, 0
	bne $t0, $t1, label1685

	j label1686

label1685:
	li $t0, 0
	li $t1, 73
	li $t2, 58677
	sw $t0, -1764($fp)
	bge $t1, $t2, label1687

	j label1688

label1687:
	li $t0, 1
	sw $t0, -1764($fp)

label1688:
	li $t0, 0
	li $t1, 0
	sw $t0, -1768($fp)
	lw $t2, -744($fp)
	bne $t2, $t1, label1692

	j label1691

label1692:
	li $t0, 0
	lw $t1, -712($fp)
	bne $t1, $t0, label1689

	j label1691

label1691:
	li $t0, 33541
	li $t1, 0
	bne $t0, $t1, label1689

	j label1690

label1689:
	li $t0, 1
	sw $t0, -1768($fp)

label1690:
	li $t0, 0
	sw $t0, -1772($fp)
	lw $t1, -716($fp)
	bge $t1, $t1, label1695

	j label1694

label1695:
	li $t0, 0
	lw $t1, -716($fp)
	bne $t1, $t0, label1693

	j label1694

label1693:
	li $t0, 1
	sw $t0, -1772($fp)

label1694:
	li $t0, 0
	sw $t0, -1776($fp)
	lw $t1, -676($fp)
	lw $t2, -736($fp)
	bgt $t2, $t1, label1696

	j label1698

label1698:
	li $t0, 0
	lw $t1, -724($fp)
	bne $t1, $t0, label1696

	j label1697

label1696:
	li $t0, 1
	sw $t0, -1776($fp)

label1697:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1776($fp)
	move $a3, $t0
	lw $t1, -1772($fp)
	move $a2, $t1
	lw $t2, -1768($fp)
	move $a1, $t2
	lw $t3, -1764($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1780($fp)

	li $t0, 0
	li $t1, 25190
	lw $t2, -680($fp)
	sub $t3, $t1, $t2
	sw $t0, -1784($fp)
	lw $t1, -728($fp)
	bge $t3, $t1, label1699

	j label1700

label1699:
	li $t0, 1
	sw $t0, -1784($fp)

label1700:
	li $t0, 41233
	move $t1, $t0
	sw $t1, -740($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -740($fp)
	move $a1, $t0
	lw $t1, -1784($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1788($fp)

	lw $t0, -1788($fp)
	lw $t1, -1780($fp)
	mul $t2, $t1, $t0
	lw $t3, -736($fp)
	mul $t4, $t2, $t3
	move $v0, $t4
	lw $ra, 2056($sp)
	lw $fp, 2052($sp)
	addi $sp, $sp, 2060
	jr $ra

	j label1684

label1686:
	j label1672

label1674:
	j label1669

label1668:
	li $t0, 0
	li $t1, 12682
	li $t2, 0
	sw $t0, -1792($fp)
	bne $t1, $t2, label1702

	j label1701

label1701:
	li $t0, 1
	sw $t0, -1792($fp)

label1702:

label1669:

label1518:
	li $t0, -1
	lw $t1, -724($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label1703

	j label1704

label1703:

label1705:
	lw $t0, -736($fp)
	lw $t1, -700($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	li $t4, 0
	sw $t2, -1796($fp)
	sw $t3, -1800($fp)
	lw $t5, -24($fp)
	bne $t5, $t4, label1709

	j label1708

label1708:
	li $t0, 1
	sw $t0, -1800($fp)

label1709:
	lw $t0, -1800($fp)
	lw $t1, -1796($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	li $t4, 57795
	li $t5, 15541
	sw $t2, -1804($fp)
	sw $t3, -1808($fp)
	ble $t4, $t5, label1710

	j label1711

label1710:
	li $t0, 1
	sw $t0, -1808($fp)

label1711:
	li $t0, 52482
	lw $t1, -704($fp)
	add $t2, $t0, $t1
	li $t0, 0
	li $t3, 20946
	li $t4, 0
	sw $t0, -1816($fp)
	sw $t2, -1812($fp)
	bne $t3, $t4, label1713

	j label1712

label1712:
	li $t0, 1
	sw $t0, -1816($fp)

label1713:
	li $t0, 0
	li $t1, 35841
	lw $t2, -720($fp)
	mul $t3, $t1, $t2
	li $t1, 41731
	sw $t0, -1820($fp)
	bne $t3, $t1, label1714

	j label1715

label1714:
	li $t0, 1
	sw $t0, -1820($fp)

label1715:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1820($fp)
	move $a3, $t0
	lw $t1, -1816($fp)
	move $a2, $t1
	lw $t2, -1812($fp)
	move $a1, $t2
	lw $t3, -1808($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1824($fp)

	lw $t0, -1824($fp)
	lw $t1, -1804($fp)
	div $t1, $t0
	mflo $t2
	lw $t3, -736($fp)
	div $t2, $t3
	mflo $t4
	li $t2, -1
	mul $t5, $t2, $t4
	li $t2, 0
	bne $t5, $t2, label1706

	j label1707

label1706:
	li $t0, 55025
	li $t1, 0
	addi $t2, $fp, -504
	li $t3, 0
	li $t4, 59740
	li $t5, 0
	sw $t0, -1828($fp)
	sw $t1, -1832($fp)
	sw $t2, -1836($fp)
	sw $t3, -1840($fp)
	bne $t4, $t5, label1717

	j label1716

label1716:
	li $t0, 1
	sw $t0, -1840($fp)

label1717:
	li $t0, 2
	lw $t1, -1832($fp)
	mul $t1, $t1, $t0
	lw $t0, -1840($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -1836($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t3, -1828($fp)
	mul $t5, $t3, $t4
	sw $t1, -1832($fp)
	move $v0, $t5
	lw $ra, 2056($sp)
	lw $fp, 2052($sp)
	addi $sp, $sp, 2060
	jr $ra

	j label1705

label1707:

label1704:
	li $t0, 0
	addi $t1, $fp, -120
	li $t2, 0
	li $t3, 6
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	sw $t0, -1844($fp)

	li $v0, 1
	lw $t0, -1844($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -120
	li $t3, 1
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1848($fp)

	li $v0, 1
	lw $t0, -1848($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -120
	li $t3, 2
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1852($fp)

	li $v0, 1
	lw $t0, -1852($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -120
	li $t3, 3
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1856($fp)

	li $v0, 1
	lw $t0, -1856($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -120
	li $t3, 4
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1860($fp)

	li $v0, 1
	lw $t0, -1860($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -120
	li $t3, 5
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1864($fp)

	li $v0, 1
	lw $t0, -1864($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1868($fp)

	li $v0, 1
	lw $t0, -1868($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -296
	li $t3, 0
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1872($fp)

	li $v0, 1
	lw $t0, -1872($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -296
	li $t3, 1
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1876($fp)

	li $v0, 1
	lw $t0, -1876($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -296
	li $t3, 2
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1880($fp)

	li $v0, 1
	lw $t0, -1880($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -296
	li $t3, 3
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1884($fp)

	li $v0, 1
	lw $t0, -1884($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -296
	li $t3, 4
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1888($fp)

	li $v0, 1
	lw $t0, -1888($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -296
	li $t3, 5
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1892($fp)

	li $v0, 1
	lw $t0, -1892($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -296
	li $t3, 6
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1896($fp)

	li $v0, 1
	lw $t0, -1896($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -296
	li $t3, 7
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1900($fp)

	li $v0, 1
	lw $t0, -1900($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -296
	li $t3, 8
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1904($fp)

	li $v0, 1
	lw $t0, -1904($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -296
	li $t3, 9
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1908($fp)

	li $v0, 1
	lw $t0, -1908($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -668($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -672($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -676($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -680($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -684($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -424
	li $t3, 0
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1912($fp)

	li $v0, 1
	lw $t0, -1912($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -424
	li $t3, 1
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1916($fp)

	li $v0, 1
	lw $t0, -1916($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -424
	li $t3, 2
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1920($fp)

	li $v0, 1
	lw $t0, -1920($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -424
	li $t3, 3
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1924($fp)

	li $v0, 1
	lw $t0, -1924($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -424
	li $t3, 4
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1928($fp)

	li $v0, 1
	lw $t0, -1928($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -424
	li $t3, 5
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1932($fp)

	li $v0, 1
	lw $t0, -1932($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -424
	li $t3, 6
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1936($fp)

	li $v0, 1
	lw $t0, -1936($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -424
	li $t3, 7
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1940($fp)

	li $v0, 1
	lw $t0, -1940($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -688($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -692($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -696($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -700($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -704($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -472
	li $t3, 0
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1944($fp)

	li $v0, 1
	lw $t0, -1944($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -472
	li $t3, 1
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1948($fp)

	li $v0, 1
	lw $t0, -1948($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -472
	li $t3, 2
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1952($fp)

	li $v0, 1
	lw $t0, -1952($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -708($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -712($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -716($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -504
	li $t3, 0
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1956($fp)

	li $v0, 1
	lw $t0, -1956($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -504
	li $t3, 1
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1960($fp)

	li $v0, 1
	lw $t0, -1960($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -720($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -724($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -728($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -664
	li $t3, 0
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1964($fp)

	li $v0, 1
	lw $t0, -1964($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -664
	li $t3, 1
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1968($fp)

	li $v0, 1
	lw $t0, -1968($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -664
	li $t3, 2
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1972($fp)

	li $v0, 1
	lw $t0, -1972($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -664
	li $t3, 3
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1976($fp)

	li $v0, 1
	lw $t0, -1976($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -664
	li $t3, 4
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1980($fp)

	li $v0, 1
	lw $t0, -1980($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -664
	li $t3, 5
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1984($fp)

	li $v0, 1
	lw $t0, -1984($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -664
	li $t3, 6
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1988($fp)

	li $v0, 1
	lw $t0, -1988($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -664
	li $t3, 7
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1992($fp)

	li $v0, 1
	lw $t0, -1992($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -664
	li $t3, 8
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1996($fp)

	li $v0, 1
	lw $t0, -1996($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -664
	li $t3, 9
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2000($fp)

	li $v0, 1
	lw $t0, -2000($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -732($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -736($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -740($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -744($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -748($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 0
	li $t4, 1218
	li $t5, 0
	addi $t6, $fp, -136
	li $t7, 0
	li $t8, 1
	mul $t5, $t5, $t8
	add $t5, $t5, $t7
	li $t7, 4
	mul $t5, $t5, $t7
	add $t7, $t6, $t5
	lw $t5, 0($t7)
	sw $t1, -2004($fp)
	sw $t2, -2008($fp)
	sw $t3, -2012($fp)
	sw $t4, -2016($fp)
	sw $t5, -2020($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2020($fp)
	move $a1, $t0
	lw $t1, -2016($fp)
	move $a0, $t1
	jal id_lwSLqNHeHB
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -2024($fp)

	li $t0, 43994
	lw $t1, -2024($fp)
	add $t2, $t1, $t0
	li $t0, 35171
	lw $t3, -16($fp)
	div $t3, $t0
	mflo $t4
	bgt $t2, $t4, label1722

	j label1723

label1722:
	li $t0, 1
	sw $t0, -2012($fp)

label1723:
	li $t0, 0
	addi $t1, $fp, -424
	li $t2, 8
	mul $t0, $t0, $t2
	lw $t2, -672($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	li $t0, 0
	li $t1, 51179
	li $t4, 35997
	sw $t0, -2032($fp)
	sw $t3, -2028($fp)
	ble $t1, $t4, label1724

	j label1725

label1724:
	li $t0, 1
	sw $t0, -2032($fp)

label1725:
	lw $t0, -732($fp)
	lw $t1, -716($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 27089
	add $t4, $t2, $t3
	lw $t3, -2028($fp)
	lw $t2, 0($t3)
	sw $t2, -2040($fp)
	sw $t4, -2036($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2036($fp)
	move $a2, $t0
	lw $t1, -2032($fp)
	move $a1, $t1
	lw $t2, -2040($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2044($fp)

	lw $t0, -2044($fp)
	lw $t1, -2012($fp)
	beq $t1, $t0, label1720

	j label1721

label1720:
	li $t0, 1
	sw $t0, -2008($fp)

label1721:
	li $t0, 40724
	li $t1, 10758
	li $t2, 56907
	mul $t3, $t1, $t2
	li $t1, -1
	mul $t2, $t1, $t3
	lw $t3, -684($fp)
	move $t1, $t3
	li $t4, 14700
	move $t5, $t4
	sw $t0, -2048($fp)
	sw $t1, -700($fp)
	sw $t2, -2052($fp)
	sw $t5, -724($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -724($fp)
	move $a0, $t0
	jal id_SzpmUPUcJF
	move $t1, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t1, -2056($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2056($fp)
	move $a2, $t0
	lw $t1, -700($fp)
	move $a1, $t1
	lw $t2, -2052($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2060($fp)

	lw $t0, -2060($fp)
	lw $t1, -2048($fp)
	add $t2, $t1, $t0
	lw $t3, -2008($fp)
	bne $t3, $t2, label1718

	j label1719

label1718:
	li $t0, 1
	sw $t0, -2004($fp)

label1719:
	lw $t0, -2004($fp)
	move $v0, $t0
	lw $ra, 2056($sp)
	lw $fp, 2052($sp)
	addi $sp, $sp, 2060
	jr $ra

id_i055P7jPd:
	addi $sp, $sp, -92
	sw $ra, 88($sp)
	sw $fp, 84($sp)
	addi $fp, $sp, 92
	sw $a0, -12($fp)
	sw $a1, -96($fp)

	li $t0, 0
	addi $t1, $fp, -76
	li $t2, 0
	li $t3, 4
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 64078
	sw $t0, 0($t2)
	li $t1, 0
	addi $t3, $fp, -76
	li $t4, 1
	li $t5, 4
	mul $t1, $t1, $t5
	add $t1, $t1, $t4
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t3, $t1
	li $t1, 59734
	sw $t1, 0($t4)
	li $t3, 0
	addi $t5, $fp, -76
	li $t6, 2
	li $t7, 4
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 53606
	sw $t3, 0($t6)
	li $t5, 0
	addi $t7, $fp, -76
	li $t8, 3
	li $t9, 4
	mul $t5, $t5, $t9
	add $t5, $t5, $t8
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t7, $t5
	li $t5, 9353
	sw $t5, 0($t8)
	li $t7, 0
	addi $t9, $fp, -76
	li $s0, 0
	li $s1, 4
	mul $t7, $t7, $s1
	add $t7, $t7, $s0
	li $s0, 4
	mul $t7, $t7, $s0
	add $s0, $t9, $t7
	lw $t7, 0($s0)
	sw $t7, -80($fp)

	li $v0, 1
	lw $t0, -80($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -76
	li $t3, 1
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -84($fp)

	li $v0, 1
	lw $t0, -84($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -76
	li $t3, 2
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -88($fp)

	li $v0, 1
	lw $t0, -88($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -76
	li $t3, 3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -92($fp)

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
	addi $t2, $fp, -76
	li $t3, 3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	li $t1, -1
	lw $t2, 0($t3)
	mul $t3, $t1, $t2
	move $t1, $t3
	sw $t1, -12($fp)
	move $v0, $t1
	lw $ra, 88($sp)
	lw $fp, 84($sp)
	addi $sp, $sp, 92
	jr $ra

id_c1NZYUB0A:
	addi $sp, $sp, -16
	sw $ra, 12($sp)
	sw $fp, 8($sp)
	addi $fp, $sp, 16
	sw $a0, -20($fp)
	sw $a1, -24($fp)
	sw $a2, -28($fp)

	li $t0, 0
	li $t1, 2494
	li $t2, 2754
	li $t3, 13333
	li $t4, -1
	mul $t5, $t4, $t3
	add $t3, $t2, $t5
	sw $t0, -12($fp)
	blt $t1, $t3, label1726

	j label1727

label1726:
	li $t0, 1
	sw $t0, -12($fp)

label1727:
	li $t0, 0
	li $t1, 43727
	li $t2, 0
	sw $t0, -16($fp)
	bne $t1, $t2, label1729

	j label1728

label1728:
	li $t0, 1
	sw $t0, -16($fp)

label1729:
	lw $t0, -16($fp)
	move $v0, $t0
	lw $ra, 12($sp)
	lw $fp, 8($sp)
	addi $sp, $sp, 16
	jr $ra

id_rRKBa:
	addi $sp, $sp, -244
	sw $ra, 240($sp)
	sw $fp, 236($sp)
	addi $fp, $sp, 244
	sw $a0, -12($fp)
	sw $a1, -16($fp)
	sw $a2, -20($fp)

	li $t0, 15436
	move $t1, $t0
	li $t0, 5593
	move $t2, $t0
	li $t0, 59268
	move $t3, $t0
	li $t0, 2382
	move $t4, $t0
	li $t0, 26539
	move $t5, $t0
	li $t0, 0
	addi $t6, $fp, -84
	li $t7, 0
	li $t8, 4
	mul $t0, $t0, $t8
	add $t0, $t0, $t7
	li $t7, 4
	mul $t0, $t0, $t7
	add $t7, $t6, $t0
	li $t0, 29574
	sw $t0, 0($t7)
	li $t6, 0
	addi $t8, $fp, -84
	li $t9, 1
	li $s0, 4
	mul $t6, $t6, $s0
	add $t6, $t6, $t9
	li $t9, 4
	mul $t6, $t6, $t9
	add $t9, $t8, $t6
	li $t6, 44113
	sw $t6, 0($t9)
	li $t8, 0
	addi $s0, $fp, -84
	li $s1, 2
	li $s2, 4
	mul $t8, $t8, $s2
	add $t8, $t8, $s1
	li $s1, 4
	mul $t8, $t8, $s1
	add $s1, $s0, $t8
	li $t8, 16028
	sw $t8, 0($s1)
	li $s0, 0
	addi $s2, $fp, -84
	li $s3, 3
	li $s4, 4
	mul $s0, $s0, $s4
	add $s0, $s0, $s3
	li $s3, 4
	mul $s0, $s0, $s3
	add $s3, $s2, $s0
	li $s0, 23778
	sw $s0, 0($s3)
	li $s2, 45331
	move $s4, $s2
	li $s2, 51856
	move $s5, $s2
	li $s2, 53270
	move $s6, $s2
	li $s2, 0
	addi $s7, $fp, -84
	sw $s5, -112($fp)
	li $s5, 0
	sw $s4, -108($fp)
	li $s4, 4
	mul $s2, $s2, $s4
	add $s2, $s2, $s5
	li $s4, 4
	mul $s2, $s2, $s4
	add $s4, $s7, $s2
	li $s2, 0
	addi $s5, $fp, -84
	li $s7, 3
	sw $s3, -248($fp)
	li $s3, 4
	mul $s2, $s2, $s3
	add $s2, $s2, $s7
	li $s3, 4
	mul $s2, $s2, $s3
	add $s3, $s5, $s2
	lw $s2, 0($s3)
	lw $s3, 0($s4)
	div $s3, $s2
	mflo $s4
	mul $s2, $s4, $s6
	li $s3, 0
	li $s4, 48581
	move $t1, $t5
	li $s5, 14101
	move $t3, $s5
	li $s5, 5010
	move $t2, $s5
	li $s5, 0
	li $s7, 39952
	sw $s6, -116($fp)
	li $s6, -1
	sw $s5, -128($fp)
	mul $s5, $s6, $s7
	li $s6, 0
	sw $t1, -88($fp)
	sw $t2, -92($fp)
	sw $t3, -96($fp)
	sw $t4, -100($fp)
	sw $t5, -104($fp)
	sw $s3, -120($fp)
	sw $s4, -124($fp)
	bne $s5, $s6, label1732

	j label1734

label1734:
	li $t0, 0
	lw $t1, -20($fp)
	bne $t1, $t0, label1732

	j label1733

label1732:
	li $t0, 1
	sw $t0, -128($fp)

label1733:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -128($fp)
	move $a3, $t0
	lw $t1, -92($fp)
	move $a2, $t1
	lw $t2, -96($fp)
	move $a1, $t2
	lw $t3, -88($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -132($fp)

	lw $t0, -132($fp)
	lw $t1, -124($fp)
	bge $t1, $t0, label1730

	j label1731

label1730:
	li $t0, 1
	sw $t0, -120($fp)

label1731:
	lw $t1, -120($fp)
	move $t0, $t1
	li $t2, 0
	li $t3, 0
	li $t4, 28801
	sw $t0, -112($fp)
	sw $t2, -136($fp)
	sw $t3, -140($fp)
	lw $t5, -100($fp)
	bne $t4, $t5, label1740

	j label1741

label1740:
	li $t0, 1
	sw $t0, -140($fp)

label1741:
	li $t0, 3552
	lw $t1, -140($fp)
	bne $t1, $t0, label1739

	j label1737

label1739:
	li $t0, 0
	addi $t1, $fp, -84
	li $t2, 4
	mul $t0, $t0, $t2
	lw $t2, -12($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	li $t1, 0
	bne $t0, $t1, label1738

	j label1737

label1738:
	li $t0, 34150
	lw $t1, -96($fp)
	mul $t2, $t0, $t1
	li $t0, 16871
	bne $t2, $t0, label1735

	j label1737

label1737:
	li $t0, 12905
	move $t1, $t0
	li $t0, 0
	li $t2, 0
	addi $t3, $fp, -84
	li $t4, 3
	li $t5, 4
	mul $t2, $t2, $t5
	add $t2, $t2, $t4
	li $t4, 4
	mul $t2, $t2, $t4
	add $t4, $t3, $t2
	li $t2, 15399
	lw $t3, 0($t4)
	sw $t0, -144($fp)
	sw $t1, -112($fp)
	bgt $t3, $t2, label1742

	j label1743

label1742:
	li $t0, 1
	sw $t0, -144($fp)

label1743:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -144($fp)
	move $a1, $t0
	lw $t1, -112($fp)
	move $a0, $t1
	jal id_i055P7jPd
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -148($fp)

	lw $t0, -104($fp)
	lw $t1, -148($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label1735

	j label1736

label1735:
	li $t0, 1
	sw $t0, -136($fp)

label1736:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -84
	lw $t4, -16($fp)
	move $t3, $t4
	li $t5, 0
	li $t6, 0
	li $t7, 0
	sw $t0, -152($fp)
	sw $t1, -156($fp)
	sw $t2, -160($fp)
	sw $t3, -112($fp)
	sw $t5, -164($fp)
	sw $t6, -168($fp)
	lw $t8, -92($fp)
	bne $t8, $t7, label1751

	j label1750

label1751:
	li $t0, 0
	lw $t1, -108($fp)
	bne $t1, $t0, label1749

	j label1750

label1749:
	li $t0, 1
	sw $t0, -168($fp)

label1750:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -20($fp)
	move $a1, $t0
	lw $t1, -168($fp)
	move $a0, $t1
	jal id_i055P7jPd
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -172($fp)

	li $t0, 0
	lw $t1, -172($fp)
	bne $t1, $t0, label1748

	j label1747

label1748:
	li $t0, 6117
	li $t1, 0
	bne $t0, $t1, label1746

	j label1747

label1746:
	li $t0, 1
	sw $t0, -164($fp)

label1747:
	li $t0, 0
	li $t1, 18348
	li $t2, 0
	sw $t0, -176($fp)
	bne $t1, $t2, label1753

	j label1752

label1752:
	li $t0, 1
	sw $t0, -176($fp)

label1753:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -176($fp)
	move $a2, $t0
	lw $t1, -164($fp)
	move $a1, $t1
	lw $t2, -112($fp)
	move $a0, $t2
	jal id_CbungYU
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -180($fp)

	li $t0, 4
	lw $t1, -156($fp)
	mul $t1, $t1, $t0
	lw $t0, -180($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -160($fp)
	add $t3, $t2, $t1
	li $t4, 59127
	move $t5, $t4
	li $t4, 21553
	li $t6, 23941
	lw $t7, -108($fp)
	mul $t8, $t7, $t6
	li $t6, 52859
	sub $t9, $t8, $t6
	sw $t1, -156($fp)
	sw $t3, -184($fp)
	sw $t4, -188($fp)
	sw $t5, -100($fp)
	sw $t9, -192($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -192($fp)
	move $a2, $t0
	lw $t1, -188($fp)
	move $a1, $t1
	lw $t2, -100($fp)
	move $a0, $t2
	jal id_c1NZYUB0A
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -196($fp)

	lw $t1, -184($fp)
	lw $t0, 0($t1)
	lw $t2, -196($fp)
	add $t3, $t0, $t2
	li $t0, 0
	addi $t4, $fp, -84
	li $t5, 0
	li $t6, 4
	mul $t0, $t0, $t6
	add $t0, $t0, $t5
	li $t5, 4
	mul $t0, $t0, $t5
	add $t5, $t4, $t0
	li $t0, -1
	lw $t4, 0($t5)
	mul $t5, $t0, $t4
	bne $t3, $t5, label1744

	j label1745

label1744:
	li $t0, 1
	sw $t0, -152($fp)

label1745:

	li $v0, 1
	lw $t0, -88($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -92($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -96($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -100($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -104($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -84
	li $t3, 0
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -200($fp)

	li $v0, 1
	lw $t0, -200($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -84
	li $t3, 1
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -204($fp)

	li $v0, 1
	lw $t0, -204($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -84
	li $t3, 2
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -208($fp)

	li $v0, 1
	lw $t0, -208($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -84
	li $t3, 3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -212($fp)

	li $v0, 1
	lw $t0, -212($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -108($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -112($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -116($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 16897
	lw $t3, -100($fp)
	sub $t4, $t3, $t2
	li $t2, 2512
	sub $t5, $t4, $t2
	li $t2, 0
	addi $t4, $fp, -84
	li $t6, 3
	li $t7, 4
	mul $t2, $t2, $t7
	add $t2, $t2, $t6
	li $t6, 4
	mul $t2, $t2, $t6
	add $t6, $t4, $t2
	li $t2, 0
	li $t4, 0
	addi $t7, $fp, -84
	li $t8, 4
	mul $t4, $t4, $t8
	lw $t8, -116($fp)
	add $t4, $t4, $t8
	li $t9, 4
	mul $t4, $t4, $t9
	add $t9, $t7, $t4
	lw $t4, 0($t9)
	sw $t1, -216($fp)
	sw $t2, -228($fp)
	sw $t5, -220($fp)
	sw $t6, -224($fp)
	lw $t7, -112($fp)
	beq $t4, $t7, label1757

	j label1758

label1757:
	li $t0, 1
	sw $t0, -228($fp)

label1758:
	li $t0, 0
	li $t1, 47844
	li $t2, 0
	sw $t0, -232($fp)
	bne $t1, $t2, label1760

	j label1759

label1759:
	li $t0, 1
	sw $t0, -232($fp)

label1760:
	li $t0, 52829
	lw $t1, -232($fp)
	div $t1, $t0
	mflo $t2
	lw $t3, -224($fp)
	lw $t0, 0($t3)
	sw $t0, -240($fp)
	sw $t2, -236($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -236($fp)
	move $a3, $t0
	lw $t1, -228($fp)
	move $a2, $t1
	lw $t2, -240($fp)
	move $a1, $t2
	lw $t3, -220($fp)
	move $a0, $t3
	jal id_q_JIJqvS2
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -244($fp)

	li $t0, 0
	lw $t1, -244($fp)
	bne $t1, $t0, label1756

	j label1755

label1756:
	lw $t0, -108($fp)
	lw $t1, -112($fp)
	add $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label1754

	j label1755

label1754:
	li $t0, 1
	sw $t0, -216($fp)

label1755:
	lw $t1, -216($fp)
	move $t0, $t1
	sw $t0, -20($fp)
	move $v0, $t0
	lw $ra, 240($sp)
	lw $fp, 236($sp)
	addi $sp, $sp, 244
	jr $ra

id_poGvSguX:
	addi $sp, $sp, -48
	sw $ra, 44($sp)
	sw $fp, 40($sp)
	addi $fp, $sp, 48

	li $t0, 28409
	move $t1, $t0
	li $t0, 0
	addi $t2, $fp, -24
	li $t3, 0
	li $t4, 1
	mul $t0, $t0, $t4
	add $t0, $t0, $t3
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t2, $t0
	li $t0, 6098
	sw $t0, 0($t3)
	li $t2, 0
	addi $t4, $fp, -24
	li $t5, 0
	li $t6, 1
	mul $t2, $t2, $t6
	add $t2, $t2, $t5
	li $t5, 4
	mul $t2, $t2, $t5
	add $t5, $t4, $t2
	li $t2, 349
	mul $t4, $t1, $t2
	li $t2, 0
	li $t6, 57366
	sw $t1, -28($fp)
	sw $t2, -40($fp)
	sw $t4, -36($fp)
	sw $t5, -32($fp)
	beq $t6, $t1, label1763

	j label1762

label1763:
	li $t0, 15888
	li $t1, 0
	bne $t0, $t1, label1761

	j label1762

label1761:
	li $t0, 1
	sw $t0, -40($fp)

label1762:
	lw $t1, -32($fp)
	lw $t0, 0($t1)
	sw $t0, -44($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -40($fp)
	move $a2, $t0
	lw $t1, -36($fp)
	move $a1, $t1
	lw $t2, -44($fp)
	move $a0, $t2
	jal id_c1NZYUB0A
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4

	li $v0, 1
	lw $t0, -28($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -24
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -48($fp)

	li $v0, 1
	lw $t0, -48($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 5359
	move $v0, $t1
	lw $ra, 44($sp)
	lw $fp, 40($sp)
	addi $sp, $sp, 48
	jr $ra

main:
	addi $sp, $sp, -12
	sw $ra, 8($sp)
	sw $fp, 4($sp)
	addi $fp, $sp, 12

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	jal id_poGvSguX
	move $t0, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, -12($fp)

	li $v0, 1
	lw $t0, -12($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	move $v0, $t1
	lw $ra, 8($sp)
	lw $fp, 4($sp)
	addi $sp, $sp, 12
	jr $ra

