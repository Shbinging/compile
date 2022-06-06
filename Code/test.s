.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.globl main
.text
lrf99:
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

id_HIM9LL9:
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

rrJ3_:
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

id_Sca8rJ1g:
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

id_t8fku:
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

id_r:
	addi $sp, $sp, -680
	sw $ra, 676($sp)
	sw $fp, 672($sp)
	addi $fp, $sp, 680
	sw $a0, -12($fp)
	sw $a1, -16($fp)
	sw $a2, -20($fp)

	li $t0, 9808
	move $t1, $t0
	li $t0, 26446
	move $t2, $t0
	li $t0, 32085
	move $t3, $t0
	li $t0, 7777
	move $t4, $t0
	li $t0, 36707
	move $t5, $t0
	li $t0, 0
	addi $t6, $fp, -36
	li $t7, 0
	li $t8, 1
	mul $t0, $t0, $t8
	add $t0, $t0, $t7
	li $t7, 4
	mul $t0, $t0, $t7
	add $t7, $t6, $t0
	li $t0, 26250
	sw $t0, 0($t7)
	li $t6, 43342
	move $t8, $t6
	li $t6, 0
	addi $t9, $fp, -132
	li $s0, 0
	li $s1, 6
	mul $t6, $t6, $s1
	add $t6, $t6, $s0
	li $s0, 4
	mul $t6, $t6, $s0
	add $s0, $t9, $t6
	li $t6, 10931
	sw $t6, 0($s0)
	li $t9, 0
	addi $s1, $fp, -132
	li $s2, 1
	li $s3, 6
	mul $t9, $t9, $s3
	add $t9, $t9, $s2
	li $s2, 4
	mul $t9, $t9, $s2
	add $s2, $s1, $t9
	li $t9, 58513
	sw $t9, 0($s2)
	li $s1, 0
	addi $s3, $fp, -132
	li $s4, 2
	li $s5, 6
	mul $s1, $s1, $s5
	add $s1, $s1, $s4
	li $s4, 4
	mul $s1, $s1, $s4
	add $s4, $s3, $s1
	li $s1, 6114
	sw $s1, 0($s4)
	li $s3, 0
	addi $s5, $fp, -132
	li $s6, 3
	li $s7, 6
	mul $s3, $s3, $s7
	add $s3, $s3, $s6
	li $s6, 4
	mul $s3, $s3, $s6
	add $s6, $s5, $s3
	li $s3, 9482
	sw $s3, 0($s6)
	li $s5, 0
	addi $s7, $fp, -132
	sw $s6, -684($fp)
	li $s6, 4
	sw $s4, -688($fp)
	li $s4, 6
	mul $s5, $s5, $s4
	add $s4, $s5, $s6
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 44910
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -132
	sw $s5, -692($fp)
	li $s5, 5
	sw $s4, -696($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 26670
	sw $s4, 0($s5)
	li $s6, 7087
	move $s7, $s6
	li $s6, 0
	sw $s7, -208($fp)
	addi $s7, $fp, -180
	sw $s5, -700($fp)
	li $s5, 0
	sw $s4, -704($fp)
	li $s4, 3
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 622
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -180
	sw $s5, -708($fp)
	li $s5, 1
	sw $s4, -712($fp)
	li $s4, 3
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 47874
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -180
	sw $s5, -716($fp)
	li $s5, 2
	sw $s4, -720($fp)
	li $s4, 3
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 35680
	sw $s4, 0($s5)
	li $s6, 2307
	move $s7, $s6
	li $s6, 59895
	sw $s7, -212($fp)
	move $s7, $s6
	li $s6, 50717
	sw $s5, -724($fp)
	move $s5, $s6
	li $s6, 60817
	sw $s5, -220($fp)
	move $s5, $s6
	li $s6, 47223
	sw $s5, -224($fp)
	move $s5, $s6
	li $s6, 42104
	sw $s5, -228($fp)
	move $s5, $s6
	li $s6, 24926
	sw $s5, -232($fp)
	move $s5, $s6
	li $s6, 0
	sw $s6, -240($fp)
	li $s6, 0
	sw $s6, -244($fp)
	li $s6, 0
	sw $t1, -184($fp)
	sw $t2, -188($fp)
	sw $t3, -192($fp)
	sw $t4, -196($fp)
	sw $t5, -200($fp)
	sw $t8, -204($fp)
	sw $s5, -236($fp)
	sw $s7, -216($fp)
	bne $s7, $s6, label120

	j label121

label121:
	li $t0, 0
	lw $t1, -196($fp)
	bne $t1, $t0, label119

	j label120

label119:
	li $t0, 1
	sw $t0, -244($fp)

label120:
	li $t0, 0
	li $t1, 11087
	lw $t2, -192($fp)
	mul $t3, $t1, $t2
	li $t1, 0
	sw $t0, -248($fp)
	bne $t3, $t1, label122

	j label124

label124:
	li $t0, 0
	lw $t1, -220($fp)
	bne $t1, $t0, label122

	j label123

label122:
	li $t0, 1
	sw $t0, -248($fp)

label123:
	li $t0, 0
	li $t1, 0
	li $t2, 24852
	sw $t0, -252($fp)
	sw $t1, -256($fp)
	lw $t3, -208($fp)
	blt $t3, $t2, label127

	j label128

label127:
	li $t0, 1
	sw $t0, -256($fp)

label128:
	li $t0, 65268
	lw $t1, -256($fp)
	beq $t1, $t0, label125

	j label126

label125:
	li $t0, 1
	sw $t0, -252($fp)

label126:
	li $t0, 0
	addi $t1, $fp, -132
	li $t2, 6
	mul $t0, $t0, $t2
	lw $t2, -216($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	lw $t1, -228($fp)
	sub $t3, $t0, $t1
	sw $t3, -260($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -260($fp)
	move $a2, $t0
	lw $t1, -252($fp)
	move $a1, $t1
	lw $t2, -248($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -264($fp)

	li $t0, 0
	addi $t1, $fp, -36
	li $t2, 1
	mul $t0, $t0, $t2
	lw $t2, -204($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	sw $t0, -268($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -268($fp)
	move $a2, $t0
	lw $t1, -264($fp)
	move $a1, $t1
	lw $t2, -244($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -272($fp)

	li $t0, 0
	lw $t1, -272($fp)
	bne $t1, $t0, label116

	j label118

label118:
	li $t0, 0
	lw $t1, -236($fp)
	bne $t1, $t0, label116

	j label117

label116:
	li $t0, 1
	sw $t0, -240($fp)

label117:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -276($fp)
	sw $t1, -280($fp)
	lw $t3, -224($fp)
	bne $t3, $t2, label132

	j label131

label131:
	li $t0, 1
	sw $t0, -280($fp)

label132:
	li $t0, 48768
	lw $t1, -280($fp)
	bne $t1, $t0, label129

	j label130

label129:
	li $t0, 1
	sw $t0, -276($fp)

label130:
	li $t0, 0
	li $t1, -1
	lw $t2, -236($fp)
	mul $t3, $t1, $t2
	li $t1, 61470
	sw $t0, -284($fp)
	blt $t3, $t1, label133

	j label134

label133:
	li $t0, 1
	sw $t0, -284($fp)

label134:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -284($fp)
	move $a2, $t0
	lw $t1, -276($fp)
	move $a1, $t1
	lw $t2, -240($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -288($fp)

	lw $t0, -208($fp)
	lw $t1, -288($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	addi $t4, $fp, -132
	lw $t6, -184($fp)
	move $t5, $t6
	li $t7, 6
	mul $t3, $t3, $t7
	add $t3, $t3, $t5
	li $t7, 4
	mul $t3, $t3, $t7
	add $t7, $t4, $t3
	lw $t3, 0($t7)
	sub $t4, $t2, $t3
	sw $t5, -200($fp)

label135:
	lw $t1, -232($fp)
	move $t0, $t1
	move $t2, $t0
	move $t3, $t2
	li $t4, 0
	sw $t0, -188($fp)
	sw $t2, -16($fp)
	sw $t3, -228($fp)
	bne $t3, $t4, label136

	j label137

label136:
	li $t0, 52916
	move $t1, $t0
	li $t0, 41287
	li $t2, 0
	sw $t1, -292($fp)
	bne $t0, $t2, label138

	j label139

label138:
	li $t0, 0
	li $t1, 5742
	lw $t2, -12($fp)
	add $t3, $t1, $t2
	li $t1, 0
	lw $t4, -16($fp)
	lw $t5, -292($fp)
	div $t5, $t4
	mflo $t6
	li $t7, 0
	sw $t0, -296($fp)
	sw $t1, -304($fp)
	sw $t3, -300($fp)
	bne $t6, $t7, label145

	j label144

label145:
	li $t0, 13826
	li $t1, 0
	bne $t0, $t1, label143

	j label144

label143:
	li $t0, 1
	sw $t0, -304($fp)

label144:
	li $t0, 0
	li $t1, 0
	li $t2, 7837
	li $t3, 13519
	sw $t0, -308($fp)
	sw $t1, -312($fp)
	beq $t2, $t3, label148

	j label149

label148:
	li $t0, 1
	sw $t0, -312($fp)

label149:
	li $t0, 50533
	lw $t1, -312($fp)
	bne $t1, $t0, label146

	j label147

label146:
	li $t0, 1
	sw $t0, -308($fp)

label147:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -308($fp)
	move $a2, $t0
	lw $t1, -304($fp)
	move $a1, $t1
	lw $t2, -300($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -316($fp)

	li $t0, -1
	lw $t1, -316($fp)
	mul $t2, $t0, $t1
	lw $t3, -192($fp)
	move $t0, $t3
	li $t4, 0
	li $t5, 0
	addi $t6, $fp, -132
	li $t7, 4
	li $t8, 6
	mul $t5, $t5, $t8
	add $t5, $t5, $t7
	li $t7, 4
	mul $t5, $t5, $t7
	add $t7, $t6, $t5
	lw $t5, 0($t7)
	li $t6, 0
	sw $t0, -20($fp)
	sw $t2, -320($fp)
	sw $t4, -324($fp)
	bne $t5, $t6, label151

	j label150

label150:
	li $t0, 1
	sw $t0, -324($fp)

label151:
	li $t0, 0
	li $t1, 61465
	lw $t2, -216($fp)
	div $t1, $t2
	mflo $t3
	li $t1, 0
	sw $t0, -328($fp)
	bne $t3, $t1, label152

	j label154

label154:
	li $t0, 27064
	li $t1, 0
	bne $t0, $t1, label152

	j label153

label152:
	li $t0, 1
	sw $t0, -328($fp)

label153:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -328($fp)
	move $a2, $t0
	lw $t1, -324($fp)
	move $a1, $t1
	lw $t2, -20($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -332($fp)

	lw $t0, -332($fp)
	lw $t1, -320($fp)
	blt $t1, $t0, label141

	j label142

label141:
	li $t0, 1
	sw $t0, -296($fp)

label142:
	j label140

label139:
	li $t0, 62976
	move $t1, $t0
	li $t0, 0
	addi $t2, $fp, -444
	li $t3, 0
	li $t4, 7
	mul $t0, $t0, $t4
	add $t0, $t0, $t3
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t2, $t0
	li $t0, 5411
	sw $t0, 0($t3)
	li $t2, 0
	addi $t4, $fp, -444
	li $t5, 1
	li $t6, 7
	mul $t2, $t2, $t6
	add $t2, $t2, $t5
	li $t5, 4
	mul $t2, $t2, $t5
	add $t5, $t4, $t2
	li $t2, 6438
	sw $t2, 0($t5)
	li $t4, 0
	addi $t6, $fp, -444
	li $t7, 2
	li $t8, 7
	mul $t4, $t4, $t8
	add $t4, $t4, $t7
	li $t7, 4
	mul $t4, $t4, $t7
	add $t7, $t6, $t4
	li $t4, 24110
	sw $t4, 0($t7)
	li $t6, 0
	addi $t8, $fp, -444
	li $t9, 3
	li $s0, 7
	mul $t6, $t6, $s0
	add $t6, $t6, $t9
	li $t9, 4
	mul $t6, $t6, $t9
	add $t9, $t8, $t6
	li $t6, 12499
	sw $t6, 0($t9)
	li $t8, 0
	addi $s0, $fp, -444
	li $s1, 4
	li $s2, 7
	mul $t8, $t8, $s2
	add $t8, $t8, $s1
	li $s1, 4
	mul $t8, $t8, $s1
	add $s1, $s0, $t8
	li $t8, 7060
	sw $t8, 0($s1)
	li $s0, 0
	addi $s2, $fp, -444
	li $s3, 5
	li $s4, 7
	mul $s0, $s0, $s4
	add $s0, $s0, $s3
	li $s3, 4
	mul $s0, $s0, $s3
	add $s3, $s2, $s0
	li $s0, 6449
	sw $s0, 0($s3)
	li $s2, 0
	addi $s4, $fp, -444
	li $s5, 6
	li $s6, 7
	mul $s2, $s2, $s6
	add $s2, $s2, $s5
	li $s5, 4
	mul $s2, $s2, $s5
	add $s5, $s4, $s2
	li $s2, 48179
	sw $s2, 0($s5)
	li $s4, 9368
	move $s6, $s4
	li $s4, 808
	li $s7, 0
	sw $s6, -452($fp)
	addi $s6, $fp, -444
	sw $s5, -728($fp)
	li $s5, 7
	mul $s7, $s7, $s5
	lw $s5, -192($fp)
	add $s7, $s7, $s5
	sw $s5, -192($fp)
	li $s5, 4
	mul $s7, $s7, $s5
	add $s5, $s6, $s7
	lw $s6, 0($s5)
	lw $s5, -236($fp)
	add $s7, $s6, $s5
	sw $t1, -448($fp)
	bne $s4, $s7, label155

	j label157

label157:
	li $t0, 33361
	lw $t1, -448($fp)
	lw $t2, -228($fp)
	add $t3, $t2, $t1
	bne $t0, $t3, label155

	j label156

label155:

label158:
	li $t0, 0
	addi $t1, $fp, -132
	li $t2, 6
	mul $t0, $t0, $t2
	lw $t2, -452($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	li $t0, 0
	li $t1, 4649
	li $t4, 0
	sw $t0, -460($fp)
	sw $t3, -456($fp)
	bne $t1, $t4, label162

	j label161

label161:
	li $t0, 1
	sw $t0, -460($fp)

label162:
	lw $t0, -216($fp)
	lw $t1, -460($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	sw $t2, -464($fp)
	sw $t3, -468($fp)
	lw $t4, -212($fp)
	bge $t4, $t4, label163

	j label165

label165:
	li $t0, 48032
	li $t1, 0
	bne $t0, $t1, label163

	j label164

label163:
	li $t0, 1
	sw $t0, -468($fp)

label164:
	lw $t1, -456($fp)
	lw $t0, 0($t1)
	sw $t0, -472($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -468($fp)
	move $a2, $t0
	lw $t1, -464($fp)
	move $a1, $t1
	lw $t2, -472($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -476($fp)

	li $t0, 9929
	lw $t1, -476($fp)
	div $t1, $t0
	mflo $t2
	move $t0, $t2
	li $t2, 0
	sw $t0, -204($fp)
	bne $t0, $t2, label159

	j label160

label159:
	li $t0, -1
	lw $t1, -192($fp)
	mul $t2, $t0, $t1
	lw $t0, -228($fp)
	sub $t3, $t2, $t0
	li $t2, 29575
	move $t4, $t2
	li $t2, 0
	sw $t2, -484($fp)
	sw $t3, -480($fp)
	sw $t4, -208($fp)
	lw $t5, -188($fp)
	lw $t6, -236($fp)
	bgt $t6, $t5, label166

	j label167

label166:
	li $t0, 1
	sw $t0, -484($fp)

label167:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -484($fp)
	move $a2, $t0
	lw $t1, -208($fp)
	move $a1, $t1
	lw $t2, -480($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -488($fp)

	lw $t0, -488($fp)
	move $v0, $t0
	lw $ra, 676($sp)
	lw $fp, 672($sp)
	addi $sp, $sp, 680
	jr $ra

	j label158

label160:

label156:

	li $v0, 1
	lw $t0, -448($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -444
	li $t3, 0
	li $t4, 7
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -492($fp)

	li $v0, 1
	lw $t0, -492($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -444
	li $t3, 1
	li $t4, 7
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -496($fp)

	li $v0, 1
	lw $t0, -496($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -444
	li $t3, 2
	li $t4, 7
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -500($fp)

	li $v0, 1
	lw $t0, -500($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -444
	li $t3, 3
	li $t4, 7
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -504($fp)

	li $v0, 1
	lw $t0, -504($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -444
	li $t3, 4
	li $t4, 7
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -508($fp)

	li $v0, 1
	lw $t0, -508($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -444
	li $t3, 5
	li $t4, 7
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -512($fp)

	li $v0, 1
	lw $t0, -512($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -444
	li $t3, 6
	li $t4, 7
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -516($fp)

	li $v0, 1
	lw $t0, -516($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -452($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -132
	li $t4, 0
	li $t5, 59119
	sw $t1, -520($fp)
	sw $t2, -524($fp)
	sw $t3, -528($fp)
	sw $t4, -532($fp)
	lw $t6, -224($fp)
	beq $t5, $t6, label170

	j label171

label170:
	li $t0, 1
	sw $t0, -532($fp)

label171:
	li $t0, 6
	lw $t1, -524($fp)
	mul $t1, $t1, $t0
	lw $t0, -532($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -528($fp)
	add $t3, $t2, $t1
	li $t4, 0
	li $t5, 34781
	li $t6, 0
	sw $t1, -524($fp)
	sw $t3, -536($fp)
	sw $t4, -540($fp)
	bne $t5, $t6, label172

	j label173

label172:
	li $t0, 1
	sw $t0, -540($fp)

label173:
	li $t0, 0
	li $t1, 29308
	li $t2, 0
	sw $t0, -544($fp)
	bne $t1, $t2, label175

	j label174

label174:
	li $t0, 1
	sw $t0, -544($fp)

label175:
	lw $t0, -544($fp)
	lw $t1, -540($fp)
	add $t2, $t1, $t0
	lw $t4, -536($fp)
	lw $t3, 0($t4)
	ble $t3, $t2, label168

	j label169

label168:
	li $t0, 1
	sw $t0, -520($fp)

label169:
	lw $t0, -520($fp)
	move $v0, $t0
	lw $ra, 676($sp)
	lw $fp, 672($sp)
	addi $sp, $sp, 680
	jr $ra

	li $t0, 42351
	move $t1, $t0
	li $t0, 0
	addi $t2, $fp, -132
	li $t3, 0
	li $t4, 0
	sw $t0, -548($fp)
	sw $t2, -552($fp)
	sw $t3, -556($fp)
	bne $t1, $t4, label178

	j label177

label178:
	li $t0, 30715
	li $t1, 0
	bne $t0, $t1, label176

	j label177

label176:
	li $t0, 1
	sw $t0, -556($fp)

label177:
	li $t0, 6
	lw $t1, -548($fp)
	mul $t1, $t1, $t0
	lw $t0, -556($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -552($fp)
	add $t3, $t2, $t1
	li $t4, -1
	lw $t5, -236($fp)
	mul $t6, $t4, $t5
	lw $t4, 0($t3)
	div $t4, $t6
	mflo $t3
	li $t4, 16688
	add $t6, $t3, $t4
	li $t3, 0
	addi $t4, $fp, -132
	li $t7, 18103
	lw $t8, -192($fp)
	sub $t9, $t8, $t7
	li $t7, 6
	mul $t3, $t3, $t7
	add $t3, $t3, $t9
	li $t7, 4
	mul $t3, $t3, $t7
	add $t7, $t4, $t3
	lw $t3, 0($t7)
	move $t4, $t3
	sw $t1, -548($fp)
	sw $t4, -232($fp)

label179:
	li $t0, 0
	li $t1, 0
	li $t2, 36457
	li $t3, 0
	sw $t0, -560($fp)
	sw $t1, -564($fp)
	bne $t2, $t3, label185

	j label184

label184:
	li $t0, 1
	sw $t0, -564($fp)

label185:
	li $t0, -1
	lw $t1, -564($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	li $t3, 30514
	li $t4, 0
	sw $t0, -572($fp)
	sw $t2, -568($fp)
	bne $t3, $t4, label187

	j label186

label186:
	li $t0, 1
	sw $t0, -572($fp)

label187:
	lw $t0, -572($fp)
	lw $t1, -568($fp)
	bge $t1, $t0, label182

	j label183

label182:
	li $t0, 1
	sw $t0, -560($fp)

label183:
	lw $t1, -560($fp)
	move $t0, $t1
	li $t2, 0
	sw $t0, -212($fp)
	bne $t0, $t2, label180

	j label181

label180:

label188:
	li $t0, 25940
	li $t1, 0
	bne $t0, $t1, label189

	j label190

label189:
	li $t0, 0
	li $t1, 49977
	li $t2, 0
	addi $t3, $fp, -180
	li $t4, 3
	mul $t2, $t2, $t4
	lw $t4, -196($fp)
	add $t2, $t2, $t4
	li $t5, 4
	mul $t2, $t2, $t5
	add $t5, $t3, $t2
	lw $t2, 0($t5)
	lw $t3, -292($fp)
	div $t2, $t3
	mflo $t5
	li $t2, 0
	addi $t6, $fp, -132
	li $t7, 1
	li $t8, 6
	mul $t2, $t2, $t8
	add $t2, $t2, $t7
	li $t7, 4
	mul $t2, $t2, $t7
	add $t7, $t6, $t2
	li $t2, 0
	li $t6, -1
	lw $t8, -200($fp)
	mul $t9, $t6, $t8
	li $t6, 41303
	sw $t0, -576($fp)
	sw $t1, -580($fp)
	sw $t2, -592($fp)
	sw $t5, -584($fp)
	sw $t7, -588($fp)
	blt $t9, $t6, label193

	j label194

label193:
	li $t0, 1
	sw $t0, -592($fp)

label194:
	lw $t1, -588($fp)
	lw $t0, 0($t1)
	sw $t0, -596($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -592($fp)
	move $a2, $t0
	lw $t1, -596($fp)
	move $a1, $t1
	lw $t2, -584($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -600($fp)

	lw $t0, -600($fp)
	lw $t1, -580($fp)
	bge $t1, $t0, label191

	j label192

label191:
	li $t0, 1
	sw $t0, -576($fp)

label192:
	lw $t1, -576($fp)
	move $t0, $t1
	sw $t0, -184($fp)
	j label188

label190:
	j label179

label181:

label140:
	j label135

label137:
	li $t0, 0
	addi $t1, $fp, -180
	li $t2, 0
	li $t3, 0
	addi $t4, $fp, -132
	li $t5, 0
	li $t6, 6
	mul $t3, $t3, $t6
	add $t3, $t3, $t5
	li $t5, 4
	mul $t3, $t3, $t5
	add $t5, $t4, $t3
	lw $t3, 0($t5)
	li $t4, 0
	sw $t0, -604($fp)
	sw $t1, -608($fp)
	sw $t2, -612($fp)
	bne $t3, $t4, label196

	j label195

label195:
	li $t0, 1
	sw $t0, -612($fp)

label196:
	li $t0, 38743
	lw $t1, -228($fp)
	mul $t2, $t0, $t1
	lw $t0, -612($fp)
	add $t3, $t0, $t2
	li $t2, 3
	lw $t4, -604($fp)
	mul $t4, $t4, $t2
	add $t2, $t4, $t3
	li $t3, 4
	mul $t2, $t2, $t3
	lw $t3, -608($fp)
	add $t4, $t3, $t2
	li $t5, 0
	sw $t2, -604($fp)
	lw $t6, -212($fp)
	bne $t6, $t5, label197

	j label198

label197:
	li $t0, 16852
	move $v0, $t0
	lw $ra, 676($sp)
	lw $fp, 672($sp)
	addi $sp, $sp, 680
	jr $ra

	j label199

label198:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -616($fp)
	sw $t1, -620($fp)
	lw $t3, -16($fp)
	bne $t3, $t2, label204

	j label203

label203:
	li $t0, 1
	sw $t0, -620($fp)

label204:
	lw $t0, -232($fp)
	lw $t1, -620($fp)
	div $t1, $t0
	mflo $t2
	li $t3, -1
	mul $t4, $t3, $t2
	li $t2, 0
	bne $t4, $t2, label202

	j label201

label202:
	li $t0, -1
	lw $t1, -12($fp)
	mul $t2, $t0, $t1
	li $t0, -1
	mul $t3, $t0, $t2
	li $t0, 0
	bne $t3, $t0, label201

	j label200

label200:
	li $t0, 1
	sw $t0, -616($fp)

label201:
	lw $t0, -616($fp)
	move $v0, $t0
	lw $ra, 676($sp)
	lw $fp, 672($sp)
	addi $sp, $sp, 680
	jr $ra

label199:

	li $v0, 1
	lw $t0, -184($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -188($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -192($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -196($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	addi $t2, $fp, -36
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -624($fp)

	li $v0, 1
	lw $t0, -624($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	addi $t2, $fp, -132
	li $t3, 0
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -628($fp)

	li $v0, 1
	lw $t0, -628($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -132
	li $t3, 1
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -632($fp)

	li $v0, 1
	lw $t0, -632($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -132
	li $t3, 2
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -636($fp)

	li $v0, 1
	lw $t0, -636($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -132
	li $t3, 3
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -640($fp)

	li $v0, 1
	lw $t0, -640($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -132
	li $t3, 4
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -644($fp)

	li $v0, 1
	lw $t0, -644($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -132
	li $t3, 5
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -648($fp)

	li $v0, 1
	lw $t0, -648($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	addi $t2, $fp, -180
	li $t3, 0
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -652($fp)

	li $v0, 1
	lw $t0, -652($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -180
	li $t3, 1
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -656($fp)

	li $v0, 1
	lw $t0, -656($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -180
	li $t3, 2
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -660($fp)

	li $v0, 1
	lw $t0, -660($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	lw $t0, -216($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -220($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -224($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -228($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -232($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -236($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	lw $t2, -232($fp)
	lw $t3, -212($fp)
	add $t4, $t3, $t2
	li $t5, 0
	sw $t1, -664($fp)
	bne $t4, $t5, label207

	j label206

label207:
	li $t0, 0
	lw $t1, -232($fp)
	lw $t2, -236($fp)
	mul $t3, $t2, $t1
	li $t4, 0
	sw $t0, -668($fp)
	bne $t3, $t4, label210

	j label209

label210:
	li $t0, 27994
	li $t1, 0
	bne $t0, $t1, label208

	j label209

label208:
	li $t0, 1
	sw $t0, -668($fp)

label209:
	lw $t0, -232($fp)
	lw $t1, -228($fp)
	sub $t2, $t1, $t0
	li $t3, 0
	li $t4, 62853
	li $t5, 0
	sw $t2, -672($fp)
	sw $t3, -676($fp)
	bne $t4, $t5, label213

	j label212

label213:
	li $t0, 0
	lw $t1, -228($fp)
	bne $t1, $t0, label211

	j label212

label211:
	li $t0, 1
	sw $t0, -676($fp)

label212:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -676($fp)
	move $a2, $t0
	lw $t1, -672($fp)
	move $a1, $t1
	lw $t2, -668($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -680($fp)

	li $t0, 0
	lw $t1, -680($fp)
	bne $t1, $t0, label205

	j label206

label205:
	li $t0, 1
	sw $t0, -664($fp)

label206:
	lw $t0, -664($fp)
	move $v0, $t0
	lw $ra, 676($sp)
	lw $fp, 672($sp)
	addi $sp, $sp, 680
	jr $ra

id_ie1avFPK5:
	addi $sp, $sp, -32
	sw $ra, 28($sp)
	sw $fp, 24($sp)
	addi $fp, $sp, 32
	sw $a0, -12($fp)
	sw $a1, -16($fp)
	sw $a2, -36($fp)
	sw $a3, -40($fp)

	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 0
	li $t4, 0
	sw $t0, -20($fp)
	sw $t1, -24($fp)
	sw $t2, -28($fp)
	sw $t3, -32($fp)
	lw $t5, -12($fp)
	bne $t5, $t4, label221

	j label220

label220:
	li $t0, 1
	sw $t0, -32($fp)

label221:
	li $t0, -1
	lw $t1, -32($fp)
	mul $t2, $t0, $t1
	li $t0, 29351
	beq $t2, $t0, label218

	j label219

label218:
	li $t0, 1
	sw $t0, -28($fp)

label219:
	li $t0, 35055
	lw $t1, -16($fp)
	div $t1, $t0
	mflo $t2
	lw $t0, -28($fp)
	beq $t0, $t2, label216

	j label217

label216:
	li $t0, 1
	sw $t0, -24($fp)

label217:
	lw $t0, -16($fp)
	lw $t1, -24($fp)
	bne $t1, $t0, label214

	j label215

label214:
	li $t0, 1
	sw $t0, -20($fp)

label215:
	lw $t0, -20($fp)
	move $v0, $t0
	lw $ra, 28($sp)
	lw $fp, 24($sp)
	addi $sp, $sp, 32
	jr $ra

id_Q:
	addi $sp, $sp, -1312
	sw $ra, 1308($sp)
	sw $fp, 1304($sp)
	addi $fp, $sp, 1312
	sw $a0, -12($fp)
	sw $a1, -16($fp)
	sw $a2, -20($fp)
	sw $a3, -24($fp)

	li $t0, 3766
	move $t1, $t0
	li $t0, 0
	addi $t2, $fp, -104
	li $t3, 0
	li $t4, 5
	mul $t0, $t0, $t4
	add $t0, $t0, $t3
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t2, $t0
	li $t0, 11994
	sw $t0, 0($t3)
	li $t2, 0
	addi $t4, $fp, -104
	li $t5, 1
	li $t6, 5
	mul $t2, $t2, $t6
	add $t2, $t2, $t5
	li $t5, 4
	mul $t2, $t2, $t5
	add $t5, $t4, $t2
	li $t2, 44423
	sw $t2, 0($t5)
	li $t4, 0
	addi $t6, $fp, -104
	li $t7, 2
	li $t8, 5
	mul $t4, $t4, $t8
	add $t4, $t4, $t7
	li $t7, 4
	mul $t4, $t4, $t7
	add $t7, $t6, $t4
	li $t4, 4575
	sw $t4, 0($t7)
	li $t6, 0
	addi $t8, $fp, -104
	li $t9, 3
	li $s0, 5
	mul $t6, $t6, $s0
	add $t6, $t6, $t9
	li $t9, 4
	mul $t6, $t6, $t9
	add $t9, $t8, $t6
	li $t6, 45355
	sw $t6, 0($t9)
	li $t8, 0
	addi $s0, $fp, -104
	li $s1, 4
	li $s2, 5
	mul $t8, $t8, $s2
	add $t8, $t8, $s1
	li $s1, 4
	mul $t8, $t8, $s1
	add $s1, $s0, $t8
	li $t8, 49072
	sw $t8, 0($s1)
	li $s0, 52607
	move $s2, $s0
	li $s0, 55285
	move $s3, $s0
	li $s0, 13111
	move $s4, $s0
	li $s0, 46190
	move $s5, $s0
	li $s0, 24530
	move $s6, $s0
	li $s0, 42419
	move $s7, $s0
	li $s0, 23006
	sw $s7, -212($fp)
	move $s7, $s0
	li $s0, 55246
	sw $s7, -216($fp)
	move $s7, $s0
	li $s0, 59107
	sw $s7, -220($fp)
	move $s7, $s0
	li $s0, 41109
	sw $s7, -224($fp)
	move $s7, $s0
	li $s0, 0
	sw $s7, -228($fp)
	addi $s7, $fp, -152
	sw $s6, -208($fp)
	li $s6, 0
	sw $s5, -204($fp)
	li $s5, 3
	mul $s0, $s0, $s5
	add $s0, $s0, $s6
	li $s5, 4
	mul $s0, $s0, $s5
	add $s5, $s7, $s0
	li $s0, 26167
	sw $s0, 0($s5)
	li $s6, 0
	addi $s7, $fp, -152
	sw $s5, -1316($fp)
	li $s5, 1
	sw $s4, -200($fp)
	li $s4, 3
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 24085
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -152
	sw $s5, -1320($fp)
	li $s5, 2
	sw $s4, -1324($fp)
	li $s4, 3
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 1513
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -168
	sw $s5, -1328($fp)
	li $s5, 0
	sw $s4, -1332($fp)
	li $s4, 1
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 10608
	sw $s4, 0($s5)
	li $s6, 39597
	move $s7, $s6
	li $s6, 61540
	sw $s7, -232($fp)
	move $s7, $s6
	li $s6, 51911
	sw $s7, -236($fp)
	move $s7, $s6
	li $s6, 51037
	sw $s7, -240($fp)
	move $s7, $s6
	li $s6, 17560
	sw $s7, -244($fp)
	move $s7, $s6
	li $s6, 25118
	sw $s7, -248($fp)
	move $s7, $s6
	li $s6, 2353
	sw $s7, -252($fp)
	move $s7, $s6
	li $s6, 45555
	sw $s7, -256($fp)
	move $s7, $s6
	li $s6, 22436
	sw $s7, -260($fp)
	move $s7, $s6
	li $s6, 31704
	sw $s7, -264($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -268($fp)
	addi $s7, $fp, -184
	sw $s5, -1336($fp)
	li $s5, 0
	sw $s4, -1340($fp)
	li $s4, 1
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 15074
	sw $s4, 0($s5)
	li $s6, 26202
	move $s7, $s6
	sw $t1, -188($fp)
	sw $s2, -192($fp)
	sw $s3, -196($fp)
	sw $s7, -272($fp)

	li $v0, 1
	lw $t0, -188($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -104
	li $t3, 0
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -276($fp)

	li $v0, 1
	lw $t0, -276($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -104
	li $t3, 1
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -280($fp)

	li $v0, 1
	lw $t0, -280($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -104
	li $t3, 2
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -284($fp)

	li $v0, 1
	lw $t0, -284($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -104
	li $t3, 3
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -288($fp)

	li $v0, 1
	lw $t0, -288($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -104
	li $t3, 4
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -292($fp)

	li $v0, 1
	lw $t0, -292($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -192($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -196($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -200($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -204($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -208($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	lw $t0, -216($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -220($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -224($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -228($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -152
	li $t3, 0
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -296($fp)

	li $v0, 1
	lw $t0, -296($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -152
	li $t3, 1
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -300($fp)

	li $v0, 1
	lw $t0, -300($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -152
	li $t3, 2
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -304($fp)

	li $v0, 1
	lw $t0, -304($fp)
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
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -308($fp)

	li $v0, 1
	lw $t0, -308($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -232($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -236($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -240($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -244($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -248($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -252($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -256($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -260($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -264($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -268($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -184
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -312($fp)

	li $v0, 1
	lw $t0, -312($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -272($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t1, -316($fp)
	sw $t2, -320($fp)
	lw $t3, -248($fp)
	lw $t4, -188($fp)
	beq $t4, $t3, label226

	j label225

label226:
	li $t0, 0
	lw $t1, -216($fp)
	bne $t1, $t0, label224

	j label225

label224:
	li $t0, 1
	sw $t0, -320($fp)

label225:
	li $t0, 43699
	li $t1, 59497
	li $t2, -1
	mul $t3, $t2, $t1
	lw $t1, -272($fp)
	add $t2, $t3, $t1
	li $t3, 0
	li $t4, 0
	li $t5, 30777
	lw $t6, -220($fp)
	add $t7, $t6, $t5
	li $t5, 0
	sw $t0, -324($fp)
	sw $t2, -328($fp)
	sw $t3, -332($fp)
	sw $t4, -336($fp)
	bne $t7, $t5, label230

	j label232

label232:
	li $t0, 23518
	li $t1, 0
	bne $t0, $t1, label230

	j label231

label230:
	li $t0, 1
	sw $t0, -336($fp)

label231:
	li $t0, 0
	lw $t1, -228($fp)
	lw $t2, -256($fp)
	mul $t3, $t2, $t1
	li $t4, 0
	sw $t0, -340($fp)
	bne $t3, $t4, label235

	j label234

label235:
	li $t0, 0
	lw $t1, -260($fp)
	bne $t1, $t0, label233

	j label234

label233:
	li $t0, 1
	sw $t0, -340($fp)

label234:
	lw $t1, -244($fp)
	move $t0, $t1
	li $t2, -1
	lw $t3, -200($fp)
	mul $t4, $t2, $t3
	sw $t0, -192($fp)
	sw $t4, -344($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -344($fp)
	move $a3, $t0
	lw $t1, -192($fp)
	move $a2, $t1
	lw $t2, -340($fp)
	move $a1, $t2
	lw $t3, -336($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -348($fp)

	li $t0, 43033
	lw $t1, -348($fp)
	sub $t2, $t1, $t0
	li $t0, 17848
	lw $t3, -260($fp)
	add $t4, $t3, $t0
	lw $t0, -252($fp)
	add $t5, $t4, $t0
	li $t4, 0
	lw $t6, -240($fp)
	lw $t7, -224($fp)
	add $t8, $t7, $t6
	li $t9, 0
	sw $t2, -352($fp)
	sw $t4, -360($fp)
	sw $t5, -356($fp)
	bne $t8, $t9, label236

	j label238

label238:
	li $t0, 0
	lw $t1, -268($fp)
	bne $t1, $t0, label236

	j label237

label236:
	li $t0, 1
	sw $t0, -360($fp)

label237:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -184
	li $t4, 0
	li $t5, 1
	mul $t2, $t2, $t5
	add $t2, $t2, $t4
	li $t4, 4
	mul $t2, $t2, $t4
	add $t4, $t3, $t2
	li $t2, 64039
	lw $t3, 0($t4)
	sw $t0, -364($fp)
	sw $t1, -368($fp)
	bgt $t3, $t2, label241

	j label242

label241:
	li $t0, 1
	sw $t0, -368($fp)

label242:
	li $t0, 0
	addi $t1, $fp, -168
	li $t2, 1
	mul $t0, $t0, $t2
	lw $t2, -272($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	lw $t1, -232($fp)
	add $t3, $t0, $t1
	lw $t0, -264($fp)
	mul $t4, $t0, $t2
	li $t5, 37798
	add $t6, $t4, $t5
	li $t4, -1
	lw $t5, -208($fp)
	mul $t7, $t4, $t5
	sw $t3, -372($fp)
	sw $t6, -376($fp)
	sw $t7, -380($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -380($fp)
	move $a3, $t0
	lw $t1, -376($fp)
	move $a2, $t1
	lw $t2, -372($fp)
	move $a1, $t2
	lw $t3, -368($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -384($fp)

	li $t0, 33028
	lw $t1, -384($fp)
	beq $t1, $t0, label239

	j label240

label239:
	li $t0, 1
	sw $t0, -364($fp)

label240:
	li $t0, 0
	addi $t1, $fp, -104
	li $t2, 4
	li $t3, 5
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, -1
	lw $t1, 0($t2)
	mul $t2, $t0, $t1
	sw $t2, -388($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -388($fp)
	move $a3, $t0
	lw $t1, -364($fp)
	move $a2, $t1
	lw $t2, -360($fp)
	move $a1, $t2
	lw $t3, -356($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -392($fp)

	lw $t0, -212($fp)
	lw $t1, -392($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	li $t4, 0
	sw $t2, -396($fp)
	sw $t3, -400($fp)
	lw $t5, -236($fp)
	bne $t5, $t4, label245

	j label244

label245:
	li $t0, 26599
	li $t1, 0
	bne $t0, $t1, label243

	j label244

label243:
	li $t0, 1
	sw $t0, -400($fp)

label244:
	li $t0, 62618
	lw $t1, -196($fp)
	div $t0, $t1
	mflo $t2
	lw $t0, -252($fp)
	div $t2, $t0
	mflo $t3
	sw $t3, -404($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -404($fp)
	move $a3, $t0
	lw $t1, -400($fp)
	move $a2, $t1
	lw $t2, -396($fp)
	move $a1, $t2
	lw $t3, -352($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -408($fp)

	li $t0, 0
	lw $t1, -408($fp)
	bne $t1, $t0, label227

	j label229

label229:
	li $t0, 53675
	li $t1, 0
	bne $t0, $t1, label227

	j label228

label227:
	li $t0, 1
	sw $t0, -332($fp)

label228:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -332($fp)
	move $a2, $t0
	lw $t1, -328($fp)
	move $a1, $t1
	lw $t2, -324($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -412($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -196($fp)
	move $a2, $t0
	lw $t1, -412($fp)
	move $a1, $t1
	lw $t2, -320($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -416($fp)

	li $t0, 0
	li $t1, 50685
	li $t2, 0
	sw $t0, -420($fp)
	bne $t1, $t2, label247

	j label246

label246:
	li $t0, 1
	sw $t0, -420($fp)

label247:
	li $t0, -1
	lw $t1, -420($fp)
	mul $t2, $t0, $t1
	lw $t0, -416($fp)
	mul $t3, $t0, $t2
	li $t2, 0
	addi $t4, $fp, -152
	li $t5, 3
	mul $t2, $t2, $t5
	lw $t5, -204($fp)
	add $t2, $t2, $t5
	li $t6, 4
	mul $t2, $t2, $t6
	add $t6, $t4, $t2
	li $t2, -1
	lw $t4, 0($t6)
	mul $t6, $t2, $t4
	li $t2, -1
	mul $t4, $t2, $t6
	bne $t3, $t4, label222

	j label223

label222:
	li $t0, 1
	sw $t0, -316($fp)

label223:
	lw $t0, -316($fp)
	move $v0, $t0
	lw $ra, 1308($sp)
	lw $fp, 1304($sp)
	addi $sp, $sp, 1312
	jr $ra

	li $t0, 64131
	lw $t1, -228($fp)
	div $t1, $t0
	mflo $t2
	li $t0, 64284
	li $t3, 24746
	div $t0, $t3
	mflo $t4
	li $t0, -1
	mul $t3, $t0, $t4
	mul $t0, $t2, $t3
	li $t2, 0
	li $t3, 60135
	li $t4, 0
	sw $t0, -424($fp)
	sw $t2, -428($fp)
	bne $t3, $t4, label249

	j label248

label248:
	li $t0, 1
	sw $t0, -428($fp)

label249:
	lw $t0, -428($fp)
	lw $t1, -424($fp)
	add $t2, $t1, $t0
	li $t3, 50659
	move $t4, $t3
	li $t3, 10247
	move $t5, $t3
	li $t3, 12160
	move $t6, $t3
	li $t3, 10242
	move $t7, $t3
	li $t3, 12601
	move $t8, $t3
	li $t3, 57715
	move $t9, $t3
	li $t3, 0
	addi $s0, $fp, -536
	li $s1, 0
	li $s2, 6
	mul $t3, $t3, $s2
	add $t3, $t3, $s1
	li $s1, 4
	mul $t3, $t3, $s1
	add $s1, $s0, $t3
	li $t3, 32678
	sw $t3, 0($s1)
	li $s0, 0
	addi $s2, $fp, -536
	li $s3, 1
	li $s4, 6
	mul $s0, $s0, $s4
	add $s0, $s0, $s3
	li $s3, 4
	mul $s0, $s0, $s3
	add $s3, $s2, $s0
	li $s0, 44305
	sw $s0, 0($s3)
	li $s2, 0
	addi $s4, $fp, -536
	li $s5, 2
	li $s6, 6
	mul $s2, $s2, $s6
	add $s2, $s2, $s5
	li $s5, 4
	mul $s2, $s2, $s5
	add $s5, $s4, $s2
	li $s2, 7253
	sw $s2, 0($s5)
	li $s4, 0
	addi $s6, $fp, -536
	li $s7, 3
	sw $s5, -1344($fp)
	li $s5, 6
	mul $s4, $s4, $s5
	add $s4, $s4, $s7
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s6, $s4
	li $s4, 58880
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -536
	sw $s5, -1348($fp)
	li $s5, 4
	sw $s4, -1352($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 22468
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -536
	sw $s5, -1356($fp)
	li $s5, 5
	sw $s4, -1360($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 1214
	sw $s4, 0($s5)
	li $s6, 24122
	move $s7, $s6
	li $s6, 45987
	sw $s7, -712($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -716($fp)
	addi $s7, $fp, -696
	sw $s5, -1364($fp)
	li $s5, 0
	sw $s4, -1368($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 44247
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -696
	sw $s5, -1372($fp)
	li $s5, 1
	sw $s4, -1376($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 41970
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -696
	sw $s5, -1380($fp)
	li $s5, 2
	sw $s4, -1384($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 59254
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -696
	sw $s5, -1388($fp)
	li $s5, 3
	sw $s4, -1392($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 34855
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -696
	sw $s5, -1396($fp)
	li $s5, 4
	sw $s4, -1400($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 40473
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -696
	sw $s5, -1404($fp)
	li $s5, 5
	sw $s4, -1408($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 31516
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -696
	sw $s5, -1412($fp)
	li $s5, 6
	sw $s4, -1416($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 2347
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -696
	sw $s5, -1420($fp)
	li $s5, 7
	sw $s4, -1424($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 61982
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -696
	sw $s5, -1428($fp)
	li $s5, 8
	sw $s4, -1432($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 59024
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -696
	sw $s5, -1436($fp)
	li $s5, 9
	sw $s4, -1440($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 28947
	sw $s4, 0($s5)
	sw $t4, -432($fp)
	sw $t5, -436($fp)
	sw $t6, -440($fp)
	sw $t7, -700($fp)
	sw $t8, -704($fp)
	sw $t9, -708($fp)

label250:
	li $t0, 59064
	li $t1, 0
	bne $t0, $t1, label251

	j label252

label251:

label253:
	li $t0, 47164
	li $t1, 0
	li $t2, 14096
	lw $t3, -192($fp)
	sub $t4, $t2, $t3
	li $t2, 0
	sw $t0, -720($fp)
	sw $t1, -724($fp)
	bne $t4, $t2, label258

	j label257

label258:
	li $t0, 0
	lw $t1, -228($fp)
	bne $t1, $t0, label256

	j label257

label256:
	li $t0, 1
	sw $t0, -724($fp)

label257:
	li $t0, 0
	li $t1, 57659
	li $t2, 0
	sw $t0, -728($fp)
	bne $t1, $t2, label262

	j label261

label262:
	li $t0, 45912
	li $t1, 0
	bne $t0, $t1, label259

	j label261

label261:
	li $t0, 0
	lw $t1, -232($fp)
	bne $t1, $t0, label259

	j label260

label259:
	li $t0, 1
	sw $t0, -728($fp)

label260:
	lw $t1, -716($fp)
	move $t0, $t1
	li $t2, 0
	li $t3, 38842
	sw $t0, -224($fp)
	sw $t2, -732($fp)
	lw $t4, -24($fp)
	ble $t3, $t4, label265

	j label264

label265:
	li $t0, 0
	lw $t1, -240($fp)
	bne $t1, $t0, label263

	j label264

label263:
	li $t0, 1
	sw $t0, -732($fp)

label264:
	li $t0, 0
	addi $t1, $fp, -536
	li $t2, 6
	mul $t0, $t0, $t2
	lw $t2, -260($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	li $t0, 0
	li $t1, 52259
	li $t4, 0
	sw $t0, -740($fp)
	sw $t3, -736($fp)
	bne $t1, $t4, label266

	j label268

label268:
	li $t0, 31035
	li $t1, 0
	bne $t0, $t1, label266

	j label267

label266:
	li $t0, 1
	sw $t0, -740($fp)

label267:
	li $t0, 0
	li $t1, 0
	sw $t0, -744($fp)
	lw $t2, -240($fp)
	bne $t2, $t1, label272

	j label271

label272:
	li $t0, 0
	lw $t1, -228($fp)
	bne $t1, $t0, label269

	j label271

label271:
	li $t0, 0
	lw $t1, -232($fp)
	bne $t1, $t0, label269

	j label270

label269:
	li $t0, 1
	sw $t0, -744($fp)

label270:
	lw $t1, -736($fp)
	lw $t0, 0($t1)
	sw $t0, -748($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -744($fp)
	move $a3, $t0
	lw $t1, -740($fp)
	move $a2, $t1
	lw $t2, -748($fp)
	move $a1, $t2
	lw $t3, -732($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -752($fp)

	li $t0, -1
	lw $t1, -752($fp)
	mul $t2, $t0, $t1
	lw $t3, -704($fp)
	move $t0, $t3
	li $t4, 0
	li $t5, 0
	li $t6, 49089
	sw $t0, -272($fp)
	sw $t2, -756($fp)
	sw $t4, -760($fp)
	sw $t5, -764($fp)
	bgt $t6, $t3, label275

	j label276

label275:
	li $t0, 1
	sw $t0, -764($fp)

label276:
	lw $t0, -712($fp)
	lw $t1, -764($fp)
	bgt $t1, $t0, label273

	j label274

label273:
	li $t0, 1
	sw $t0, -760($fp)

label274:
	li $t0, 64419
	li $t1, 0
	li $t2, 41277
	li $t3, 0
	sw $t0, -768($fp)
	sw $t1, -772($fp)
	bne $t2, $t3, label277

	j label279

label279:
	li $t0, 0
	lw $t1, -208($fp)
	bne $t1, $t0, label277

	j label278

label277:
	li $t0, 1
	sw $t0, -772($fp)

label278:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -772($fp)
	move $a3, $t0
	lw $t1, -768($fp)
	move $a2, $t1
	lw $t2, -760($fp)
	move $a1, $t2
	lw $t3, -272($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -776($fp)

	li $t0, 61690
	sw $t0, -780($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -208($fp)
	move $a3, $t0
	lw $t1, -780($fp)
	move $a2, $t1
	lw $t2, -776($fp)
	move $a1, $t2
	lw $t3, -756($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -784($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -784($fp)
	move $a3, $t0
	lw $t1, -224($fp)
	move $a2, $t1
	lw $t2, -728($fp)
	move $a1, $t2
	lw $t3, -724($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -788($fp)

	lw $t0, -788($fp)
	lw $t1, -720($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	bne $t2, $t3, label254

	j label255

label254:
	li $t0, 0
	li $t1, 0
	li $t2, 56598
	li $t3, 0
	sw $t0, -792($fp)
	sw $t1, -796($fp)
	bne $t2, $t3, label283

	j label282

label282:
	li $t0, 1
	sw $t0, -796($fp)

label283:
	li $t0, 8419
	lw $t1, -704($fp)
	add $t2, $t0, $t1
	li $t0, 40460
	sub $t3, $t2, $t0
	lw $t0, -796($fp)
	beq $t0, $t3, label280

	j label281

label280:
	li $t0, 1
	sw $t0, -792($fp)

label281:
	lw $t0, -792($fp)
	move $v0, $t0
	lw $ra, 1308($sp)
	lw $fp, 1304($sp)
	addi $sp, $sp, 1312
	jr $ra

	j label253

label255:
	j label250

label252:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -152
	li $t3, 3
	mul $t1, $t1, $t3
	lw $t3, -216($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	lw $t1, 0($t4)
	sw $t0, -800($fp)
	lw $t2, -240($fp)
	bgt $t1, $t2, label287

	j label289

label289:
	li $t0, 0
	lw $t1, -712($fp)
	lw $t2, -704($fp)
	mul $t3, $t2, $t1
	sw $t0, -804($fp)
	lw $t4, -700($fp)
	bne $t3, $t4, label290

	j label291

label290:
	li $t0, 1
	sw $t0, -804($fp)

label291:
	li $t0, 0
	li $t1, 63851
	lw $t2, -192($fp)
	sub $t3, $t2, $t1
	sw $t0, -808($fp)
	lw $t1, -272($fp)
	beq $t3, $t1, label292

	j label293

label292:
	li $t0, 1
	sw $t0, -808($fp)

label293:
	li $t0, 0
	li $t1, 0
	sw $t0, -812($fp)
	lw $t2, -240($fp)
	bne $t2, $t1, label294

	j label296

label296:
	li $t0, 0
	lw $t1, -20($fp)
	bne $t1, $t0, label294

	j label295

label294:
	li $t0, 1
	sw $t0, -812($fp)

label295:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -812($fp)
	move $a2, $t0
	lw $t1, -808($fp)
	move $a1, $t1
	lw $t2, -804($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -816($fp)

	li $t0, 0
	lw $t1, -816($fp)
	bne $t1, $t0, label287

	j label288

label287:
	li $t0, 1
	sw $t0, -800($fp)

label288:
	lw $t1, -800($fp)
	move $t0, $t1
	li $t2, 0
	sw $t0, -228($fp)
	bne $t0, $t2, label284

	j label285

label284:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -696
	li $t3, 0
	li $t4, 1764
	lw $t5, -708($fp)
	div $t4, $t5
	mflo $t6
	sw $t0, -820($fp)
	sw $t1, -824($fp)
	sw $t2, -828($fp)
	sw $t3, -832($fp)
	lw $t4, -24($fp)
	bgt $t6, $t4, label299

	j label300

label299:
	li $t0, 1
	sw $t0, -832($fp)

label300:
	li $t0, 10
	lw $t1, -824($fp)
	mul $t1, $t1, $t0
	lw $t0, -832($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -828($fp)
	add $t3, $t2, $t1
	li $t4, 62928
	lw $t5, -248($fp)
	add $t6, $t4, $t5
	lw $t4, 0($t3)
	sw $t1, -824($fp)
	beq $t4, $t6, label297

	j label298

label297:
	li $t0, 1
	sw $t0, -820($fp)

label298:
	j label286

label285:
	li $t0, 0
	li $t1, 65065
	li $t2, 0
	sw $t0, -836($fp)
	bne $t1, $t2, label302

	j label301

label301:
	li $t0, 1
	sw $t0, -836($fp)

label302:

label286:
	li $t0, 25886
	move $t1, $t0
	li $t0, 43379
	move $t2, $t0
	li $t0, 43776
	move $t3, $t0
	li $t0, 0
	addi $t4, $fp, -916
	li $t5, 0
	li $t6, 5
	mul $t0, $t0, $t6
	add $t0, $t0, $t5
	li $t5, 4
	mul $t0, $t0, $t5
	add $t5, $t4, $t0
	li $t0, 2320
	sw $t0, 0($t5)
	li $t4, 0
	addi $t6, $fp, -916
	li $t7, 1
	li $t8, 5
	mul $t4, $t4, $t8
	add $t4, $t4, $t7
	li $t7, 4
	mul $t4, $t4, $t7
	add $t7, $t6, $t4
	li $t4, 37098
	sw $t4, 0($t7)
	li $t6, 0
	addi $t8, $fp, -916
	li $t9, 2
	li $s0, 5
	mul $t6, $t6, $s0
	add $t6, $t6, $t9
	li $t9, 4
	mul $t6, $t6, $t9
	add $t9, $t8, $t6
	li $t6, 13095
	sw $t6, 0($t9)
	li $t8, 0
	addi $s0, $fp, -916
	li $s1, 3
	li $s2, 5
	mul $t8, $t8, $s2
	add $t8, $t8, $s1
	li $s1, 4
	mul $t8, $t8, $s1
	add $s1, $s0, $t8
	li $t8, 42794
	sw $t8, 0($s1)
	li $s0, 0
	addi $s2, $fp, -916
	li $s3, 4
	li $s4, 5
	mul $s0, $s0, $s4
	add $s0, $s0, $s3
	li $s3, 4
	mul $s0, $s0, $s3
	add $s3, $s2, $s0
	li $s0, 3078
	sw $s0, 0($s3)
	li $s2, 0
	addi $s4, $fp, -964
	li $s5, 0
	li $s6, 3
	mul $s2, $s2, $s6
	add $s2, $s2, $s5
	li $s5, 4
	mul $s2, $s2, $s5
	add $s5, $s4, $s2
	li $s2, 15443
	sw $s2, 0($s5)
	li $s4, 0
	addi $s6, $fp, -964
	li $s7, 1
	sw $s5, -1444($fp)
	li $s5, 3
	mul $s4, $s4, $s5
	add $s4, $s4, $s7
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s6, $s4
	li $s4, 39240
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -964
	sw $s5, -1448($fp)
	li $s5, 2
	sw $s4, -1452($fp)
	li $s4, 3
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 62103
	sw $s4, 0($s5)
	li $s6, 44390
	move $s7, $s6
	li $s6, 32769
	sw $s5, -1456($fp)
	move $s5, $s6
	li $s6, 0
	sw $s5, -1000($fp)
	addi $s5, $fp, -980
	sw $s4, -1460($fp)
	li $s4, 0
	sw $s3, -1464($fp)
	li $s3, 1
	mul $s6, $s6, $s3
	add $s3, $s6, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s5, $s3
	li $s3, 43731
	sw $s3, 0($s4)
	li $s5, 0
	sw $t1, -984($fp)
	sw $t2, -988($fp)
	sw $t3, -992($fp)
	sw $s7, -996($fp)
	bne $s7, $s5, label303

	j label304

label303:

label306:
	li $t0, 0
	addi $t1, $fp, -104
	li $t2, 2
	li $t3, 5
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	lw $t1, -228($fp)
	mul $t2, $t1, $t0
	lw $t0, -440($fp)
	bne $t2, $t0, label307

	j label308

label307:
	li $t0, 24107
	lw $t1, -232($fp)
	div $t0, $t1
	mflo $t2
	lw $t0, -988($fp)
	div $t2, $t0
	mflo $t3
	li $t2, 31792
	lw $t4, -240($fp)
	mul $t5, $t2, $t4
	add $t2, $t3, $t5
	move $t3, $t2
	li $t2, 0
	sw $t3, -220($fp)
	bne $t3, $t2, label309

	j label310

label309:
	li $t0, 0
	li $t1, 0
	li $t2, 11615
	sw $t0, -1004($fp)
	sw $t1, -1008($fp)
	lw $t3, -200($fp)
	ble $t3, $t2, label314

	j label315

label314:
	li $t0, 1
	sw $t0, -1008($fp)

label315:
	lw $t0, -252($fp)
	lw $t1, -1008($fp)
	blt $t1, $t0, label312

	j label313

label312:
	li $t0, 1
	sw $t0, -1004($fp)

label313:
	li $t0, 0
	addi $t1, $fp, -980
	li $t2, 0
	li $t3, 1
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	lw $t1, -240($fp)
	sub $t2, $t0, $t1
	li $t0, 0
	li $t3, 0
	addi $t4, $fp, -104
	li $t5, 5
	mul $t3, $t3, $t5
	lw $t5, -716($fp)
	add $t3, $t3, $t5
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t4, $t3
	li $t3, 0
	sw $t0, -1016($fp)
	sw $t2, -1012($fp)
	sw $t3, -1024($fp)
	sw $t6, -1020($fp)
	lw $t4, -24($fp)
	lw $t7, -252($fp)
	beq $t7, $t4, label318

	j label319

label318:
	li $t0, 1
	sw $t0, -1024($fp)

label319:
	li $t0, 0
	li $t1, 0
	li $t2, 10498
	li $t3, 30884
	sw $t0, -1028($fp)
	sw $t1, -1032($fp)
	bne $t2, $t3, label322

	j label323

label322:
	li $t0, 1
	sw $t0, -1032($fp)

label323:
	li $t0, 11500
	lw $t1, -1032($fp)
	bne $t1, $t0, label320

	j label321

label320:
	li $t0, 1
	sw $t0, -1028($fp)

label321:
	lw $t1, -1020($fp)
	lw $t0, 0($t1)
	sw $t0, -1036($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1028($fp)
	move $a2, $t0
	lw $t1, -1024($fp)
	move $a1, $t1
	lw $t2, -1036($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1040($fp)

	li $t0, 1560
	lw $t1, -1040($fp)
	bgt $t1, $t0, label316

	j label317

label316:
	li $t0, 1
	sw $t0, -1016($fp)

label317:
	li $t0, 0
	lw $t2, -260($fp)
	move $t1, $t2
	li $t3, 39303
	move $t4, $t3
	li $t3, 51960
	lw $t5, -984($fp)
	div $t5, $t3
	mflo $t6
	li $t3, 65411
	mul $t7, $t6, $t3
	sw $t0, -1044($fp)
	sw $t1, -16($fp)
	sw $t4, -996($fp)
	sw $t7, -1048($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1048($fp)
	move $a3, $t0
	lw $t1, -996($fp)
	move $a2, $t1
	lw $t2, -16($fp)
	move $a1, $t2
	lw $t3, -440($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1052($fp)

	li $t0, 41067
	lw $t1, -1052($fp)
	bgt $t1, $t0, label324

	j label325

label324:
	li $t0, 1
	sw $t0, -1044($fp)

label325:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1044($fp)
	move $a3, $t0
	lw $t1, -1016($fp)
	move $a2, $t1
	lw $t2, -1012($fp)
	move $a1, $t2
	lw $t3, -1004($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1056($fp)

	li $t0, 0
	li $t1, 49352
	li $t2, 0
	sw $t0, -1060($fp)
	bne $t1, $t2, label326

	j label327

label326:
	li $t0, 1
	sw $t0, -1060($fp)

label327:
	li $t0, -1
	lw $t1, -1060($fp)
	mul $t2, $t0, $t1
	lw $t0, -1056($fp)
	mul $t3, $t0, $t2
	j label311

label310:
	li $t0, 0
	li $t1, 0
	li $t2, 64940
	li $t3, 1417
	sw $t0, -1064($fp)
	sw $t1, -1068($fp)
	bge $t2, $t3, label333

	j label334

label333:
	li $t0, 1
	sw $t0, -1068($fp)

label334:
	li $t0, 27196
	lw $t1, -1068($fp)
	bgt $t1, $t0, label331

	j label332

label331:
	li $t0, 1
	sw $t0, -1064($fp)

label332:
	lw $t1, -1000($fp)
	move $t0, $t1
	li $t2, 0
	li $t3, 43180
	sw $t0, -20($fp)
	sw $t2, -1072($fp)
	lw $t4, -24($fp)
	beq $t3, $t4, label335

	j label336

label335:
	li $t0, 1
	sw $t0, -1072($fp)

label336:
	lw $t1, -208($fp)
	move $t0, $t1
	sw $t0, -996($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -996($fp)
	move $a3, $t0
	lw $t1, -1072($fp)
	move $a2, $t1
	lw $t2, -20($fp)
	move $a1, $t2
	lw $t3, -1064($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1076($fp)

	li $t0, 3738
	lw $t1, -1076($fp)
	sub $t2, $t1, $t0
	li $t0, 0
	addi $t3, $fp, -696
	li $t4, 10
	mul $t0, $t0, $t4
	lw $t4, -716($fp)
	add $t0, $t0, $t4
	li $t5, 4
	mul $t0, $t0, $t5
	add $t5, $t3, $t0
	li $t0, 0
	li $t3, 0
	sw $t0, -1088($fp)
	sw $t2, -1080($fp)
	sw $t5, -1084($fp)
	lw $t6, -224($fp)
	bne $t6, $t3, label338

	j label337

label337:
	li $t0, 1
	sw $t0, -1088($fp)

label338:
	lw $t1, -1084($fp)
	lw $t0, 0($t1)
	lw $t2, -1088($fp)
	div $t0, $t2
	mflo $t3
	lw $t0, -1080($fp)
	add $t4, $t0, $t3
	li $t3, 0
	bne $t4, $t3, label328

	j label329

label328:
	li $t0, 0
	li $t1, 0
	li $t2, 64294
	li $t3, 56276
	lw $t4, -272($fp)
	div $t3, $t4
	mflo $t5
	sw $t0, -1092($fp)
	sw $t1, -1096($fp)
	bgt $t2, $t5, label342

	j label343

label342:
	li $t0, 1
	sw $t0, -1096($fp)

label343:
	lw $t0, -992($fp)
	lw $t1, -1096($fp)
	beq $t1, $t0, label341

	j label340

label341:
	li $t0, 46532
	li $t1, 0
	bne $t0, $t1, label340

	j label339

label339:
	li $t0, 1
	sw $t0, -1092($fp)

label340:
	j label330

label329:
	li $t0, 0
	lw $t1, -272($fp)
	bne $t1, $t0, label345

	j label344

label344:
	j label346

label345:
	li $t0, 0
	li $t1, 1836
	lw $t2, -272($fp)
	div $t2, $t1
	mflo $t3
	li $t1, -1
	mul $t4, $t1, $t3
	lw $t1, -240($fp)
	mul $t3, $t1, $t4
	li $t4, -1
	mul $t5, $t4, $t3
	li $t3, 0
	sw $t0, -1100($fp)
	bne $t5, $t3, label347

	j label349

label349:
	li $t0, 6183
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, 0
	bne $t2, $t0, label347

	j label348

label347:
	li $t0, 1
	sw $t0, -1100($fp)

label348:

label346:

label330:

label311:
	j label306

label308:
	j label305

label304:
	li $t0, 20236
	move $t1, $t0
	li $t0, 0
	li $t2, 63939
	li $t3, 0
	sw $t0, -1108($fp)
	sw $t1, -1104($fp)
	bne $t2, $t3, label350

	j label351

label350:
	li $t0, 1
	sw $t0, -1108($fp)

label351:
	li $t0, 0
	li $t1, 50573
	lw $t2, -704($fp)
	sub $t3, $t1, $t2
	sw $t0, -1112($fp)
	lw $t1, -1104($fp)
	bne $t3, $t1, label352

	j label353

label352:
	li $t0, 1
	sw $t0, -1112($fp)

label353:
	li $t0, 53005
	lw $t1, -272($fp)
	sub $t2, $t1, $t0
	li $t0, 42134
	add $t3, $t2, $t0
	lw $t0, -220($fp)
	lw $t2, -196($fp)
	div $t2, $t0
	mflo $t4
	li $t5, -1
	mul $t6, $t5, $t4
	sw $t3, -1116($fp)
	sw $t6, -1120($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1120($fp)
	move $a2, $t0
	lw $t1, -1116($fp)
	move $a1, $t1
	lw $t2, -1112($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1124($fp)

	lw $t0, -1124($fp)
	lw $t1, -1108($fp)
	sub $t2, $t1, $t0
	lw $t3, -436($fp)
	sub $t4, $t2, $t3
	li $t2, 43523
	lw $t5, -236($fp)
	blt $t2, $t5, label354

	j label355

label354:
	li $t0, 0
	li $t1, 12362
	lw $t2, -232($fp)
	div $t1, $t2
	mflo $t3
	li $t1, -1
	lw $t4, -192($fp)
	mul $t5, $t1, $t4
	sw $t0, -1128($fp)
	blt $t3, $t5, label356

	j label357

label356:
	li $t0, 1
	sw $t0, -1128($fp)

label357:
	lw $t0, -1128($fp)
	move $v0, $t0
	lw $ra, 1308($sp)
	lw $fp, 1304($sp)
	addi $sp, $sp, 1312
	jr $ra

label355:

label305:

	li $v0, 1
	lw $t0, -984($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -988($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -992($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -916
	li $t3, 0
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1132($fp)

	li $v0, 1
	lw $t0, -1132($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -916
	li $t3, 1
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1136($fp)

	li $v0, 1
	lw $t0, -1136($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -916
	li $t3, 2
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1140($fp)

	li $v0, 1
	lw $t0, -1140($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -916
	li $t3, 3
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1144($fp)

	li $v0, 1
	lw $t0, -1144($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -916
	li $t3, 4
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1148($fp)

	li $v0, 1
	lw $t0, -1148($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -964
	li $t3, 0
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1152($fp)

	li $v0, 1
	lw $t0, -1152($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -964
	li $t3, 1
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1156($fp)

	li $v0, 1
	lw $t0, -1156($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -964
	li $t3, 2
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1160($fp)

	li $v0, 1
	lw $t0, -1160($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -996($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1000($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -980
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1164($fp)

	li $v0, 1
	lw $t0, -1164($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -696
	li $t3, 10
	mul $t1, $t1, $t3
	lw $t3, -704($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	li $t1, 0
	addi $t2, $fp, -964
	li $t5, 3
	mul $t1, $t1, $t5
	lw $t5, -984($fp)
	add $t1, $t1, $t5
	li $t6, 4
	mul $t1, $t1, $t6
	add $t6, $t2, $t1
	lw $t1, 0($t6)
	lw $t2, 0($t4)
	div $t2, $t1
	mflo $t4
	li $t1, 0
	addi $t2, $fp, -104
	li $t6, 2
	li $t7, 5
	mul $t1, $t1, $t7
	add $t1, $t1, $t6
	li $t6, 4
	mul $t1, $t1, $t6
	add $t6, $t2, $t1
	li $t1, -1
	lw $t2, 0($t6)
	mul $t6, $t1, $t2
	mul $t1, $t4, $t6
	li $t2, -1
	mul $t4, $t2, $t1
	li $t1, -1
	mul $t2, $t1, $t4
	move $v0, $t2
	lw $ra, 1308($sp)
	lw $fp, 1304($sp)
	addi $sp, $sp, 1312
	jr $ra

label358:
	li $t0, 23977
	li $t1, 0
	addi $t2, $fp, -696
	li $t3, 10
	mul $t1, $t1, $t3
	lw $t3, -20($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	li $t1, 55848
	lw $t2, 0($t4)
	add $t4, $t2, $t1
	li $t1, 0
	addi $t2, $fp, -916
	li $t5, 0
	li $t6, 5
	mul $t1, $t1, $t6
	add $t1, $t1, $t5
	li $t5, 4
	mul $t1, $t1, $t5
	add $t5, $t2, $t1
	lw $t1, 0($t5)
	add $t2, $t4, $t1
	bne $t0, $t2, label359

	j label360

label359:

label361:
	li $t0, 0
	addi $t1, $fp, -152
	li $t2, 1
	li $t3, 3
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 36036
	lw $t1, 0($t2)
	mul $t2, $t1, $t0
	li $t0, 0
	bne $t2, $t0, label362

	j label363

label362:
	li $t0, 60499
	move $t1, $t0
	lw $t2, -988($fp)
	move $t0, $t2
	li $t3, 0
	li $t4, 23048
	li $t5, -1
	mul $t6, $t5, $t4
	li $t4, 0
	sw $t0, -216($fp)
	sw $t1, -1168($fp)
	sw $t3, -1172($fp)
	bne $t6, $t4, label364

	j label366

label366:
	li $t0, 35912
	li $t1, 0
	bne $t0, $t1, label364

	j label365

label364:
	li $t0, 1
	sw $t0, -1172($fp)

label365:
	li $t0, -1
	lw $t1, -24($fp)
	mul $t2, $t0, $t1
	li $t0, -1
	mul $t3, $t0, $t2
	sw $t3, -1176($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1176($fp)
	move $a2, $t0
	lw $t1, -1172($fp)
	move $a1, $t1
	lw $t2, -216($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1180($fp)

	li $t0, -1
	lw $t1, -1180($fp)
	mul $t2, $t0, $t1
	li $t0, 36031
	li $t3, 0
	li $t4, 0
	li $t5, 0
	li $t6, 0
	addi $t7, $fp, -536
	li $t8, 4
	li $t9, 6
	mul $t6, $t6, $t9
	add $t6, $t6, $t8
	li $t8, 4
	mul $t6, $t6, $t8
	add $t8, $t7, $t6
	lw $t6, 0($t8)
	li $t7, 0
	sw $t3, -1184($fp)
	sw $t4, -1188($fp)
	sw $t5, -1192($fp)
	bne $t6, $t7, label372

	j label371

label371:
	li $t0, 1
	sw $t0, -1192($fp)

label372:
	li $t0, 37448
	lw $t1, -192($fp)
	add $t2, $t1, $t0
	lw $t0, -1192($fp)
	ble $t0, $t2, label369

	j label370

label369:
	li $t0, 1
	sw $t0, -1188($fp)

label370:
	li $t0, 0
	sw $t0, -1196($fp)
	lw $t1, -196($fp)
	lw $t2, -1168($fp)
	ble $t2, $t1, label373

	j label374

label373:
	li $t0, 1
	sw $t0, -1196($fp)

label374:
	li $t0, 34061
	lw $t1, -440($fp)
	div $t0, $t1
	mflo $t2
	lw $t0, -228($fp)
	sub $t3, $t2, $t0
	lw $t4, -272($fp)
	move $t2, $t4
	li $t5, 0
	li $t6, 12961
	sw $t2, -704($fp)
	sw $t3, -1200($fp)
	sw $t5, -1204($fp)
	lw $t7, -996($fp)
	beq $t6, $t7, label377

	j label376

label377:
	li $t0, 0
	lw $t1, -200($fp)
	bne $t1, $t0, label375

	j label376

label375:
	li $t0, 1
	sw $t0, -1204($fp)

label376:
	li $t0, 0
	addi $t1, $fp, -104
	li $t2, 5
	mul $t0, $t0, $t2
	lw $t2, -12($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	sw $t0, -1208($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1208($fp)
	move $a3, $t0
	lw $t1, -1204($fp)
	move $a2, $t1
	lw $t2, -704($fp)
	move $a1, $t2
	lw $t3, -1200($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1212($fp)

	li $t0, 41186
	lw $t1, -1212($fp)
	sub $t2, $t1, $t0
	li $t0, 0
	li $t3, 0
	sw $t0, -1220($fp)
	sw $t2, -1216($fp)
	lw $t4, -272($fp)
	bne $t4, $t3, label379

	j label378

label378:
	li $t0, 1
	sw $t0, -1220($fp)

label379:
	li $t0, 32819
	lw $t1, -1220($fp)
	mul $t2, $t1, $t0
	li $t0, 0
	addi $t3, $fp, -916
	li $t4, 5
	mul $t0, $t0, $t4
	lw $t4, -24($fp)
	add $t0, $t0, $t4
	li $t5, 4
	mul $t0, $t0, $t5
	add $t5, $t3, $t0
	li $t0, 3701
	lw $t3, 0($t5)
	sub $t5, $t3, $t0
	sw $t2, -1224($fp)
	sw $t5, -1228($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1228($fp)
	move $a3, $t0
	lw $t1, -1224($fp)
	move $a2, $t1
	lw $t2, -1216($fp)
	move $a1, $t2
	lw $t3, -1196($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1232($fp)

	lw $t0, -1232($fp)
	lw $t1, -1188($fp)
	bge $t1, $t0, label367

	j label368

label367:
	li $t0, 1
	sw $t0, -1184($fp)

label368:
	li $t0, 0
	li $t1, 0
	sw $t0, -1236($fp)
	lw $t2, -264($fp)
	bne $t2, $t1, label381

	j label380

label380:
	li $t0, 1
	sw $t0, -1236($fp)

label381:
	j label361

label363:
	j label358

label360:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -1240($fp)
	sw $t1, -1244($fp)
	lw $t3, -432($fp)
	bne $t3, $t2, label386

	j label385

label386:
	li $t0, 22182
	li $t1, 0
	bne $t0, $t1, label384

	j label385

label384:
	li $t0, 1
	sw $t0, -1244($fp)

label385:
	li $t0, 0
	lw $t1, -236($fp)
	lw $t2, -436($fp)
	mul $t3, $t2, $t1
	li $t4, 34655
	sw $t0, -1248($fp)
	beq $t3, $t4, label387

	j label388

label387:
	li $t0, 1
	sw $t0, -1248($fp)

label388:
	li $t0, 0
	lw $t1, -224($fp)
	lw $t2, -272($fp)
	mul $t3, $t2, $t1
	sw $t0, -1252($fp)
	ble $t3, $t2, label389

	j label390

label389:
	li $t0, 1
	sw $t0, -1252($fp)

label390:
	li $t0, -1
	lw $t1, -440($fp)
	mul $t2, $t0, $t1
	li $t0, -1
	mul $t3, $t0, $t2
	sw $t3, -1256($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1256($fp)
	move $a3, $t0
	lw $t1, -1252($fp)
	move $a2, $t1
	lw $t2, -1248($fp)
	move $a1, $t2
	lw $t3, -1244($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1260($fp)

	lw $t0, -260($fp)
	lw $t1, -1260($fp)
	bgt $t1, $t0, label382

	j label383

label382:
	li $t0, 1
	sw $t0, -1240($fp)

label383:
	li $t0, 0
	li $t1, 9884
	li $t2, 0
	sw $t0, -1264($fp)
	bne $t1, $t2, label391

	j label392

label391:
	li $t0, 1
	sw $t0, -1264($fp)

label392:
	li $t0, 42419
	sw $t0, -1268($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1268($fp)
	move $a2, $t0
	lw $t1, -1264($fp)
	move $a1, $t1
	lw $t2, -1240($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4

	li $v0, 1
	lw $t0, -188($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -104
	li $t3, 0
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1272($fp)

	li $v0, 1
	lw $t0, -1272($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -104
	li $t3, 1
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1276($fp)

	li $v0, 1
	lw $t0, -1276($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -104
	li $t3, 2
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1280($fp)

	li $v0, 1
	lw $t0, -1280($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -104
	li $t3, 3
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1284($fp)

	li $v0, 1
	lw $t0, -1284($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -104
	li $t3, 4
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1288($fp)

	li $v0, 1
	lw $t0, -1288($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -192($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -196($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -200($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -204($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -208($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	lw $t0, -216($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -220($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -224($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -228($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -152
	li $t3, 0
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1292($fp)

	li $v0, 1
	lw $t0, -1292($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -152
	li $t3, 1
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1296($fp)

	li $v0, 1
	lw $t0, -1296($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -152
	li $t3, 2
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1300($fp)

	li $v0, 1
	lw $t0, -1300($fp)
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
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1304($fp)

	li $v0, 1
	lw $t0, -1304($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -232($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -236($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -240($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -244($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -248($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -252($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -256($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -260($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -264($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -268($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -184
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1308($fp)

	li $v0, 1
	lw $t0, -1308($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -272($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -104
	li $t4, 33059
	lw $t5, -228($fp)
	mul $t6, $t4, $t5
	li $t4, 60457
	div $t6, $t4
	mflo $t7
	li $t4, 5
	mul $t2, $t2, $t4
	add $t2, $t2, $t7
	li $t4, 4
	mul $t2, $t2, $t4
	add $t4, $t3, $t2
	lw $t2, 0($t4)
	li $t3, 0
	sw $t1, -1312($fp)
	bne $t2, $t3, label395

	j label394

label395:
	li $t0, 29888
	li $t1, 0
	bne $t0, $t1, label393

	j label394

label393:
	li $t0, 1
	sw $t0, -1312($fp)

label394:
	lw $t0, -1312($fp)
	move $v0, $t0
	lw $ra, 1308($sp)
	lw $fp, 1304($sp)
	addi $sp, $sp, 1312
	jr $ra

id_mEqPUA:
	addi $sp, $sp, -804
	sw $ra, 800($sp)
	sw $fp, 796($sp)
	addi $fp, $sp, 804

	li $t0, 0
	addi $t1, $fp, -136
	li $t2, 0
	li $t3, 8
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 9657
	sw $t0, 0($t2)
	li $t1, 0
	addi $t3, $fp, -136
	li $t4, 1
	li $t5, 8
	mul $t1, $t1, $t5
	add $t1, $t1, $t4
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t3, $t1
	li $t1, 38444
	sw $t1, 0($t4)
	li $t3, 0
	addi $t5, $fp, -136
	li $t6, 2
	li $t7, 8
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 42250
	sw $t3, 0($t6)
	li $t5, 0
	addi $t7, $fp, -136
	li $t8, 3
	li $t9, 8
	mul $t5, $t5, $t9
	add $t5, $t5, $t8
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t7, $t5
	li $t5, 10363
	sw $t5, 0($t8)
	li $t7, 0
	addi $t9, $fp, -136
	li $s0, 4
	li $s1, 8
	mul $t7, $t7, $s1
	add $t7, $t7, $s0
	li $s0, 4
	mul $t7, $t7, $s0
	add $s0, $t9, $t7
	li $t7, 48223
	sw $t7, 0($s0)
	li $t9, 0
	addi $s1, $fp, -136
	li $s2, 5
	li $s3, 8
	mul $t9, $t9, $s3
	add $t9, $t9, $s2
	li $s2, 4
	mul $t9, $t9, $s2
	add $s2, $s1, $t9
	li $t9, 692
	sw $t9, 0($s2)
	li $s1, 0
	addi $s3, $fp, -136
	li $s4, 6
	li $s5, 8
	mul $s1, $s1, $s5
	add $s1, $s1, $s4
	li $s4, 4
	mul $s1, $s1, $s4
	add $s4, $s3, $s1
	li $s1, 675
	sw $s1, 0($s4)
	li $s3, 0
	addi $s5, $fp, -136
	li $s6, 7
	li $s7, 8
	mul $s3, $s3, $s7
	add $s3, $s3, $s6
	li $s6, 4
	mul $s3, $s3, $s6
	add $s6, $s5, $s3
	li $s3, 7811
	sw $s3, 0($s6)
	li $s5, 35168
	move $s7, $s5
	li $s5, 21871
	sw $s7, -268($fp)
	move $s7, $s5
	li $s5, 44436
	sw $s7, -272($fp)
	move $s7, $s5
	li $s5, 5668
	sw $s7, -276($fp)
	move $s7, $s5
	li $s5, 16834
	sw $s7, -280($fp)
	move $s7, $s5
	li $s5, 1948
	sw $s7, -284($fp)
	move $s7, $s5
	li $s5, 41580
	sw $s7, -288($fp)
	move $s7, $s5
	li $s5, 52865
	sw $s7, -292($fp)
	move $s7, $s5
	li $s5, 8813
	sw $s7, -296($fp)
	move $s7, $s5
	li $s5, 0
	sw $s7, -300($fp)
	addi $s7, $fp, -200
	sw $s6, -808($fp)
	li $s6, 0
	sw $s4, -812($fp)
	li $s4, 4
	mul $s5, $s5, $s4
	add $s4, $s5, $s6
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 11361
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -200
	sw $s5, -816($fp)
	li $s5, 1
	sw $s4, -820($fp)
	li $s4, 4
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 24778
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -200
	sw $s5, -824($fp)
	li $s5, 2
	sw $s4, -828($fp)
	li $s4, 4
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 42874
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -200
	sw $s5, -832($fp)
	li $s5, 3
	sw $s4, -836($fp)
	li $s4, 4
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 24322
	sw $s4, 0($s5)
	li $s6, 428
	move $s7, $s6
	li $s6, 10157
	sw $s7, -304($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -308($fp)
	addi $s7, $fp, -232
	sw $s5, -840($fp)
	li $s5, 0
	sw $s4, -844($fp)
	li $s4, 2
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 28023
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -232
	sw $s5, -848($fp)
	li $s5, 1
	sw $s4, -852($fp)
	li $s4, 2
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 22611
	sw $s4, 0($s5)
	li $s6, 44813
	move $s7, $s6
	li $s6, 37907
	sw $s7, -312($fp)
	move $s7, $s6
	li $s6, 65030
	sw $s7, -316($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -320($fp)
	addi $s7, $fp, -264
	sw $s5, -856($fp)
	li $s5, 0
	sw $s4, -860($fp)
	li $s4, 2
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 12336
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -264
	sw $s5, -864($fp)
	li $s5, 1
	sw $s4, -868($fp)
	li $s4, 2
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 32828
	sw $s4, 0($s5)
	li $s6, 29382
	move $s7, $s6
	li $s6, 21993
	sw $s7, -324($fp)
	move $s7, $s6
	li $s6, 5736
	sw $s7, -328($fp)
	move $s7, $s6
	li $s6, 6097
	sw $s7, -332($fp)
	move $s7, $s6
	li $s6, 32356
	sw $s7, -336($fp)
	move $s7, $s6
	li $s6, 53959
	sw $s7, -340($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -344($fp)
	addi $s7, $fp, -136
	sw $s5, -872($fp)
	li $s5, 0
	sw $s4, -876($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	lw $s4, 0($s5)
	sw $s4, -348($fp)

	li $v0, 1
	lw $t0, -348($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 1
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -352($fp)

	li $v0, 1
	lw $t0, -352($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 2
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -356($fp)

	li $v0, 1
	lw $t0, -356($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 3
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -360($fp)

	li $v0, 1
	lw $t0, -360($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 4
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -364($fp)

	li $v0, 1
	lw $t0, -364($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 5
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -368($fp)

	li $v0, 1
	lw $t0, -368($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 6
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -372($fp)

	li $v0, 1
	lw $t0, -372($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 7
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -376($fp)

	li $v0, 1
	lw $t0, -376($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -268($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -272($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -276($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -280($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -284($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -288($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -292($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -296($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -300($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -200
	li $t3, 0
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -380($fp)

	li $v0, 1
	lw $t0, -380($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -200
	li $t3, 1
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -384($fp)

	li $v0, 1
	lw $t0, -384($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -200
	li $t3, 2
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -388($fp)

	li $v0, 1
	lw $t0, -388($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -200
	li $t3, 3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -392($fp)

	li $v0, 1
	lw $t0, -392($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -304($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -308($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -232
	li $t3, 0
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -396($fp)

	li $v0, 1
	lw $t0, -396($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -232
	li $t3, 1
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -400($fp)

	li $v0, 1
	lw $t0, -400($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -312($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	addi $t2, $fp, -264
	li $t3, 0
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -404($fp)

	li $v0, 1
	lw $t0, -404($fp)
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
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -408($fp)

	li $v0, 1
	lw $t0, -408($fp)
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

	li $v0, 1
	lw $t0, -328($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -332($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -336($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -340($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -344($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 6789
	li $t3, 61771
	div $t2, $t3
	mflo $t4
	li $t2, -1
	mul $t3, $t2, $t4
	li $t2, 0
	li $t4, 0
	sw $t1, -412($fp)
	sw $t2, -420($fp)
	sw $t3, -416($fp)
	lw $t5, -336($fp)
	bne $t5, $t4, label400

	j label399

label399:
	li $t0, 1
	sw $t0, -420($fp)

label400:
	lw $t0, -420($fp)
	lw $t1, -416($fp)
	add $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label396

	j label398

label398:
	li $t0, 0
	addi $t1, $fp, -200
	li $t2, 2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, -284($fp)
	lw $t1, -276($fp)
	mul $t3, $t1, $t0
	lw $t4, 0($t2)
	sub $t2, $t4, $t3
	li $t3, 0
	bne $t2, $t3, label396

	j label397

label396:
	li $t0, 1
	sw $t0, -412($fp)

label397:
	lw $t0, -412($fp)
	move $v0, $t0
	lw $ra, 800($sp)
	lw $fp, 796($sp)
	addi $sp, $sp, 804
	jr $ra

	li $t0, 0
	li $t1, 40670
	li $t2, 0
	addi $t3, $fp, -200
	li $t4, 4
	mul $t2, $t2, $t4
	lw $t4, -316($fp)
	add $t2, $t2, $t4
	li $t5, 4
	mul $t2, $t2, $t5
	add $t5, $t3, $t2
	li $t2, 0
	li $t3, 47625
	li $t6, 0
	sw $t0, -424($fp)
	sw $t1, -428($fp)
	sw $t2, -436($fp)
	sw $t5, -432($fp)
	bne $t3, $t6, label407

	j label408

label408:
	li $t0, 6201
	li $t1, 0
	bne $t0, $t1, label406

	j label407

label406:
	li $t0, 1
	sw $t0, -436($fp)

label407:
	lw $t1, -344($fp)
	move $t0, $t1
	li $t2, 0
	li $t3, 42619
	li $t4, 0
	sw $t0, -340($fp)
	sw $t2, -440($fp)
	bne $t3, $t4, label409

	j label410

label409:
	li $t0, 1
	sw $t0, -440($fp)

label410:
	lw $t1, -432($fp)
	lw $t0, 0($t1)
	sw $t0, -444($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -440($fp)
	move $a3, $t0
	lw $t1, -340($fp)
	move $a2, $t1
	lw $t2, -436($fp)
	move $a1, $t2
	lw $t3, -444($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -448($fp)

	li $t0, 0
	li $t1, 23670
	lw $t2, -272($fp)
	add $t3, $t2, $t1
	li $t1, 59066
	sw $t0, -452($fp)
	bge $t3, $t1, label411

	j label412

label411:
	li $t0, 1
	sw $t0, -452($fp)

label412:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	jal id_mEqPUA
	move $t0, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, -456($fp)

	lw $t0, -308($fp)
	lw $t1, -328($fp)
	div $t1, $t0
	mflo $t2
	sw $t2, -460($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -460($fp)
	move $a2, $t0
	lw $t1, -456($fp)
	move $a1, $t1
	lw $t2, -452($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -464($fp)

	li $t0, 51432
	lw $t1, -464($fp)
	div $t1, $t0
	mflo $t2
	li $t0, 35031
	move $t3, $t0
	sw $t2, -468($fp)
	sw $t3, -312($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -312($fp)
	move $a3, $t0
	lw $t1, -468($fp)
	move $a2, $t1
	lw $t2, -448($fp)
	move $a1, $t2
	lw $t3, -428($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -472($fp)

	li $t0, -1
	lw $t1, -472($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label405

	j label404

label404:
	li $t0, 1
	sw $t0, -424($fp)

label405:
	li $t0, -1
	lw $t1, -424($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label403

	j label402

label403:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	jal id_mEqPUA
	move $t0, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, -476($fp)

	li $t0, 18308
	lw $t1, -476($fp)
	div $t1, $t0
	mflo $t2
	li $t0, 28771
	mul $t3, $t2, $t0
	li $t0, 0
	bne $t3, $t0, label401

	j label402

label401:
	li $t0, 0
	li $t1, 59353
	li $t2, 0
	addi $t3, $fp, -200
	li $t4, 4
	mul $t2, $t2, $t4
	lw $t4, -344($fp)
	add $t2, $t2, $t4
	li $t5, 4
	mul $t2, $t2, $t5
	add $t5, $t3, $t2
	lw $t2, 0($t5)
	lw $t3, -288($fp)
	sub $t5, $t3, $t2
	sw $t0, -480($fp)
	bne $t1, $t5, label413

	j label414

label413:
	li $t0, 1
	sw $t0, -480($fp)

label414:
	lw $t0, -480($fp)
	move $v0, $t0
	lw $ra, 800($sp)
	lw $fp, 796($sp)
	addi $sp, $sp, 804
	jr $ra

label402:

label415:
	li $t0, 18737
	li $t1, 0
	bne $t0, $t1, label416

	j label417

label416:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -200
	li $t3, 0
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	li $t1, -1
	lw $t2, 0($t3)
	mul $t3, $t1, $t2
	li $t1, 0
	li $t2, 0
	sw $t0, -484($fp)
	sw $t1, -492($fp)
	sw $t3, -488($fp)
	lw $t4, -320($fp)
	bne $t4, $t2, label424

	j label423

label423:
	li $t0, 1
	sw $t0, -492($fp)

label424:
	lw $t0, -492($fp)
	lw $t1, -488($fp)
	sub $t2, $t1, $t0
	li $t3, 0
	addi $t4, $fp, -200
	li $t5, 1
	li $t6, 4
	mul $t3, $t3, $t6
	add $t3, $t3, $t5
	li $t5, 4
	mul $t3, $t3, $t5
	add $t5, $t4, $t3
	lw $t3, 0($t5)
	bgt $t2, $t3, label421

	j label422

label421:
	li $t0, 1
	sw $t0, -484($fp)

label422:
	lw $t0, -336($fp)
	lw $t1, -484($fp)
	bgt $t1, $t0, label418

	j label419

label418:
	li $t0, 0
	addi $t1, $fp, -200
	li $t2, 0
	li $t3, 59747
	li $t4, 40842
	sw $t0, -496($fp)
	sw $t1, -500($fp)
	sw $t2, -504($fp)
	beq $t3, $t4, label425

	j label426

label425:
	li $t0, 1
	sw $t0, -504($fp)

label426:
	li $t0, 4
	lw $t1, -496($fp)
	mul $t1, $t1, $t0
	lw $t0, -504($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -500($fp)
	add $t3, $t2, $t1
	li $t4, 0
	li $t5, 0
	addi $t6, $fp, -200
	li $t7, 3
	li $t8, 4
	mul $t5, $t5, $t8
	add $t5, $t5, $t7
	li $t7, 4
	mul $t5, $t5, $t7
	add $t7, $t6, $t5
	lw $t5, 0($t7)
	li $t6, 0
	sw $t1, -496($fp)
	sw $t3, -508($fp)
	sw $t4, -512($fp)
	bne $t5, $t6, label428

	j label427

label427:
	li $t0, 1
	sw $t0, -512($fp)

label428:
	lw $t1, -508($fp)
	lw $t0, 0($t1)
	lw $t2, -512($fp)
	div $t0, $t2
	mflo $t3
	li $t0, -1
	mul $t4, $t0, $t3
	move $v0, $t4
	lw $ra, 800($sp)
	lw $fp, 796($sp)
	addi $sp, $sp, 804
	jr $ra

	j label420

label419:
	li $t0, 0
	addi $t1, $fp, -200
	li $t2, 0
	li $t3, 4688
	sw $t0, -516($fp)
	sw $t1, -520($fp)
	sw $t2, -524($fp)
	lw $t4, -320($fp)
	bne $t3, $t4, label429

	j label430

label429:
	li $t0, 1
	sw $t0, -524($fp)

label430:
	li $t0, 4
	lw $t1, -516($fp)
	mul $t1, $t1, $t0
	lw $t0, -524($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -520($fp)
	add $t3, $t2, $t1
	li $t4, 52535
	lw $t5, 0($t3)
	mul $t3, $t5, $t4
	li $t4, -1
	mul $t5, $t4, $t3
	sw $t1, -516($fp)

label420:
	j label415

label417:

label431:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 32775
	sw $t0, -528($fp)
	sw $t1, -532($fp)
	sw $t2, -536($fp)
	lw $t4, -280($fp)
	ble $t3, $t4, label439

	j label440

label439:
	li $t0, 1
	sw $t0, -536($fp)

label440:
	li $t0, 10785
	lw $t1, -536($fp)
	bgt $t1, $t0, label437

	j label438

label437:
	li $t0, 1
	sw $t0, -532($fp)

label438:
	lw $t0, -316($fp)
	lw $t1, -284($fp)
	div $t1, $t0
	mflo $t2
	lw $t3, -532($fp)
	beq $t3, $t2, label435

	j label436

label435:
	li $t0, 1
	sw $t0, -528($fp)

label436:
	li $t0, 0
	addi $t1, $fp, -200
	li $t2, 2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 17574
	lw $t1, 0($t2)
	div $t1, $t0
	mflo $t2
	lw $t0, -528($fp)
	beq $t0, $t2, label434

	j label433

label434:
	li $t0, 0
	li $t1, 0
	li $t2, 52387
	li $t3, -1
	mul $t4, $t3, $t2
	sw $t0, -540($fp)
	sw $t1, -544($fp)
	lw $t2, -344($fp)
	bgt $t4, $t2, label443

	j label444

label443:
	li $t0, 1
	sw $t0, -544($fp)

label444:
	li $t0, 17432
	lw $t1, -544($fp)
	bne $t1, $t0, label441

	j label442

label441:
	li $t0, 1
	sw $t0, -540($fp)

label442:
	lw $t0, -288($fp)
	lw $t1, -540($fp)
	bgt $t1, $t0, label432

	j label433

label432:
	li $t0, 0
	addi $t1, $fp, -200
	li $t2, 59531
	lw $t3, -292($fp)
	div $t2, $t3
	mflo $t4
	lw $t2, -280($fp)
	div $t4, $t2
	mflo $t5
	li $t4, 4
	mul $t0, $t0, $t4
	add $t0, $t0, $t5
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t1, $t0
	li $t0, 0
	li $t1, 41753
	sw $t0, -552($fp)
	sw $t4, -548($fp)
	lw $t5, -316($fp)
	bne $t5, $t1, label445

	j label447

label447:
	li $t0, 0
	lw $t1, -304($fp)
	bne $t1, $t0, label445

	j label446

label445:
	li $t0, 1
	sw $t0, -552($fp)

label446:
	lw $t0, -336($fp)
	lw $t1, -276($fp)
	div $t1, $t0
	mflo $t2
	lw $t3, -296($fp)
	mul $t4, $t2, $t3
	li $t2, 0
	addi $t5, $fp, -232
	li $t6, 2
	mul $t2, $t2, $t6
	lw $t6, -292($fp)
	add $t2, $t2, $t6
	li $t7, 4
	mul $t2, $t2, $t7
	add $t7, $t5, $t2
	li $t2, 0
	li $t5, 0
	addi $t8, $fp, -200
	li $t9, 4
	mul $t5, $t5, $t9
	lw $t9, -332($fp)
	add $t5, $t5, $t9
	li $s0, 4
	mul $t5, $t5, $s0
	add $s0, $t8, $t5
	li $t5, 58103
	lw $t8, 0($s0)
	sw $t2, -564($fp)
	sw $t4, -556($fp)
	sw $t7, -560($fp)
	blt $t8, $t5, label448

	j label449

label448:
	li $t0, 1
	sw $t0, -564($fp)

label449:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -568($fp)
	sw $t1, -572($fp)
	lw $t3, -300($fp)
	bne $t3, $t2, label453

	j label452

label452:
	li $t0, 1
	sw $t0, -572($fp)

label453:
	lw $t0, -268($fp)
	lw $t1, -572($fp)
	beq $t1, $t0, label450

	j label451

label450:
	li $t0, 1
	sw $t0, -568($fp)

label451:
	li $t0, 0
	li $t1, 41621
	li $t2, 0
	sw $t0, -576($fp)
	bne $t1, $t2, label454

	j label457

label457:
	li $t0, 47954
	li $t1, 0
	bne $t0, $t1, label454

	j label456

label456:
	li $t0, 35186
	li $t1, 0
	bne $t0, $t1, label454

	j label455

label454:
	li $t0, 1
	sw $t0, -576($fp)

label455:
	li $t0, 0
	li $t1, 65291
	lw $t2, -272($fp)
	sub $t3, $t2, $t1
	li $t1, 0
	sw $t0, -580($fp)
	bne $t3, $t1, label460

	j label459

label460:
	li $t0, 41485
	li $t1, 0
	bne $t0, $t1, label458

	j label459

label458:
	li $t0, 1
	sw $t0, -580($fp)

label459:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -580($fp)
	move $a3, $t0
	lw $t1, -576($fp)
	move $a2, $t1
	lw $t2, -568($fp)
	move $a1, $t2
	lw $t3, -564($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -584($fp)

	lw $t1, -560($fp)
	lw $t0, 0($t1)
	sw $t0, -588($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -584($fp)
	move $a3, $t0
	lw $t1, -588($fp)
	move $a2, $t1
	lw $t2, -556($fp)
	move $a1, $t2
	lw $t3, -552($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -592($fp)

	lw $t1, -548($fp)
	lw $t0, 0($t1)
	lw $t2, -592($fp)
	mul $t3, $t0, $t2
	move $v0, $t3
	lw $ra, 800($sp)
	lw $fp, 796($sp)
	addi $sp, $sp, 804
	jr $ra

	j label431

label433:
	li $t0, 0
	addi $t1, $fp, -136
	li $t2, 0
	li $t3, 8
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	sw $t0, -596($fp)

	li $v0, 1
	lw $t0, -596($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 1
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -600($fp)

	li $v0, 1
	lw $t0, -600($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 2
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -604($fp)

	li $v0, 1
	lw $t0, -604($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 3
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -608($fp)

	li $v0, 1
	lw $t0, -608($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 4
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -612($fp)

	li $v0, 1
	lw $t0, -612($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 5
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -616($fp)

	li $v0, 1
	lw $t0, -616($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 6
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -620($fp)

	li $v0, 1
	lw $t0, -620($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 7
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -624($fp)

	li $v0, 1
	lw $t0, -624($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -268($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -272($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -276($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -280($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -284($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -288($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -292($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -296($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -300($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -200
	li $t3, 0
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -628($fp)

	li $v0, 1
	lw $t0, -628($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -200
	li $t3, 1
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -632($fp)

	li $v0, 1
	lw $t0, -632($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -200
	li $t3, 2
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -636($fp)

	li $v0, 1
	lw $t0, -636($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -200
	li $t3, 3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -640($fp)

	li $v0, 1
	lw $t0, -640($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -304($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -308($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -232
	li $t3, 0
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -644($fp)

	li $v0, 1
	lw $t0, -644($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -232
	li $t3, 1
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -648($fp)

	li $v0, 1
	lw $t0, -648($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -312($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	addi $t2, $fp, -264
	li $t3, 0
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -652($fp)

	li $v0, 1
	lw $t0, -652($fp)
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
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -656($fp)

	li $v0, 1
	lw $t0, -656($fp)
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

	li $v0, 1
	lw $t0, -328($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -332($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -336($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -340($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -344($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	lw $t2, -276($fp)
	lw $t3, -296($fp)
	mul $t4, $t3, $t2
	li $t5, 21082
	div $t4, $t5
	mflo $t6
	li $t4, 0
	sw $t1, -660($fp)
	bne $t6, $t4, label461

	j label463

label463:
	li $t0, 0
	lw $t1, -296($fp)
	bne $t1, $t0, label461

	j label462

label461:
	li $t0, 1
	sw $t0, -660($fp)

label462:
	lw $t1, -660($fp)
	move $t0, $t1
	sw $t0, -316($fp)
	move $v0, $t0
	lw $ra, 800($sp)
	lw $fp, 796($sp)
	addi $sp, $sp, 804
	jr $ra

label464:
	li $t0, 34786
	li $t1, 59793
	mul $t2, $t0, $t1
	li $t0, 1
	mul $t1, $t2, $t0
	li $t0, 0
	addi $t2, $fp, -136
	li $t3, 8
	mul $t0, $t0, $t3
	lw $t3, -304($fp)
	add $t0, $t0, $t3
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t2, $t0
	li $t0, 0
	li $t2, 28603
	lw $t5, -268($fp)
	mul $t6, $t2, $t5
	li $t2, 0
	sw $t0, -672($fp)
	sw $t1, -664($fp)
	sw $t4, -668($fp)
	bne $t6, $t2, label469

	j label468

label469:
	li $t0, 12994
	li $t1, 0
	bne $t0, $t1, label467

	j label468

label467:
	li $t0, 1
	sw $t0, -672($fp)

label468:
	li $t0, 0
	lw $t1, -280($fp)
	lw $t2, -304($fp)
	sub $t3, $t2, $t1
	li $t4, 0
	sw $t0, -676($fp)
	bne $t3, $t4, label472

	j label471

label472:
	li $t0, 23246
	li $t1, 0
	bne $t0, $t1, label470

	j label471

label470:
	li $t0, 1
	sw $t0, -676($fp)

label471:
	li $t0, 0
	li $t1, 50443
	lw $t2, -316($fp)
	div $t2, $t1
	mflo $t3
	li $t1, 0
	sw $t0, -680($fp)
	bne $t3, $t1, label475

	j label474

label475:
	li $t0, 0
	lw $t1, -328($fp)
	bne $t1, $t0, label473

	j label474

label473:
	li $t0, 1
	sw $t0, -680($fp)

label474:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	jal id_mEqPUA
	move $t0, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, -684($fp)

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -200
	li $t3, 3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t0, -688($fp)
	lw $t2, -304($fp)
	bge $t1, $t2, label476

	j label477

label476:
	li $t0, 1
	sw $t0, -688($fp)

label477:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -688($fp)
	move $a2, $t0
	lw $t1, -684($fp)
	move $a1, $t1
	lw $t2, -328($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -692($fp)

	li $t0, 0
	li $t1, 0
	sw $t0, -696($fp)
	sw $t1, -700($fp)
	lw $t2, -336($fp)
	lw $t3, -276($fp)
	bne $t3, $t2, label480

	j label481

label480:
	li $t0, 1
	sw $t0, -700($fp)

label481:
	lw $t0, -276($fp)
	lw $t1, -700($fp)
	bne $t1, $t0, label478

	j label479

label478:
	li $t0, 1
	sw $t0, -696($fp)

label479:
	li $t0, 44654
	li $t1, 29648
	add $t2, $t0, $t1
	lw $t0, -272($fp)
	sub $t1, $t2, $t0
	sw $t1, -704($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -704($fp)
	move $a2, $t0
	lw $t1, -696($fp)
	move $a1, $t1
	lw $t2, -692($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -708($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -708($fp)
	move $a3, $t0
	lw $t1, -324($fp)
	move $a2, $t1
	lw $t2, -680($fp)
	move $a1, $t2
	lw $t3, -676($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -712($fp)

	lw $t1, -668($fp)
	lw $t0, 0($t1)
	sw $t0, -716($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -712($fp)
	move $a3, $t0
	lw $t1, -672($fp)
	move $a2, $t1
	lw $t2, -716($fp)
	move $a1, $t2
	lw $t3, -664($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -720($fp)

	lw $t0, -312($fp)
	lw $t1, -720($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label465

	j label466

label465:
	li $t0, 0
	addi $t1, $fp, -264
	li $t2, 0
	li $t3, 0
	sw $t0, -724($fp)
	sw $t1, -728($fp)
	sw $t2, -732($fp)
	lw $t4, -304($fp)
	bne $t4, $t3, label484

	j label483

label484:
	li $t0, 0
	lw $t1, -280($fp)
	bne $t1, $t0, label482

	j label483

label482:
	li $t0, 1
	sw $t0, -732($fp)

label483:
	li $t0, 2
	lw $t1, -724($fp)
	mul $t1, $t1, $t0
	lw $t0, -732($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -728($fp)
	add $t3, $t2, $t1
	sw $t1, -724($fp)
	sw $t3, -736($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	jal id_mEqPUA
	move $t0, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, -740($fp)

	li $t0, 6457
	lw $t1, -740($fp)
	div $t1, $t0
	mflo $t2
	lw $t3, -736($fp)
	lw $t0, 0($t3)
	sub $t4, $t0, $t2
	lw $t0, -280($fp)
	sub $t2, $t4, $t0
	move $v0, $t2
	lw $ra, 800($sp)
	lw $fp, 796($sp)
	addi $sp, $sp, 804
	jr $ra

	j label464

label466:
	li $t0, 0
	addi $t1, $fp, -136
	li $t2, 0
	li $t3, 8
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	sw $t0, -744($fp)

	li $v0, 1
	lw $t0, -744($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 1
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -748($fp)

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
	addi $t2, $fp, -136
	li $t3, 2
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -752($fp)

	li $v0, 1
	lw $t0, -752($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 3
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -756($fp)

	li $v0, 1
	lw $t0, -756($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 4
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -760($fp)

	li $v0, 1
	lw $t0, -760($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 5
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -764($fp)

	li $v0, 1
	lw $t0, -764($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 6
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -768($fp)

	li $v0, 1
	lw $t0, -768($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -136
	li $t3, 7
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -772($fp)

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
	lw $t0, -268($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -272($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -276($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -280($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -284($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -288($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -292($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -296($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -300($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -200
	li $t3, 0
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -776($fp)

	li $v0, 1
	lw $t0, -776($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -200
	li $t3, 1
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -780($fp)

	li $v0, 1
	lw $t0, -780($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -200
	li $t3, 2
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -784($fp)

	li $v0, 1
	lw $t0, -784($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -200
	li $t3, 3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -788($fp)

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
	lw $t0, -304($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -308($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -232
	li $t3, 0
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -792($fp)

	li $v0, 1
	lw $t0, -792($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -232
	li $t3, 1
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -796($fp)

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
	lw $t0, -312($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	addi $t2, $fp, -264
	li $t3, 0
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -800($fp)

	li $v0, 1
	lw $t0, -800($fp)
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
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -804($fp)

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
	lw $t0, -324($fp)
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

	li $v0, 1
	lw $t0, -332($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -336($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -340($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -344($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	lw $t1, -332($fp)
	move $v0, $t1
	lw $ra, 800($sp)
	lw $fp, 796($sp)
	addi $sp, $sp, 804
	jr $ra

id_Fd:
	addi $sp, $sp, -2696
	sw $ra, 2692($sp)
	sw $fp, 2688($sp)
	addi $fp, $sp, 2696
	sw $a0, -12($fp)
	sw $a1, -16($fp)
	sw $a2, -20($fp)
	sw $a3, -24($fp)
	lw $a0, 0($fp)
	sw $a0, -28($fp)

	li $t0, 0
	addi $t1, $fp, -76
	li $t2, 0
	li $t3, 3
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 6157
	sw $t0, 0($t2)
	li $t1, 0
	addi $t3, $fp, -76
	li $t4, 1
	li $t5, 3
	mul $t1, $t1, $t5
	add $t1, $t1, $t4
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t3, $t1
	li $t1, 34337
	sw $t1, 0($t4)
	li $t3, 0
	addi $t5, $fp, -76
	li $t6, 2
	li $t7, 3
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 58992
	sw $t3, 0($t6)
	li $t5, 0
	addi $t7, $fp, -108
	li $t8, 0
	li $t9, 2
	mul $t5, $t5, $t9
	add $t5, $t5, $t8
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t7, $t5
	li $t5, 38932
	sw $t5, 0($t8)
	li $t7, 0
	addi $t9, $fp, -108
	li $s0, 1
	li $s1, 2
	mul $t7, $t7, $s1
	add $t7, $t7, $s0
	li $s0, 4
	mul $t7, $t7, $s0
	add $s0, $t9, $t7
	li $t7, 45122
	sw $t7, 0($s0)
	li $t9, 0
	addi $s1, $fp, -188
	li $s2, 0
	li $s3, 5
	mul $t9, $t9, $s3
	add $t9, $t9, $s2
	li $s2, 4
	mul $t9, $t9, $s2
	add $s2, $s1, $t9
	li $t9, 12811
	sw $t9, 0($s2)
	li $s1, 0
	addi $s3, $fp, -188
	li $s4, 1
	li $s5, 5
	mul $s1, $s1, $s5
	add $s1, $s1, $s4
	li $s4, 4
	mul $s1, $s1, $s4
	add $s4, $s3, $s1
	li $s1, 60130
	sw $s1, 0($s4)
	li $s3, 0
	addi $s5, $fp, -188
	li $s6, 2
	li $s7, 5
	mul $s3, $s3, $s7
	add $s3, $s3, $s6
	li $s6, 4
	mul $s3, $s3, $s6
	add $s6, $s5, $s3
	li $s3, 62697
	sw $s3, 0($s6)
	li $s5, 0
	addi $s7, $fp, -188
	sw $s6, -2700($fp)
	li $s6, 3
	sw $s4, -2704($fp)
	li $s4, 5
	mul $s5, $s5, $s4
	add $s4, $s5, $s6
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 65198
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -188
	sw $s5, -2708($fp)
	li $s5, 4
	sw $s4, -2712($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 12026
	sw $s4, 0($s5)
	li $s6, 56692
	move $s7, $s6
	li $s6, 0
	sw $s7, -832($fp)
	addi $s7, $fp, -220
	sw $s5, -2716($fp)
	li $s5, 0
	sw $s4, -2720($fp)
	li $s4, 2
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 41416
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -220
	sw $s5, -2724($fp)
	li $s5, 1
	sw $s4, -2728($fp)
	li $s4, 2
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 4593
	sw $s4, 0($s5)
	li $s6, 32777
	move $s7, $s6
	li $s6, 23834
	sw $s7, -836($fp)
	move $s7, $s6
	li $s6, 39779
	sw $s7, -840($fp)
	move $s7, $s6
	li $s6, 32532
	sw $s7, -844($fp)
	move $s7, $s6
	li $s6, 65319
	sw $s7, -848($fp)
	move $s7, $s6
	li $s6, 60862
	sw $s7, -852($fp)
	move $s7, $s6
	li $s6, 1782
	sw $s7, -856($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -860($fp)
	addi $s7, $fp, -300
	sw $s5, -2732($fp)
	li $s5, 0
	sw $s4, -2736($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 59577
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -300
	sw $s5, -2740($fp)
	li $s5, 1
	sw $s4, -2744($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 45179
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -300
	sw $s5, -2748($fp)
	li $s5, 2
	sw $s4, -2752($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 30385
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -300
	sw $s5, -2756($fp)
	li $s5, 3
	sw $s4, -2760($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 7035
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -300
	sw $s5, -2764($fp)
	li $s5, 4
	sw $s4, -2768($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 2889
	sw $s4, 0($s5)
	li $s6, 15292
	move $s7, $s6
	li $s6, 61378
	sw $s7, -864($fp)
	move $s7, $s6
	li $s6, 44341
	sw $s7, -868($fp)
	move $s7, $s6
	li $s6, 59946
	sw $s7, -872($fp)
	move $s7, $s6
	li $s6, 25490
	sw $s7, -876($fp)
	move $s7, $s6
	li $s6, 50798
	sw $s7, -880($fp)
	move $s7, $s6
	li $s6, 567
	sw $s7, -884($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -888($fp)
	addi $s7, $fp, -380
	sw $s5, -2772($fp)
	li $s5, 0
	sw $s4, -2776($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 59827
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -380
	sw $s5, -2780($fp)
	li $s5, 1
	sw $s4, -2784($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 44254
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -380
	sw $s5, -2788($fp)
	li $s5, 2
	sw $s4, -2792($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 39499
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -380
	sw $s5, -2796($fp)
	li $s5, 3
	sw $s4, -2800($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 39414
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -380
	sw $s5, -2804($fp)
	li $s5, 4
	sw $s4, -2808($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 57065
	sw $s4, 0($s5)
	li $s6, 34093
	move $s7, $s6
	li $s6, 36575
	sw $s5, -2812($fp)
	move $s5, $s6
	li $s6, 56728
	sw $s5, -896($fp)
	move $s5, $s6
	li $s6, 46120
	sw $s5, -900($fp)
	move $s5, $s6
	li $s6, 27731
	sw $s5, -904($fp)
	move $s5, $s6
	li $s6, 32608
	sw $s5, -908($fp)
	move $s5, $s6
	li $s6, 50713
	sw $s5, -912($fp)
	move $s5, $s6
	li $s6, 0
	sw $s5, -916($fp)
	addi $s5, $fp, -428
	sw $s4, -2816($fp)
	li $s4, 0
	sw $s3, -2820($fp)
	li $s3, 3
	mul $s6, $s6, $s3
	add $s3, $s6, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s5, $s3
	li $s3, 60509
	sw $s3, 0($s4)
	li $s5, 0
	addi $s6, $fp, -428
	sw $s4, -2824($fp)
	li $s4, 1
	sw $s3, -2828($fp)
	li $s3, 3
	mul $s5, $s5, $s3
	add $s3, $s5, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s6, $s3
	li $s3, 56442
	sw $s3, 0($s4)
	li $s5, 0
	addi $s6, $fp, -428
	sw $s4, -2832($fp)
	li $s4, 2
	sw $s3, -2836($fp)
	li $s3, 3
	mul $s5, $s5, $s3
	add $s3, $s5, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s6, $s3
	li $s3, 24957
	sw $s3, 0($s4)
	li $s5, 27505
	move $s6, $s5
	li $s5, 56226
	sw $s6, -920($fp)
	move $s6, $s5
	li $s5, 20283
	sw $s6, -924($fp)
	move $s6, $s5
	li $s5, 29288
	sw $s6, -928($fp)
	move $s6, $s5
	li $s5, 0
	sw $s6, -932($fp)
	addi $s6, $fp, -492
	sw $s4, -2840($fp)
	li $s4, 0
	sw $s3, -2844($fp)
	li $s3, 4
	mul $s5, $s5, $s3
	add $s3, $s5, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s6, $s3
	li $s3, 50267
	sw $s3, 0($s4)
	li $s5, 0
	addi $s6, $fp, -492
	sw $s4, -2848($fp)
	li $s4, 1
	sw $s3, -2852($fp)
	li $s3, 4
	mul $s5, $s5, $s3
	add $s3, $s5, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s6, $s3
	li $s3, 65462
	sw $s3, 0($s4)
	li $s5, 0
	addi $s6, $fp, -492
	sw $s4, -2856($fp)
	li $s4, 2
	sw $s3, -2860($fp)
	li $s3, 4
	mul $s5, $s5, $s3
	add $s3, $s5, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s6, $s3
	li $s3, 59673
	sw $s3, 0($s4)
	li $s5, 0
	addi $s6, $fp, -492
	sw $s4, -2864($fp)
	li $s4, 3
	sw $s3, -2868($fp)
	li $s3, 4
	mul $s5, $s5, $s3
	add $s3, $s5, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s6, $s3
	li $s3, 57302
	sw $s3, 0($s4)
	li $s5, 2816
	move $s6, $s5
	li $s5, 0
	sw $s6, -936($fp)
	addi $s6, $fp, -556
	sw $s4, -2872($fp)
	li $s4, 0
	sw $s3, -2876($fp)
	li $s3, 4
	mul $s5, $s5, $s3
	add $s3, $s5, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s6, $s3
	li $s3, 9430
	sw $s3, 0($s4)
	li $s5, 0
	addi $s6, $fp, -556
	sw $s4, -2880($fp)
	li $s4, 1
	sw $s3, -2884($fp)
	li $s3, 4
	mul $s5, $s5, $s3
	add $s3, $s5, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s6, $s3
	li $s3, 53144
	sw $s3, 0($s4)
	li $s5, 0
	addi $s6, $fp, -556
	sw $s4, -2888($fp)
	li $s4, 2
	sw $s3, -2892($fp)
	li $s3, 4
	mul $s5, $s5, $s3
	add $s3, $s5, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s6, $s3
	li $s3, 47157
	sw $s3, 0($s4)
	li $s5, 0
	addi $s6, $fp, -556
	sw $s4, -2896($fp)
	li $s4, 3
	sw $s3, -2900($fp)
	li $s3, 4
	mul $s5, $s5, $s3
	add $s3, $s5, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s6, $s3
	li $s3, 3840
	sw $s3, 0($s4)
	li $s5, 13099
	move $s6, $s5
	li $s5, 32419
	sw $s4, -2904($fp)
	move $s4, $s5
	li $s5, 4408
	sw $s4, -944($fp)
	move $s4, $s5
	li $s5, 0
	sw $s4, -948($fp)
	addi $s4, $fp, -636
	sw $s3, -2908($fp)
	li $s3, 0
	sw $s2, -2912($fp)
	li $s2, 5
	mul $s5, $s5, $s2
	add $s2, $s5, $s3
	li $s3, 4
	mul $s2, $s2, $s3
	add $s3, $s4, $s2
	li $s2, 7390
	sw $s2, 0($s3)
	li $s4, 0
	addi $s5, $fp, -636
	sw $s3, -2916($fp)
	li $s3, 1
	sw $s2, -2920($fp)
	li $s2, 5
	mul $s4, $s4, $s2
	add $s2, $s4, $s3
	li $s3, 4
	mul $s2, $s2, $s3
	add $s3, $s5, $s2
	li $s2, 11137
	sw $s2, 0($s3)
	li $s4, 0
	addi $s5, $fp, -636
	sw $s3, -2924($fp)
	li $s3, 2
	sw $s2, -2928($fp)
	li $s2, 5
	mul $s4, $s4, $s2
	add $s2, $s4, $s3
	li $s3, 4
	mul $s2, $s2, $s3
	add $s3, $s5, $s2
	li $s2, 43907
	sw $s2, 0($s3)
	li $s4, 0
	addi $s5, $fp, -636
	sw $s3, -2932($fp)
	li $s3, 3
	sw $s2, -2936($fp)
	li $s2, 5
	mul $s4, $s4, $s2
	add $s2, $s4, $s3
	li $s3, 4
	mul $s2, $s2, $s3
	add $s3, $s5, $s2
	li $s2, 46804
	sw $s2, 0($s3)
	li $s4, 0
	addi $s5, $fp, -636
	sw $s3, -2940($fp)
	li $s3, 4
	sw $s2, -2944($fp)
	li $s2, 5
	mul $s4, $s4, $s2
	add $s2, $s4, $s3
	li $s3, 4
	mul $s2, $s2, $s3
	add $s3, $s5, $s2
	li $s2, 2666
	sw $s2, 0($s3)
	li $s4, 12465
	move $s5, $s4
	li $s4, 17843
	sw $s5, -952($fp)
	move $s5, $s4
	li $s4, 0
	sw $s5, -956($fp)
	addi $s5, $fp, -732
	sw $s3, -2948($fp)
	li $s3, 0
	sw $s2, -2952($fp)
	li $s2, 6
	mul $s4, $s4, $s2
	add $s2, $s4, $s3
	li $s3, 4
	mul $s2, $s2, $s3
	add $s3, $s5, $s2
	li $s2, 59394
	sw $s2, 0($s3)
	li $s4, 0
	addi $s5, $fp, -732
	sw $s3, -2956($fp)
	li $s3, 1
	sw $s2, -2960($fp)
	li $s2, 6
	mul $s4, $s4, $s2
	add $s2, $s4, $s3
	li $s3, 4
	mul $s2, $s2, $s3
	add $s3, $s5, $s2
	li $s2, 58585
	sw $s2, 0($s3)
	li $s4, 0
	addi $s5, $fp, -732
	sw $s3, -2964($fp)
	li $s3, 2
	sw $s2, -2968($fp)
	li $s2, 6
	mul $s4, $s4, $s2
	add $s2, $s4, $s3
	li $s3, 4
	mul $s2, $s2, $s3
	add $s3, $s5, $s2
	li $s2, 45575
	sw $s2, 0($s3)
	li $s4, 0
	addi $s5, $fp, -732
	sw $s3, -2972($fp)
	li $s3, 3
	sw $s2, -2976($fp)
	li $s2, 6
	mul $s4, $s4, $s2
	add $s2, $s4, $s3
	li $s3, 4
	mul $s2, $s2, $s3
	add $s3, $s5, $s2
	li $s2, 26466
	sw $s2, 0($s3)
	li $s4, 0
	addi $s5, $fp, -732
	sw $s3, -2980($fp)
	li $s3, 4
	sw $s2, -2984($fp)
	li $s2, 6
	mul $s4, $s4, $s2
	add $s2, $s4, $s3
	li $s3, 4
	mul $s2, $s2, $s3
	add $s3, $s5, $s2
	li $s2, 43762
	sw $s2, 0($s3)
	li $s4, 0
	addi $s5, $fp, -732
	sw $s3, -2988($fp)
	li $s3, 5
	sw $s2, -2992($fp)
	li $s2, 6
	mul $s4, $s4, $s2
	add $s2, $s4, $s3
	li $s3, 4
	mul $s2, $s2, $s3
	add $s3, $s5, $s2
	li $s2, 40548
	sw $s2, 0($s3)
	li $s4, 17373
	move $s5, $s4
	li $s4, 3183
	sw $s5, -960($fp)
	move $s5, $s4
	li $s4, 2517
	sw $s5, -964($fp)
	move $s5, $s4
	li $s4, 8063
	sw $s5, -968($fp)
	move $s5, $s4
	li $s4, 0
	sw $s5, -972($fp)
	addi $s5, $fp, -828
	sw $s3, -2996($fp)
	li $s3, 0
	sw $s2, -3000($fp)
	li $s2, 6
	mul $s4, $s4, $s2
	add $s2, $s4, $s3
	li $s3, 4
	mul $s2, $s2, $s3
	add $s3, $s5, $s2
	li $s2, 23466
	sw $s2, 0($s3)
	li $s4, 0
	addi $s5, $fp, -828
	sw $s3, -3004($fp)
	li $s3, 1
	sw $s2, -3008($fp)
	li $s2, 6
	mul $s4, $s4, $s2
	add $s2, $s4, $s3
	li $s3, 4
	mul $s2, $s2, $s3
	add $s3, $s5, $s2
	li $s2, 31805
	sw $s2, 0($s3)
	li $s4, 0
	addi $s5, $fp, -828
	sw $s3, -3012($fp)
	li $s3, 2
	sw $s2, -3016($fp)
	li $s2, 6
	mul $s4, $s4, $s2
	add $s2, $s4, $s3
	li $s3, 4
	mul $s2, $s2, $s3
	add $s3, $s5, $s2
	li $s2, 58330
	sw $s2, 0($s3)
	li $s4, 0
	addi $s5, $fp, -828
	sw $s3, -3020($fp)
	li $s3, 3
	sw $s2, -3024($fp)
	li $s2, 6
	mul $s4, $s4, $s2
	add $s2, $s4, $s3
	li $s3, 4
	mul $s2, $s2, $s3
	add $s3, $s5, $s2
	li $s2, 23393
	sw $s2, 0($s3)
	li $s4, 0
	addi $s5, $fp, -828
	sw $s3, -3028($fp)
	li $s3, 4
	sw $s2, -3032($fp)
	li $s2, 6
	mul $s4, $s4, $s2
	add $s2, $s4, $s3
	li $s3, 4
	mul $s2, $s2, $s3
	add $s3, $s5, $s2
	li $s2, 25943
	sw $s2, 0($s3)
	li $s4, 0
	addi $s5, $fp, -828
	sw $s3, -3036($fp)
	li $s3, 5
	sw $s2, -3040($fp)
	li $s2, 6
	mul $s4, $s4, $s2
	add $s2, $s4, $s3
	li $s3, 4
	mul $s2, $s2, $s3
	add $s3, $s5, $s2
	li $s2, 50096
	sw $s2, 0($s3)
	li $s4, 26209
	move $s5, $s4
	li $s4, 35373
	sw $s5, -976($fp)
	move $s5, $s4
	li $s4, 37705
	sw $s5, -980($fp)
	move $s5, $s4
	li $s4, 7830
	sw $s5, -984($fp)
	move $s5, $s4
	li $s4, 39213
	sw $s5, -988($fp)
	move $s5, $s4
	li $s4, 50804
	sw $s5, -992($fp)
	move $s5, $s4
	li $s4, 40249
	sw $s5, -996($fp)
	move $s5, $s4
	li $s4, 43621
	sw $s5, -1000($fp)
	move $s5, $s4
	li $s4, 58194
	sw $s5, -1004($fp)
	move $s5, $s4
	li $s4, 51386
	sw $s5, -1008($fp)
	move $s5, $s4
	li $s4, 21993
	sw $s5, -1012($fp)
	move $s5, $s4
	li $s4, 39463
	sw $s5, -1016($fp)
	move $s5, $s4
	li $s4, 54052
	sw $s5, -1020($fp)
	move $s5, $s4
	li $s4, 34458
	sw $s5, -1024($fp)
	move $s5, $s4
	li $s4, 0
	div $s6, $s7
	sw $s4, -1032($fp)
	mflo $s4
	sw $s7, -892($fp)
	li $s7, 57306
	div $s4, $s7
	sw $s6, -940($fp)
	mflo $s6
	sw $s5, -1028($fp)
	ble $s6, $s5, label488

	j label489

label488:
	li $t0, 1
	sw $t0, -1032($fp)

label489:
	lw $t1, -1032($fp)
	move $t0, $t1
	li $t2, 0
	sw $t0, -1020($fp)
	bne $t0, $t2, label485

	j label486

label485:
	li $t0, 0
	li $t1, 0
	li $t2, 27508
	lw $t3, -20($fp)
	div $t3, $t2
	mflo $t4
	li $t2, -1
	mul $t5, $t2, $t4
	li $t2, 0
	sw $t0, -1036($fp)
	sw $t1, -1040($fp)
	bne $t5, $t2, label494

	j label493

label493:
	li $t0, 1
	sw $t0, -1040($fp)

label494:
	li $t0, 37345
	li $t1, 8841
	move $t2, $t1
	li $t1, 5733
	li $t3, -1
	mul $t4, $t3, $t1
	sw $t0, -1044($fp)
	sw $t2, -860($fp)
	sw $t4, -1048($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1048($fp)
	move $a2, $t0
	lw $t1, -860($fp)
	move $a1, $t1
	lw $t2, -1044($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1052($fp)

	lw $t0, -1052($fp)
	lw $t1, -1040($fp)
	blt $t1, $t0, label492

	j label491

label492:
	li $t0, 0
	li $t1, 0
	li $t2, 12357
	sw $t0, -1056($fp)
	sw $t1, -1060($fp)
	lw $t3, -920($fp)
	bgt $t3, $t2, label497

	j label499

label499:
	li $t0, 26214
	li $t1, 0
	bne $t0, $t1, label497

	j label498

label497:
	li $t0, 1
	sw $t0, -1060($fp)

label498:
	lw $t0, -996($fp)
	lw $t1, -28($fp)
	sub $t2, $t1, $t0
	sw $t2, -1064($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	jal id_mEqPUA
	move $t0, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, -1068($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1068($fp)
	move $a2, $t0
	lw $t1, -1064($fp)
	move $a1, $t1
	lw $t2, -1060($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1072($fp)

	li $t0, 8917
	lw $t1, -1072($fp)
	bge $t1, $t0, label495

	j label496

label495:
	li $t0, 1
	sw $t0, -1056($fp)

label496:
	lw $t0, -848($fp)
	lw $t1, -864($fp)
	div $t1, $t0
	mflo $t2
	lw $t3, -1056($fp)
	bne $t3, $t2, label490

	j label491

label490:
	li $t0, 1
	sw $t0, -1036($fp)

label491:
	lw $t0, -1036($fp)
	move $v0, $t0
	lw $ra, 2692($sp)
	lw $fp, 2688($sp)
	addi $sp, $sp, 2696
	jr $ra

	j label487

label486:

label500:
	li $t0, 0
	addi $t1, $fp, -380
	li $t2, 1
	li $t3, 5
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	move $t1, $t0
	li $t0, 0
	sw $t1, -956($fp)
	bne $t1, $t0, label501

	j label502

label501:
	li $t0, 0
	li $t1, 0
	li $t2, 32383
	li $t3, 0
	sw $t0, -1076($fp)
	sw $t1, -1080($fp)
	bne $t2, $t3, label508

	j label509

label508:
	li $t0, 1
	sw $t0, -1080($fp)

label509:
	lw $t0, -832($fp)
	lw $t1, -956($fp)
	mul $t2, $t1, $t0
	lw $t3, -1080($fp)
	bgt $t3, $t2, label506

	j label507

label506:
	li $t0, 1
	sw $t0, -1076($fp)

label507:
	lw $t1, -1076($fp)
	move $t0, $t1
	li $t2, 0
	sw $t0, -912($fp)
	bne $t0, $t2, label503

	j label504

label503:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -188
	li $t3, 1
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	lw $t2, -852($fp)
	mul $t3, $t2, $t1
	li $t1, 0
	li $t4, 55776
	li $t5, 0
	sw $t0, -1084($fp)
	sw $t1, -1092($fp)
	sw $t3, -1088($fp)
	bne $t4, $t5, label516

	j label515

label515:
	li $t0, 1
	sw $t0, -1092($fp)

label516:
	li $t0, -1
	lw $t1, -1092($fp)
	mul $t2, $t0, $t1
	lw $t0, -1088($fp)
	bne $t0, $t2, label513

	j label514

label513:
	li $t0, 1
	sw $t0, -1084($fp)

label514:
	li $t0, 7087
	li $t1, 11632
	sub $t2, $t0, $t1
	lw $t0, -1084($fp)
	ble $t0, $t2, label510

	j label511

label510:
	li $t0, 16449
	move $t1, $t0
	li $t0, 42460
	li $t2, 49337
	div $t0, $t2
	mflo $t3
	move $t0, $t3
	li $t2, 16139
	lw $t3, -948($fp)
	div $t3, $t2
	mflo $t4
	li $t2, 0
	li $t5, 0
	li $t6, 34605
	mul $t7, $t6, $t0
	sw $t0, -900($fp)
	sw $t1, -1096($fp)
	sw $t2, -1100($fp)
	sw $t5, -1104($fp)
	lw $t6, -24($fp)
	bne $t7, $t6, label520

	j label521

label520:
	li $t0, 1
	sw $t0, -1104($fp)

label521:
	li $t0, 0
	li $t1, 0
	sw $t0, -1108($fp)
	lw $t2, -892($fp)
	bne $t2, $t1, label522

	j label523

label522:
	li $t0, 1
	sw $t0, -1108($fp)

label523:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -220
	li $t3, 2
	mul $t1, $t1, $t3
	lw $t3, -964($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	li $t1, 64528
	lw $t2, 0($t4)
	sw $t0, -1112($fp)
	ble $t2, $t1, label524

	j label525

label524:
	li $t0, 1
	sw $t0, -1112($fp)

label525:
	lw $t1, -832($fp)
	move $t0, $t1
	sw $t0, -836($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -836($fp)
	move $a3, $t0
	lw $t1, -1112($fp)
	move $a2, $t1
	lw $t2, -1108($fp)
	move $a1, $t2
	lw $t3, -1104($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1116($fp)

	lw $t0, -968($fp)
	lw $t1, -1116($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 59759
	lw $t4, -856($fp)
	add $t5, $t4, $t3
	sub $t3, $t5, $t0
	li $t5, 0
	li $t6, 27263
	li $t7, 50378
	mul $t8, $t6, $t7
	li $t6, 0
	sw $t2, -1120($fp)
	sw $t3, -1124($fp)
	sw $t5, -1128($fp)
	bne $t8, $t6, label526

	j label528

label528:
	li $t0, 0
	lw $t1, -1096($fp)
	bne $t1, $t0, label526

	j label527

label526:
	li $t0, 1
	sw $t0, -1128($fp)

label527:
	li $t0, 0
	li $t1, 16216
	li $t2, 1190
	add $t3, $t1, $t2
	li $t1, 0
	li $t2, 38895
	li $t4, 0
	sw $t0, -1132($fp)
	sw $t1, -1140($fp)
	sw $t3, -1136($fp)
	bne $t2, $t4, label535

	j label533

label535:
	li $t0, 50674
	li $t1, 0
	bne $t0, $t1, label534

	j label533

label534:
	li $t0, 58497
	li $t1, 0
	bne $t0, $t1, label532

	j label533

label532:
	li $t0, 1
	sw $t0, -1140($fp)

label533:
	li $t0, 0
	li $t1, 21270
	sw $t0, -1144($fp)
	lw $t2, -956($fp)
	beq $t1, $t2, label536

	j label537

label536:
	li $t0, 1
	sw $t0, -1144($fp)

label537:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -220
	li $t3, 2
	mul $t1, $t1, $t3
	lw $t3, -864($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	li $t1, 12645
	lw $t2, 0($t4)
	sw $t0, -1148($fp)
	bge $t2, $t1, label538

	j label539

label538:
	li $t0, 1
	sw $t0, -1148($fp)

label539:
	li $t0, 0
	addi $t1, $fp, -220
	li $t2, 1
	li $t3, 2
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	sw $t0, -1152($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1152($fp)
	move $a3, $t0
	lw $t1, -1148($fp)
	move $a2, $t1
	lw $t2, -1144($fp)
	move $a1, $t2
	lw $t3, -1140($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1156($fp)

	li $t0, 18379
	lw $t1, -1156($fp)
	add $t2, $t1, $t0
	li $t0, 0
	li $t3, 0
	sw $t0, -1164($fp)
	sw $t2, -1160($fp)
	lw $t4, -876($fp)
	bne $t4, $t3, label541

	j label540

label540:
	li $t0, 1
	sw $t0, -1164($fp)

label541:
	li $t0, 42664
	lw $t1, -1164($fp)
	mul $t2, $t1, $t0
	sw $t2, -1168($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1168($fp)
	move $a3, $t0
	lw $t1, -1160($fp)
	move $a2, $t1
	lw $t2, -832($fp)
	move $a1, $t2
	lw $t3, -1136($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1172($fp)

	li $t0, 0
	lw $t1, -1172($fp)
	bne $t1, $t0, label529

	j label531

label531:
	li $t0, 0
	lw $t1, -972($fp)
	bne $t1, $t0, label529

	j label530

label529:
	li $t0, 1
	sw $t0, -1132($fp)

label530:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1132($fp)
	move $a3, $t0
	lw $t1, -1128($fp)
	move $a2, $t1
	lw $t2, -1124($fp)
	move $a1, $t2
	lw $t3, -1120($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1176($fp)

	li $t0, 56326
	li $t1, 27296
	mul $t2, $t0, $t1
	li $t0, 1
	mul $t1, $t2, $t0
	lw $t0, -1176($fp)
	ble $t0, $t1, label519

	j label518

label519:
	li $t0, 25067
	move $t1, $t0
	lw $t2, -996($fp)
	move $t0, $t2
	li $t3, 59679
	lw $t4, -952($fp)
	mul $t5, $t4, $t3
	li $t3, 0
	li $t6, 0
	addi $t7, $fp, -188
	li $t8, 5
	mul $t6, $t6, $t8
	lw $t8, -928($fp)
	add $t6, $t6, $t8
	li $t9, 4
	mul $t6, $t6, $t9
	add $t9, $t7, $t6
	lw $t6, 0($t9)
	li $t7, 0
	sw $t0, -12($fp)
	sw $t1, -988($fp)
	sw $t3, -1184($fp)
	sw $t5, -1180($fp)
	bne $t6, $t7, label543

	j label542

label542:
	li $t0, 1
	sw $t0, -1184($fp)

label543:
	li $t0, 38683
	lw $t1, -832($fp)
	sub $t2, $t0, $t1
	li $t0, 52139
	add $t3, $t2, $t0
	sw $t3, -1188($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1188($fp)
	sw $t0, 0($sp)
	lw $t1, -1184($fp)
	move $a3, $t1
	lw $t2, -1180($fp)
	move $a2, $t2
	lw $t3, -12($fp)
	move $a1, $t3
	lw $t4, -988($fp)
	move $a0, $t4
	jal id_Fd
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -1192($fp)

	li $t0, 0
	lw $t1, -1192($fp)
	bne $t1, $t0, label518

	j label517

label517:
	li $t0, 1
	sw $t0, -1100($fp)

label518:
	j label512

label511:

label544:
	li $t0, 0
	addi $t1, $fp, -188
	lw $t2, -888($fp)
	lw $t3, -900($fp)
	mul $t4, $t3, $t2
	li $t5, -1
	mul $t6, $t5, $t4
	li $t4, -1
	mul $t5, $t4, $t6
	li $t4, 5
	mul $t0, $t0, $t4
	add $t0, $t0, $t5
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t1, $t0
	lw $t0, 0($t4)
	li $t1, 0
	bne $t0, $t1, label545

	j label546

label545:

label547:
	li $t0, 0
	addi $t1, $fp, -732
	li $t2, 0
	li $t3, 0
	li $t4, 0
	sw $t0, -1196($fp)
	sw $t1, -1200($fp)
	sw $t2, -1204($fp)
	sw $t3, -1208($fp)
	lw $t5, -900($fp)
	bne $t5, $t4, label553

	j label555

label555:
	li $t0, 0
	lw $t1, -960($fp)
	bne $t1, $t0, label553

	j label554

label553:
	li $t0, 1
	sw $t0, -1208($fp)

label554:
	li $t0, 49920
	lw $t1, -900($fp)
	mul $t2, $t1, $t0
	lw $t0, -992($fp)
	lw $t3, -1016($fp)
	div $t3, $t0
	mflo $t4
	li $t5, 45771
	move $t6, $t5
	sw $t2, -1212($fp)
	sw $t4, -1216($fp)
	sw $t6, -844($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -844($fp)
	move $a3, $t0
	lw $t1, -1216($fp)
	move $a2, $t1
	lw $t2, -1212($fp)
	move $a1, $t2
	lw $t3, -1208($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1220($fp)

	li $t0, 63771
	lw $t1, -1220($fp)
	bgt $t1, $t0, label551

	j label552

label551:
	li $t0, 1
	sw $t0, -1204($fp)

label552:
	li $t0, 6
	lw $t1, -1196($fp)
	mul $t1, $t1, $t0
	lw $t0, -1204($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -1200($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	li $t3, 0
	sw $t1, -1196($fp)
	bne $t4, $t3, label548

	j label550

label550:
	li $t0, 0
	lw $t1, -944($fp)
	bne $t1, $t0, label556

	j label549

label556:
	li $t0, 0
	lw $t1, -976($fp)
	bne $t1, $t0, label549

	j label548

label548:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -492
	li $t4, 0
	addi $t5, $fp, -428
	li $t6, 2
	li $t7, 3
	mul $t4, $t4, $t7
	add $t4, $t4, $t6
	li $t6, 4
	mul $t4, $t4, $t6
	add $t6, $t5, $t4
	li $t4, 4
	mul $t2, $t2, $t4
	lw $t4, 0($t6)
	add $t2, $t2, $t4
	li $t4, 4
	mul $t2, $t2, $t4
	add $t4, $t3, $t2
	lw $t2, 0($t4)
	li $t3, 0
	sw $t0, -1224($fp)
	sw $t1, -1228($fp)
	bne $t2, $t3, label560

	j label559

label559:
	li $t0, 1
	sw $t0, -1228($fp)

label560:
	li $t0, 0
	addi $t1, $fp, -556
	li $t2, 0
	li $t3, 47572
	li $t4, 0
	sw $t0, -1232($fp)
	sw $t1, -1236($fp)
	sw $t2, -1240($fp)
	bne $t3, $t4, label562

	j label561

label561:
	li $t0, 1
	sw $t0, -1240($fp)

label562:
	li $t0, 4
	lw $t1, -1232($fp)
	mul $t1, $t1, $t0
	lw $t0, -1240($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -1236($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	sw $t1, -1232($fp)
	lw $t3, -1228($fp)
	bge $t3, $t4, label557

	j label558

label557:
	li $t0, 1
	sw $t0, -1224($fp)

label558:
	j label547

label549:
	j label544

label546:

label512:
	j label505

label504:
	li $t0, 25113
	move $t1, $t0
	li $t0, -1
	lw $t2, -980($fp)
	mul $t3, $t0, $t2
	sub $t0, $t1, $t3
	li $t1, 38833
	li $t3, 16641
	li $t4, -1
	mul $t5, $t4, $t3
	lw $t3, -1012($fp)
	sub $t4, $t5, $t3
	li $t5, 0
	addi $t6, $fp, -188
	li $t7, 5
	mul $t5, $t5, $t7
	lw $t7, -984($fp)
	add $t5, $t5, $t7
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t6, $t5
	li $t5, 24105
	li $t6, -1
	mul $t9, $t6, $t5
	li $t5, 0
	li $t6, 0
	sw $t1, -1244($fp)
	sw $t4, -1248($fp)
	sw $t5, -1260($fp)
	sw $t8, -1252($fp)
	sw $t9, -1256($fp)
	lw $s0, -900($fp)
	bne $s0, $t6, label564

	j label563

label563:
	li $t0, 1
	sw $t0, -1260($fp)

label564:
	li $t0, -1
	lw $t1, -1260($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	li $t3, 33057
	sw $t0, -1268($fp)
	sw $t2, -1264($fp)
	lw $t4, -28($fp)
	ble $t3, $t4, label565

	j label566

label565:
	li $t0, 1
	sw $t0, -1268($fp)

label566:
	li $t0, 0
	li $t1, 43904
	li $t2, 0
	sw $t0, -1272($fp)
	bne $t1, $t2, label568

	j label567

label567:
	li $t0, 1
	sw $t0, -1272($fp)

label568:
	li $t0, 8948
	lw $t1, -1272($fp)
	div $t1, $t0
	mflo $t2
	sw $t2, -1276($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	jal id_mEqPUA
	move $t0, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, -1280($fp)

	li $t0, 49273
	li $t1, 45095
	div $t0, $t1
	mflo $t2
	sw $t2, -1284($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1284($fp)
	move $a2, $t0
	lw $t1, -1280($fp)
	move $a1, $t1
	lw $t2, -1276($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1288($fp)

	li $t0, 0
	li $t1, 47843
	li $t2, 0
	sw $t0, -1292($fp)
	bne $t1, $t2, label570

	j label569

label569:
	li $t0, 1
	sw $t0, -1292($fp)

label570:
	li $t0, -1
	lw $t1, -1292($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	li $t3, 0
	addi $t4, $fp, -492
	li $t5, 4
	mul $t3, $t3, $t5
	lw $t5, -836($fp)
	add $t3, $t3, $t5
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t4, $t3
	lw $t3, 0($t6)
	li $t4, 0
	sw $t0, -1300($fp)
	sw $t2, -1296($fp)
	bne $t3, $t4, label571

	j label573

label573:
	li $t0, 0
	lw $t1, -968($fp)
	bne $t1, $t0, label571

	j label572

label571:
	li $t0, 1
	sw $t0, -1300($fp)

label572:
	li $t0, 0
	addi $t1, $fp, -492
	li $t2, 0
	li $t3, 4
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, -1
	lw $t1, 0($t2)
	mul $t2, $t0, $t1
	li $t0, 0
	li $t1, 3577
	li $t3, 0
	sw $t0, -1308($fp)
	sw $t2, -1304($fp)
	bne $t1, $t3, label574

	j label576

label576:
	li $t0, 0
	lw $t1, -856($fp)
	bne $t1, $t0, label574

	j label575

label574:
	li $t0, 1
	sw $t0, -1308($fp)

label575:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1308($fp)
	move $a3, $t0
	lw $t1, -1304($fp)
	move $a2, $t1
	lw $t2, -1300($fp)
	move $a1, $t2
	lw $t3, -1296($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1312($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1312($fp)
	move $a3, $t0
	lw $t1, -1288($fp)
	move $a2, $t1
	lw $t2, -1268($fp)
	move $a1, $t2
	lw $t3, -1264($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1316($fp)

	li $t0, 0
	li $t1, 47057
	li $t2, 2826
	sw $t0, -1320($fp)
	blt $t1, $t2, label577

	j label578

label577:
	li $t0, 1
	sw $t0, -1320($fp)

label578:
	lw $t1, -1252($fp)
	lw $t0, 0($t1)
	sw $t0, -1324($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1320($fp)
	sw $t0, 0($sp)
	lw $t1, -1316($fp)
	move $a3, $t1
	lw $t2, -1256($fp)
	move $a2, $t2
	lw $t3, -1324($fp)
	move $a1, $t3
	lw $t4, -1248($fp)
	move $a0, $t4
	jal id_Fd
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -1328($fp)

	lw $t0, -1328($fp)
	lw $t1, -1244($fp)
	add $t2, $t1, $t0

label505:
	j label500

label502:

label487:

label579:
	li $t0, 33688
	li $t1, 0
	bne $t0, $t1, label580

	j label582

label582:
	li $t0, 0
	li $t1, 0
	sw $t0, -1332($fp)
	lw $t2, -860($fp)
	bne $t2, $t1, label584

	j label583

label583:
	li $t0, 1
	sw $t0, -1332($fp)

label584:
	li $t0, -1
	lw $t1, -1332($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	addi $t3, $fp, -300
	li $t4, 5
	mul $t0, $t0, $t4
	lw $t4, -900($fp)
	add $t0, $t0, $t4
	li $t5, 4
	mul $t0, $t0, $t5
	add $t5, $t3, $t0
	lw $t0, 0($t5)
	sub $t3, $t2, $t0
	li $t0, 0
	bne $t3, $t0, label580

	j label581

label580:

label585:
	li $t0, 0
	li $t1, 65436
	li $t2, 0
	sw $t0, -1336($fp)
	bne $t1, $t2, label591

	j label590

label590:
	li $t0, 1
	sw $t0, -1336($fp)

label591:
	li $t0, 45490
	lw $t1, -1336($fp)
	sub $t2, $t1, $t0
	li $t0, 0
	bne $t2, $t0, label589

	j label588

label589:
	li $t0, 0
	lw $t1, -1000($fp)
	bne $t1, $t0, label586

	j label588

label588:
	li $t0, 24478
	li $t1, 0
	bne $t0, $t1, label586

	j label587

label586:
	li $t0, 0
	addi $t1, $fp, -732
	lw $t3, -852($fp)
	move $t2, $t3
	li $t4, 6
	mul $t0, $t0, $t4
	add $t0, $t0, $t2
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t1, $t0
	li $t0, -1
	lw $t1, 0($t4)
	mul $t4, $t0, $t1
	li $t0, 0
	sw $t2, -1016($fp)
	bne $t4, $t0, label592

	j label593

label592:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 27196
	move $t4, $t3
	li $t3, 37493
	li $t5, 49546
	lw $t6, -848($fp)
	div $t5, $t6
	mflo $t7
	lw $t5, -904($fp)
	add $t8, $t7, $t5
	sw $t0, -1340($fp)
	sw $t1, -1344($fp)
	sw $t2, -1348($fp)
	sw $t3, -1352($fp)
	sw $t4, -844($fp)
	sw $t8, -1356($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1356($fp)
	move $a3, $t0
	lw $t1, -1352($fp)
	move $a2, $t1
	lw $t2, -844($fp)
	move $a1, $t2
	lw $t3, -840($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1360($fp)

	li $t0, 0
	li $t1, 21340
	li $t2, 10641
	sw $t0, -1364($fp)
	beq $t1, $t2, label601

	j label603

label603:
	li $t0, 0
	lw $t1, -936($fp)
	bne $t1, $t0, label601

	j label602

label601:
	li $t0, 1
	sw $t0, -1364($fp)

label602:
	li $t0, 36149
	move $t1, $t0
	sw $t1, -888($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -888($fp)
	move $a2, $t0
	lw $t1, -1364($fp)
	move $a1, $t1
	lw $t2, -1360($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1368($fp)

	li $t0, 5724
	lw $t1, -1368($fp)
	bge $t1, $t0, label599

	j label600

label599:
	li $t0, 1
	sw $t0, -1348($fp)

label600:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -188
	li $t4, 5
	mul $t2, $t2, $t4
	lw $t4, -852($fp)
	add $t2, $t2, $t4
	li $t5, 4
	mul $t2, $t2, $t5
	add $t5, $t3, $t2
	li $t2, 56412
	lw $t3, 0($t5)
	sw $t0, -1372($fp)
	sw $t1, -1376($fp)
	blt $t3, $t2, label606

	j label607

label606:
	li $t0, 1
	sw $t0, -1376($fp)

label607:
	li $t0, 34384
	li $t1, 6557
	mul $t2, $t0, $t1
	sw $t2, -1380($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	jal id_mEqPUA
	move $t0, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, -1384($fp)

	li $t0, 13571
	lw $t1, -1384($fp)
	add $t2, $t1, $t0
	sw $t2, -1388($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1388($fp)
	move $a3, $t0
	lw $t1, -1380($fp)
	move $a2, $t1
	lw $t2, -864($fp)
	move $a1, $t2
	lw $t3, -1376($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1392($fp)

	li $t0, 16420
	lw $t1, -1392($fp)
	blt $t1, $t0, label604

	j label605

label604:
	li $t0, 1
	sw $t0, -1372($fp)

label605:
	li $t0, 0
	li $t1, 0
	li $t2, 31670
	sw $t0, -1396($fp)
	sw $t1, -1400($fp)
	lw $t3, -868($fp)
	beq $t3, $t2, label610

	j label611

label610:
	li $t0, 1
	sw $t0, -1400($fp)

label611:
	lw $t0, -872($fp)
	lw $t1, -1400($fp)
	bne $t1, $t0, label608

	j label609

label608:
	li $t0, 1
	sw $t0, -1396($fp)

label609:
	li $t0, 0
	li $t1, 52405
	sw $t0, -1404($fp)
	lw $t2, -876($fp)
	bgt $t2, $t1, label612

	j label614

label614:
	li $t0, 0
	lw $t1, -880($fp)
	bne $t1, $t0, label612

	j label613

label612:
	li $t0, 1
	sw $t0, -1404($fp)

label613:
	li $t0, 0
	li $t1, 33061
	li $t2, 55776
	sw $t0, -1408($fp)
	bge $t1, $t2, label615

	j label617

label617:
	li $t0, 0
	lw $t1, -884($fp)
	bne $t1, $t0, label615

	j label616

label615:
	li $t0, 1
	sw $t0, -1408($fp)

label616:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1408($fp)
	move $a3, $t0
	lw $t1, -1404($fp)
	move $a2, $t1
	lw $t2, -1396($fp)
	move $a1, $t2
	lw $t3, -1372($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1412($fp)

	lw $t0, -1412($fp)
	lw $t1, -1348($fp)
	blt $t1, $t0, label597

	j label598

label597:
	li $t0, 1
	sw $t0, -1344($fp)

label598:
	li $t0, 0
	addi $t1, $fp, -636
	li $t2, 5
	mul $t0, $t0, $t2
	lw $t2, -936($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	lw $t1, -16($fp)
	add $t3, $t1, $t0
	lw $t0, -1344($fp)
	blt $t0, $t3, label595

	j label596

label595:
	li $t0, 1
	sw $t0, -1340($fp)

label596:
	j label594

label593:
	li $t0, 0
	li $t1, 0
	sw $t0, -1416($fp)
	sw $t1, -1420($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	jal id_mEqPUA
	move $t0, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, -1424($fp)

	li $t0, -1
	lw $t1, -1424($fp)
	mul $t2, $t0, $t1
	lw $t0, -856($fp)
	beq $t2, $t0, label620

	j label621

label620:
	li $t0, 1
	sw $t0, -1420($fp)

label621:
	li $t0, 19926
	lw $t1, -924($fp)
	div $t0, $t1
	mflo $t2
	lw $t0, -1420($fp)
	bge $t0, $t2, label618

	j label619

label618:
	li $t0, 1
	sw $t0, -1416($fp)

label619:
	lw $t0, -1416($fp)
	move $v0, $t0
	lw $ra, 2692($sp)
	lw $fp, 2688($sp)
	addi $sp, $sp, 2696
	jr $ra

label594:
	j label585

label587:
	j label579

label581:
	li $t0, 0
	li $t1, 0
	sw $t0, -1428($fp)
	lw $t2, -900($fp)
	bne $t2, $t1, label623

	j label622

label622:
	li $t0, 1
	sw $t0, -1428($fp)

label623:
	lw $t1, -1428($fp)
	move $t0, $t1
	sw $t0, -896($fp)

label624:
	li $t0, 11429
	move $t1, $t0
	li $t0, 0
	sw $t0, -1432($fp)
	sw $t1, -852($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	jal id_mEqPUA
	move $t0, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, -1436($fp)

	li $t0, 64724
	lw $t1, -1436($fp)
	bne $t1, $t0, label627

	j label628

label627:
	li $t0, 1
	sw $t0, -1432($fp)

label628:
	li $t0, -1
	lw $t1, -900($fp)
	mul $t2, $t0, $t1
	li $t0, 3663
	lw $t4, -908($fp)
	move $t3, $t4
	li $t5, 0
	li $t6, 0
	addi $t7, $fp, -108
	li $t8, 2
	mul $t6, $t6, $t8
	lw $t8, -12($fp)
	add $t6, $t6, $t8
	li $t9, 4
	mul $t6, $t6, $t9
	add $t9, $t7, $t6
	li $t6, 56524
	lw $t7, 0($t9)
	sw $t0, -1444($fp)
	sw $t2, -1440($fp)
	sw $t3, -872($fp)
	sw $t5, -1448($fp)
	bne $t7, $t6, label629

	j label630

label629:
	li $t0, 1
	sw $t0, -1448($fp)

label630:
	li $t0, 47031
	lw $t1, -908($fp)
	mul $t2, $t0, $t1
	li $t0, -1
	mul $t3, $t0, $t2
	li $t0, 0
	li $t2, -1
	lw $t4, -20($fp)
	mul $t5, $t2, $t4
	li $t2, 0
	sw $t0, -1456($fp)
	sw $t3, -1452($fp)
	bne $t5, $t2, label631

	j label633

label633:
	li $t0, 38075
	li $t1, 0
	bne $t0, $t1, label631

	j label632

label631:
	li $t0, 1
	sw $t0, -1456($fp)

label632:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1456($fp)
	sw $t0, 0($sp)
	lw $t1, -1452($fp)
	move $a3, $t1
	lw $t2, -1448($fp)
	move $a2, $t2
	lw $t3, -872($fp)
	move $a1, $t3
	lw $t4, -1444($fp)
	move $a0, $t4
	jal id_Fd
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -1460($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1460($fp)
	move $a3, $t0
	lw $t1, -1440($fp)
	move $a2, $t1
	lw $t2, -1432($fp)
	move $a1, $t2
	lw $t3, -852($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1464($fp)

	lw $t0, -836($fp)
	lw $t1, -1464($fp)
	add $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label625

	j label626

label625:
	li $t0, 0
	addi $t1, $fp, -1592
	li $t2, 0
	li $t3, 8
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 29044
	sw $t0, 0($t2)
	li $t1, 0
	addi $t3, $fp, -1592
	li $t4, 1
	li $t5, 8
	mul $t1, $t1, $t5
	add $t1, $t1, $t4
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t3, $t1
	li $t1, 50608
	sw $t1, 0($t4)
	li $t3, 0
	addi $t5, $fp, -1592
	li $t6, 2
	li $t7, 8
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 19597
	sw $t3, 0($t6)
	li $t5, 0
	addi $t7, $fp, -1592
	li $t8, 3
	li $t9, 8
	mul $t5, $t5, $t9
	add $t5, $t5, $t8
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t7, $t5
	li $t5, 31871
	sw $t5, 0($t8)
	li $t7, 0
	addi $t9, $fp, -1592
	li $s0, 4
	li $s1, 8
	mul $t7, $t7, $s1
	add $t7, $t7, $s0
	li $s0, 4
	mul $t7, $t7, $s0
	add $s0, $t9, $t7
	li $t7, 18760
	sw $t7, 0($s0)
	li $t9, 0
	addi $s1, $fp, -1592
	li $s2, 5
	li $s3, 8
	mul $t9, $t9, $s3
	add $t9, $t9, $s2
	li $s2, 4
	mul $t9, $t9, $s2
	add $s2, $s1, $t9
	li $t9, 19497
	sw $t9, 0($s2)
	li $s1, 0
	addi $s3, $fp, -1592
	li $s4, 6
	li $s5, 8
	mul $s1, $s1, $s5
	add $s1, $s1, $s4
	li $s4, 4
	mul $s1, $s1, $s4
	add $s4, $s3, $s1
	li $s1, 11825
	sw $s1, 0($s4)
	li $s3, 0
	addi $s5, $fp, -1592
	li $s6, 7
	li $s7, 8
	mul $s3, $s3, $s7
	add $s3, $s3, $s6
	li $s6, 4
	mul $s3, $s3, $s6
	add $s6, $s5, $s3
	li $s3, 43239
	sw $s3, 0($s6)
	li $s5, 46694
	move $s7, $s5
	li $s5, 49319
	sw $s7, -1596($fp)
	move $s7, $s5
	li $s5, 27249
	sw $s7, -1600($fp)
	move $s7, $s5
	li $s5, 2498
	sw $s7, -1604($fp)
	move $s7, $s5
	li $s5, 59960
	sw $s7, -1608($fp)
	move $s7, $s5
	li $s5, 0
	sw $s7, -1612($fp)
	addi $s7, $fp, -1592
	sw $s6, -3044($fp)
	li $s6, 0
	sw $s4, -3048($fp)
	li $s4, 8
	mul $s5, $s5, $s4
	add $s4, $s5, $s6
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	lw $s4, 0($s5)
	sw $s4, -1616($fp)

	li $v0, 1
	lw $t0, -1616($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1592
	li $t3, 1
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1620($fp)

	li $v0, 1
	lw $t0, -1620($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1592
	li $t3, 2
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1624($fp)

	li $v0, 1
	lw $t0, -1624($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1592
	li $t3, 3
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1628($fp)

	li $v0, 1
	lw $t0, -1628($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1592
	li $t3, 4
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1632($fp)

	li $v0, 1
	lw $t0, -1632($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1592
	li $t3, 5
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1636($fp)

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
	addi $t2, $fp, -1592
	li $t3, 6
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1640($fp)

	li $v0, 1
	lw $t0, -1640($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1592
	li $t3, 7
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1644($fp)

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
	li $t1, 0
	addi $t2, $fp, -1592
	li $t3, 6
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	li $t1, 0
	li $t2, 0
	addi $t4, $fp, -220
	li $t5, 0
	li $t6, 2
	mul $t2, $t2, $t6
	add $t2, $t2, $t5
	li $t5, 4
	mul $t2, $t2, $t5
	add $t5, $t4, $t2
	lw $t2, 0($t5)
	li $t4, 0
	sw $t1, -1652($fp)
	sw $t3, -1648($fp)
	bne $t2, $t4, label634

	j label635

label634:
	li $t0, 1
	sw $t0, -1652($fp)

label635:
	lw $t1, -1648($fp)
	lw $t0, 0($t1)
	lw $t2, -1652($fp)
	div $t0, $t2
	mflo $t3
	move $v0, $t3
	lw $ra, 2692($sp)
	lw $fp, 2688($sp)
	addi $sp, $sp, 2696
	jr $ra

	li $t0, 0
	li $t1, 14779
	li $t2, 64407
	li $t3, -1
	mul $t4, $t3, $t2
	li $t2, -1
	mul $t3, $t2, $t4
	div $t1, $t3
	mflo $t2
	li $t1, 0
	sw $t0, -1656($fp)
	bne $t2, $t1, label636

	j label638

label638:
	li $t0, 0
	addi $t1, $fp, -636
	li $t2, 0
	li $t3, 5
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 51276
	lw $t1, 0($t2)
	bge $t1, $t0, label636

	j label637

label636:
	li $t0, 1
	sw $t0, -1656($fp)

label637:
	li $t0, 16191
	move $t1, $t0
	li $t0, 0
	li $t2, 0
	addi $t3, $fp, -428
	li $t4, 36690
	lw $t5, -904($fp)
	div $t4, $t5
	mflo $t6
	li $t4, 3
	mul $t2, $t2, $t4
	add $t2, $t2, $t6
	li $t4, 4
	mul $t2, $t2, $t4
	add $t4, $t3, $t2
	lw $t2, 0($t4)
	li $t3, 0
	sw $t0, -1664($fp)
	sw $t1, -1660($fp)
	bne $t2, $t3, label639

	j label640

label639:
	li $t0, 1
	sw $t0, -1664($fp)

label640:
	li $t0, 0
	li $t1, 5666
	li $t2, 0
	li $t3, 0
	sw $t0, -1668($fp)
	sw $t1, -1672($fp)
	sw $t2, -1676($fp)
	lw $t4, -940($fp)
	bne $t4, $t3, label643

	j label645

label645:
	li $t0, 0
	lw $t1, -920($fp)
	bne $t1, $t0, label643

	j label644

label643:
	li $t0, 1
	sw $t0, -1676($fp)

label644:
	li $t0, 0
	li $t1, 27620
	lw $t2, -1660($fp)
	sub $t3, $t2, $t1
	li $t1, 35878
	sw $t0, -1680($fp)
	bge $t3, $t1, label646

	j label647

label646:
	li $t0, 1
	sw $t0, -1680($fp)

label647:
	lw $t1, -980($fp)
	move $t0, $t1
	li $t2, 9330
	move $t3, $t2
	li $t2, 0
	li $t4, 18609
	li $t5, -1
	mul $t6, $t5, $t4
	li $t4, 0
	sw $t0, -988($fp)
	sw $t2, -1684($fp)
	sw $t3, -872($fp)
	bne $t6, $t4, label650

	j label649

label650:
	li $t0, 17373
	li $t1, 0
	bne $t0, $t1, label648

	j label649

label648:
	li $t0, 1
	sw $t0, -1684($fp)

label649:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1684($fp)
	sw $t0, 0($sp)
	lw $t1, -872($fp)
	move $a3, $t1
	lw $t2, -988($fp)
	move $a2, $t2
	lw $t3, -1680($fp)
	move $a1, $t3
	lw $t4, -1676($fp)
	move $a0, $t4
	jal id_Fd
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -1688($fp)

	li $t0, -1
	lw $t1, -1688($fp)
	mul $t2, $t0, $t1
	lw $t0, -1672($fp)
	add $t3, $t0, $t2
	li $t2, 0
	addi $t4, $fp, -428
	li $t5, 3
	mul $t2, $t2, $t5
	lw $t5, -984($fp)
	add $t2, $t2, $t5
	li $t6, 4
	mul $t2, $t2, $t6
	add $t6, $t4, $t2
	lw $t2, 0($t6)
	div $t2, $t5
	mflo $t4
	li $t2, 0
	li $t6, 47405
	li $t7, 0
	sw $t2, -1700($fp)
	sw $t3, -1692($fp)
	sw $t4, -1696($fp)
	bne $t6, $t7, label652

	j label651

label651:
	li $t0, 1
	sw $t0, -1700($fp)

label652:
	lw $t0, -1700($fp)
	lw $t1, -1696($fp)
	mul $t2, $t1, $t0
	lw $t3, -1692($fp)
	bgt $t3, $t2, label641

	j label642

label641:
	li $t0, 1
	sw $t0, -1668($fp)

label642:
	li $t0, 0
	addi $t1, $fp, -1592
	li $t2, 0
	li $t3, 8
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	sw $t0, -1704($fp)

	li $v0, 1
	lw $t0, -1704($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1592
	li $t3, 1
	li $t4, 8
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
	li $t1, 0
	addi $t2, $fp, -1592
	li $t3, 2
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1712($fp)

	li $v0, 1
	lw $t0, -1712($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1592
	li $t3, 3
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1716($fp)

	li $v0, 1
	lw $t0, -1716($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1592
	li $t3, 4
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1720($fp)

	li $v0, 1
	lw $t0, -1720($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1592
	li $t3, 5
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1724($fp)

	li $v0, 1
	lw $t0, -1724($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1592
	li $t3, 6
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1728($fp)

	li $v0, 1
	lw $t0, -1728($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1592
	li $t3, 7
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -1732($fp)

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
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -732
	li $t4, 0
	li $t5, 47653
	sw $t1, -1736($fp)
	sw $t2, -1740($fp)
	sw $t3, -1744($fp)
	sw $t4, -1748($fp)
	lw $t6, -952($fp)
	bne $t5, $t6, label655

	j label656

label655:
	li $t0, 1
	sw $t0, -1748($fp)

label656:
	li $t0, 6
	lw $t1, -1740($fp)
	mul $t1, $t1, $t0
	lw $t0, -1748($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -1744($fp)
	add $t3, $t2, $t1
	li $t4, 2445
	lw $t5, 0($t3)
	sub $t3, $t5, $t4
	sw $t1, -1740($fp)
	lw $t4, -924($fp)
	bne $t3, $t4, label653

	j label654

label653:
	li $t0, 1
	sw $t0, -1736($fp)

label654:
	lw $t0, -1736($fp)
	move $v0, $t0
	lw $ra, 2692($sp)
	lw $fp, 2688($sp)
	addi $sp, $sp, 2696
	jr $ra

	li $t0, 1466
	li $t1, 0
	bne $t0, $t1, label657

	j label658

label657:

label660:
	lw $t0, -1604($fp)
	lw $t1, -904($fp)
	add $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label661

	j label662

label661:
	li $t0, 0
	addi $t1, $fp, -828
	li $t2, 6
	mul $t0, $t0, $t2
	lw $t2, -28($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, -956($fp)
	lw $t1, -852($fp)
	div $t1, $t0
	mflo $t4
	li $t5, 13988
	sub $t6, $t4, $t5
	li $t4, 21205
	lw $t5, -972($fp)
	div $t5, $t4
	mflo $t7
	li $t4, -1
	lw $t8, -860($fp)
	mul $t9, $t4, $t8
	li $t4, -1
	mul $s0, $t4, $t9
	li $t4, 0
	addi $t9, $fp, -828
	li $s1, 6
	mul $t4, $t4, $s1
	lw $s1, -976($fp)
	add $t4, $t4, $s1
	li $s2, 4
	mul $t4, $t4, $s2
	add $s2, $t9, $t4
	li $t4, 0
	li $t9, 0
	li $s3, 20964
	sw $t3, -1752($fp)
	sw $t4, -1772($fp)
	sw $t6, -1756($fp)
	sw $t7, -1760($fp)
	sw $t9, -1776($fp)
	sw $s0, -1764($fp)
	sw $s2, -1768($fp)
	lw $s4, -1004($fp)
	bgt $s3, $s4, label665

	j label666

label665:
	li $t0, 1
	sw $t0, -1776($fp)

label666:
	li $t0, 25814
	lw $t1, -1776($fp)
	bge $t1, $t0, label663

	j label664

label663:
	li $t0, 1
	sw $t0, -1772($fp)

label664:
	lw $t1, -1768($fp)
	lw $t0, 0($t1)
	sw $t0, -1780($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1772($fp)
	move $a3, $t0
	lw $t1, -1780($fp)
	move $a2, $t1
	lw $t2, -1764($fp)
	move $a1, $t2
	lw $t3, -1760($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1784($fp)

	lw $t1, -904($fp)
	move $t0, $t1
	sw $t0, -908($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1008($fp)
	move $a3, $t0
	lw $t1, -908($fp)
	move $a2, $t1
	lw $t2, -1784($fp)
	move $a1, $t2
	lw $t3, -1756($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1788($fp)

	li $t0, 0
	addi $t1, $fp, -108
	li $t2, 0
	li $t3, 2
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 0
	li $t1, 0
	li $t3, 9597
	li $t4, 0
	sw $t0, -1796($fp)
	sw $t1, -1800($fp)
	sw $t2, -1792($fp)
	bne $t3, $t4, label670

	j label669

label669:
	li $t0, 1
	sw $t0, -1800($fp)

label670:
	lw $t0, -936($fp)
	lw $t1, -1800($fp)
	ble $t1, $t0, label667

	j label668

label667:
	li $t0, 1
	sw $t0, -1796($fp)

label668:
	lw $t1, -876($fp)
	move $t0, $t1
	lw $t3, -1792($fp)
	lw $t2, 0($t3)
	sw $t0, -948($fp)
	sw $t2, -1804($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -948($fp)
	move $a2, $t0
	lw $t1, -1796($fp)
	move $a1, $t1
	lw $t2, -1804($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1808($fp)

	li $t0, 26157
	lw $t1, -1808($fp)
	mul $t2, $t1, $t0
	lw $t3, -1752($fp)
	lw $t0, 0($t3)
	sw $t0, -1816($fp)
	sw $t2, -1812($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1812($fp)
	move $a3, $t0
	lw $t1, -1608($fp)
	move $a2, $t1
	lw $t2, -1788($fp)
	move $a1, $t2
	lw $t3, -1816($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1820($fp)

	li $t0, -1
	lw $t1, -1820($fp)
	mul $t2, $t0, $t1
	li $t0, 4620
	li $t3, 4021
	mul $t4, $t0, $t3
	sub $t0, $t2, $t4
	j label660

label662:
	j label659

label658:
	li $t0, 0
	li $t1, 0
	sw $t0, -1824($fp)
	sw $t1, -1828($fp)
	lw $t2, -936($fp)
	lw $t3, -1612($fp)
	blt $t3, $t2, label676

	j label675

label676:
	li $t0, 24019
	li $t1, 0
	bne $t0, $t1, label674

	j label675

label674:
	li $t0, 1
	sw $t0, -1828($fp)

label675:
	li $t0, 0
	addi $t1, $fp, -188
	li $t2, 1
	li $t3, 5
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, -1
	lw $t1, 0($t2)
	mul $t2, $t0, $t1
	li $t0, 0
	li $t1, 56265
	li $t3, 27621
	div $t1, $t3
	mflo $t4
	li $t1, 0
	sw $t0, -1836($fp)
	sw $t2, -1832($fp)
	bne $t4, $t1, label677

	j label679

label679:
	li $t0, 0
	lw $t1, -948($fp)
	bne $t1, $t0, label677

	j label678

label677:
	li $t0, 1
	sw $t0, -1836($fp)

label678:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -1840($fp)
	sw $t1, -1844($fp)
	lw $t3, -1000($fp)
	bne $t3, $t2, label683

	j label682

label682:
	li $t0, 1
	sw $t0, -1844($fp)

label683:
	lw $t0, -1596($fp)
	lw $t1, -1844($fp)
	bge $t1, $t0, label680

	j label681

label680:
	li $t0, 1
	sw $t0, -1840($fp)

label681:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1840($fp)
	move $a3, $t0
	lw $t1, -1836($fp)
	move $a2, $t1
	lw $t2, -1832($fp)
	move $a1, $t2
	lw $t3, -1828($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1848($fp)

	li $t0, 0
	li $t1, 53728
	li $t2, -1
	mul $t3, $t2, $t1
	li $t1, 0
	sw $t0, -1852($fp)
	bne $t3, $t1, label685

	j label684

label684:
	li $t0, 1
	sw $t0, -1852($fp)

label685:
	lw $t0, -1852($fp)
	lw $t1, -1848($fp)
	ble $t1, $t0, label673

	j label672

label673:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -428
	li $t3, 1
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	li $t2, 0
	sw $t0, -1856($fp)
	bne $t1, $t2, label687

	j label686

label686:
	li $t0, 1
	sw $t0, -1856($fp)

label687:
	lw $t0, -1600($fp)
	lw $t1, -932($fp)
	sub $t2, $t1, $t0
	lw $t3, -1856($fp)
	beq $t3, $t2, label671

	j label672

label671:
	li $t0, 1
	sw $t0, -1824($fp)

label672:

label659:
	j label624

label626:
	li $t0, 0
	li $t1, 39469
	lw $t2, -28($fp)
	add $t3, $t2, $t1
	sw $t0, -1860($fp)
	lw $t1, -900($fp)
	ble $t3, $t1, label691

	j label692

label691:
	li $t0, 1
	sw $t0, -1860($fp)

label692:
	lw $t0, -980($fp)
	lw $t1, -1000($fp)
	sub $t2, $t1, $t0
	li $t3, 0
	li $t4, 0
	sw $t2, -1864($fp)
	sw $t3, -1868($fp)
	lw $t5, -28($fp)
	bne $t5, $t4, label696

	j label694

label696:
	li $t0, 0
	lw $t1, -916($fp)
	bne $t1, $t0, label695

	j label694

label695:
	li $t0, 55586
	li $t1, 0
	bne $t0, $t1, label693

	j label694

label693:
	li $t0, 1
	sw $t0, -1868($fp)

label694:
	li $t0, 0
	sw $t0, -1872($fp)
	lw $t1, -1024($fp)
	lw $t2, -876($fp)
	ble $t2, $t1, label699

	j label698

label699:
	li $t0, 0
	lw $t1, -852($fp)
	bne $t1, $t0, label697

	j label698

label697:
	li $t0, 1
	sw $t0, -1872($fp)

label698:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1872($fp)
	move $a3, $t0
	lw $t1, -1868($fp)
	move $a2, $t1
	lw $t2, -1864($fp)
	move $a1, $t2
	lw $t3, -1860($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1876($fp)

	li $t0, 45225
	lw $t1, -1876($fp)
	add $t2, $t1, $t0
	li $t0, 0
	li $t3, 45135
	li $t4, 0
	sw $t0, -1884($fp)
	sw $t2, -1880($fp)
	bne $t3, $t4, label701

	j label700

label700:
	li $t0, 1
	sw $t0, -1884($fp)

label701:
	li $t0, 0
	li $t1, 17671
	lw $t2, -936($fp)
	add $t3, $t2, $t1
	li $t1, 15567
	sw $t0, -1888($fp)
	bgt $t3, $t1, label702

	j label703

label702:
	li $t0, 1
	sw $t0, -1888($fp)

label703:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1008($fp)
	move $a3, $t0
	lw $t1, -1888($fp)
	move $a2, $t1
	lw $t2, -1884($fp)
	move $a1, $t2
	lw $t3, -1880($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1892($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	jal id_mEqPUA
	move $t0, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, -1896($fp)

	lw $t0, -1896($fp)
	lw $t1, -1892($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label688

	j label689

label688:
	li $t0, 0
	li $t1, 54465
	li $t2, -1
	mul $t3, $t2, $t1
	li $t1, -1
	mul $t2, $t1, $t3
	li $t1, 0
	sw $t0, -1900($fp)
	bne $t2, $t1, label705

	j label704

label704:
	li $t0, 1
	sw $t0, -1900($fp)

label705:
	j label690

label689:
	li $t0, 36280
	move $t1, $t0
	li $t0, 0
	addi $t2, $fp, -2060
	li $t3, 0
	li $t4, 10
	mul $t0, $t0, $t4
	add $t0, $t0, $t3
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t2, $t0
	li $t0, 32940
	sw $t0, 0($t3)
	li $t2, 0
	addi $t4, $fp, -2060
	li $t5, 1
	li $t6, 10
	mul $t2, $t2, $t6
	add $t2, $t2, $t5
	li $t5, 4
	mul $t2, $t2, $t5
	add $t5, $t4, $t2
	li $t2, 36335
	sw $t2, 0($t5)
	li $t4, 0
	addi $t6, $fp, -2060
	li $t7, 2
	li $t8, 10
	mul $t4, $t4, $t8
	add $t4, $t4, $t7
	li $t7, 4
	mul $t4, $t4, $t7
	add $t7, $t6, $t4
	li $t4, 18397
	sw $t4, 0($t7)
	li $t6, 0
	addi $t8, $fp, -2060
	li $t9, 3
	li $s0, 10
	mul $t6, $t6, $s0
	add $t6, $t6, $t9
	li $t9, 4
	mul $t6, $t6, $t9
	add $t9, $t8, $t6
	li $t6, 35385
	sw $t6, 0($t9)
	li $t8, 0
	addi $s0, $fp, -2060
	li $s1, 4
	li $s2, 10
	mul $t8, $t8, $s2
	add $t8, $t8, $s1
	li $s1, 4
	mul $t8, $t8, $s1
	add $s1, $s0, $t8
	li $t8, 37801
	sw $t8, 0($s1)
	li $s0, 0
	addi $s2, $fp, -2060
	li $s3, 5
	li $s4, 10
	mul $s0, $s0, $s4
	add $s0, $s0, $s3
	li $s3, 4
	mul $s0, $s0, $s3
	add $s3, $s2, $s0
	li $s0, 32386
	sw $s0, 0($s3)
	li $s2, 0
	addi $s4, $fp, -2060
	li $s5, 6
	li $s6, 10
	mul $s2, $s2, $s6
	add $s2, $s2, $s5
	li $s5, 4
	mul $s2, $s2, $s5
	add $s5, $s4, $s2
	li $s2, 56591
	sw $s2, 0($s5)
	li $s4, 0
	addi $s6, $fp, -2060
	li $s7, 7
	sw $s5, -3052($fp)
	li $s5, 10
	mul $s4, $s4, $s5
	add $s4, $s4, $s7
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s6, $s4
	li $s4, 58765
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -2060
	sw $s5, -3056($fp)
	li $s5, 8
	sw $s4, -3060($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 58200
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -2060
	sw $s5, -3064($fp)
	li $s5, 9
	sw $s4, -3068($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 55499
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -2124
	sw $s5, -3072($fp)
	li $s5, 0
	sw $s4, -3076($fp)
	li $s4, 4
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 60887
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -2124
	sw $s5, -3080($fp)
	li $s5, 1
	sw $s4, -3084($fp)
	li $s4, 4
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 2261
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -2124
	sw $s5, -3088($fp)
	li $s5, 2
	sw $s4, -3092($fp)
	li $s4, 4
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 16121
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -2124
	sw $s5, -3096($fp)
	li $s5, 3
	sw $s4, -3100($fp)
	li $s4, 4
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 65507
	sw $s4, 0($s5)
	li $s6, 6282
	move $s7, $s6
	li $s6, 40140
	sw $s7, -2132($fp)
	move $s7, $s6
	li $s6, 12813
	sw $s7, -2136($fp)
	move $s7, $s6
	li $s6, 61139
	sw $s5, -3104($fp)
	move $s5, $s6
	li $s6, 30870
	sw $s4, -3108($fp)
	move $s4, $s6
	li $s6, 0
	sw $s6, -2140($fp)
	li $s6, 40435
	sw $s6, -2144($fp)
	li $s6, 49331
	sw $s3, -3112($fp)
	add $s3, $s7, $s6
	li $s6, 4729
	add $s7, $s5, $s6
	li $s5, 0
	li $s6, 48970
	sw $s7, -2152($fp)
	lw $s7, -876($fp)
	sw $s5, -2156($fp)
	sub $s5, $s6, $s7
	sw $t1, -2128($fp)
	sw $s3, -2148($fp)
	bgt $s5, $s4, label708

	j label709

label708:
	li $t0, 1
	sw $t0, -2156($fp)

label709:
	li $t0, 0
	li $t1, 23264
	li $t2, -1
	mul $t3, $t2, $t1
	li $t1, 60316
	sw $t0, -2160($fp)
	beq $t3, $t1, label710

	j label711

label710:
	li $t0, 1
	sw $t0, -2160($fp)

label711:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2160($fp)
	sw $t0, 0($sp)
	lw $t1, -1028($fp)
	move $a3, $t1
	lw $t2, -1024($fp)
	move $a2, $t2
	lw $t3, -2156($fp)
	move $a1, $t3
	lw $t4, -2152($fp)
	move $a0, $t4
	jal id_Fd
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -2164($fp)

	li $t0, -1
	lw $t1, -2164($fp)
	mul $t2, $t0, $t1
	sw $t2, -2168($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	jal id_mEqPUA
	move $t0, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, -2172($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2172($fp)
	move $a3, $t0
	lw $t1, -2168($fp)
	move $a2, $t1
	lw $t2, -2148($fp)
	move $a1, $t2
	lw $t3, -2144($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2176($fp)

	lw $t0, -888($fp)
	lw $t1, -2176($fp)
	blt $t1, $t0, label706

	j label707

label706:
	li $t0, 1
	sw $t0, -2140($fp)

label707:
	lw $t1, -2140($fp)
	move $t0, $t1
	li $t2, 0
	li $t3, 0
	li $t4, 0
	sw $t0, -924($fp)
	sw $t2, -2180($fp)
	sw $t3, -2184($fp)
	lw $t5, -2136($fp)
	bne $t5, $t4, label716

	j label717

label717:
	li $t0, 0
	lw $t1, -908($fp)
	bne $t1, $t0, label715

	j label716

label715:
	li $t0, 1
	sw $t0, -2184($fp)

label716:
	li $t0, 0
	lw $t1, -984($fp)
	lw $t2, -964($fp)
	add $t3, $t2, $t1
	li $t4, 0
	sw $t0, -2188($fp)
	bne $t3, $t4, label718

	j label720

label720:
	li $t0, 28660
	li $t1, 0
	bne $t0, $t1, label718

	j label719

label718:
	li $t0, 1
	sw $t0, -2188($fp)

label719:
	li $t0, 0
	li $t1, 2864
	li $t2, 0
	sw $t0, -2192($fp)
	bne $t1, $t2, label721

	j label723

label723:
	li $t0, 12451
	li $t1, 0
	bne $t0, $t1, label721

	j label722

label721:
	li $t0, 1
	sw $t0, -2192($fp)

label722:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2192($fp)
	move $a2, $t0
	lw $t1, -2188($fp)
	move $a1, $t1
	lw $t2, -2184($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2196($fp)

	li $t0, 0
	lw $t1, -2196($fp)
	bne $t1, $t0, label714

	j label713

label714:
	li $t0, 44227
	li $t1, 0
	addi $t2, $fp, -2124
	li $t3, 4
	mul $t1, $t1, $t3
	lw $t3, -896($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	lw $t1, 0($t4)
	bgt $t0, $t1, label712

	j label713

label712:
	li $t0, 1
	sw $t0, -2180($fp)

label713:
	li $t0, 0
	lw $t1, -852($fp)
	lw $t2, -12($fp)
	sub $t3, $t2, $t1
	li $t4, 57329
	lw $t5, -1028($fp)
	sub $t6, $t5, $t4
	li $t4, 48731
	add $t7, $t6, $t4
	move $t4, $t2
	li $t6, 0
	li $t8, 0
	addi $t9, $fp, -428
	li $s0, 3
	mul $t8, $t8, $s0
	lw $s0, -988($fp)
	add $t8, $t8, $s0
	li $s1, 4
	mul $t8, $t8, $s1
	add $s1, $t9, $t8
	li $t8, -1
	lw $t9, -2128($fp)
	mul $s2, $t8, $t9
	li $t8, -1
	mul $s3, $t8, $s2
	li $t8, 0
	li $s2, 11632
	li $s4, 0
	sw $t0, -2200($fp)
	sw $t3, -2204($fp)
	sw $t4, -868($fp)
	sw $t6, -2212($fp)
	sw $t7, -2208($fp)
	sw $t8, -2224($fp)
	sw $s1, -2216($fp)
	sw $s3, -2220($fp)
	bne $s2, $s4, label735

	j label734

label734:
	li $t0, 1
	sw $t0, -2224($fp)

label735:
	lw $t0, -940($fp)
	lw $t1, -2224($fp)
	add $t2, $t1, $t0
	li $t3, 0
	li $t4, 0
	li $t5, 0
	sw $t2, -2228($fp)
	sw $t3, -2232($fp)
	sw $t4, -2236($fp)
	lw $t6, -968($fp)
	bne $t6, $t5, label739

	j label738

label738:
	li $t0, 1
	sw $t0, -2236($fp)

label739:
	lw $t0, -988($fp)
	lw $t1, -2236($fp)
	bgt $t1, $t0, label736

	j label737

label736:
	li $t0, 1
	sw $t0, -2232($fp)

label737:
	lw $t1, -876($fp)
	move $t0, $t1
	lw $t3, -2216($fp)
	lw $t2, 0($t3)
	sw $t0, -944($fp)
	sw $t2, -2240($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -944($fp)
	sw $t0, 0($sp)
	lw $t1, -2232($fp)
	move $a3, $t1
	lw $t2, -2228($fp)
	move $a2, $t2
	lw $t3, -2220($fp)
	move $a1, $t3
	lw $t4, -2240($fp)
	move $a0, $t4
	jal id_Fd
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -2244($fp)

	li $t0, 0
	lw $t1, -2244($fp)
	bne $t1, $t0, label733

	j label732

label733:
	li $t0, 28128
	li $t1, 0
	bne $t0, $t1, label731

	j label732

label731:
	li $t0, 1
	sw $t0, -2212($fp)

label732:
	li $t0, 0
	sw $t0, -2248($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	jal id_mEqPUA
	move $t0, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, -2252($fp)

	li $t0, 0
	lw $t1, -2252($fp)
	bne $t1, $t0, label741

	j label740

label740:
	li $t0, 1
	sw $t0, -2248($fp)

label741:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2248($fp)
	sw $t0, 0($sp)
	lw $t1, -2212($fp)
	move $a3, $t1
	lw $t2, -868($fp)
	move $a2, $t2
	lw $t3, -2208($fp)
	move $a1, $t3
	lw $t4, -2204($fp)
	move $a0, $t4
	jal id_Fd
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -2256($fp)

	li $t0, 0
	lw $t1, -2256($fp)
	bne $t1, $t0, label730

	j label729

label729:
	li $t0, 1
	sw $t0, -2200($fp)

label730:
	li $t0, 0
	li $t1, 0
	li $t2, 1592
	li $t3, 0
	sw $t0, -2260($fp)
	sw $t1, -2264($fp)
	bne $t2, $t3, label745

	j label744

label744:
	li $t0, 1
	sw $t0, -2264($fp)

label745:
	lw $t0, -920($fp)
	lw $t1, -2264($fp)
	bgt $t1, $t0, label742

	j label743

label742:
	li $t0, 1
	sw $t0, -2260($fp)

label743:
	li $t0, 0
	li $t1, 0
	sw $t0, -2268($fp)
	lw $t2, -956($fp)
	bne $t2, $t1, label746

	j label748

label748:
	li $t0, 47017
	li $t1, 0
	bne $t0, $t1, label746

	j label747

label746:
	li $t0, 1
	sw $t0, -2268($fp)

label747:
	li $t0, 0
	li $t1, 394
	li $t2, 0
	sw $t0, -2272($fp)
	bne $t1, $t2, label749

	j label750

label749:
	li $t0, 1
	sw $t0, -2272($fp)

label750:
	li $t0, 0
	li $t1, 33978
	li $t2, 0
	sw $t0, -2276($fp)
	bne $t1, $t2, label752

	j label751

label751:
	li $t0, 1
	sw $t0, -2276($fp)

label752:
	li $t0, 38072
	lw $t1, -936($fp)
	mul $t2, $t1, $t0
	li $t0, -1
	mul $t3, $t0, $t2
	sw $t3, -2280($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2280($fp)
	sw $t0, 0($sp)
	lw $t1, -2276($fp)
	move $a3, $t1
	lw $t2, -2272($fp)
	move $a2, $t2
	lw $t3, -2268($fp)
	move $a1, $t3
	lw $t4, -2260($fp)
	move $a0, $t4
	jal id_Fd
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -2284($fp)

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -2060
	li $t3, 10
	mul $t1, $t1, $t3
	lw $t3, -936($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	lw $t1, 0($t4)
	li $t2, 0
	sw $t0, -2288($fp)
	bne $t1, $t2, label754

	j label753

label753:
	li $t0, 1
	sw $t0, -2288($fp)

label754:
	li $t0, 59159
	li $t1, 26642
	mul $t2, $t0, $t1
	lw $t0, -956($fp)
	div $t2, $t0
	mflo $t1
	li $t2, 0
	li $t3, 28036
	li $t4, 0
	sw $t1, -2292($fp)
	sw $t2, -2296($fp)
	bne $t3, $t4, label755

	j label758

label758:
	li $t0, 0
	lw $t1, -980($fp)
	bne $t1, $t0, label755

	j label757

label757:
	li $t0, 54511
	li $t1, 0
	bne $t0, $t1, label755

	j label756

label755:
	li $t0, 1
	sw $t0, -2296($fp)

label756:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2296($fp)
	sw $t0, 0($sp)
	lw $t1, -2292($fp)
	move $a3, $t1
	lw $t2, -2288($fp)
	move $a2, $t2
	lw $t3, -2284($fp)
	move $a1, $t3
	lw $t4, -2200($fp)
	move $a0, $t4
	jal id_Fd
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -2300($fp)

	li $t0, 28903
	lw $t1, -2300($fp)
	add $t2, $t1, $t0
	li $t0, 0
	li $t3, 44157
	li $t4, 0
	sw $t0, -2308($fp)
	sw $t2, -2304($fp)
	bne $t3, $t4, label760

	j label759

label759:
	li $t0, 1
	sw $t0, -2308($fp)

label760:
	lw $t0, -2308($fp)
	lw $t1, -2304($fp)
	ble $t1, $t0, label728

	j label727

label728:
	li $t0, 54482
	lw $t1, -956($fp)
	mul $t2, $t0, $t1
	li $t0, 35185
	mul $t3, $t2, $t0
	li $t0, 0
	bne $t3, $t0, label724

	j label727

label727:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 18761
	sw $t0, -2312($fp)
	sw $t1, -2316($fp)
	sw $t2, -2320($fp)
	lw $t4, -876($fp)
	ble $t4, $t3, label766

	j label767

label766:
	li $t0, 1
	sw $t0, -2320($fp)

label767:
	li $t0, 1760
	lw $t1, -2320($fp)
	beq $t1, $t0, label764

	j label765

label764:
	li $t0, 1
	sw $t0, -2316($fp)

label765:
	li $t0, 0
	li $t1, 30788
	sw $t0, -2324($fp)
	lw $t2, -1016($fp)
	bge $t1, $t2, label770

	j label769

label770:
	li $t0, 0
	lw $t1, -940($fp)
	bne $t1, $t0, label768

	j label769

label768:
	li $t0, 1
	sw $t0, -2324($fp)

label769:
	li $t0, -1
	lw $t1, -852($fp)
	mul $t2, $t0, $t1
	li $t0, -1
	mul $t3, $t0, $t2
	li $t0, 0
	li $t2, 49631
	sw $t0, -2332($fp)
	sw $t3, -2328($fp)
	lw $t4, -2132($fp)
	bgt $t2, $t4, label771

	j label773

label773:
	li $t0, 42195
	li $t1, 0
	bne $t0, $t1, label771

	j label772

label771:
	li $t0, 1
	sw $t0, -2332($fp)

label772:
	li $t0, 0
	li $t1, 14584
	sw $t0, -2336($fp)
	lw $t2, -28($fp)
	bne $t2, $t1, label774

	j label775

label774:
	li $t0, 1
	sw $t0, -2336($fp)

label775:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2336($fp)
	sw $t0, 0($sp)
	lw $t1, -2332($fp)
	move $a3, $t1
	lw $t2, -2328($fp)
	move $a2, $t2
	lw $t3, -2324($fp)
	move $a1, $t3
	lw $t4, -2316($fp)
	move $a0, $t4
	jal id_Fd
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -2340($fp)

	li $t0, 0
	lw $t1, -2340($fp)
	bne $t1, $t0, label761

	j label763

label763:
	li $t0, 0
	lw $t1, -904($fp)
	bne $t1, $t0, label761

	j label762

label761:
	li $t0, 1
	sw $t0, -2312($fp)

label762:
	li $t0, 0
	li $t1, 54361
	li $t2, 25629
	mul $t3, $t1, $t2
	li $t1, 37848
	sw $t0, -2344($fp)
	blt $t3, $t1, label776

	j label777

label776:
	li $t0, 1
	sw $t0, -2344($fp)

label777:
	li $t0, 49141
	lw $t1, -936($fp)
	div $t0, $t1
	mflo $t2
	lw $t0, -904($fp)
	mul $t3, $t2, $t0
	li $t2, 0
	li $t4, 54289
	li $t5, 0
	sw $t2, -2352($fp)
	sw $t3, -2348($fp)
	bne $t4, $t5, label781

	j label780

label781:
	li $t0, 40712
	li $t1, 0
	bne $t0, $t1, label778

	j label780

label780:
	li $t0, 0
	lw $t1, -880($fp)
	bne $t1, $t0, label778

	j label779

label778:
	li $t0, 1
	sw $t0, -2352($fp)

label779:
	li $t0, 0
	li $t1, 0
	sw $t0, -2356($fp)
	lw $t2, -984($fp)
	bne $t2, $t1, label785

	j label783

label785:
	li $t0, 61592
	li $t1, 0
	bne $t0, $t1, label784

	j label783

label784:
	li $t0, 0
	lw $t1, -908($fp)
	bne $t1, $t0, label782

	j label783

label782:
	li $t0, 1
	sw $t0, -2356($fp)

label783:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2356($fp)
	move $a3, $t0
	lw $t1, -2352($fp)
	move $a2, $t1
	lw $t2, -2348($fp)
	move $a1, $t2
	lw $t3, -2344($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2360($fp)

	li $t0, 0
	li $t1, 32981
	sw $t0, -2364($fp)
	lw $t2, -20($fp)
	bgt $t2, $t1, label786

	j label787

label786:
	li $t0, 1
	sw $t0, -2364($fp)

label787:
	li $t0, 0
	li $t1, 32506
	sw $t0, -2368($fp)
	lw $t2, -1016($fp)
	bgt $t1, $t2, label788

	j label789

label788:
	li $t0, 1
	sw $t0, -2368($fp)

label789:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2368($fp)
	move $a3, $t0
	lw $t1, -2364($fp)
	move $a2, $t1
	lw $t2, -2360($fp)
	move $a1, $t2
	lw $t3, -2312($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2372($fp)

	li $t0, 0
	lw $t1, -940($fp)
	lw $t2, -1004($fp)
	div $t2, $t1
	mflo $t3
	sw $t0, -2376($fp)
	lw $t4, -980($fp)
	beq $t3, $t4, label790

	j label791

label790:
	li $t0, 1
	sw $t0, -2376($fp)

label791:
	li $t0, 0
	sw $t0, -2380($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	jal id_mEqPUA
	move $t0, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, -2384($fp)

	li $t0, 0
	lw $t1, -2384($fp)
	bne $t1, $t0, label793

	j label792

label792:
	li $t0, 1
	sw $t0, -2380($fp)

label793:
	li $t0, 0
	sw $t0, -2388($fp)
	lw $t1, -984($fp)
	lw $t2, -860($fp)
	ble $t2, $t1, label794

	j label796

label796:
	li $t0, 0
	lw $t1, -988($fp)
	bne $t1, $t0, label794

	j label795

label794:
	li $t0, 1
	sw $t0, -2388($fp)

label795:
	li $t0, 44787
	move $t1, $t0
	sw $t1, -24($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -24($fp)
	sw $t0, 0($sp)
	lw $t1, -968($fp)
	move $a3, $t1
	lw $t2, -2388($fp)
	move $a2, $t2
	lw $t3, -2380($fp)
	move $a1, $t3
	lw $t4, -2376($fp)
	move $a0, $t4
	jal id_Fd
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -2392($fp)

	lw $t0, -2392($fp)
	lw $t1, -2372($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label724

	j label725

label724:
	li $t0, 0
	addi $t1, $fp, -108
	li $t2, 0
	li $t3, 44613
	li $t4, 0
	sw $t0, -2396($fp)
	sw $t1, -2400($fp)
	sw $t2, -2404($fp)
	bne $t3, $t4, label799

	j label798

label799:
	li $t0, 0
	lw $t1, -28($fp)
	bne $t1, $t0, label797

	j label798

label797:
	li $t0, 1
	sw $t0, -2404($fp)

label798:
	li $t0, 2
	lw $t1, -2396($fp)
	mul $t1, $t1, $t0
	lw $t0, -2404($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -2400($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t3, -872($fp)
	mul $t5, $t3, $t4
	sw $t1, -2396($fp)
	move $v0, $t5
	lw $ra, 2692($sp)
	lw $fp, 2688($sp)
	addi $sp, $sp, 2696
	jr $ra

	j label726

label725:
	li $t0, 0
	sw $t0, -2408($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	jal id_mEqPUA
	move $t0, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, -2412($fp)

	li $t0, 60634
	lw $t1, -2412($fp)
	add $t2, $t1, $t0
	li $t0, 0
	li $t3, 46379
	li $t4, 0
	sw $t0, -2420($fp)
	sw $t2, -2416($fp)
	bne $t3, $t4, label802

	j label803

label802:
	li $t0, 1
	sw $t0, -2420($fp)

label803:
	lw $t0, -2420($fp)
	lw $t1, -2416($fp)
	ble $t1, $t0, label800

	j label801

label800:
	li $t0, 1
	sw $t0, -2408($fp)

label801:

label726:

label804:
	li $t0, 0
	li $t1, 0
	li $t2, 26094
	li $t3, 61028
	li $t4, 14822
	mul $t5, $t3, $t4
	sw $t0, -2424($fp)
	sw $t1, -2428($fp)
	beq $t2, $t5, label809

	j label810

label809:
	li $t0, 1
	sw $t0, -2428($fp)

label810:
	lw $t0, -904($fp)
	lw $t1, -2428($fp)
	bge $t1, $t0, label807

	j label808

label807:
	li $t0, 1
	sw $t0, -2424($fp)

label808:
	li $t0, 0
	li $t1, 0
	sw $t0, -2432($fp)
	lw $t2, -920($fp)
	bne $t2, $t1, label812

	j label811

label811:
	li $t0, 1
	sw $t0, -2432($fp)

label812:
	lw $t0, -932($fp)
	lw $t1, -2432($fp)
	div $t1, $t0
	mflo $t2
	lw $t3, -2424($fp)
	bne $t3, $t2, label805

	j label806

label805:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -828
	li $t4, 6
	mul $t2, $t2, $t4
	lw $t4, -880($fp)
	add $t2, $t2, $t4
	li $t5, 4
	mul $t2, $t2, $t5
	add $t5, $t3, $t2
	lw $t2, 0($t5)
	li $t3, 0
	sw $t0, -2436($fp)
	sw $t1, -2440($fp)
	bne $t2, $t3, label817

	j label816

label816:
	li $t0, 1
	sw $t0, -2440($fp)

label817:
	li $t0, 0
	addi $t1, $fp, -556
	li $t2, 4
	mul $t0, $t0, $t2
	lw $t2, -980($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	lw $t1, -876($fp)
	mul $t3, $t0, $t1
	lw $t0, -2440($fp)
	add $t4, $t0, $t3
	li $t3, 0
	bne $t4, $t3, label813

	j label815

label815:
	li $t0, 0
	li $t1, 64167
	lw $t2, -1012($fp)
	mul $t3, $t1, $t2
	lw $t1, -928($fp)
	mul $t4, $t3, $t1
	li $t3, 54652
	sw $t0, -2444($fp)
	bne $t4, $t3, label818

	j label819

label818:
	li $t0, 1
	sw $t0, -2444($fp)

label819:
	li $t0, 41464
	lw $t1, -2444($fp)
	ble $t1, $t0, label813

	j label814

label813:
	li $t0, 1
	sw $t0, -2436($fp)

label814:
	j label804

label806:
	li $t0, 0
	lw $t1, -944($fp)
	lw $t2, -952($fp)
	mul $t3, $t2, $t1
	li $t4, 26667
	add $t5, $t3, $t4
	li $t3, 43627
	sw $t0, -2448($fp)
	ble $t5, $t3, label823

	j label824

label823:
	li $t0, 1
	sw $t0, -2448($fp)

label824:
	lw $t1, -2448($fp)
	move $t0, $t1
	li $t2, 0
	sw $t0, -948($fp)
	bne $t0, $t2, label820

	j label821

label820:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -636
	li $t3, 0
	addi $t4, $fp, -2124
	li $t5, 0
	li $t6, 4
	mul $t3, $t3, $t6
	add $t3, $t3, $t5
	li $t5, 4
	mul $t3, $t3, $t5
	add $t5, $t4, $t3
	li $t3, -1
	lw $t4, 0($t5)
	mul $t5, $t3, $t4
	li $t3, 5
	mul $t1, $t1, $t3
	add $t1, $t1, $t5
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	li $t1, 32573
	lw $t2, -860($fp)
	div $t2, $t1
	mflo $t4
	li $t1, 40017
	div $t4, $t1
	mflo $t5
	li $t1, 24049
	add $t4, $t5, $t1
	lw $t1, 0($t3)
	sw $t0, -2452($fp)
	bgt $t1, $t4, label825

	j label826

label825:
	li $t0, 1
	sw $t0, -2452($fp)

label826:
	j label822

label821:
	li $t0, 0
	li $t1, 34333
	li $t2, 0
	sw $t0, -2456($fp)
	bne $t1, $t2, label828

	j label827

label827:
	li $t0, 1
	sw $t0, -2456($fp)

label828:
	li $t0, 5270
	lw $t1, -2456($fp)
	sub $t2, $t1, $t0
	li $t0, 0
	li $t3, 0
	sw $t0, -2464($fp)
	sw $t2, -2460($fp)
	sw $t3, -2468($fp)
	lw $t4, -1028($fp)
	lw $t5, -880($fp)
	ble $t5, $t4, label831

	j label832

label831:
	li $t0, 1
	sw $t0, -2468($fp)

label832:
	li $t0, 8145
	lw $t1, -2468($fp)
	beq $t1, $t0, label829

	j label830

label829:
	li $t0, 1
	sw $t0, -2464($fp)

label830:
	li $t0, 0
	li $t1, 0
	sw $t0, -2472($fp)
	lw $t2, -1000($fp)
	bne $t2, $t1, label835

	j label834

label835:
	li $t0, 10992
	li $t1, 0
	bne $t0, $t1, label833

	j label834

label833:
	li $t0, 1
	sw $t0, -2472($fp)

label834:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2472($fp)
	move $a2, $t0
	lw $t1, -2464($fp)
	move $a1, $t1
	lw $t2, -2460($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2476($fp)

	li $t0, -1
	lw $t1, -2476($fp)
	mul $t2, $t0, $t1
	li $t0, -1
	mul $t3, $t0, $t2
	move $t0, $t3
	sw $t0, -888($fp)

label822:

label690:
	li $t0, 0
	addi $t1, $fp, -76
	li $t2, 0
	li $t3, 3
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	sw $t0, -2480($fp)

	li $v0, 1
	lw $t0, -2480($fp)
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
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2484($fp)

	li $v0, 1
	lw $t0, -2484($fp)
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
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2488($fp)

	li $v0, 1
	lw $t0, -2488($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -108
	li $t3, 0
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2492($fp)

	li $v0, 1
	lw $t0, -2492($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -108
	li $t3, 1
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2496($fp)

	li $v0, 1
	lw $t0, -2496($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -188
	li $t3, 0
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2500($fp)

	li $v0, 1
	lw $t0, -2500($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -188
	li $t3, 1
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2504($fp)

	li $v0, 1
	lw $t0, -2504($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -188
	li $t3, 2
	li $t4, 5
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
	li $t1, 0
	addi $t2, $fp, -188
	li $t3, 3
	li $t4, 5
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
	addi $t2, $fp, -188
	li $t3, 4
	li $t4, 5
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

	li $v0, 1
	lw $t0, -832($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -220
	li $t3, 0
	li $t4, 2
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
	addi $t2, $fp, -220
	li $t3, 1
	li $t4, 2
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

	li $v0, 1
	lw $t0, -836($fp)
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
	li $t1, 0
	addi $t2, $fp, -300
	li $t3, 0
	li $t4, 5
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
	addi $t2, $fp, -300
	li $t3, 1
	li $t4, 5
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
	addi $t2, $fp, -300
	li $t3, 2
	li $t4, 5
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
	addi $t2, $fp, -300
	li $t3, 3
	li $t4, 5
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
	addi $t2, $fp, -300
	li $t3, 4
	li $t4, 5
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
	lw $t0, -864($fp)
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

	li $v0, 1
	lw $t0, -872($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -876($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -880($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -884($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -888($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -380
	li $t3, 0
	li $t4, 5
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
	addi $t2, $fp, -380
	li $t3, 1
	li $t4, 5
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
	addi $t2, $fp, -380
	li $t3, 2
	li $t4, 5
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
	addi $t2, $fp, -380
	li $t3, 3
	li $t4, 5
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
	addi $t2, $fp, -380
	li $t3, 4
	li $t4, 5
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

	li $v0, 1
	lw $t0, -892($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -896($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -900($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -904($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -908($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -912($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -916($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -428
	li $t3, 0
	li $t4, 3
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
	addi $t2, $fp, -428
	li $t3, 1
	li $t4, 3
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
	addi $t2, $fp, -428
	li $t3, 2
	li $t4, 3
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

	li $v0, 1
	lw $t0, -920($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -924($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -928($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -932($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -492
	li $t3, 0
	li $t4, 4
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
	addi $t2, $fp, -492
	li $t3, 1
	li $t4, 4
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
	li $t1, 0
	addi $t2, $fp, -492
	li $t3, 2
	li $t4, 4
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
	addi $t2, $fp, -492
	li $t3, 3
	li $t4, 4
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

	li $v0, 1
	lw $t0, -936($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -556
	li $t3, 0
	li $t4, 4
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
	addi $t2, $fp, -556
	li $t3, 1
	li $t4, 4
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
	addi $t2, $fp, -556
	li $t3, 2
	li $t4, 4
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
	addi $t2, $fp, -556
	li $t3, 3
	li $t4, 4
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

	li $v0, 1
	lw $t0, -940($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -944($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -948($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -636
	li $t3, 0
	li $t4, 5
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
	addi $t2, $fp, -636
	li $t3, 1
	li $t4, 5
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
	addi $t2, $fp, -636
	li $t3, 2
	li $t4, 5
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
	li $t1, 0
	addi $t2, $fp, -636
	li $t3, 3
	li $t4, 5
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
	addi $t2, $fp, -636
	li $t3, 4
	li $t4, 5
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

	li $v0, 1
	lw $t0, -952($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -956($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -732
	li $t3, 0
	li $t4, 6
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
	addi $t2, $fp, -732
	li $t3, 1
	li $t4, 6
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
	addi $t2, $fp, -732
	li $t3, 2
	li $t4, 6
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
	addi $t2, $fp, -732
	li $t3, 3
	li $t4, 6
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
	addi $t2, $fp, -732
	li $t3, 4
	li $t4, 6
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
	addi $t2, $fp, -732
	li $t3, 5
	li $t4, 6
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

	li $v0, 1
	lw $t0, -960($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -964($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -968($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -972($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -828
	li $t3, 0
	li $t4, 6
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
	li $t1, 0
	addi $t2, $fp, -828
	li $t3, 1
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
	addi $t2, $fp, -828
	li $t3, 2
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
	addi $t2, $fp, -828
	li $t3, 3
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
	addi $t2, $fp, -828
	li $t3, 4
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
	addi $t2, $fp, -828
	li $t3, 5
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

	li $v0, 1
	lw $t0, -976($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -980($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -984($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -988($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -992($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -996($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1000($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1004($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1008($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1012($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1016($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1020($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1024($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1028($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -428
	li $t3, 0
	addi $t4, $fp, -76
	li $t5, 0
	li $t6, 19854
	sw $t1, -2680($fp)
	sw $t2, -2684($fp)
	sw $t3, -2688($fp)
	sw $t4, -2692($fp)
	sw $t5, -2696($fp)
	lw $t7, -20($fp)
	blt $t7, $t6, label836

	j label837

label836:
	li $t0, 1
	sw $t0, -2696($fp)

label837:
	li $t0, 3
	lw $t1, -2688($fp)
	mul $t1, $t1, $t0
	lw $t0, -2696($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -2692($fp)
	add $t3, $t2, $t1
	li $t4, 3
	lw $t5, -2680($fp)
	mul $t5, $t5, $t4
	lw $t4, 0($t3)
	add $t3, $t5, $t4
	li $t4, 4
	mul $t3, $t3, $t4
	lw $t4, -2684($fp)
	add $t5, $t4, $t3
	lw $t6, 0($t5)
	sw $t1, -2688($fp)
	sw $t3, -2680($fp)
	move $v0, $t6
	lw $ra, 2692($sp)
	lw $fp, 2688($sp)
	addi $sp, $sp, 2696
	jr $ra

id_bdOi7NUm:
	addi $sp, $sp, -132
	sw $ra, 128($sp)
	sw $fp, 124($sp)
	addi $fp, $sp, 132
	sw $a0, -12($fp)
	sw $a1, -16($fp)
	sw $a2, -136($fp)
	sw $a3, -140($fp)

	li $t0, 0
	addi $t1, $fp, -80
	li $t2, 0
	li $t3, 4
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 62506
	sw $t0, 0($t2)
	li $t1, 0
	addi $t3, $fp, -80
	li $t4, 1
	li $t5, 4
	mul $t1, $t1, $t5
	add $t1, $t1, $t4
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t3, $t1
	li $t1, 36622
	sw $t1, 0($t4)
	li $t3, 0
	addi $t5, $fp, -80
	li $t6, 2
	li $t7, 4
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 57702
	sw $t3, 0($t6)
	li $t5, 0
	addi $t7, $fp, -80
	li $t8, 3
	li $t9, 4
	mul $t5, $t5, $t9
	add $t5, $t5, $t8
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t7, $t5
	li $t5, 46111
	sw $t5, 0($t8)
	li $t7, 25375
	li $t9, -1
	mul $s0, $t9, $t7
	lw $t7, -16($fp)
	sub $t9, $s0, $t7
	li $s0, 0
	addi $s1, $fp, -80
	li $s2, 0
	li $s3, 4
	mul $s0, $s0, $s3
	add $s0, $s0, $s2
	li $s2, 4
	mul $s0, $s0, $s2
	add $s2, $s1, $s0
	lw $s0, 0($s2)
	sw $s0, -84($fp)

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
	addi $t2, $fp, -80
	li $t3, 1
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
	addi $t2, $fp, -80
	li $t3, 2
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
	addi $t2, $fp, -80
	li $t3, 3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -96($fp)

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
	li $t2, 0
	addi $t3, $fp, -80
	li $t4, 4
	mul $t2, $t2, $t4
	lw $t4, -12($fp)
	add $t2, $t2, $t4
	li $t5, 4
	mul $t2, $t2, $t5
	add $t5, $t3, $t2
	li $t2, 0
	li $t3, 32879
	sw $t1, -100($fp)
	sw $t2, -108($fp)
	sw $t5, -104($fp)
	lw $t6, -16($fp)
	bne $t6, $t3, label841

	j label842

label841:
	li $t0, 1
	sw $t0, -108($fp)

label842:
	li $t0, 0
	li $t1, 42167
	li $t2, 58356
	sw $t0, -112($fp)
	bne $t1, $t2, label845

	j label844

label845:
	li $t0, 65385
	li $t1, 0
	bne $t0, $t1, label843

	j label844

label843:
	li $t0, 1
	sw $t0, -112($fp)

label844:
	li $t0, 21418
	li $t1, 0
	li $t2, 37433
	sw $t0, -116($fp)
	sw $t1, -120($fp)
	lw $t3, -16($fp)
	beq $t3, $t2, label848

	j label847

label848:
	li $t0, 0
	lw $t1, -16($fp)
	bne $t1, $t0, label846

	j label847

label846:
	li $t0, 1
	sw $t0, -120($fp)

label847:
	lw $t1, -104($fp)
	lw $t0, 0($t1)
	sw $t0, -124($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -120($fp)
	sw $t0, 0($sp)
	lw $t1, -116($fp)
	move $a3, $t1
	lw $t2, -112($fp)
	move $a2, $t2
	lw $t3, -108($fp)
	move $a1, $t3
	lw $t4, -124($fp)
	move $a0, $t4
	jal id_Fd
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -128($fp)

	li $t0, 0
	li $t1, -1
	lw $t2, -16($fp)
	mul $t3, $t1, $t2
	li $t1, 0
	sw $t0, -132($fp)
	bne $t3, $t1, label850

	j label849

label849:
	li $t0, 1
	sw $t0, -132($fp)

label850:
	lw $t0, -132($fp)
	lw $t1, -128($fp)
	bne $t1, $t0, label838

	j label840

label840:
	li $t0, 0
	lw $t1, -12($fp)
	bne $t1, $t0, label838

	j label839

label838:
	li $t0, 1
	sw $t0, -100($fp)

label839:
	lw $t0, -100($fp)
	move $v0, $t0
	lw $ra, 128($sp)
	lw $fp, 124($sp)
	addi $sp, $sp, 132
	jr $ra

id_OOj3M:
	addi $sp, $sp, -592
	sw $ra, 588($sp)
	sw $fp, 584($sp)
	addi $fp, $sp, 592
	sw $a0, -12($fp)
	sw $a1, -16($fp)

	li $t0, 60483
	move $t1, $t0
	li $t0, 2261
	move $t2, $t0
	li $t0, 63528
	move $t3, $t0
	li $t0, 55976
	move $t4, $t0
	li $t0, 17083
	move $t5, $t0
	li $t0, 62159
	move $t6, $t0
	li $t0, 45092
	move $t7, $t0
	li $t0, 58548
	move $t8, $t0
	li $t0, 23290
	move $t9, $t0
	li $t0, 23183
	move $s0, $t0
	li $t0, 63380
	move $s1, $t0
	li $t0, 28578
	move $s2, $t0
	li $t0, 0
	addi $s3, $fp, -144
	li $s4, 0
	li $s5, 8
	mul $t0, $t0, $s5
	add $t0, $t0, $s4
	li $s4, 4
	mul $t0, $t0, $s4
	add $s4, $s3, $t0
	li $t0, 55756
	sw $t0, 0($s4)
	li $s3, 0
	addi $s5, $fp, -144
	li $s6, 1
	li $s7, 8
	mul $s3, $s3, $s7
	add $s3, $s3, $s6
	li $s6, 4
	mul $s3, $s3, $s6
	add $s6, $s5, $s3
	li $s3, 37861
	sw $s3, 0($s6)
	li $s5, 0
	addi $s7, $fp, -144
	sw $s6, -596($fp)
	li $s6, 2
	sw $s4, -600($fp)
	li $s4, 8
	mul $s5, $s5, $s4
	add $s4, $s5, $s6
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 52627
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -144
	sw $s5, -604($fp)
	li $s5, 3
	sw $s4, -608($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 24554
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -144
	sw $s5, -612($fp)
	li $s5, 4
	sw $s4, -616($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 43131
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -144
	sw $s5, -620($fp)
	li $s5, 5
	sw $s4, -624($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 60772
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -144
	sw $s5, -628($fp)
	li $s5, 6
	sw $s4, -632($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 35546
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -144
	sw $s5, -636($fp)
	li $s5, 7
	sw $s4, -640($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 62985
	sw $s4, 0($s5)
	li $s6, 57742
	move $s7, $s6
	li $s6, 0
	sw $s7, -196($fp)
	li $s7, 0
	sw $s7, -204($fp)
	li $s7, 0
	sw $s7, -208($fp)
	li $s7, 0
	sw $s7, -212($fp)
	li $s7, 0
	sw $t1, -148($fp)
	sw $t2, -152($fp)
	sw $t3, -156($fp)
	sw $t4, -160($fp)
	sw $t5, -164($fp)
	sw $t6, -168($fp)
	sw $t7, -172($fp)
	sw $t8, -176($fp)
	sw $t9, -180($fp)
	sw $s0, -184($fp)
	sw $s1, -188($fp)
	sw $s2, -192($fp)
	sw $s6, -200($fp)
	bne $t6, $s7, label860

	j label859

label859:
	li $t0, 1
	sw $t0, -212($fp)

label860:
	lw $t0, -180($fp)
	lw $t1, -212($fp)
	add $t2, $t1, $t0
	li $t3, 6632
	bne $t2, $t3, label857

	j label858

label857:
	li $t0, 1
	sw $t0, -208($fp)

label858:
	li $t0, -1
	lw $t1, -192($fp)
	mul $t2, $t0, $t1
	lw $t0, -208($fp)
	bne $t0, $t2, label855

	j label856

label855:
	li $t0, 1
	sw $t0, -204($fp)

label856:
	lw $t0, -156($fp)
	lw $t1, -204($fp)
	beq $t1, $t0, label853

	j label854

label853:
	li $t0, 1
	sw $t0, -200($fp)

label854:
	lw $t0, -148($fp)
	lw $t1, -200($fp)
	bge $t1, $t0, label851

	j label852

label851:
	lw $t0, -184($fp)
	move $v0, $t0
	lw $ra, 588($sp)
	lw $fp, 584($sp)
	addi $sp, $sp, 592
	jr $ra

label852:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -216($fp)
	sw $t1, -220($fp)
	sw $t2, -224($fp)
	lw $t3, -172($fp)
	lw $t4, -152($fp)
	bge $t4, $t3, label865

	j label866

label865:
	li $t0, 1
	sw $t0, -224($fp)

label866:
	li $t0, 0
	addi $t1, $fp, -144
	li $t2, 8
	mul $t0, $t0, $t2
	lw $t2, -176($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	lw $t1, -224($fp)
	bge $t1, $t0, label863

	j label864

label863:
	li $t0, 1
	sw $t0, -220($fp)

label864:
	lw $t0, -196($fp)
	lw $t1, -220($fp)
	bgt $t1, $t0, label861

	j label862

label861:
	li $t0, 1
	sw $t0, -216($fp)

label862:
	li $t0, 55152
	move $t1, $t0
	li $t0, 38317
	move $t2, $t0
	li $t0, 32008
	move $t3, $t0
	li $t0, 22495
	move $t4, $t0
	li $t0, 14948
	move $t5, $t0
	li $t0, 24828
	move $t6, $t0
	li $t0, 22344
	move $t7, $t0
	li $t0, 36366
	move $t8, $t0
	li $t0, 62262
	move $t9, $t0
	li $t0, 0
	li $s0, -1
	lw $s1, -184($fp)
	mul $s2, $s0, $s1
	li $s0, -1
	mul $s3, $s0, $s2
	li $s0, -1
	mul $s2, $s0, $s3
	li $s0, 0
	addi $s3, $fp, -144
	li $s4, 0
	li $s5, 17291
	sw $t0, -264($fp)
	sw $t1, -228($fp)
	sw $t2, -232($fp)
	sw $t3, -236($fp)
	sw $t4, -240($fp)
	sw $t5, -244($fp)
	sw $t6, -248($fp)
	sw $t7, -252($fp)
	sw $t8, -256($fp)
	sw $t9, -260($fp)
	sw $s0, -272($fp)
	sw $s2, -268($fp)
	sw $s3, -276($fp)
	sw $s4, -280($fp)
	beq $s5, $t7, label869

	j label870

label869:
	li $t0, 1
	sw $t0, -280($fp)

label870:
	li $t0, 8
	lw $t1, -272($fp)
	mul $t1, $t1, $t0
	lw $t0, -280($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -276($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	sw $t1, -272($fp)
	lw $t3, -268($fp)
	ble $t3, $t4, label867

	j label868

label867:
	li $t0, 1
	sw $t0, -264($fp)

label868:
	li $t0, 38628
	li $t1, 0
	li $t2, 0
	li $t3, 0
	li $t4, 0
	li $t5, 0
	sw $t1, -284($fp)
	sw $t2, -288($fp)
	sw $t3, -292($fp)
	sw $t4, -296($fp)
	lw $t6, -160($fp)
	bne $t6, $t5, label878

	j label877

label877:
	li $t0, 1
	sw $t0, -296($fp)

label878:
	li $t0, 0
	li $t1, 0
	sw $t0, -300($fp)
	lw $t2, -12($fp)
	bne $t2, $t1, label880

	j label879

label879:
	li $t0, 1
	sw $t0, -300($fp)

label880:
	li $t0, -1
	lw $t1, -300($fp)
	mul $t2, $t0, $t1
	li $t0, 60254
	lw $t3, -248($fp)
	sub $t4, $t3, $t0
	lw $t0, -164($fp)
	sub $t5, $t4, $t0
	li $t4, 0
	addi $t6, $fp, -144
	li $t7, 8
	mul $t4, $t4, $t7
	lw $t7, -188($fp)
	add $t4, $t4, $t7
	li $t8, 4
	mul $t4, $t4, $t8
	add $t8, $t6, $t4
	li $t4, 0
	li $t6, 7731
	div $t6, $t0
	mflo $t9
	li $t6, 55711
	sw $t2, -304($fp)
	sw $t4, -316($fp)
	sw $t5, -308($fp)
	sw $t8, -312($fp)
	bge $t9, $t6, label881

	j label882

label881:
	li $t0, 1
	sw $t0, -316($fp)

label882:
	li $t0, 56877
	li $t1, 0
	addi $t2, $fp, -144
	li $t3, 8
	mul $t1, $t1, $t3
	lw $t3, -184($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	lw $t1, 0($t4)
	lw $t4, -312($fp)
	lw $t2, 0($t4)
	sw $t0, -320($fp)
	sw $t1, -324($fp)
	sw $t2, -328($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -324($fp)
	move $a3, $t0
	lw $t1, -320($fp)
	move $a2, $t1
	lw $t2, -316($fp)
	move $a1, $t2
	lw $t3, -328($fp)
	move $a0, $t3
	jal id_bdOi7NUm
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -332($fp)

	li $t0, 0
	li $t1, 52823
	sw $t0, -336($fp)
	lw $t2, -240($fp)
	beq $t2, $t1, label885

	j label884

label885:
	li $t0, 0
	lw $t1, -252($fp)
	bne $t1, $t0, label883

	j label884

label883:
	li $t0, 1
	sw $t0, -336($fp)

label884:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -336($fp)
	move $a3, $t0
	lw $t1, -332($fp)
	move $a2, $t1
	lw $t2, -308($fp)
	move $a1, $t2
	lw $t3, -304($fp)
	move $a0, $t3
	jal id_bdOi7NUm
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -340($fp)

	lw $t0, -232($fp)
	lw $t1, -340($fp)
	sub $t2, $t1, $t0
	li $t3, 0
	li $t4, 48723
	lw $t5, -252($fp)
	add $t6, $t5, $t4
	sw $t2, -344($fp)
	sw $t3, -348($fp)
	lw $t4, -164($fp)
	bne $t6, $t4, label886

	j label887

label886:
	li $t0, 1
	sw $t0, -348($fp)

label887:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -348($fp)
	move $a2, $t0
	lw $t1, -344($fp)
	move $a1, $t1
	lw $t2, -296($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -352($fp)

	li $t0, 0
	lw $t1, -352($fp)
	bne $t1, $t0, label876

	j label875

label875:
	li $t0, 1
	sw $t0, -292($fp)

label876:
	li $t0, 0
	li $t1, 0
	sw $t0, -356($fp)
	sw $t1, -360($fp)
	lw $t2, -244($fp)
	lw $t3, -164($fp)
	bgt $t3, $t2, label890

	j label891

label890:
	li $t0, 1
	sw $t0, -360($fp)

label891:
	lw $t0, -164($fp)
	lw $t1, -360($fp)
	ble $t1, $t0, label888

	j label889

label888:
	li $t0, 1
	sw $t0, -356($fp)

label889:
	li $t0, 14631
	li $t1, 10470
	div $t0, $t1
	mflo $t2
	lw $t0, -252($fp)
	div $t2, $t0
	mflo $t1
	li $t2, 0
	addi $t3, $fp, -144
	li $t4, 1
	li $t5, 8
	mul $t2, $t2, $t5
	add $t2, $t2, $t4
	li $t4, 4
	mul $t2, $t2, $t4
	add $t4, $t3, $t2
	lw $t2, 0($t4)
	lw $t3, -244($fp)
	div $t2, $t3
	mflo $t4
	li $t2, -1
	lw $t5, -196($fp)
	mul $t6, $t2, $t5
	li $t2, 691
	sub $t7, $t6, $t2
	li $t2, 0
	addi $t6, $fp, -144
	li $t8, 4
	li $t9, 8
	mul $t2, $t2, $t9
	add $t2, $t2, $t8
	li $t8, 4
	mul $t2, $t2, $t8
	add $t8, $t6, $t2
	lw $t2, 0($t8)
	sw $t1, -364($fp)
	sw $t2, -376($fp)
	sw $t4, -368($fp)
	sw $t7, -372($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -376($fp)
	sw $t0, 0($sp)
	lw $t1, -372($fp)
	move $a3, $t1
	lw $t2, -368($fp)
	move $a2, $t2
	lw $t3, -364($fp)
	move $a1, $t3
	lw $t4, -356($fp)
	move $a0, $t4
	jal id_Fd
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -380($fp)

	lw $t0, -380($fp)
	lw $t1, -292($fp)
	bge $t1, $t0, label873

	j label874

label873:
	li $t0, 1
	sw $t0, -288($fp)

label874:
	li $t0, 0
	addi $t1, $fp, -144
	li $t2, 0
	li $t3, 8
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	lw $t1, -288($fp)
	blt $t1, $t0, label871

	j label872

label871:
	li $t0, 1
	sw $t0, -284($fp)

label872:
	li $t0, 0
	li $t1, 25537
	lw $t2, -164($fp)
	add $t3, $t2, $t1
	lw $t1, -256($fp)
	add $t4, $t3, $t1
	li $t3, 0
	lw $t5, -236($fp)
	add $t6, $t5, $t5
	li $t7, 60791
	sw $t0, -384($fp)
	sw $t3, -392($fp)
	sw $t4, -388($fp)
	bge $t6, $t7, label895

	j label896

label895:
	li $t0, 1
	sw $t0, -392($fp)

label896:
	li $t0, 59474
	lw $t1, -164($fp)
	add $t2, $t1, $t0
	li $t0, 0
	li $t3, 17743
	li $t4, 0
	sw $t0, -400($fp)
	sw $t2, -396($fp)
	bne $t3, $t4, label898

	j label897

label897:
	li $t0, 1
	sw $t0, -400($fp)

label898:
	li $t0, 1888
	lw $t1, -400($fp)
	sub $t2, $t1, $t0
	li $t0, 0
	li $t3, 0
	li $t4, 0
	sw $t0, -408($fp)
	sw $t2, -404($fp)
	sw $t3, -412($fp)
	lw $t5, -164($fp)
	bne $t5, $t4, label902

	j label904

label904:
	li $t0, 49090
	li $t1, 0
	bne $t0, $t1, label902

	j label903

label902:
	li $t0, 1
	sw $t0, -412($fp)

label903:
	li $t0, 56061
	lw $t1, -196($fp)
	div $t1, $t0
	mflo $t2
	li $t0, 33896
	sub $t3, $t2, $t0
	sw $t3, -416($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -416($fp)
	move $a1, $t0
	lw $t1, -412($fp)
	move $a0, $t1
	jal id_OOj3M
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -420($fp)

	li $t0, 0
	lw $t1, -420($fp)
	bne $t1, $t0, label901

	j label900

label901:
	li $t0, 6049
	li $t1, 0
	bne $t0, $t1, label899

	j label900

label899:
	li $t0, 1
	sw $t0, -408($fp)

label900:
	li $t0, 5473
	move $t1, $t0
	sw $t1, -12($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -12($fp)
	move $a3, $t0
	lw $t1, -408($fp)
	move $a2, $t1
	lw $t2, -404($fp)
	move $a1, $t2
	lw $t3, -396($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -424($fp)

	li $t0, 58724
	lw $t1, -424($fp)
	div $t1, $t0
	mflo $t2
	li $t0, 28393
	lw $t3, -232($fp)
	mul $t4, $t0, $t3
	li $t0, -1
	mul $t5, $t0, $t4
	li $t0, 0
	li $t4, 0
	li $t6, 41840
	li $t7, 55450
	sw $t0, -436($fp)
	sw $t2, -428($fp)
	sw $t4, -440($fp)
	sw $t5, -432($fp)
	beq $t6, $t7, label907

	j label908

label907:
	li $t0, 1
	sw $t0, -440($fp)

label908:
	lw $t0, -228($fp)
	lw $t1, -440($fp)
	beq $t1, $t0, label905

	j label906

label905:
	li $t0, 1
	sw $t0, -436($fp)

label906:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -436($fp)
	move $a3, $t0
	lw $t1, -432($fp)
	move $a2, $t1
	lw $t2, -428($fp)
	move $a1, $t2
	lw $t3, -392($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -444($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -444($fp)
	move $a1, $t0
	lw $t1, -388($fp)
	move $a0, $t1
	jal id_OOj3M
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -448($fp)

	lw $t0, -448($fp)
	lw $t1, -184($fp)
	bge $t1, $t0, label892

	j label894

label894:
	li $t0, 0
	addi $t1, $fp, -144
	li $t2, 8
	mul $t0, $t0, $t2
	lw $t2, -260($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	li $t1, 0
	bne $t0, $t1, label892

	j label893

label892:
	li $t0, 1
	sw $t0, -384($fp)

label893:
	li $t0, 45684
	li $t1, 0
	sw $t0, -452($fp)
	sw $t1, -456($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	jal id_mEqPUA
	move $t0, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, -460($fp)

	li $t0, 0
	lw $t1, -460($fp)
	bne $t1, $t0, label913

	j label912

label912:
	li $t0, 1
	sw $t0, -456($fp)

label913:
	lw $t0, -456($fp)
	lw $t1, -452($fp)
	div $t1, $t0
	mflo $t2
	lw $t3, -256($fp)
	mul $t4, $t2, $t3
	li $t2, 0
	bne $t4, $t2, label909

	j label910

label909:
	li $t0, 14932
	lw $t1, -164($fp)
	beq $t0, $t1, label914

	j label915

label914:
	li $t0, 0
	li $t1, 50168
	li $t2, -1
	mul $t3, $t2, $t1
	sw $t0, -464($fp)
	lw $t1, -244($fp)
	ble $t3, $t1, label917

	j label918

label917:
	li $t0, 1
	sw $t0, -464($fp)

label918:
	li $t0, 53416
	li $t1, 0
	li $t2, 5107
	li $t3, -1
	mul $t4, $t3, $t2
	li $t2, 0
	sw $t0, -468($fp)
	sw $t1, -472($fp)
	bne $t4, $t2, label920

	j label919

label919:
	li $t0, 1
	sw $t0, -472($fp)

label920:
	li $t0, 0
	lw $t1, -188($fp)
	lw $t2, -176($fp)
	add $t3, $t2, $t1
	li $t4, 0
	sw $t0, -476($fp)
	bne $t3, $t4, label923

	j label922

label923:
	li $t0, 41509
	li $t1, 0
	bne $t0, $t1, label921

	j label922

label921:
	li $t0, 1
	sw $t0, -476($fp)

label922:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -476($fp)
	sw $t0, 0($sp)
	lw $t1, -260($fp)
	move $a3, $t1
	lw $t2, -472($fp)
	move $a2, $t2
	lw $t3, -468($fp)
	move $a1, $t3
	lw $t4, -464($fp)
	move $a0, $t4
	jal id_Fd
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4

	j label916

label915:
	li $t0, 0
	li $t1, 0
	li $t2, 40703
	lw $t3, -252($fp)
	sub $t4, $t2, $t3
	li $t2, 0
	sw $t0, -480($fp)
	sw $t1, -484($fp)
	bne $t4, $t2, label929

	j label928

label929:
	li $t0, 53831
	li $t1, 0
	bne $t0, $t1, label927

	j label928

label927:
	li $t0, 1
	sw $t0, -484($fp)

label928:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -488($fp)
	sw $t1, -492($fp)
	lw $t3, -180($fp)
	bne $t3, $t2, label934

	j label933

label933:
	li $t0, 1
	sw $t0, -492($fp)

label934:
	lw $t0, -188($fp)
	lw $t1, -492($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	li $t4, 56140
	li $t5, 51174
	div $t4, $t5
	mflo $t6
	li $t4, 0
	sw $t2, -496($fp)
	sw $t3, -500($fp)
	bne $t6, $t4, label935

	j label937

label937:
	li $t0, 34862
	li $t1, 0
	bne $t0, $t1, label935

	j label936

label935:
	li $t0, 1
	sw $t0, -500($fp)

label936:
	li $t0, 0
	li $t1, 33813
	li $t2, -1
	mul $t3, $t2, $t1
	li $t1, 51865
	sw $t0, -504($fp)
	bgt $t3, $t1, label938

	j label939

label938:
	li $t0, 1
	sw $t0, -504($fp)

label939:
	li $t0, 0
	li $t1, 53755
	li $t2, 0
	sw $t0, -508($fp)
	bne $t1, $t2, label941

	j label940

label940:
	li $t0, 1
	sw $t0, -508($fp)

label941:
	li $t0, 0
	li $t1, 64114
	li $t2, 0
	sw $t0, -512($fp)
	bne $t1, $t2, label943

	j label942

label942:
	li $t0, 1
	sw $t0, -512($fp)

label943:
	li $t0, 11574
	lw $t1, -512($fp)
	sub $t2, $t1, $t0
	sw $t2, -516($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -516($fp)
	move $a3, $t0
	lw $t1, -12($fp)
	move $a2, $t1
	lw $t2, -508($fp)
	move $a1, $t2
	lw $t3, -504($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -520($fp)

	li $t0, -1
	lw $t1, -520($fp)
	mul $t2, $t0, $t1
	sw $t2, -524($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -524($fp)
	move $a2, $t0
	lw $t1, -500($fp)
	move $a1, $t1
	lw $t2, -496($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -528($fp)

	li $t0, 0
	lw $t1, -528($fp)
	bne $t1, $t0, label932

	j label931

label932:
	li $t0, 0
	lw $t1, -248($fp)
	bne $t1, $t0, label930

	j label931

label930:
	li $t0, 1
	sw $t0, -488($fp)

label931:
	li $t0, 50244
	lw $t1, -232($fp)
	div $t1, $t0
	mflo $t2
	sw $t2, -532($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -176($fp)
	move $a3, $t0
	lw $t1, -532($fp)
	move $a2, $t1
	lw $t2, -488($fp)
	move $a1, $t2
	lw $t3, -484($fp)
	move $a0, $t3
	jal id_bdOi7NUm
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -536($fp)

	li $t0, 0
	lw $t1, -536($fp)
	bne $t1, $t0, label926

	j label925

label926:
	li $t0, 0
	lw $t1, -240($fp)
	bne $t1, $t0, label924

	j label925

label924:
	li $t0, 1
	sw $t0, -480($fp)

label925:

label916:
	j label911

label910:
	li $t0, 24115
	sw $t0, -540($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	jal id_mEqPUA
	move $t0, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, -544($fp)

	lw $t0, -544($fp)
	lw $t1, -540($fp)
	div $t1, $t0
	mflo $t2
	move $t3, $t2
	sw $t3, -164($fp)

label911:

	li $v0, 1
	lw $t0, -148($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -152($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -156($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -160($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -164($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -168($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -172($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -176($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -180($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -184($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -188($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -192($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -144
	li $t3, 0
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -548($fp)

	li $v0, 1
	lw $t0, -548($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -144
	li $t3, 1
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -552($fp)

	li $v0, 1
	lw $t0, -552($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -144
	li $t3, 2
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -556($fp)

	li $v0, 1
	lw $t0, -556($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -144
	li $t3, 3
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -560($fp)

	li $v0, 1
	lw $t0, -560($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -144
	li $t3, 4
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -564($fp)

	li $v0, 1
	lw $t0, -564($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -144
	li $t3, 5
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -568($fp)

	li $v0, 1
	lw $t0, -568($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -144
	li $t3, 6
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -572($fp)

	li $v0, 1
	lw $t0, -572($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -144
	li $t3, 7
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -576($fp)

	li $v0, 1
	lw $t0, -576($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -196($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 6829
	li $t2, -1
	mul $t3, $t2, $t1
	lw $t1, -164($fp)
	div $t1, $t1
	mflo $t2
	lw $t4, -188($fp)
	div $t2, $t4
	mflo $t5
	li $t2, 0
	li $t6, 0
	addi $t7, $fp, -144
	li $t8, 2
	li $t9, 8
	mul $t6, $t6, $t9
	add $t6, $t6, $t8
	li $t8, 4
	mul $t6, $t6, $t8
	add $t8, $t7, $t6
	lw $t6, 0($t8)
	sw $t2, -588($fp)
	sw $t3, -580($fp)
	sw $t5, -584($fp)
	lw $t7, -16($fp)
	beq $t6, $t7, label944

	j label945

label944:
	li $t0, 1
	sw $t0, -588($fp)

label945:
	li $t0, 8717
	move $t1, $t0
	sw $t1, -160($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -160($fp)
	move $a3, $t0
	lw $t1, -588($fp)
	move $a2, $t1
	lw $t2, -584($fp)
	move $a1, $t2
	lw $t3, -580($fp)
	move $a0, $t3
	jal id_bdOi7NUm
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -592($fp)

	lw $t0, -12($fp)
	lw $t1, -592($fp)
	mul $t2, $t1, $t0
	move $v0, $t2
	lw $ra, 588($sp)
	lw $fp, 584($sp)
	addi $sp, $sp, 592
	jr $ra

id_xLI0wWOl:
	addi $sp, $sp, -664
	sw $ra, 660($sp)
	sw $fp, 656($sp)
	addi $fp, $sp, 664
	sw $a0, -12($fp)
	sw $a1, -16($fp)
	sw $a2, -20($fp)
	sw $a3, -24($fp)

	li $t0, 0
	addi $t1, $fp, -168
	li $t2, 0
	li $t3, 9
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 27736
	sw $t0, 0($t2)
	li $t1, 0
	addi $t3, $fp, -168
	li $t4, 1
	li $t5, 9
	mul $t1, $t1, $t5
	add $t1, $t1, $t4
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t3, $t1
	li $t1, 32383
	sw $t1, 0($t4)
	li $t3, 0
	addi $t5, $fp, -168
	li $t6, 2
	li $t7, 9
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 42613
	sw $t3, 0($t6)
	li $t5, 0
	addi $t7, $fp, -168
	li $t8, 3
	li $t9, 9
	mul $t5, $t5, $t9
	add $t5, $t5, $t8
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t7, $t5
	li $t5, 33785
	sw $t5, 0($t8)
	li $t7, 0
	addi $t9, $fp, -168
	li $s0, 4
	li $s1, 9
	mul $t7, $t7, $s1
	add $t7, $t7, $s0
	li $s0, 4
	mul $t7, $t7, $s0
	add $s0, $t9, $t7
	li $t7, 37857
	sw $t7, 0($s0)
	li $t9, 0
	addi $s1, $fp, -168
	li $s2, 5
	li $s3, 9
	mul $t9, $t9, $s3
	add $t9, $t9, $s2
	li $s2, 4
	mul $t9, $t9, $s2
	add $s2, $s1, $t9
	li $t9, 35802
	sw $t9, 0($s2)
	li $s1, 0
	addi $s3, $fp, -168
	li $s4, 6
	li $s5, 9
	mul $s1, $s1, $s5
	add $s1, $s1, $s4
	li $s4, 4
	mul $s1, $s1, $s4
	add $s4, $s3, $s1
	li $s1, 62178
	sw $s1, 0($s4)
	li $s3, 0
	addi $s5, $fp, -168
	li $s6, 7
	li $s7, 9
	mul $s3, $s3, $s7
	add $s3, $s3, $s6
	li $s6, 4
	mul $s3, $s3, $s6
	add $s6, $s5, $s3
	li $s3, 14161
	sw $s3, 0($s6)
	li $s5, 0
	addi $s7, $fp, -168
	sw $s6, -668($fp)
	li $s6, 8
	sw $s4, -672($fp)
	li $s4, 9
	mul $s5, $s5, $s4
	add $s4, $s5, $s6
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 25716
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -264
	sw $s5, -676($fp)
	li $s5, 0
	sw $s4, -680($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 42326
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -264
	sw $s5, -684($fp)
	li $s5, 1
	sw $s4, -688($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 29093
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -264
	sw $s5, -692($fp)
	li $s5, 2
	sw $s4, -696($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 10349
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -264
	sw $s5, -700($fp)
	li $s5, 3
	sw $s4, -704($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 30206
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -264
	sw $s5, -708($fp)
	li $s5, 4
	sw $s4, -712($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 34200
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -264
	sw $s5, -716($fp)
	li $s5, 5
	sw $s4, -720($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 51858
	sw $s4, 0($s5)
	li $s6, 5374
	move $s7, $s6
	li $s6, 22495
	sw $s7, -284($fp)
	move $s7, $s6
	li $s6, 42463
	sw $s7, -288($fp)
	move $s7, $s6
	li $s6, 56548
	sw $s7, -292($fp)
	move $s7, $s6
	li $s6, 57358
	sw $s5, -724($fp)
	move $s5, $s6
	li $s6, 10740
	sw $s5, -300($fp)
	move $s5, $s6
	li $s6, 0
	sw $s5, -304($fp)
	addi $s5, $fp, -280
	sw $s4, -728($fp)
	li $s4, 0
	sw $s3, -732($fp)
	li $s3, 1
	mul $s6, $s6, $s3
	add $s3, $s6, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s5, $s3
	li $s3, 42877
	sw $s3, 0($s4)
	li $s5, 45577
	move $s6, $s5
	li $s5, 9318
	sw $s6, -308($fp)
	move $s6, $s5
	li $s5, 54451
	sw $s6, -312($fp)
	move $s6, $s5
	li $s5, 0
	sw $s6, -316($fp)
	addi $s6, $fp, -428
	sw $s4, -736($fp)
	li $s4, 0
	sw $s3, -740($fp)
	li $s3, 7
	mul $s5, $s5, $s3
	add $s3, $s5, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s6, $s3
	li $s3, 30285
	sw $s3, 0($s4)
	li $s5, 0
	addi $s6, $fp, -428
	sw $s4, -744($fp)
	li $s4, 1
	sw $s3, -748($fp)
	li $s3, 7
	mul $s5, $s5, $s3
	add $s3, $s5, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s6, $s3
	li $s3, 33433
	sw $s3, 0($s4)
	li $s5, 0
	addi $s6, $fp, -428
	sw $s4, -752($fp)
	li $s4, 2
	sw $s3, -756($fp)
	li $s3, 7
	mul $s5, $s5, $s3
	add $s3, $s5, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s6, $s3
	li $s3, 61280
	sw $s3, 0($s4)
	li $s5, 0
	addi $s6, $fp, -428
	sw $s4, -760($fp)
	li $s4, 3
	sw $s3, -764($fp)
	li $s3, 7
	mul $s5, $s5, $s3
	add $s3, $s5, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s6, $s3
	li $s3, 8931
	sw $s3, 0($s4)
	li $s5, 0
	addi $s6, $fp, -428
	sw $s4, -768($fp)
	li $s4, 4
	sw $s3, -772($fp)
	li $s3, 7
	mul $s5, $s5, $s3
	add $s3, $s5, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s6, $s3
	li $s3, 9756
	sw $s3, 0($s4)
	li $s5, 0
	addi $s6, $fp, -428
	sw $s4, -776($fp)
	li $s4, 5
	sw $s3, -780($fp)
	li $s3, 7
	mul $s5, $s5, $s3
	add $s3, $s5, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s6, $s3
	li $s3, 4462
	sw $s3, 0($s4)
	li $s5, 0
	addi $s6, $fp, -428
	sw $s4, -784($fp)
	li $s4, 6
	sw $s3, -788($fp)
	li $s3, 7
	mul $s5, $s5, $s3
	add $s3, $s5, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s6, $s3
	li $s3, 36667
	sw $s3, 0($s4)
	li $s5, 0
	sw $s6, -316($fp)
	lw $s6, -24($fp)
	move $s6, $s6
	sw $s6, -24($fp)
	li $s6, 0
	sw $s6, -436($fp)
	li $s6, 0
	sw $s5, -432($fp)
	sw $s7, -296($fp)
	bne $s7, $s6, label948

	j label949

label948:
	li $t0, 1
	sw $t0, -436($fp)

label949:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -436($fp)
	move $a1, $t0
	lw $t1, -316($fp)
	move $a0, $t1
	jal id_OOj3M
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -440($fp)

	li $t0, -1
	lw $t1, -440($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label947

	j label946

label946:
	li $t0, 1
	sw $t0, -432($fp)

label947:
	li $t0, 0
	li $t1, 0
	sw $t0, -444($fp)
	lw $t2, -292($fp)
	bne $t2, $t1, label951

	j label952

label952:
	li $t0, 42139
	li $t1, 0
	bne $t0, $t1, label950

	j label951

label950:
	li $t0, 1
	sw $t0, -444($fp)

label951:
	li $t0, 0
	addi $t1, $fp, -428
	li $t2, 7
	mul $t0, $t0, $t2
	lw $t2, -312($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	li $t0, 0
	li $t1, -1
	lw $t4, -12($fp)
	mul $t5, $t1, $t4
	sw $t0, -452($fp)
	sw $t3, -448($fp)
	lw $t1, -284($fp)
	beq $t5, $t1, label953

	j label954

label953:
	li $t0, 1
	sw $t0, -452($fp)

label954:
	li $t0, 47075
	lw $t1, -284($fp)
	sub $t2, $t0, $t1
	lw $t3, -448($fp)
	lw $t0, 0($t3)
	sw $t0, -460($fp)
	sw $t2, -456($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -456($fp)
	move $a3, $t0
	lw $t1, -452($fp)
	move $a2, $t1
	lw $t2, -460($fp)
	move $a1, $t2
	lw $t3, -444($fp)
	move $a0, $t3
	jal id_bdOi7NUm
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -464($fp)

	lw $t0, -464($fp)
	lw $t1, -432($fp)
	sub $t2, $t1, $t0
	li $t3, 0
	addi $t4, $fp, -264
	li $t5, 0
	li $t6, 0
	li $t7, 4916
	lw $t8, -24($fp)
	mul $t9, $t7, $t8
	sw $t3, -468($fp)
	sw $t4, -472($fp)
	sw $t5, -476($fp)
	sw $t6, -480($fp)
	lw $t7, -20($fp)
	blt $t9, $t7, label957

	j label958

label957:
	li $t0, 1
	sw $t0, -480($fp)

label958:
	li $t0, 0
	addi $t1, $fp, -428
	li $t2, 7
	mul $t0, $t0, $t2
	lw $t2, -24($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	lw $t1, -480($fp)
	bgt $t1, $t0, label955

	j label956

label955:
	li $t0, 1
	sw $t0, -476($fp)

label956:
	li $t0, 6
	lw $t1, -468($fp)
	mul $t1, $t1, $t0
	lw $t0, -476($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -472($fp)
	add $t3, $t2, $t1
	li $t4, 0
	li $t5, 0
	li $t6, 0
	sw $t1, -468($fp)
	sw $t4, -484($fp)
	sw $t5, -488($fp)
	lw $t7, -16($fp)
	bne $t7, $t6, label962

	j label961

label961:
	li $t0, 1
	sw $t0, -488($fp)

label962:
	li $t0, 14460
	lw $t1, -488($fp)
	mul $t2, $t1, $t0
	li $t0, 17341
	div $t2, $t0
	mflo $t3
	li $t0, -1
	mul $t2, $t0, $t3
	lw $t0, -288($fp)
	bne $t2, $t0, label959

	j label960

label959:
	li $t0, 1
	sw $t0, -484($fp)

label960:
	li $t0, 0
	li $t1, -1
	lw $t2, -24($fp)
	mul $t3, $t1, $t2
	li $t1, 1558
	li $t4, 0
	li $t5, 0
	addi $t6, $fp, -168
	li $t7, 9
	mul $t5, $t5, $t7
	lw $t7, -316($fp)
	add $t5, $t5, $t7
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t6, $t5
	li $t5, 0
	li $t6, 0
	sw $t0, -492($fp)
	sw $t1, -500($fp)
	sw $t3, -496($fp)
	sw $t4, -504($fp)
	sw $t5, -512($fp)
	sw $t8, -508($fp)
	lw $t9, -20($fp)
	bne $t9, $t6, label972

	j label970

label972:
	li $t0, 0
	lw $t1, -284($fp)
	bne $t1, $t0, label970

	j label971

label970:
	li $t0, 1
	sw $t0, -512($fp)

label971:
	li $t0, 28621
	move $t1, $t0
	li $t0, 43058
	li $t2, -1
	mul $t3, $t2, $t0
	li $t0, -1
	mul $t2, $t0, $t3
	sw $t1, -308($fp)
	sw $t2, -516($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -516($fp)
	move $a3, $t0
	lw $t1, -308($fp)
	move $a2, $t1
	lw $t2, -512($fp)
	move $a1, $t2
	lw $t3, -292($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -520($fp)

	li $t0, 43885
	lw $t1, -520($fp)
	mul $t2, $t1, $t0
	li $t0, 57714
	lw $t3, -12($fp)
	mul $t4, $t0, $t3
	lw $t0, -296($fp)
	mul $t5, $t4, $t0
	li $t4, 0
	li $t6, 0
	sw $t2, -524($fp)
	sw $t4, -532($fp)
	sw $t5, -528($fp)
	lw $t7, -292($fp)
	bne $t7, $t6, label976

	j label974

label976:
	li $t0, 0
	lw $t1, -316($fp)
	bne $t1, $t0, label975

	j label974

label975:
	li $t0, 0
	lw $t1, -300($fp)
	bne $t1, $t0, label973

	j label974

label973:
	li $t0, 1
	sw $t0, -532($fp)

label974:
	li $t0, 0
	addi $t1, $fp, -168
	li $t2, 9
	mul $t0, $t0, $t2
	lw $t2, -288($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, -284($fp)
	lw $t1, -16($fp)
	mul $t4, $t1, $t0
	li $t5, 53407
	mul $t6, $t4, $t5
	lw $t4, 0($t3)
	sw $t4, -540($fp)
	sw $t6, -536($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -536($fp)
	move $a3, $t0
	lw $t1, -540($fp)
	move $a2, $t1
	lw $t2, -532($fp)
	move $a1, $t2
	lw $t3, -528($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -544($fp)

	lw $t0, -292($fp)
	div $t0, $t0
	mflo $t1
	lw $t2, -316($fp)
	sub $t3, $t1, $t2
	lw $t4, -508($fp)
	lw $t1, 0($t4)
	sw $t1, -552($fp)
	sw $t3, -548($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -548($fp)
	move $a3, $t0
	lw $t1, -544($fp)
	move $a2, $t1
	lw $t2, -524($fp)
	move $a1, $t2
	lw $t3, -552($fp)
	move $a0, $t3
	jal id_xLI0wWOl
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -556($fp)

	lw $t0, -16($fp)
	lw $t1, -556($fp)
	bgt $t1, $t0, label968

	j label969

label968:
	li $t0, 1
	sw $t0, -504($fp)

label969:
	li $t0, 0
	li $t1, 8555
	sw $t0, -560($fp)
	lw $t2, -316($fp)
	bge $t1, $t2, label979

	j label978

label979:
	li $t0, 0
	lw $t1, -12($fp)
	bne $t1, $t0, label977

	j label978

label977:
	li $t0, 1
	sw $t0, -560($fp)

label978:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -560($fp)
	move $a3, $t0
	lw $t1, -504($fp)
	move $a2, $t1
	lw $t2, -500($fp)
	move $a1, $t2
	lw $t3, -496($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -564($fp)

	lw $t0, -24($fp)
	lw $t1, -564($fp)
	div $t1, $t0
	mflo $t2
	lw $t3, -316($fp)
	sub $t4, $t2, $t3
	li $t2, 0
	li $t5, 0
	sw $t2, -572($fp)
	sw $t4, -568($fp)
	lw $t6, -304($fp)
	bne $t6, $t5, label980

	j label981

label980:
	li $t0, 1
	sw $t0, -572($fp)

label981:
	lw $t0, -572($fp)
	lw $t1, -568($fp)
	blt $t1, $t0, label966

	j label967

label966:
	li $t0, 1
	sw $t0, -492($fp)

label967:
	li $t0, 26379
	lw $t1, -492($fp)
	ble $t1, $t0, label963

	j label964

label963:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -280
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t0, -576($fp)
	lw $t2, -300($fp)
	beq $t2, $t1, label982

	j label983

label982:
	li $t0, 1
	sw $t0, -576($fp)

label983:
	lw $t0, -576($fp)
	move $v0, $t0
	lw $ra, 660($sp)
	lw $fp, 656($sp)
	addi $sp, $sp, 664
	jr $ra

	j label965

label964:
	li $t0, 0
	li $t1, 0
	li $t2, 16656
	li $t3, 0
	sw $t0, -580($fp)
	sw $t1, -584($fp)
	bne $t2, $t3, label988

	j label987

label987:
	li $t0, 1
	sw $t0, -584($fp)

label988:
	li $t0, 0
	li $t1, 0
	sw $t0, -588($fp)
	lw $t2, -316($fp)
	bne $t2, $t1, label990

	j label989

label989:
	li $t0, 1
	sw $t0, -588($fp)

label990:
	lw $t0, -588($fp)
	lw $t1, -584($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	addi $t4, $fp, -264
	li $t5, 6
	mul $t3, $t3, $t5
	lw $t5, -300($fp)
	add $t3, $t3, $t5
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t4, $t3
	lw $t3, 0($t6)
	mul $t4, $t2, $t3
	li $t2, -1
	mul $t3, $t2, $t4
	li $t2, 0
	bne $t3, $t2, label986

	j label985

label986:
	li $t0, 4941
	li $t1, 40696
	mul $t2, $t0, $t1
	lw $t0, -312($fp)
	sub $t1, $t0, $t2
	li $t2, 0
	bne $t1, $t2, label984

	j label985

label984:
	li $t0, 1
	sw $t0, -580($fp)

label985:

label965:
	li $t0, 0
	addi $t1, $fp, -168
	li $t2, 0
	li $t3, 9
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	sw $t0, -592($fp)

	li $v0, 1
	lw $t0, -592($fp)
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
	sw $t1, -596($fp)

	li $v0, 1
	lw $t0, -596($fp)
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
	sw $t1, -600($fp)

	li $v0, 1
	lw $t0, -600($fp)
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
	sw $t1, -604($fp)

	li $v0, 1
	lw $t0, -604($fp)
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
	sw $t1, -608($fp)

	li $v0, 1
	lw $t0, -608($fp)
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
	sw $t1, -612($fp)

	li $v0, 1
	lw $t0, -612($fp)
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
	sw $t1, -616($fp)

	li $v0, 1
	lw $t0, -616($fp)
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
	sw $t1, -620($fp)

	li $v0, 1
	lw $t0, -620($fp)
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
	sw $t1, -624($fp)

	li $v0, 1
	lw $t0, -624($fp)
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
	sw $t1, -628($fp)

	li $v0, 1
	lw $t0, -628($fp)
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
	sw $t1, -632($fp)

	li $v0, 1
	lw $t0, -632($fp)
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
	sw $t1, -636($fp)

	li $v0, 1
	lw $t0, -636($fp)
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
	sw $t1, -640($fp)

	li $v0, 1
	lw $t0, -640($fp)
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
	sw $t1, -644($fp)

	li $v0, 1
	lw $t0, -644($fp)
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
	sw $t1, -648($fp)

	li $v0, 1
	lw $t0, -648($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -284($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -288($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -292($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -296($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -300($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -304($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -280
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -652($fp)

	li $v0, 1
	lw $t0, -652($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -308($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -312($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -316($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 27397
	lw $t3, -300($fp)
	div $t2, $t3
	mflo $t4
	li $t2, 0
	li $t5, 0
	sw $t1, -656($fp)
	sw $t2, -664($fp)
	sw $t4, -660($fp)
	lw $t6, -292($fp)
	bne $t6, $t5, label994

	j label993

label993:
	li $t0, 1
	sw $t0, -664($fp)

label994:
	li $t0, -1
	lw $t1, -664($fp)
	mul $t2, $t0, $t1
	li $t0, 47818
	lw $t3, -308($fp)
	mul $t4, $t3, $t0
	add $t0, $t2, $t4
	lw $t2, -660($fp)
	bne $t2, $t0, label991

	j label992

label991:
	li $t0, 1
	sw $t0, -656($fp)

label992:
	lw $t0, -656($fp)
	move $v0, $t0
	lw $ra, 660($sp)
	lw $fp, 656($sp)
	addi $sp, $sp, 664
	jr $ra

id_m7A8DHG:
	addi $sp, $sp, -348
	sw $ra, 344($sp)
	sw $fp, 340($sp)
	addi $fp, $sp, 348
	sw $a0, -12($fp)
	sw $a1, -16($fp)

	li $t0, 0
	addi $t1, $fp, -160
	li $t2, 0
	li $t3, 9
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 20738
	sw $t0, 0($t2)
	li $t1, 0
	addi $t3, $fp, -160
	li $t4, 1
	li $t5, 9
	mul $t1, $t1, $t5
	add $t1, $t1, $t4
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t3, $t1
	li $t1, 36715
	sw $t1, 0($t4)
	li $t3, 0
	addi $t5, $fp, -160
	li $t6, 2
	li $t7, 9
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 36733
	sw $t3, 0($t6)
	li $t5, 0
	addi $t7, $fp, -160
	li $t8, 3
	li $t9, 9
	mul $t5, $t5, $t9
	add $t5, $t5, $t8
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t7, $t5
	li $t5, 51023
	sw $t5, 0($t8)
	li $t7, 0
	addi $t9, $fp, -160
	li $s0, 4
	li $s1, 9
	mul $t7, $t7, $s1
	add $t7, $t7, $s0
	li $s0, 4
	mul $t7, $t7, $s0
	add $s0, $t9, $t7
	li $t7, 4613
	sw $t7, 0($s0)
	li $t9, 0
	addi $s1, $fp, -160
	li $s2, 5
	li $s3, 9
	mul $t9, $t9, $s3
	add $t9, $t9, $s2
	li $s2, 4
	mul $t9, $t9, $s2
	add $s2, $s1, $t9
	li $t9, 32478
	sw $t9, 0($s2)
	li $s1, 0
	addi $s3, $fp, -160
	li $s4, 6
	li $s5, 9
	mul $s1, $s1, $s5
	add $s1, $s1, $s4
	li $s4, 4
	mul $s1, $s1, $s4
	add $s4, $s3, $s1
	li $s1, 59955
	sw $s1, 0($s4)
	li $s3, 0
	addi $s5, $fp, -160
	li $s6, 7
	li $s7, 9
	mul $s3, $s3, $s7
	add $s3, $s3, $s6
	li $s6, 4
	mul $s3, $s3, $s6
	add $s6, $s5, $s3
	li $s3, 14369
	sw $s3, 0($s6)
	li $s5, 0
	addi $s7, $fp, -160
	sw $s6, -352($fp)
	li $s6, 8
	sw $s4, -356($fp)
	li $s4, 9
	mul $s5, $s5, $s4
	add $s4, $s5, $s6
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 36940
	sw $s4, 0($s5)
	li $s6, 31086
	move $s7, $s6
	li $s6, 56508
	sw $s7, -164($fp)
	move $s7, $s6
	li $s6, 18479
	sw $s7, -168($fp)
	move $s7, $s6
	li $s6, 36003
	sw $s7, -172($fp)
	move $s7, $s6
	li $s6, 5433
	sw $s5, -360($fp)
	move $s5, $s6
	li $s6, 35821
	sw $s5, -180($fp)
	move $s5, $s6
	li $s6, 37561
	sw $s5, -184($fp)
	move $s5, $s6
	li $s6, 0
	sw $s6, -192($fp)
	li $s6, 34054
	div $s7, $s6
	sw $s5, -188($fp)
	mflo $s5
	li $s6, 0
	sw $s7, -176($fp)
	bne $s5, $s6, label997

	j label999

label999:
	li $t0, 0
	lw $t1, -16($fp)
	bne $t1, $t0, label997

	j label998

label997:
	li $t0, 1
	sw $t0, -192($fp)

label998:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -180($fp)
	move $a1, $t0
	lw $t1, -192($fp)
	move $a0, $t1
	jal id_OOj3M
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -196($fp)

	li $t0, 0
	li $t1, 0
	li $t2, 13343
	li $t3, 0
	sw $t0, -200($fp)
	sw $t1, -204($fp)
	bne $t2, $t3, label1003

	j label1002

label1002:
	li $t0, 1
	sw $t0, -204($fp)

label1003:
	li $t0, -1
	lw $t1, -204($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label1001

	j label1000

label1000:
	li $t0, 1
	sw $t0, -200($fp)

label1001:
	lw $t0, -200($fp)
	lw $t1, -196($fp)
	sub $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label995

	j label996

label995:
	li $t0, 0
	addi $t1, $fp, -160
	li $t2, 0
	li $t3, 15910
	lw $t4, -12($fp)
	mul $t5, $t4, $t3
	li $t3, 0
	sw $t0, -208($fp)
	sw $t1, -212($fp)
	sw $t2, -216($fp)
	bne $t5, $t3, label1006

	j label1005

label1006:
	li $t0, 26233
	move $t1, $t0
	li $t0, 1214
	lw $t3, -176($fp)
	move $t2, $t3
	lw $t5, -180($fp)
	move $t4, $t5
	sw $t0, -220($fp)
	sw $t1, -168($fp)
	sw $t2, -164($fp)
	sw $t4, -188($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -188($fp)
	move $a3, $t0
	lw $t1, -164($fp)
	move $a2, $t1
	lw $t2, -220($fp)
	move $a1, $t2
	lw $t3, -168($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -224($fp)

	li $t0, 0
	lw $t1, -224($fp)
	bne $t1, $t0, label1004

	j label1005

label1004:
	li $t0, 1
	sw $t0, -216($fp)

label1005:
	li $t0, 9
	lw $t1, -208($fp)
	mul $t1, $t1, $t0
	lw $t0, -216($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -212($fp)
	add $t3, $t2, $t1
	sw $t1, -208($fp)

label996:
	li $t0, 0
	li $t1, 24466
	li $t2, 0
	sw $t0, -228($fp)
	bne $t1, $t2, label1008

	j label1007

label1007:
	li $t0, 1
	sw $t0, -228($fp)

label1008:
	li $t0, 0
	li $t1, 0
	sw $t0, -232($fp)
	lw $t2, -168($fp)
	bne $t2, $t1, label1010

	j label1009

label1009:
	li $t0, 1
	sw $t0, -232($fp)

label1010:
	li $t0, 0
	li $t1, 52612
	lw $t2, -176($fp)
	div $t2, $t1
	mflo $t3
	sw $t0, -236($fp)
	bne $t3, $t2, label1011

	j label1012

label1011:
	li $t0, 1
	sw $t0, -236($fp)

label1012:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -236($fp)
	move $a2, $t0
	lw $t1, -232($fp)
	move $a1, $t1
	lw $t2, -228($fp)
	move $a0, $t2
	jal id_r
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -240($fp)

	lw $t1, -240($fp)
	move $t0, $t1
	li $t2, 0
	li $t3, 0
	addi $t4, $fp, -160
	li $t5, 0
	li $t6, 40943
	li $t7, 0
	sw $t0, -188($fp)
	sw $t2, -244($fp)
	sw $t3, -248($fp)
	sw $t4, -252($fp)
	sw $t5, -256($fp)
	bne $t6, $t7, label1015

	j label1017

label1017:
	li $t0, 0
	lw $t1, -176($fp)
	bne $t1, $t0, label1015

	j label1016

label1015:
	li $t0, 1
	sw $t0, -256($fp)

label1016:
	li $t0, 9
	lw $t1, -248($fp)
	mul $t1, $t1, $t0
	lw $t0, -256($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -252($fp)
	add $t3, $t2, $t1
	li $t4, 38395
	li $t5, -1
	mul $t6, $t5, $t4
	lw $t4, 0($t3)
	mul $t3, $t4, $t6
	li $t4, 0
	addi $t5, $fp, -160
	li $t6, 0
	li $t7, 35950
	li $t8, 0
	sw $t1, -248($fp)
	sw $t3, -260($fp)
	sw $t4, -264($fp)
	sw $t5, -268($fp)
	sw $t6, -272($fp)
	bne $t7, $t8, label1019

	j label1018

label1018:
	li $t0, 1
	sw $t0, -272($fp)

label1019:
	li $t0, 9
	lw $t1, -264($fp)
	mul $t1, $t1, $t0
	lw $t0, -272($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -268($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	sw $t1, -264($fp)
	lw $t3, -260($fp)
	blt $t3, $t4, label1013

	j label1014

label1013:
	li $t0, 1
	sw $t0, -244($fp)

label1014:
	li $t0, 0
	addi $t1, $fp, -160
	li $t2, 0
	li $t3, 9
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	sw $t0, -276($fp)

	li $v0, 1
	lw $t0, -276($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -160
	li $t3, 1
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -280($fp)

	li $v0, 1
	lw $t0, -280($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -160
	li $t3, 2
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -284($fp)

	li $v0, 1
	lw $t0, -284($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -160
	li $t3, 3
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -288($fp)

	li $v0, 1
	lw $t0, -288($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -160
	li $t3, 4
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -292($fp)

	li $v0, 1
	lw $t0, -292($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -160
	li $t3, 5
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -296($fp)

	li $v0, 1
	lw $t0, -296($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -160
	li $t3, 6
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -300($fp)

	li $v0, 1
	lw $t0, -300($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -160
	li $t3, 7
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -304($fp)

	li $v0, 1
	lw $t0, -304($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -160
	li $t3, 8
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -308($fp)

	li $v0, 1
	lw $t0, -308($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -164($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -168($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -172($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -176($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -180($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -184($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -188($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 57600
	lw $t4, -180($fp)
	mul $t5, $t3, $t4
	sw $t1, -312($fp)
	sw $t2, -316($fp)
	lw $t3, -184($fp)
	blt $t5, $t3, label1022

	j label1023

label1022:
	li $t0, 1
	sw $t0, -316($fp)

label1023:
	li $t0, 0
	li $t1, 0
	li $t2, 43337
	sw $t0, -320($fp)
	sw $t1, -324($fp)
	lw $t3, -176($fp)
	bgt $t3, $t2, label1026

	j label1027

label1026:
	li $t0, 1
	sw $t0, -324($fp)

label1027:
	li $t0, 11111
	lw $t1, -324($fp)
	bgt $t1, $t0, label1024

	j label1025

label1024:
	li $t0, 1
	sw $t0, -320($fp)

label1025:
	lw $t1, -172($fp)
	move $t0, $t1
	lw $t2, -188($fp)
	lw $t3, -12($fp)
	add $t4, $t3, $t2
	sw $t0, -168($fp)
	sw $t4, -328($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -328($fp)
	move $a3, $t0
	lw $t1, -168($fp)
	move $a2, $t1
	lw $t2, -320($fp)
	move $a1, $t2
	lw $t3, -316($fp)
	move $a0, $t3
	jal id_Q
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -332($fp)

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -160
	li $t3, 6
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	li $t2, 0
	sw $t0, -336($fp)
	bne $t1, $t2, label1029

	j label1028

label1028:
	li $t0, 1
	sw $t0, -336($fp)

label1029:
	li $t0, 0
	lw $t1, -180($fp)
	mul $t2, $t1, $t1
	sw $t0, -340($fp)
	lw $t3, -188($fp)
	blt $t2, $t3, label1030

	j label1031

label1030:
	li $t0, 1
	sw $t0, -340($fp)

label1031:
	li $t0, 0
	li $t1, 31849
	li $t2, 0
	sw $t0, -344($fp)
	bne $t1, $t2, label1032

	j label1034

label1034:
	li $t0, 56176
	li $t1, 0
	bne $t0, $t1, label1032

	j label1033

label1032:
	li $t0, 1
	sw $t0, -344($fp)

label1033:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -344($fp)
	move $a3, $t0
	lw $t1, -340($fp)
	move $a2, $t1
	lw $t2, -336($fp)
	move $a1, $t2
	lw $t3, -188($fp)
	move $a0, $t3
	jal id_ie1avFPK5
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -348($fp)

	lw $t0, -348($fp)
	lw $t1, -332($fp)
	bne $t1, $t0, label1020

	j label1021

label1020:
	li $t0, 1
	sw $t0, -312($fp)

label1021:
	lw $t0, -312($fp)
	move $v0, $t0
	lw $ra, 344($sp)
	lw $fp, 340($sp)
	addi $sp, $sp, 348
	jr $ra

id_R6YITOT:
	addi $sp, $sp, -268
	sw $ra, 264($sp)
	sw $fp, 260($sp)
	addi $fp, $sp, 268
	sw $a0, -12($fp)
	sw $a1, -16($fp)
	sw $a2, -20($fp)
	sw $a3, -24($fp)
	lw $a0, 0($fp)
	sw $a0, -28($fp)

	li $t0, 0
	addi $t1, $fp, -60
	li $t2, 0
	li $t3, 2
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 62353
	sw $t0, 0($t2)
	li $t1, 0
	addi $t3, $fp, -60
	li $t4, 1
	li $t5, 2
	mul $t1, $t1, $t5
	add $t1, $t1, $t4
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t3, $t1
	li $t1, 17336
	sw $t1, 0($t4)
	li $t3, 0
	addi $t5, $fp, -124
	li $t6, 0
	li $t7, 4
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 60789
	sw $t3, 0($t6)
	li $t5, 0
	addi $t7, $fp, -124
	li $t8, 1
	li $t9, 4
	mul $t5, $t5, $t9
	add $t5, $t5, $t8
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t7, $t5
	li $t5, 29295
	sw $t5, 0($t8)
	li $t7, 0
	addi $t9, $fp, -124
	li $s0, 2
	li $s1, 4
	mul $t7, $t7, $s1
	add $t7, $t7, $s0
	li $s0, 4
	mul $t7, $t7, $s0
	add $s0, $t9, $t7
	li $t7, 11755
	sw $t7, 0($s0)
	li $t9, 0
	addi $s1, $fp, -124
	li $s2, 3
	li $s3, 4
	mul $t9, $t9, $s3
	add $t9, $t9, $s2
	li $s2, 4
	mul $t9, $t9, $s2
	add $s2, $s1, $t9
	li $t9, 9622
	sw $t9, 0($s2)
	li $s1, 699
	move $s3, $s1
	li $s1, 42842
	move $s4, $s1
	li $s1, 595
	move $s5, $s1
	li $s1, 0
	li $s6, 0
	li $s7, 0
	sw $s7, -148($fp)
	li $s7, 0
	sw $s7, -152($fp)
	li $s7, 19178
	sw $s6, -144($fp)
	li $s6, 0
	sw $s1, -140($fp)
	sw $s3, -128($fp)
	sw $s4, -132($fp)
	sw $s5, -136($fp)
	bne $s7, $s6, label1043

	j label1042

label1042:
	li $t0, 1
	sw $t0, -152($fp)

label1043:
	li $t0, -1
	lw $t1, -152($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	li $t3, 13309
	li $t4, 0
	sw $t0, -160($fp)
	sw $t2, -156($fp)
	bne $t3, $t4, label1045

	j label1044

label1044:
	li $t0, 1
	sw $t0, -160($fp)

label1045:
	lw $t0, -20($fp)
	lw $t1, -160($fp)
	sub $t2, $t1, $t0
	sw $t2, -164($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -164($fp)
	move $a1, $t0
	lw $t1, -156($fp)
	move $a0, $t1
	jal id_m7A8DHG
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -168($fp)

	li $t0, 6028
	lw $t1, -168($fp)
	mul $t2, $t1, $t0
	li $t0, 54999
	sub $t3, $t2, $t0
	li $t0, 50870
	beq $t3, $t0, label1040

	j label1041

label1040:
	li $t0, 1
	sw $t0, -148($fp)

label1041:
	li $t0, 40082
	lw $t1, -148($fp)
	bgt $t1, $t0, label1038

	j label1039

label1038:
	li $t0, 1
	sw $t0, -144($fp)

label1039:
	lw $t0, -136($fp)
	lw $t1, -144($fp)
	blt $t1, $t0, label1035

	j label1037

label1037:
	li $t0, 2806
	move $t1, $t0
	li $t0, 0
	addi $t2, $fp, -124
	li $t3, 4
	mul $t0, $t0, $t3
	lw $t3, -28($fp)
	add $t0, $t0, $t3
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t2, $t0
	lw $t0, -12($fp)
	mul $t2, $t0, $t0
	lw $t5, -136($fp)
	add $t6, $t2, $t5
	li $t2, 0
	li $t7, 0
	addi $t8, $fp, -124
	li $t9, 3
	li $s0, 4
	mul $t7, $t7, $s0
	add $t7, $t7, $t9
	li $t9, 4
	mul $t7, $t7, $t9
	add $t9, $t8, $t7
	lw $t7, 0($t9)
	sw $t1, -16($fp)
	sw $t2, -180($fp)
	sw $t4, -172($fp)
	sw $t6, -176($fp)
	bge $t7, $t5, label1046

	j label1047

label1046:
	li $t0, 1
	sw $t0, -180($fp)

label1047:
	lw $t1, -172($fp)
	lw $t0, 0($t1)
	sw $t0, -184($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -180($fp)
	sw $t0, 0($sp)
	lw $t1, -176($fp)
	move $a3, $t1
	lw $t2, -184($fp)
	move $a2, $t2
	lw $t3, -16($fp)
	move $a1, $t3
	lw $t4, -136($fp)
	move $a0, $t4
	jal id_R6YITOT
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -188($fp)

	li $t0, 0
	lw $t1, -188($fp)
	bne $t1, $t0, label1035

	j label1036

label1035:
	li $t0, 1
	sw $t0, -140($fp)

label1036:

label1048:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -60
	li $t3, 2
	mul $t1, $t1, $t3
	lw $t3, -12($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	lw $t1, 0($t4)
	li $t2, 0
	sw $t0, -192($fp)
	bne $t1, $t2, label1054

	j label1053

label1054:
	li $t0, 0
	lw $t1, -28($fp)
	bne $t1, $t0, label1052

	j label1053

label1052:
	li $t0, 1
	sw $t0, -192($fp)

label1053:
	lw $t1, -132($fp)
	move $t0, $t1
	li $t2, 0
	li $t3, 4020
	li $t4, 0
	sw $t0, -136($fp)
	sw $t2, -196($fp)
	bne $t3, $t4, label1058

	j label1056

label1058:
	li $t0, 0
	lw $t1, -132($fp)
	bne $t1, $t0, label1057

	j label1056

label1057:
	li $t0, 0
	lw $t1, -12($fp)
	bne $t1, $t0, label1055

	j label1056

label1055:
	li $t0, 1
	sw $t0, -196($fp)

label1056:
	li $t0, 0
	li $t1, 25711
	li $t2, 53391
	div $t1, $t2
	mflo $t3
	li $t1, 44964
	sw $t0, -200($fp)
	ble $t3, $t1, label1059

	j label1060

label1059:
	li $t0, 1
	sw $t0, -200($fp)

label1060:
	li $t0, 0
	li $t1, 0
	sw $t0, -204($fp)
	lw $t2, -128($fp)
	bne $t2, $t1, label1061

	j label1064

label1064:
	li $t0, 64106
	li $t1, 0
	bne $t0, $t1, label1061

	j label1063

label1063:
	li $t0, 23806
	li $t1, 0
	bne $t0, $t1, label1061

	j label1062

label1061:
	li $t0, 1
	sw $t0, -204($fp)

label1062:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -204($fp)
	sw $t0, 0($sp)
	lw $t1, -200($fp)
	move $a3, $t1
	lw $t2, -196($fp)
	move $a2, $t2
	lw $t3, -136($fp)
	move $a1, $t3
	lw $t4, -192($fp)
	move $a0, $t4
	jal id_R6YITOT
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -208($fp)

	li $t0, -1
	lw $t1, -208($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label1051

	j label1050

label1051:
	li $t0, 0
	lw $t1, -24($fp)
	bne $t1, $t0, label1049

	j label1050

label1049:
	li $t0, 0
	addi $t1, $fp, -60
	li $t2, 0
	li $t3, -1
	lw $t4, -136($fp)
	mul $t5, $t3, $t4
	li $t3, 0
	sw $t0, -212($fp)
	sw $t1, -216($fp)
	sw $t2, -220($fp)
	bne $t5, $t3, label1066

	j label1065

label1065:
	li $t0, 1
	sw $t0, -220($fp)

label1066:
	li $t0, 2
	lw $t1, -212($fp)
	mul $t1, $t1, $t0
	lw $t0, -220($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -216($fp)
	add $t3, $t2, $t1
	sw $t1, -212($fp)
	j label1048

label1050:
	li $t0, 0
	addi $t1, $fp, -60
	li $t2, 0
	li $t3, 2
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	sw $t0, -224($fp)

	li $v0, 1
	lw $t0, -224($fp)
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
	li $t4, 2
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -228($fp)

	li $v0, 1
	lw $t0, -228($fp)
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
	sw $t1, -232($fp)

	li $v0, 1
	lw $t0, -232($fp)
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
	sw $t1, -236($fp)

	li $v0, 1
	lw $t0, -236($fp)
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
	sw $t1, -240($fp)

	li $v0, 1
	lw $t0, -240($fp)
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
	sw $t1, -244($fp)

	li $v0, 1
	lw $t0, -244($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -128($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -132($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -136($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 37028
	li $t4, 41907
	div $t3, $t4
	mflo $t5
	sw $t1, -248($fp)
	sw $t2, -252($fp)
	lw $t3, -136($fp)
	beq $t5, $t3, label1070

	j label1071

label1070:
	li $t0, 1
	sw $t0, -252($fp)

label1071:
	lw $t0, -12($fp)
	lw $t1, -16($fp)
	mul $t2, $t1, $t0
	lw $t3, -24($fp)
	div $t2, $t3
	mflo $t4
	li $t2, 0
	li $t5, 0
	li $t6, 34917
	li $t7, 56489
	sw $t2, -260($fp)
	sw $t4, -256($fp)
	sw $t5, -264($fp)
	bge $t6, $t7, label1074

	j label1075

label1074:
	li $t0, 1
	sw $t0, -264($fp)

label1075:
	lw $t0, -136($fp)
	lw $t1, -264($fp)
	bgt $t1, $t0, label1072

	j label1073

label1072:
	li $t0, 1
	sw $t0, -260($fp)

label1073:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -136($fp)
	move $a3, $t0
	lw $t1, -260($fp)
	move $a2, $t1
	lw $t2, -256($fp)
	move $a1, $t2
	lw $t3, -252($fp)
	move $a0, $t3
	jal id_xLI0wWOl
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -268($fp)

	li $t0, 0
	lw $t1, -268($fp)
	bne $t1, $t0, label1069

	j label1068

label1069:
	li $t0, 0
	lw $t1, -132($fp)
	bne $t1, $t0, label1067

	j label1068

label1067:
	li $t0, 1
	sw $t0, -248($fp)

label1068:
	lw $t0, -248($fp)
	move $v0, $t0
	lw $ra, 264($sp)
	lw $fp, 260($sp)
	addi $sp, $sp, 268
	jr $ra

id_ertebiIg:
	addi $sp, $sp, -20
	sw $ra, 16($sp)
	sw $fp, 12($sp)
	addi $fp, $sp, 20

	li $t0, 1991
	move $t1, $t0
	li $t0, 1230
	li $t2, 0
	sw $t0, -16($fp)
	sw $t1, -12($fp)
	sw $t2, -20($fp)
	bne $t1, $t1, label1076

	j label1078

label1078:
	li $t0, 47129
	li $t1, 0
	bne $t0, $t1, label1076

	j label1077

label1076:
	li $t0, 1
	sw $t0, -20($fp)

label1077:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -20($fp)
	move $a1, $t0
	lw $t1, -16($fp)
	move $a0, $t1
	jal id_OOj3M
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4

	li $v0, 1
	lw $t0, -12($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 64344
	move $v0, $t1
	lw $ra, 16($sp)
	lw $fp, 12($sp)
	addi $sp, $sp, 20
	jr $ra

main:
	addi $sp, $sp, -12
	sw $ra, 8($sp)
	sw $fp, 4($sp)
	addi $fp, $sp, 12

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	jal id_ertebiIg
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

