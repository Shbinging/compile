.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.globl main
.text
id_IgHxVb3R:
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

id_zLm8h:
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

id_q5Y1I:
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

id__7e:
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

id_O3EWe:
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

id_Ns00:
	addi $sp, $sp, -296
	sw $ra, 292($sp)
	sw $fp, 288($sp)
	addi $fp, $sp, 296
	sw $a0, -12($fp)
	sw $a1, -16($fp)
	sw $a2, -20($fp)

	li $t0, 0
	addi $t1, $fp, -148
	li $t2, 0
	li $t3, 8
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 53741
	sw $t0, 0($t2)
	li $t1, 0
	addi $t3, $fp, -148
	li $t4, 1
	li $t5, 8
	mul $t1, $t1, $t5
	add $t1, $t1, $t4
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t3, $t1
	li $t1, 47487
	sw $t1, 0($t4)
	li $t3, 0
	addi $t5, $fp, -148
	li $t6, 2
	li $t7, 8
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 13853
	sw $t3, 0($t6)
	li $t5, 0
	addi $t7, $fp, -148
	li $t8, 3
	li $t9, 8
	mul $t5, $t5, $t9
	add $t5, $t5, $t8
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t7, $t5
	li $t5, 40094
	sw $t5, 0($t8)
	li $t7, 0
	addi $t9, $fp, -148
	li $s0, 4
	li $s1, 8
	mul $t7, $t7, $s1
	add $t7, $t7, $s0
	li $s0, 4
	mul $t7, $t7, $s0
	add $s0, $t9, $t7
	li $t7, 25136
	sw $t7, 0($s0)
	li $t9, 0
	addi $s1, $fp, -148
	li $s2, 5
	li $s3, 8
	mul $t9, $t9, $s3
	add $t9, $t9, $s2
	li $s2, 4
	mul $t9, $t9, $s2
	add $s2, $s1, $t9
	li $t9, 31084
	sw $t9, 0($s2)
	li $s1, 0
	addi $s3, $fp, -148
	li $s4, 6
	li $s5, 8
	mul $s1, $s1, $s5
	add $s1, $s1, $s4
	li $s4, 4
	mul $s1, $s1, $s4
	add $s4, $s3, $s1
	li $s1, 54162
	sw $s1, 0($s4)
	li $s3, 0
	addi $s5, $fp, -148
	li $s6, 7
	li $s7, 8
	mul $s3, $s3, $s7
	add $s3, $s3, $s6
	li $s6, 4
	mul $s3, $s3, $s6
	add $s6, $s5, $s3
	li $s3, 53998
	sw $s3, 0($s6)
	li $s5, 47063
	move $s7, $s5
	li $s5, 63670
	sw $s7, -152($fp)
	move $s7, $s5
	sw $s7, -156($fp)

label116:
	li $t0, 0
	addi $t1, $fp, -148
	li $t2, 4
	li $t3, 8
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 0
	addi $t1, $fp, -148
	li $t3, 0
	li $t4, 28242
	li $t5, 0
	sw $t0, -164($fp)
	sw $t1, -168($fp)
	sw $t2, -160($fp)
	sw $t3, -172($fp)
	bne $t4, $t5, label119

	j label121

label121:
	li $t0, 0
	lw $t1, -20($fp)
	bne $t1, $t0, label119

	j label120

label119:
	li $t0, 1
	sw $t0, -172($fp)

label120:
	li $t0, 8
	lw $t1, -164($fp)
	mul $t1, $t1, $t0
	lw $t0, -172($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -168($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	lw $t5, -160($fp)
	lw $t3, 0($t5)
	mul $t6, $t3, $t4
	li $t3, 0
	sw $t1, -164($fp)
	bne $t6, $t3, label117

	j label118

label117:
	li $t0, 0
	li $t1, 0
	li $t2, 52434
	li $t3, 0
	sw $t0, -176($fp)
	sw $t1, -180($fp)
	bne $t2, $t3, label124

	j label126

label126:
	li $t0, 0
	lw $t1, -20($fp)
	bne $t1, $t0, label124

	j label125

label124:
	li $t0, 1
	sw $t0, -180($fp)

label125:
	li $t0, 46859
	lw $t1, -16($fp)
	add $t2, $t1, $t0
	li $t0, 5996
	sub $t3, $t2, $t0
	li $t0, 22876
	lw $t2, -20($fp)
	mul $t4, $t2, $t0
	sw $t3, -184($fp)
	sw $t4, -188($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -188($fp)
	move $a2, $t0
	lw $t1, -184($fp)
	move $a1, $t1
	lw $t2, -180($fp)
	move $a0, $t2
	jal id_Ns00
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -192($fp)

	li $t0, 0
	lw $t1, -192($fp)
	bne $t1, $t0, label122

	j label123

label122:
	li $t0, 1
	sw $t0, -176($fp)

label123:
	lw $t0, -176($fp)
	move $v0, $t0
	lw $ra, 292($sp)
	lw $fp, 288($sp)
	addi $sp, $sp, 296
	jr $ra

	j label116

label118:
	li $t0, 0
	addi $t1, $fp, -148
	li $t2, 0
	li $t3, 8
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	sw $t0, -196($fp)

	li $v0, 1
	lw $t0, -196($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -148
	li $t3, 1
	li $t4, 8
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
	addi $t2, $fp, -148
	li $t3, 2
	li $t4, 8
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
	addi $t2, $fp, -148
	li $t3, 3
	li $t4, 8
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
	addi $t2, $fp, -148
	li $t3, 4
	li $t4, 8
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
	li $t1, 0
	addi $t2, $fp, -148
	li $t3, 5
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -216($fp)

	li $v0, 1
	lw $t0, -216($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -148
	li $t3, 6
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -220($fp)

	li $v0, 1
	lw $t0, -220($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -148
	li $t3, 7
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -224($fp)

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
	li $t1, 0
	li $t2, 0
	li $t3, 39834
	li $t4, 0
	sw $t1, -228($fp)
	sw $t2, -232($fp)
	bne $t3, $t4, label130

	j label129

label129:
	li $t0, 1
	sw $t0, -232($fp)

label130:
	li $t0, 0
	li $t1, 0
	li $t2, 38412
	sw $t0, -236($fp)
	sw $t1, -240($fp)
	lw $t3, -12($fp)
	bge $t2, $t3, label133

	j label134

label133:
	li $t0, 1
	sw $t0, -240($fp)

label134:
	li $t0, 21725
	lw $t1, -240($fp)
	bne $t1, $t0, label131

	j label132

label131:
	li $t0, 1
	sw $t0, -236($fp)

label132:
	li $t0, 0
	li $t1, 0
	li $t2, 60150
	li $t3, 53289
	sw $t0, -244($fp)
	sw $t1, -248($fp)
	ble $t2, $t3, label137

	j label138

label137:
	li $t0, 1
	sw $t0, -248($fp)

label138:
	lw $t0, -12($fp)
	lw $t1, -248($fp)
	blt $t1, $t0, label135

	j label136

label135:
	li $t0, 1
	sw $t0, -244($fp)

label136:
	li $t0, 0
	addi $t1, $fp, -148
	li $t2, 8
	mul $t0, $t0, $t2
	lw $t2, -12($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	sw $t0, -252($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -252($fp)
	move $a2, $t0
	lw $t1, -244($fp)
	move $a1, $t1
	lw $t2, -236($fp)
	move $a0, $t2
	jal id_Ns00
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -256($fp)

	li $t0, 62605
	move $t1, $t0
	li $t0, 0
	li $t2, 0
	addi $t3, $fp, -148
	li $t4, 8
	mul $t2, $t2, $t4
	lw $t4, -12($fp)
	add $t2, $t2, $t4
	li $t5, 4
	mul $t2, $t2, $t5
	add $t5, $t3, $t2
	li $t2, 30895
	lw $t3, 0($t5)
	sw $t0, -260($fp)
	sw $t1, -20($fp)
	bne $t3, $t2, label139

	j label140

label139:
	li $t0, 1
	sw $t0, -260($fp)

label140:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -260($fp)
	move $a2, $t0
	lw $t1, -20($fp)
	move $a1, $t1
	lw $t2, -256($fp)
	move $a0, $t2
	jal id_Ns00
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -264($fp)

	lw $t0, -264($fp)
	lw $t1, -232($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	li $t4, 0
	sw $t2, -268($fp)
	sw $t3, -272($fp)
	lw $t5, -152($fp)
	bne $t5, $t4, label142

	j label141

label141:
	li $t0, 1
	sw $t0, -272($fp)

label142:
	li $t0, 55320
	lw $t1, -272($fp)
	mul $t2, $t1, $t0
	li $t0, 0
	li $t3, 16865
	lw $t4, -12($fp)
	mul $t5, $t3, $t4
	li $t3, 44320
	sw $t0, -280($fp)
	sw $t2, -276($fp)
	beq $t5, $t3, label143

	j label144

label143:
	li $t0, 1
	sw $t0, -280($fp)

label144:
	li $t0, -1
	lw $t1, -156($fp)
	mul $t2, $t0, $t1
	li $t0, -1
	mul $t3, $t0, $t2
	sw $t3, -284($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -284($fp)
	move $a2, $t0
	lw $t1, -280($fp)
	move $a1, $t1
	lw $t2, -276($fp)
	move $a0, $t2
	jal id_Ns00
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -288($fp)

	lw $t0, -288($fp)
	lw $t1, -268($fp)
	div $t1, $t0
	mflo $t2
	li $t3, -1
	mul $t4, $t3, $t2
	li $t2, 0
	li $t3, 33094
	li $t5, 0
	sw $t2, -296($fp)
	sw $t4, -292($fp)
	bne $t3, $t5, label145

	j label146

label145:
	li $t0, 1
	sw $t0, -296($fp)

label146:
	lw $t0, -16($fp)
	lw $t1, -296($fp)
	mul $t2, $t1, $t0
	lw $t3, -292($fp)
	beq $t3, $t2, label127

	j label128

label127:
	li $t0, 1
	sw $t0, -228($fp)

label128:
	lw $t0, -228($fp)
	move $v0, $t0
	lw $ra, 292($sp)
	lw $fp, 288($sp)
	addi $sp, $sp, 296
	jr $ra

id_dEUMT8ii:
	addi $sp, $sp, -444
	sw $ra, 440($sp)
	sw $fp, 436($sp)
	addi $fp, $sp, 444
	sw $a0, -12($fp)
	sw $a1, -16($fp)
	sw $a2, -20($fp)
	sw $a3, -448($fp)
	lw $a0, 0($fp)
	sw $a0, -452($fp)

	li $t0, 0
	addi $t1, $fp, -116
	li $t2, 0
	li $t3, 6
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 28940
	sw $t0, 0($t2)
	li $t1, 0
	addi $t3, $fp, -116
	li $t4, 1
	li $t5, 6
	mul $t1, $t1, $t5
	add $t1, $t1, $t4
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t3, $t1
	li $t1, 58836
	sw $t1, 0($t4)
	li $t3, 0
	addi $t5, $fp, -116
	li $t6, 2
	li $t7, 6
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 46616
	sw $t3, 0($t6)
	li $t5, 0
	addi $t7, $fp, -116
	li $t8, 3
	li $t9, 6
	mul $t5, $t5, $t9
	add $t5, $t5, $t8
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t7, $t5
	li $t5, 17146
	sw $t5, 0($t8)
	li $t7, 0
	addi $t9, $fp, -116
	li $s0, 4
	li $s1, 6
	mul $t7, $t7, $s1
	add $t7, $t7, $s0
	li $s0, 4
	mul $t7, $t7, $s0
	add $s0, $t9, $t7
	li $t7, 40788
	sw $t7, 0($s0)
	li $t9, 0
	addi $s1, $fp, -116
	li $s2, 5
	li $s3, 6
	mul $t9, $t9, $s3
	add $t9, $t9, $s2
	li $s2, 4
	mul $t9, $t9, $s2
	add $s2, $s1, $t9
	li $t9, 60470
	sw $t9, 0($s2)
	li $s1, 0
	addi $s3, $fp, -260
	li $s4, 0
	li $s5, 9
	mul $s1, $s1, $s5
	add $s1, $s1, $s4
	li $s4, 4
	mul $s1, $s1, $s4
	add $s4, $s3, $s1
	li $s1, 57240
	sw $s1, 0($s4)
	li $s3, 0
	addi $s5, $fp, -260
	li $s6, 1
	li $s7, 9
	mul $s3, $s3, $s7
	add $s3, $s3, $s6
	li $s6, 4
	mul $s3, $s3, $s6
	add $s6, $s5, $s3
	li $s3, 388
	sw $s3, 0($s6)
	li $s5, 0
	addi $s7, $fp, -260
	sw $s6, -456($fp)
	li $s6, 2
	sw $s4, -460($fp)
	li $s4, 9
	mul $s5, $s5, $s4
	add $s4, $s5, $s6
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 26018
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -260
	sw $s5, -464($fp)
	li $s5, 3
	sw $s4, -468($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 45866
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -260
	sw $s5, -472($fp)
	li $s5, 4
	sw $s4, -476($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 54386
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -260
	sw $s5, -480($fp)
	li $s5, 5
	sw $s4, -484($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 7545
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -260
	sw $s5, -488($fp)
	li $s5, 6
	sw $s4, -492($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 44000
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -260
	sw $s5, -496($fp)
	li $s5, 7
	sw $s4, -500($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 1686
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -260
	sw $s5, -504($fp)
	li $s5, 8
	sw $s4, -508($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 9685
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -116
	sw $s5, -512($fp)
	li $s5, 0
	sw $s4, -516($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	lw $s4, 0($s5)
	sw $s4, -264($fp)

	li $v0, 1
	lw $t0, -264($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -116
	li $t3, 1
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -268($fp)

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
	addi $t2, $fp, -116
	li $t3, 2
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -272($fp)

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
	addi $t2, $fp, -116
	li $t3, 3
	li $t4, 6
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
	addi $t2, $fp, -116
	li $t3, 4
	li $t4, 6
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
	addi $t2, $fp, -116
	li $t3, 5
	li $t4, 6
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
	addi $t2, $fp, -260
	li $t3, 0
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
	addi $t2, $fp, -260
	li $t3, 1
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
	addi $t2, $fp, -260
	li $t3, 2
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
	addi $t2, $fp, -260
	li $t3, 3
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
	addi $t2, $fp, -260
	li $t3, 4
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
	addi $t2, $fp, -260
	li $t3, 5
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
	li $t1, 0
	addi $t2, $fp, -260
	li $t3, 6
	li $t4, 9
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
	li $t1, 0
	addi $t2, $fp, -260
	li $t3, 7
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -316($fp)

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
	addi $t2, $fp, -260
	li $t3, 8
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -320($fp)

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
	li $t2, 6706
	li $t3, 54120
	sw $t1, -324($fp)
	bne $t2, $t3, label149

	j label148

label149:
	li $t0, 56544
	li $t1, 0
	bne $t0, $t1, label147

	j label148

label147:
	li $t0, 1
	sw $t0, -324($fp)

label148:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -328($fp)
	sw $t1, -332($fp)
	lw $t3, -20($fp)
	bne $t3, $t2, label153

	j label152

label152:
	li $t0, 1
	sw $t0, -332($fp)

label153:
	lw $t0, -12($fp)
	lw $t1, -332($fp)
	beq $t1, $t0, label150

	j label151

label150:
	li $t0, 1
	sw $t0, -328($fp)

label151:
	li $t0, 0
	addi $t1, $fp, -260
	li $t2, 9
	mul $t0, $t0, $t2
	lw $t2, -20($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	sub $t1, $t0, $t2
	li $t0, 12703
	li $t3, 0
	li $t4, 11460
	li $t5, 30842
	mul $t6, $t4, $t5
	sw $t0, -340($fp)
	sw $t1, -336($fp)
	sw $t3, -344($fp)
	bgt $t6, $t2, label154

	j label155

label154:
	li $t0, 1
	sw $t0, -344($fp)

label155:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -344($fp)
	sw $t0, 0($sp)
	lw $t1, -340($fp)
	move $a3, $t1
	lw $t2, -336($fp)
	move $a2, $t2
	lw $t3, -328($fp)
	move $a1, $t3
	lw $t4, -324($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -348($fp)

	li $t0, 51115
	lw $t1, -348($fp)
	mul $t2, $t1, $t0
	li $t0, 0
	li $t3, 33185
	li $t4, 0
	sw $t0, -356($fp)
	sw $t2, -352($fp)
	bne $t3, $t4, label159

	j label157

label159:
	li $t0, 0
	lw $t1, -20($fp)
	bne $t1, $t0, label158

	j label157

label158:
	li $t0, 25457
	li $t1, 0
	bne $t0, $t1, label156

	j label157

label156:
	li $t0, 1
	sw $t0, -356($fp)

label157:
	li $t0, 38868
	lw $t2, -20($fp)
	move $t1, $t2
	sw $t0, -360($fp)
	sw $t1, -16($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -16($fp)
	move $a2, $t0
	lw $t1, -360($fp)
	move $a1, $t1
	lw $t2, -356($fp)
	move $a0, $t2
	jal id_Ns00
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -364($fp)

	lw $t0, -364($fp)
	lw $t1, -352($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	li $t4, 0
	sw $t2, -368($fp)
	sw $t3, -372($fp)
	lw $t5, -20($fp)
	bne $t5, $t4, label161

	j label160

label160:
	li $t0, 1
	sw $t0, -372($fp)

label161:
	lw $t0, -372($fp)
	lw $t1, -368($fp)
	add $t2, $t1, $t0
	move $v0, $t2
	lw $ra, 440($sp)
	lw $fp, 436($sp)
	addi $sp, $sp, 444
	jr $ra

	li $t0, 0
	addi $t1, $fp, -116
	li $t2, 0
	li $t3, 6
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	sw $t0, -376($fp)

	li $v0, 1
	lw $t0, -376($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -116
	li $t3, 1
	li $t4, 6
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
	addi $t2, $fp, -116
	li $t3, 2
	li $t4, 6
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
	addi $t2, $fp, -116
	li $t3, 3
	li $t4, 6
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
	addi $t2, $fp, -116
	li $t3, 4
	li $t4, 6
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
	li $t1, 0
	addi $t2, $fp, -116
	li $t3, 5
	li $t4, 6
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
	addi $t2, $fp, -260
	li $t3, 0
	li $t4, 9
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
	li $t1, 0
	addi $t2, $fp, -260
	li $t3, 1
	li $t4, 9
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
	addi $t2, $fp, -260
	li $t3, 2
	li $t4, 9
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
	li $t1, 0
	addi $t2, $fp, -260
	li $t3, 3
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -412($fp)

	li $v0, 1
	lw $t0, -412($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -260
	li $t3, 4
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -416($fp)

	li $v0, 1
	lw $t0, -416($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -260
	li $t3, 5
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -420($fp)

	li $v0, 1
	lw $t0, -420($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -260
	li $t3, 6
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -424($fp)

	li $v0, 1
	lw $t0, -424($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -260
	li $t3, 7
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -428($fp)

	li $v0, 1
	lw $t0, -428($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -260
	li $t3, 8
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -432($fp)

	li $v0, 1
	lw $t0, -432($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -116
	li $t3, 0
	li $t4, 0
	sw $t1, -436($fp)
	sw $t2, -440($fp)
	sw $t3, -444($fp)
	lw $t5, -16($fp)
	bne $t5, $t4, label165

	j label164

label165:
	li $t0, 0
	lw $t1, -16($fp)
	bne $t1, $t0, label162

	j label164

label164:
	li $t0, 30254
	li $t1, 0
	bne $t0, $t1, label162

	j label163

label162:
	li $t0, 1
	sw $t0, -444($fp)

label163:
	li $t0, 6
	lw $t1, -436($fp)
	mul $t1, $t1, $t0
	lw $t0, -444($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -440($fp)
	add $t3, $t2, $t1
	li $t4, -1
	lw $t5, 0($t3)
	mul $t3, $t4, $t5
	sw $t1, -436($fp)
	move $v0, $t3
	lw $ra, 440($sp)
	lw $fp, 436($sp)
	addi $sp, $sp, 444
	jr $ra

id_DP0w5FWFu:
	addi $sp, $sp, -2860
	sw $ra, 2856($sp)
	sw $fp, 2852($sp)
	addi $fp, $sp, 2860
	sw $a0, -12($fp)
	sw $a1, -16($fp)
	sw $a2, -20($fp)
	sw $a3, -24($fp)

	li $t0, 56352
	move $t1, $t0
	li $t0, 28652
	move $t2, $t0
	li $t0, 47120
	move $t3, $t0
	li $t0, 35136
	move $t4, $t0
	li $t0, 61747
	move $t5, $t0
	li $t0, 10524
	move $t6, $t0
	li $t0, 28437
	move $t7, $t0
	li $t0, 42827
	move $t8, $t0
	li $t0, 27670
	move $t9, $t0
	li $t0, 3689
	move $s0, $t0
	li $t0, 37761
	move $s1, $t0
	li $t0, 19374
	move $s2, $t0
	li $t0, 0
	addi $s3, $fp, -120
	li $s4, 0
	li $s5, 6
	mul $t0, $t0, $s5
	add $t0, $t0, $s4
	li $s4, 4
	mul $t0, $t0, $s4
	add $s4, $s3, $t0
	li $t0, 4077
	sw $t0, 0($s4)
	li $s3, 0
	addi $s5, $fp, -120
	li $s6, 1
	li $s7, 6
	mul $s3, $s3, $s7
	add $s3, $s3, $s6
	li $s6, 4
	mul $s3, $s3, $s6
	add $s6, $s5, $s3
	li $s3, 63779
	sw $s3, 0($s6)
	li $s5, 0
	addi $s7, $fp, -120
	sw $s6, -2864($fp)
	li $s6, 2
	sw $s4, -2868($fp)
	li $s4, 6
	mul $s5, $s5, $s4
	add $s4, $s5, $s6
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 65240
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -120
	sw $s5, -2872($fp)
	li $s5, 3
	sw $s4, -2876($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 58464
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -120
	sw $s5, -2880($fp)
	li $s5, 4
	sw $s4, -2884($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 5789
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -120
	sw $s5, -2888($fp)
	li $s5, 5
	sw $s4, -2892($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 43705
	sw $s4, 0($s5)
	li $s6, 60150
	move $s7, $s6
	li $s6, 0
	sw $s7, -764($fp)
	addi $s7, $fp, -248
	sw $s5, -2896($fp)
	li $s5, 0
	sw $s4, -2900($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 15474
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -248
	sw $s5, -2904($fp)
	li $s5, 1
	sw $s4, -2908($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 50411
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -248
	sw $s5, -2912($fp)
	li $s5, 2
	sw $s4, -2916($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 48734
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -248
	sw $s5, -2920($fp)
	li $s5, 3
	sw $s4, -2924($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 6483
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -248
	sw $s5, -2928($fp)
	li $s5, 4
	sw $s4, -2932($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 63114
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -248
	sw $s5, -2936($fp)
	li $s5, 5
	sw $s4, -2940($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 60194
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -248
	sw $s5, -2944($fp)
	li $s5, 6
	sw $s4, -2948($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 37325
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -248
	sw $s5, -2952($fp)
	li $s5, 7
	sw $s4, -2956($fp)
	li $s4, 8
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 48693
	sw $s4, 0($s5)
	li $s6, 27844
	move $s7, $s6
	li $s6, 62782
	sw $s7, -768($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -772($fp)
	addi $s7, $fp, -264
	sw $s5, -2960($fp)
	li $s5, 0
	sw $s4, -2964($fp)
	li $s4, 1
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 22026
	sw $s4, 0($s5)
	li $s6, 58098
	move $s7, $s6
	li $s6, 53599
	sw $s7, -776($fp)
	move $s7, $s6
	li $s6, 50678
	sw $s7, -780($fp)
	move $s7, $s6
	li $s6, 39682
	sw $s7, -784($fp)
	move $s7, $s6
	li $s6, 23199
	sw $s7, -788($fp)
	move $s7, $s6
	li $s6, 46889
	sw $s7, -792($fp)
	move $s7, $s6
	li $s6, 50207
	sw $s7, -796($fp)
	move $s7, $s6
	li $s6, 51636
	sw $s7, -800($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -804($fp)
	addi $s7, $fp, -344
	sw $s5, -2968($fp)
	li $s5, 0
	sw $s4, -2972($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 24181
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -344
	sw $s5, -2976($fp)
	li $s5, 1
	sw $s4, -2980($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 12341
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -344
	sw $s5, -2984($fp)
	li $s5, 2
	sw $s4, -2988($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 55325
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -344
	sw $s5, -2992($fp)
	li $s5, 3
	sw $s4, -2996($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 61942
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -344
	sw $s5, -3000($fp)
	li $s5, 4
	sw $s4, -3004($fp)
	li $s4, 5
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 31716
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -488
	sw $s5, -3008($fp)
	li $s5, 0
	sw $s4, -3012($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 59403
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -488
	sw $s5, -3016($fp)
	li $s5, 1
	sw $s4, -3020($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 60186
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -488
	sw $s5, -3024($fp)
	li $s5, 2
	sw $s4, -3028($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 31420
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -488
	sw $s5, -3032($fp)
	li $s5, 3
	sw $s4, -3036($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 52331
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -488
	sw $s5, -3040($fp)
	li $s5, 4
	sw $s4, -3044($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 439
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -488
	sw $s5, -3048($fp)
	li $s5, 5
	sw $s4, -3052($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 9589
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -488
	sw $s5, -3056($fp)
	li $s5, 6
	sw $s4, -3060($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 46945
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -488
	sw $s5, -3064($fp)
	li $s5, 7
	sw $s4, -3068($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 15913
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -488
	sw $s5, -3072($fp)
	li $s5, 8
	sw $s4, -3076($fp)
	li $s4, 9
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 60001
	sw $s4, 0($s5)
	li $s6, 30143
	move $s7, $s6
	li $s6, 22396
	sw $s7, -808($fp)
	move $s7, $s6
	li $s6, 57579
	sw $s7, -812($fp)
	move $s7, $s6
	li $s6, 24801
	sw $s7, -816($fp)
	move $s7, $s6
	li $s6, 59722
	sw $s7, -820($fp)
	move $s7, $s6
	li $s6, 40737
	sw $s7, -824($fp)
	move $s7, $s6
	li $s6, 52645
	sw $s7, -828($fp)
	move $s7, $s6
	li $s6, 56968
	sw $s7, -832($fp)
	move $s7, $s6
	li $s6, 62763
	sw $s7, -836($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -840($fp)
	addi $s7, $fp, -504
	sw $s5, -3080($fp)
	li $s5, 0
	sw $s4, -3084($fp)
	li $s4, 1
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 45208
	sw $s4, 0($s5)
	li $s6, 45031
	move $s7, $s6
	li $s6, 47905
	sw $s7, -844($fp)
	move $s7, $s6
	li $s6, 19354
	sw $s7, -848($fp)
	move $s7, $s6
	li $s6, 2695
	sw $s7, -852($fp)
	move $s7, $s6
	li $s6, 29259
	sw $s7, -856($fp)
	move $s7, $s6
	li $s6, 4025
	sw $s7, -860($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -864($fp)
	addi $s7, $fp, -552
	sw $s5, -3088($fp)
	li $s5, 0
	sw $s4, -3092($fp)
	li $s4, 3
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 54331
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -552
	sw $s5, -3096($fp)
	li $s5, 1
	sw $s4, -3100($fp)
	li $s4, 3
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 53440
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -552
	sw $s5, -3104($fp)
	li $s5, 2
	sw $s4, -3108($fp)
	li $s4, 3
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 16367
	sw $s4, 0($s5)
	li $s6, 44121
	move $s7, $s6
	li $s6, 49846
	sw $s7, -868($fp)
	move $s7, $s6
	li $s6, 48083
	sw $s7, -872($fp)
	move $s7, $s6
	li $s6, 37988
	sw $s7, -876($fp)
	move $s7, $s6
	li $s6, 44496
	sw $s7, -880($fp)
	move $s7, $s6
	li $s6, 13967
	sw $s7, -884($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -888($fp)
	addi $s7, $fp, -712
	sw $s5, -3112($fp)
	li $s5, 0
	sw $s4, -3116($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 24783
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -712
	sw $s5, -3120($fp)
	li $s5, 1
	sw $s4, -3124($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 44935
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -712
	sw $s5, -3128($fp)
	li $s5, 2
	sw $s4, -3132($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 23557
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -712
	sw $s5, -3136($fp)
	li $s5, 3
	sw $s4, -3140($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 6192
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -712
	sw $s5, -3144($fp)
	li $s5, 4
	sw $s4, -3148($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 60849
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -712
	sw $s5, -3152($fp)
	li $s5, 5
	sw $s4, -3156($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 18022
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -712
	sw $s5, -3160($fp)
	li $s5, 6
	sw $s4, -3164($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 36335
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -712
	sw $s5, -3168($fp)
	li $s5, 7
	sw $s4, -3172($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 17709
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -712
	sw $s5, -3176($fp)
	li $s5, 8
	sw $s4, -3180($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 10065
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -712
	sw $s5, -3184($fp)
	li $s5, 9
	sw $s4, -3188($fp)
	li $s4, 10
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 61136
	sw $s4, 0($s5)
	li $s6, 11895
	move $s7, $s6
	li $s6, 50802
	sw $s7, -892($fp)
	move $s7, $s6
	li $s6, 48246
	sw $s7, -896($fp)
	move $s7, $s6
	li $s6, 3328
	sw $s7, -900($fp)
	move $s7, $s6
	li $s6, 48029
	sw $s7, -904($fp)
	move $s7, $s6
	li $s6, 27918
	sw $s7, -908($fp)
	move $s7, $s6
	li $s6, 48359
	sw $s7, -912($fp)
	move $s7, $s6
	li $s6, 30399
	sw $s7, -916($fp)
	move $s7, $s6
	li $s6, 47272
	sw $s7, -1144($fp)
	move $s7, $s6
	li $s6, 51054
	sw $s7, -1148($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -1152($fp)
	addi $s7, $fp, -1028
	sw $s5, -3192($fp)
	li $s5, 0
	sw $s4, -3196($fp)
	li $s4, 7
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 59658
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1028
	sw $s5, -3200($fp)
	li $s5, 1
	sw $s4, -3204($fp)
	li $s4, 7
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 51298
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1028
	sw $s5, -3208($fp)
	li $s5, 2
	sw $s4, -3212($fp)
	li $s4, 7
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 39850
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1028
	sw $s5, -3216($fp)
	li $s5, 3
	sw $s4, -3220($fp)
	li $s4, 7
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 47562
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1028
	sw $s5, -3224($fp)
	li $s5, 4
	sw $s4, -3228($fp)
	li $s4, 7
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 2129
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1028
	sw $s5, -3232($fp)
	li $s5, 5
	sw $s4, -3236($fp)
	li $s4, 7
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 18435
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1028
	sw $s5, -3240($fp)
	li $s5, 6
	sw $s4, -3244($fp)
	li $s4, 7
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 31872
	sw $s4, 0($s5)
	li $s6, 50212
	move $s7, $s6
	li $s6, 56423
	sw $s7, -1156($fp)
	move $s7, $s6
	li $s6, 10833
	sw $s7, -1160($fp)
	move $s7, $s6
	li $s6, 64179
	sw $s7, -1164($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -1168($fp)
	addi $s7, $fp, -1060
	sw $s5, -3248($fp)
	li $s5, 0
	sw $s4, -3252($fp)
	li $s4, 2
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 15670
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1060
	sw $s5, -3256($fp)
	li $s5, 1
	sw $s4, -3260($fp)
	li $s4, 2
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 55768
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1108
	sw $s5, -3264($fp)
	li $s5, 0
	sw $s4, -3268($fp)
	li $s4, 3
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 22200
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1108
	sw $s5, -3272($fp)
	li $s5, 1
	sw $s4, -3276($fp)
	li $s4, 3
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 21862
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -1108
	sw $s5, -3280($fp)
	li $s5, 2
	sw $s4, -3284($fp)
	li $s4, 3
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 51081
	sw $s4, 0($s5)
	li $s6, 40222
	move $s7, $s6
	li $s6, 58197
	sw $s5, -3288($fp)
	move $s5, $s6
	li $s6, 3255
	sw $s5, -1172($fp)
	move $s5, $s6
	li $s6, 0
	sw $s5, -1176($fp)
	addi $s5, $fp, -1140
	sw $s4, -3292($fp)
	li $s4, 0
	sw $s3, -3296($fp)
	li $s3, 2
	mul $s6, $s6, $s3
	add $s3, $s6, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s5, $s3
	li $s3, 50288
	sw $s3, 0($s4)
	li $s5, 0
	addi $s6, $fp, -1140
	sw $s4, -3300($fp)
	li $s4, 1
	sw $s3, -3304($fp)
	li $s3, 2
	mul $s5, $s5, $s3
	add $s3, $s5, $s4
	li $s4, 4
	mul $s3, $s3, $s4
	add $s4, $s6, $s3
	li $s3, 53797
	sw $s3, 0($s4)
	li $s5, 0
	addi $s6, $fp, -1108
	sw $s4, -3308($fp)
	li $s4, 3
	mul $s5, $s5, $s4
	add $s4, $s5, $t6
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s6, $s4
	li $s4, -1
	mul $s6, $s4, $s7
	li $s4, 0
	sw $t1, -716($fp)
	sw $t2, -720($fp)
	sw $t3, -724($fp)
	sw $t4, -728($fp)
	sw $t5, -732($fp)
	sw $t6, -736($fp)
	sw $t7, -740($fp)
	sw $t8, -744($fp)
	sw $t9, -748($fp)
	sw $s0, -752($fp)
	sw $s1, -756($fp)
	sw $s2, -760($fp)
	bne $s6, $s4, label166

	j label167

label166:
	li $t0, 0
	li $t1, 0
	li $t2, 15150
	li $t3, 35554
	sw $t0, -1180($fp)
	sw $t1, -1184($fp)
	bgt $t2, $t3, label171

	j label172

label171:
	li $t0, 1
	sw $t0, -1184($fp)

label172:
	lw $t0, -904($fp)
	lw $t1, -1184($fp)
	bne $t1, $t0, label169

	j label170

label169:
	li $t0, 1
	sw $t0, -1180($fp)

label170:
	li $t0, 0
	lw $t1, -880($fp)
	lw $t2, -784($fp)
	mul $t3, $t2, $t1
	li $t4, -1
	mul $t5, $t4, $t3
	li $t3, 0
	li $t4, 0
	addi $t6, $fp, -1108
	li $t7, 3
	mul $t4, $t4, $t7
	lw $t7, -916($fp)
	add $t4, $t4, $t7
	li $t8, 4
	mul $t4, $t4, $t8
	add $t8, $t6, $t4
	lw $t4, 0($t8)
	sw $t0, -1188($fp)
	sw $t3, -1196($fp)
	sw $t5, -1192($fp)
	lw $t6, -728($fp)
	bne $t4, $t6, label176

	j label177

label176:
	li $t0, 1
	sw $t0, -1196($fp)

label177:
	li $t0, 0
	li $t1, 36507
	lw $t2, -796($fp)
	div $t1, $t2
	mflo $t3
	sw $t0, -1200($fp)
	lw $t1, -764($fp)
	bne $t3, $t1, label178

	j label179

label178:
	li $t0, 1
	sw $t0, -1200($fp)

label179:
	li $t0, 0
	addi $t1, $fp, -248
	li $t2, 0
	li $t3, 8
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, -1
	lw $t1, 0($t2)
	mul $t2, $t0, $t1
	li $t0, 64425
	lw $t1, -772($fp)
	div $t0, $t1
	mflo $t3
	li $t0, 1302
	sub $t4, $t3, $t0
	li $t0, 0
	li $t3, 48447
	li $t5, -1
	mul $t6, $t5, $t3
	li $t3, 46162
	sw $t0, -1212($fp)
	sw $t2, -1204($fp)
	sw $t4, -1208($fp)
	beq $t6, $t3, label180

	j label181

label180:
	li $t0, 1
	sw $t0, -1212($fp)

label181:
	li $t0, 0
	li $t1, 52356
	lw $t2, -860($fp)
	add $t3, $t2, $t1
	li $t1, 0
	sw $t0, -1216($fp)
	bne $t3, $t1, label182

	j label184

label184:
	li $t0, 0
	lw $t1, -908($fp)
	bne $t1, $t0, label182

	j label183

label182:
	li $t0, 1
	sw $t0, -1216($fp)

label183:
	li $t0, 0
	li $t1, 0
	sw $t0, -1220($fp)
	sw $t1, -1224($fp)
	lw $t2, -864($fp)
	lw $t3, -1168($fp)
	bne $t3, $t2, label187

	j label188

label187:
	li $t0, 1
	sw $t0, -1224($fp)

label188:
	lw $t0, -804($fp)
	lw $t1, -1224($fp)
	beq $t1, $t0, label185

	j label186

label185:
	li $t0, 1
	sw $t0, -1220($fp)

label186:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1220($fp)
	sw $t0, 0($sp)
	lw $t1, -1216($fp)
	move $a3, $t1
	lw $t2, -1212($fp)
	move $a2, $t2
	lw $t3, -1208($fp)
	move $a1, $t3
	lw $t4, -1204($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -1228($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1228($fp)
	move $a3, $t0
	lw $t1, -1200($fp)
	move $a2, $t1
	lw $t2, -1196($fp)
	move $a1, $t2
	lw $t3, -1192($fp)
	move $a0, $t3
	jal id_DP0w5FWFu
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1232($fp)

	li $t0, 0
	lw $t1, -1232($fp)
	bne $t1, $t0, label173

	j label175

label175:
	li $t0, 42569
	li $t1, 0
	bne $t0, $t1, label173

	j label174

label173:
	li $t0, 1
	sw $t0, -1188($fp)

label174:
	li $t0, 31924
	lw $t1, -848($fp)
	div $t0, $t1
	mflo $t2
	li $t0, 0
	li $t3, 26670
	sw $t0, -1240($fp)
	sw $t2, -1236($fp)
	lw $t4, -732($fp)
	beq $t3, $t4, label191

	j label190

label191:
	li $t0, 24595
	li $t1, 0
	bne $t0, $t1, label189

	j label190

label189:
	li $t0, 1
	sw $t0, -1240($fp)

label190:
	li $t0, 0
	li $t1, 34053
	li $t2, 0
	sw $t0, -1244($fp)
	bne $t1, $t2, label192

	j label195

label195:
	li $t0, 45105
	li $t1, 0
	bne $t0, $t1, label192

	j label194

label194:
	li $t0, 56467
	li $t1, 0
	bne $t0, $t1, label192

	j label193

label192:
	li $t0, 1
	sw $t0, -1244($fp)

label193:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1244($fp)
	sw $t0, 0($sp)
	lw $t1, -1240($fp)
	move $a3, $t1
	lw $t2, -1236($fp)
	move $a2, $t2
	lw $t3, -1188($fp)
	move $a1, $t3
	lw $t4, -1180($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4

	j label168

label167:
	li $t0, 18729
	move $t1, $t0
	li $t0, 0
	li $t2, 0
	li $t3, 0
	sw $t0, -1248($fp)
	sw $t1, -872($fp)
	sw $t2, -1252($fp)
	lw $t4, -836($fp)
	bne $t4, $t3, label202

	j label201

label201:
	li $t0, 1
	sw $t0, -1252($fp)

label202:
	lw $t0, -804($fp)
	lw $t1, -1252($fp)
	blt $t1, $t0, label199

	j label200

label199:
	li $t0, 1
	sw $t0, -1248($fp)

label200:
	li $t0, 35992
	move $t1, $t0
	li $t0, 0
	li $t2, 0
	li $t3, 0
	sw $t0, -1256($fp)
	sw $t1, -1156($fp)
	sw $t2, -1260($fp)
	lw $t4, -16($fp)
	bne $t4, $t3, label206

	j label205

label205:
	li $t0, 1
	sw $t0, -1260($fp)

label206:
	lw $t0, -896($fp)
	lw $t1, -1260($fp)
	bne $t1, $t0, label203

	j label204

label203:
	li $t0, 1
	sw $t0, -1256($fp)

label204:
	li $t0, 0
	li $t1, 1764
	lw $t2, -900($fp)
	add $t3, $t2, $t1
	li $t1, 0
	sw $t0, -1264($fp)
	bne $t3, $t1, label207

	j label209

label209:
	li $t0, 17372
	li $t1, 0
	bne $t0, $t1, label207

	j label208

label207:
	li $t0, 1
	sw $t0, -1264($fp)

label208:
	li $t0, 0
	li $t1, 51662
	li $t2, 57533
	sub $t3, $t1, $t2
	li $t1, 0
	sw $t0, -1268($fp)
	bne $t3, $t1, label210

	j label212

label212:
	li $t0, 39573
	li $t1, 0
	bne $t0, $t1, label210

	j label211

label210:
	li $t0, 1
	sw $t0, -1268($fp)

label211:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1268($fp)
	move $a2, $t0
	lw $t1, -1264($fp)
	move $a1, $t1
	lw $t2, -1256($fp)
	move $a0, $t2
	jal id_Ns00
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1272($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1272($fp)
	move $a3, $t0
	lw $t1, -1156($fp)
	move $a2, $t1
	lw $t2, -1248($fp)
	move $a1, $t2
	lw $t3, -872($fp)
	move $a0, $t3
	jal id_DP0w5FWFu
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1276($fp)

	li $t0, 7988
	li $t1, 43078
	div $t0, $t1
	mflo $t2
	li $t0, -1
	mul $t1, $t0, $t2
	lw $t0, -832($fp)
	lw $t2, -904($fp)
	div $t2, $t0
	mflo $t3
	li $t4, 14259
	mul $t5, $t3, $t4
	li $t3, 0
	li $t4, 649
	li $t6, 46333
	add $t7, $t4, $t6
	li $t4, 64547
	sw $t1, -1280($fp)
	sw $t3, -1288($fp)
	sw $t5, -1284($fp)
	bge $t7, $t4, label213

	j label214

label213:
	li $t0, 1
	sw $t0, -1288($fp)

label214:
	lw $t0, -764($fp)
	lw $t1, -892($fp)
	mul $t2, $t1, $t0
	li $t3, -1
	mul $t4, $t3, $t2
	li $t2, 0
	li $t3, 54447
	li $t5, 0
	sw $t2, -1296($fp)
	sw $t4, -1292($fp)
	bne $t3, $t5, label217

	j label215

label217:
	li $t0, 61484
	li $t1, 0
	bne $t0, $t1, label215

	j label216

label215:
	li $t0, 1
	sw $t0, -1296($fp)

label216:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1296($fp)
	sw $t0, 0($sp)
	lw $t1, -1292($fp)
	move $a3, $t1
	lw $t2, -1288($fp)
	move $a2, $t2
	lw $t3, -1284($fp)
	move $a1, $t3
	lw $t4, -1280($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -1300($fp)

	lw $t0, -1300($fp)
	lw $t1, -1276($fp)
	sub $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label198

	j label197

label198:
	li $t0, 34566
	lw $t1, -1172($fp)
	lw $t2, -772($fp)
	sub $t3, $t2, $t1
	li $t4, 0
	lw $t5, -804($fp)
	lw $t6, -1176($fp)
	div $t6, $t5
	mflo $t7
	li $t8, 25418
	sw $t0, -1304($fp)
	sw $t3, -1308($fp)
	sw $t4, -1312($fp)
	bgt $t7, $t8, label218

	j label219

label218:
	li $t0, 1
	sw $t0, -1312($fp)

label219:
	li $t0, 0
	li $t1, 0
	sw $t0, -1316($fp)
	sw $t1, -1320($fp)
	lw $t2, -876($fp)
	lw $t3, -812($fp)
	blt $t3, $t2, label222

	j label223

label222:
	li $t0, 1
	sw $t0, -1320($fp)

label223:
	li $t0, 14426
	lw $t1, -1320($fp)
	bge $t1, $t0, label220

	j label221

label220:
	li $t0, 1
	sw $t0, -1316($fp)

label221:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1316($fp)
	move $a3, $t0
	lw $t1, -1312($fp)
	move $a2, $t1
	lw $t2, -1308($fp)
	move $a1, $t2
	lw $t3, -1304($fp)
	move $a0, $t3
	jal id_DP0w5FWFu
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1324($fp)

	li $t0, -1
	lw $t1, -1324($fp)
	mul $t2, $t0, $t1
	lw $t0, -784($fp)
	beq $t2, $t0, label196

	j label197

label196:
	li $t0, 0
	li $t1, 52614
	li $t2, 0
	sw $t0, -1328($fp)
	bne $t1, $t2, label225

	j label224

label224:
	li $t0, 1
	sw $t0, -1328($fp)

label225:
	lw $t0, -1328($fp)
	lw $t1, -876($fp)
	mul $t2, $t1, $t0
	sub $t3, $t1, $t2

label197:

label168:
	li $t0, 24308
	li $t1, 0
	bne $t0, $t1, label226

	j label227

label226:
	li $t0, 15728
	li $t1, 0
	bne $t0, $t1, label229

	j label230

label229:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -264
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	li $t1, -1
	lw $t2, 0($t3)
	mul $t3, $t1, $t2
	li $t1, 0
	sw $t0, -1332($fp)
	bne $t3, $t1, label234

	j label232

label234:
	li $t0, 0
	lw $t1, -772($fp)
	bne $t1, $t0, label235

	j label233

label235:
	li $t0, -1
	lw $t1, -20($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label232

	j label233

label232:
	li $t0, 1
	sw $t0, -1332($fp)

label233:
	j label231

label230:
	li $t0, 2549

label231:
	j label228

label227:
	li $t0, 0
	li $t1, 0
	li $t2, 12558
	li $t3, 36858
	sub $t4, $t2, $t3
	lw $t2, -916($fp)
	add $t3, $t4, $t2
	li $t4, 0
	addi $t5, $fp, -488
	li $t6, 9
	mul $t4, $t4, $t6
	lw $t6, -720($fp)
	add $t4, $t4, $t6
	li $t7, 4
	mul $t4, $t4, $t7
	add $t7, $t5, $t4
	lw $t4, 0($t7)
	sw $t0, -1336($fp)
	sw $t1, -1340($fp)
	blt $t3, $t4, label238

	j label239

label238:
	li $t0, 1
	sw $t0, -1340($fp)

label239:
	li $t0, 0
	addi $t1, $fp, -488
	li $t2, 9
	mul $t0, $t0, $t2
	lw $t2, -724($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	li $t0, 0
	addi $t1, $fp, -120
	li $t4, 1
	li $t5, 6
	mul $t0, $t0, $t5
	add $t0, $t0, $t4
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t1, $t0
	lw $t0, 0($t4)
	lw $t1, 0($t3)
	mul $t3, $t1, $t0
	lw $t0, -1340($fp)
	bge $t0, $t3, label236

	j label237

label236:
	li $t0, 1
	sw $t0, -1336($fp)

label237:

label228:
	li $t0, 5375
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, 0
	bne $t2, $t0, label241

	j label240

label240:
	li $t0, 8789
	move $v0, $t0
	lw $ra, 2856($sp)
	lw $fp, 2852($sp)
	addi $sp, $sp, 2860
	jr $ra

	j label242

label241:
	li $t0, 0
	li $t1, -1
	lw $t2, -728($fp)
	mul $t3, $t1, $t2
	li $t1, 0
	sw $t0, -1344($fp)
	bne $t3, $t1, label244

	j label243

label243:
	li $t0, 1
	sw $t0, -1344($fp)

label244:

label242:
	li $t0, 0
	li $t1, 28084
	li $t2, 0
	li $t3, 24104
	li $t4, 0
	sw $t0, -1348($fp)
	sw $t1, -1352($fp)
	sw $t2, -1356($fp)
	bne $t3, $t4, label248

	j label247

label247:
	li $t0, 1
	sw $t0, -1356($fp)

label248:
	lw $t0, -1356($fp)
	lw $t1, -1352($fp)
	blt $t1, $t0, label245

	j label246

label245:
	li $t0, 1
	sw $t0, -1348($fp)

label246:
	li $t0, 0
	li $t1, 0
	sw $t0, -1360($fp)
	lw $t2, -916($fp)
	bne $t2, $t1, label251

	j label250

label251:
	li $t0, 44781
	li $t1, 29849
	div $t0, $t1
	mflo $t2
	li $t0, 0
	bne $t2, $t0, label249

	j label250

label249:
	li $t0, 1
	sw $t0, -1360($fp)

label250:
	li $t0, 0
	addi $t1, $fp, -1140
	li $t2, 0
	lw $t3, -780($fp)
	lw $t4, -728($fp)
	div $t4, $t3
	mflo $t5
	li $t6, 41476
	add $t7, $t5, $t6
	li $t5, 0
	sw $t0, -1364($fp)
	sw $t1, -1368($fp)
	sw $t2, -1372($fp)
	bne $t7, $t5, label254

	j label256

label256:
	lw $t0, -748($fp)
	lw $t1, -760($fp)
	sub $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label254

	j label255

label254:
	li $t0, 1
	sw $t0, -1372($fp)

label255:
	li $t0, 2
	lw $t1, -1364($fp)
	mul $t1, $t1, $t0
	lw $t0, -1372($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -1368($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	li $t3, 0
	sw $t1, -1364($fp)
	bne $t4, $t3, label252

	j label253

label252:

label257:
	li $t0, 0
	li $t1, 0
	li $t2, 30908
	lw $t3, -764($fp)
	sub $t4, $t3, $t2
	li $t2, 21846
	sw $t0, -1376($fp)
	sw $t1, -1380($fp)
	bgt $t4, $t2, label262

	j label263

label262:
	li $t0, 1
	sw $t0, -1380($fp)

label263:
	li $t0, 0
	li $t1, 15513
	sw $t0, -1384($fp)
	lw $t2, -736($fp)
	beq $t1, $t2, label264

	j label265

label264:
	li $t0, 1
	sw $t0, -1384($fp)

label265:
	li $t0, 0
	li $t1, 38896
	lw $t2, -740($fp)
	mul $t3, $t1, $t2
	li $t1, 0
	sw $t0, -1388($fp)
	bne $t3, $t1, label266

	j label268

label268:
	li $t0, 64924
	li $t1, 0
	bne $t0, $t1, label266

	j label267

label266:
	li $t0, 1
	sw $t0, -1388($fp)

label267:
	li $t0, 29773
	move $t1, $t0
	li $t0, 0
	li $t2, 0
	addi $t3, $fp, -504
	li $t4, 0
	li $t5, 1
	mul $t2, $t2, $t5
	add $t2, $t2, $t4
	li $t4, 4
	mul $t2, $t2, $t4
	add $t4, $t3, $t2
	lw $t2, 0($t4)
	li $t3, 0
	sw $t0, -1392($fp)
	sw $t1, -1148($fp)
	bne $t2, $t3, label269

	j label271

label271:
	li $t0, 0
	lw $t1, -788($fp)
	bne $t1, $t0, label269

	j label270

label269:
	li $t0, 1
	sw $t0, -1392($fp)

label270:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1392($fp)
	sw $t0, 0($sp)
	lw $t1, -1148($fp)
	move $a3, $t1
	lw $t2, -1388($fp)
	move $a2, $t2
	lw $t3, -1384($fp)
	move $a1, $t3
	lw $t4, -1380($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -1396($fp)

	li $t0, 0
	li $t1, -1
	lw $t2, -792($fp)
	mul $t3, $t1, $t2
	li $t1, 0
	sw $t0, -1400($fp)
	bne $t3, $t1, label273

	j label272

label272:
	li $t0, 1
	sw $t0, -1400($fp)

label273:
	lw $t1, -856($fp)
	move $t0, $t1
	sw $t0, -816($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -816($fp)
	move $a2, $t0
	lw $t1, -1400($fp)
	move $a1, $t1
	lw $t2, -1396($fp)
	move $a0, $t2
	jal id_Ns00
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1404($fp)

	li $t0, 0
	lw $t1, -1404($fp)
	bne $t1, $t0, label261

	j label260

label260:
	li $t0, 1
	sw $t0, -1376($fp)

label261:
	li $t0, 0
	li $t1, 28784
	li $t2, 28457
	sub $t3, $t1, $t2
	li $t1, 41670
	sw $t0, -1408($fp)
	beq $t3, $t1, label274

	j label275

label274:
	li $t0, 1
	sw $t0, -1408($fp)

label275:
	lw $t0, -756($fp)
	lw $t1, -1156($fp)
	sub $t2, $t1, $t0
	li $t3, 63350
	sub $t4, $t2, $t3
	sw $t4, -1412($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -840($fp)
	move $a3, $t0
	lw $t1, -1412($fp)
	move $a2, $t1
	lw $t2, -1408($fp)
	move $a1, $t2
	lw $t3, -1376($fp)
	move $a0, $t3
	jal id_DP0w5FWFu
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1416($fp)

	li $t0, 0
	lw $t1, -1416($fp)
	bne $t1, $t0, label258

	j label259

label258:

label276:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -504
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	li $t2, 0
	sw $t0, -1420($fp)
	bne $t1, $t2, label281

	j label280

label280:
	li $t0, 1
	sw $t0, -1420($fp)

label281:
	li $t0, 0
	li $t1, 0
	sw $t0, -1424($fp)
	lw $t2, -724($fp)
	bne $t2, $t1, label283

	j label282

label282:
	li $t0, 1
	sw $t0, -1424($fp)

label283:
	lw $t0, -1424($fp)
	lw $t1, -1420($fp)
	div $t1, $t0
	mflo $t2
	lw $t3, -868($fp)
	div $t2, $t3
	mflo $t4
	li $t2, 0
	bne $t4, $t2, label279

	j label278

label279:
	li $t0, 0
	li $t1, 0
	sw $t0, -1428($fp)
	lw $t2, -1164($fp)
	bne $t2, $t1, label285

	j label284

label284:
	li $t0, 1
	sw $t0, -1428($fp)

label285:
	lw $t0, -1428($fp)
	lw $t1, -1160($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label277

	j label278

label277:
	li $t0, 50428
	move $t1, $t0
	sw $t1, -1432($fp)

label286:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -552
	li $t3, 3
	mul $t1, $t1, $t3
	lw $t3, -716($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	li $t1, 0
	addi $t2, $fp, -1060
	li $t5, 2
	mul $t1, $t1, $t5
	lw $t5, -868($fp)
	add $t1, $t1, $t5
	li $t6, 4
	mul $t1, $t1, $t6
	add $t6, $t2, $t1
	lw $t1, 0($t6)
	lw $t2, 0($t4)
	mul $t4, $t2, $t1
	li $t1, 12647
	lw $t2, -888($fp)
	div $t2, $t1
	mflo $t6
	li $t1, 6289
	div $t6, $t1
	mflo $t7
	sw $t0, -1436($fp)
	bgt $t4, $t7, label289

	j label290

label289:
	li $t0, 1
	sw $t0, -1436($fp)

label290:
	li $t0, 20417
	lw $t1, -756($fp)
	mul $t2, $t0, $t1
	li $t0, 17581
	li $t3, 8838
	mul $t4, $t0, $t3
	add $t0, $t2, $t4
	lw $t2, -1436($fp)
	bge $t2, $t0, label287

	j label288

label287:
	li $t0, 0
	li $t1, 32975
	lw $t2, -1432($fp)
	add $t3, $t2, $t1
	sw $t0, -1440($fp)
	lw $t1, -792($fp)
	blt $t3, $t1, label291

	j label292

label291:
	li $t0, 1
	sw $t0, -1440($fp)

label292:
	li $t0, 54439
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, -1
	mul $t1, $t0, $t2
	li $t0, 0
	li $t2, 0
	sw $t0, -1448($fp)
	sw $t1, -1444($fp)
	lw $t3, -836($fp)
	bne $t3, $t2, label295

	j label294

label295:
	li $t0, 0
	lw $t1, -824($fp)
	bne $t1, $t0, label293

	j label294

label293:
	li $t0, 1
	sw $t0, -1448($fp)

label294:
	li $t0, 0
	li $t1, 0
	li $t2, 38057
	li $t3, 0
	sw $t0, -1452($fp)
	sw $t1, -1456($fp)
	bne $t2, $t3, label299

	j label298

label298:
	li $t0, 1
	sw $t0, -1456($fp)

label299:
	lw $t0, -20($fp)
	lw $t1, -1456($fp)
	ble $t1, $t0, label296

	j label297

label296:
	li $t0, 1
	sw $t0, -1452($fp)

label297:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1452($fp)
	move $a3, $t0
	lw $t1, -1448($fp)
	move $a2, $t1
	lw $t2, -1444($fp)
	move $a1, $t2
	lw $t3, -1440($fp)
	move $a0, $t3
	jal id_DP0w5FWFu
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4

	j label286

label288:
	j label276

label278:
	j label257

label259:

label253:
	li $t0, 4592
	move $t1, $t0
	li $t0, 59814
	move $t2, $t0
	li $t0, 46846
	move $t3, $t0
	li $t0, 0
	addi $t4, $fp, -1568
	li $t5, 0
	li $t6, 7
	mul $t0, $t0, $t6
	add $t0, $t0, $t5
	li $t5, 4
	mul $t0, $t0, $t5
	add $t5, $t4, $t0
	li $t0, 32677
	sw $t0, 0($t5)
	li $t4, 0
	addi $t6, $fp, -1568
	li $t7, 1
	li $t8, 7
	mul $t4, $t4, $t8
	add $t4, $t4, $t7
	li $t7, 4
	mul $t4, $t4, $t7
	add $t7, $t6, $t4
	li $t4, 18382
	sw $t4, 0($t7)
	li $t6, 0
	addi $t8, $fp, -1568
	li $t9, 2
	li $s0, 7
	mul $t6, $t6, $s0
	add $t6, $t6, $t9
	li $t9, 4
	mul $t6, $t6, $t9
	add $t9, $t8, $t6
	li $t6, 26092
	sw $t6, 0($t9)
	li $t8, 0
	addi $s0, $fp, -1568
	li $s1, 3
	li $s2, 7
	mul $t8, $t8, $s2
	add $t8, $t8, $s1
	li $s1, 4
	mul $t8, $t8, $s1
	add $s1, $s0, $t8
	li $t8, 62526
	sw $t8, 0($s1)
	li $s0, 0
	addi $s2, $fp, -1568
	li $s3, 4
	li $s4, 7
	mul $s0, $s0, $s4
	add $s0, $s0, $s3
	li $s3, 4
	mul $s0, $s0, $s3
	add $s3, $s2, $s0
	li $s0, 59859
	sw $s0, 0($s3)
	li $s2, 0
	addi $s4, $fp, -1568
	li $s5, 5
	li $s6, 7
	mul $s2, $s2, $s6
	add $s2, $s2, $s5
	li $s5, 4
	mul $s2, $s2, $s5
	add $s5, $s4, $s2
	li $s2, 57000
	sw $s2, 0($s5)
	li $s4, 0
	addi $s6, $fp, -1568
	li $s7, 6
	sw $s5, -3312($fp)
	li $s5, 7
	mul $s4, $s4, $s5
	add $s4, $s4, $s7
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s6, $s4
	li $s4, 18836
	sw $s4, 0($s5)
	li $s6, 9836
	move $s7, $s6
	li $s6, 30360
	sw $s5, -3316($fp)
	move $s5, $s6
	li $s6, 18224
	sw $s4, -3320($fp)
	move $s4, $s6
	li $s6, 39609
	sw $s4, -1584($fp)
	move $s4, $s6
	li $s6, 4370
	sw $s4, -1588($fp)
	move $s4, $s6
	li $s6, 63946
	sw $s4, -1592($fp)
	move $s4, $s6
	li $s6, 2858
	sw $s6, -3324($fp)
	li $s6, 0
	sw $s6, -1600($fp)
	li $s6, 0
	sw $s6, -1604($fp)
	li $s6, 0
	sw $s6, -1608($fp)
	addi $s6, $fp, -1568
	sw $s6, -1612($fp)
	li $s6, 0
	sw $t1, -1572($fp)
	sw $t2, -1576($fp)
	sw $t3, -1580($fp)
	sw $s4, -1596($fp)
	sw $s6, -1616($fp)
	bgt $s7, $s5, label306

	j label305

label306:
	li $t0, 0
	lw $t1, -740($fp)
	bne $t1, $t0, label304

	j label305

label304:
	li $t0, 1
	sw $t0, -1616($fp)

label305:
	li $t0, 7
	lw $t1, -1608($fp)
	mul $t1, $t1, $t0
	lw $t0, -1616($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -1612($fp)
	add $t3, $t2, $t1
	li $t4, 0
	addi $t5, $fp, -552
	li $t6, 3
	mul $t4, $t4, $t6
	lw $t6, -1152($fp)
	add $t4, $t4, $t6
	li $t7, 4
	mul $t4, $t4, $t7
	add $t7, $t5, $t4
	lw $t4, 0($t7)
	lw $t5, -1596($fp)
	add $t7, $t4, $t5
	lw $t4, 0($t3)
	sw $t1, -1608($fp)
	bne $t4, $t7, label302

	j label303

label302:
	li $t0, 1
	sw $t0, -1604($fp)

label303:
	lw $t0, -724($fp)
	lw $t1, -1604($fp)
	bgt $t1, $t0, label300

	j label301

label300:
	li $t0, 1
	sw $t0, -1600($fp)

label301:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -488
	li $t3, 6
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	li $t2, 0
	sw $t0, -1620($fp)
	bne $t1, $t2, label308

	j label307

label307:
	li $t0, 1
	sw $t0, -1620($fp)

label308:
	li $t0, 672
	lw $t1, -800($fp)
	sub $t2, $t1, $t0
	li $t0, 0
	li $t3, 0
	sw $t0, -1628($fp)
	sw $t2, -1624($fp)
	sw $t3, -1632($fp)
	lw $t4, -796($fp)
	lw $t5, -888($fp)
	beq $t5, $t4, label311

	j label312

label311:
	li $t0, 1
	sw $t0, -1632($fp)

label312:
	li $t0, 21167
	lw $t1, -1632($fp)
	bne $t1, $t0, label309

	j label310

label309:
	li $t0, 1
	sw $t0, -1628($fp)

label310:
	li $t0, 0
	addi $t1, $fp, -712
	li $t2, 9
	li $t3, 10
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 33814
	lw $t1, -1584($fp)
	div $t1, $t0
	mflo $t3
	li $t0, 0
	li $t4, 0
	addi $t5, $fp, -1060
	li $t6, 2
	mul $t4, $t4, $t6
	lw $t6, -800($fp)
	add $t4, $t4, $t6
	li $t7, 4
	mul $t4, $t4, $t7
	add $t7, $t5, $t4
	lw $t4, 0($t7)
	li $t5, 0
	sw $t0, -1644($fp)
	sw $t2, -1636($fp)
	sw $t3, -1640($fp)
	bne $t4, $t5, label315

	j label314

label315:
	li $t0, 36930
	li $t1, 0
	bne $t0, $t1, label313

	j label314

label313:
	li $t0, 1
	sw $t0, -1644($fp)

label314:
	lw $t1, -1636($fp)
	lw $t0, 0($t1)
	sw $t0, -1648($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1644($fp)
	sw $t0, 0($sp)
	lw $t1, -1640($fp)
	move $a3, $t1
	lw $t2, -1648($fp)
	move $a2, $t2
	lw $t3, -1628($fp)
	move $a1, $t3
	lw $t4, -1624($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -1652($fp)

	li $t0, 5982
	lw $t1, -1652($fp)
	sub $t2, $t1, $t0
	li $t0, 51396
	lw $t3, -1588($fp)
	add $t4, $t3, $t0
	li $t0, 0
	li $t5, 0
	li $t6, 45768
	move $t7, $t6
	li $t6, 0
	li $t8, 0
	sw $t0, -1664($fp)
	sw $t2, -1656($fp)
	sw $t4, -1660($fp)
	sw $t5, -1668($fp)
	sw $t6, -1672($fp)
	sw $t7, -804($fp)
	lw $t9, -1592($fp)
	bne $t9, $t8, label321

	j label320

label320:
	li $t0, 1
	sw $t0, -1672($fp)

label321:
	lw $t0, -1580($fp)
	lw $t1, -1672($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 38958
	li $t4, 40299
	move $t5, $t4
	li $t4, 0
	li $t6, 0
	addi $t7, $fp, -504
	li $t8, 1
	mul $t6, $t6, $t8
	lw $t8, -892($fp)
	add $t6, $t6, $t8
	li $t9, 4
	mul $t6, $t6, $t9
	add $t9, $t7, $t6
	lw $t6, 0($t9)
	li $t7, 0
	sw $t2, -1676($fp)
	sw $t3, -1680($fp)
	sw $t4, -1684($fp)
	sw $t5, -876($fp)
	bne $t6, $t7, label322

	j label324

label324:
	li $t0, 18289
	li $t1, 0
	bne $t0, $t1, label322

	j label323

label322:
	li $t0, 1
	sw $t0, -1684($fp)

label323:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1684($fp)
	sw $t0, 0($sp)
	lw $t1, -876($fp)
	move $a3, $t1
	lw $t2, -1680($fp)
	move $a2, $t2
	lw $t3, -1676($fp)
	move $a1, $t3
	lw $t4, -804($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -1688($fp)

	li $t0, 43550
	lw $t1, -1688($fp)
	add $t2, $t1, $t0
	li $t0, 0
	li $t3, 0
	sw $t0, -1696($fp)
	sw $t2, -1692($fp)
	lw $t4, -908($fp)
	bne $t4, $t3, label328

	j label326

label328:
	li $t0, 34578
	li $t1, 0
	bne $t0, $t1, label327

	j label326

label327:
	li $t0, 65136
	li $t1, 0
	bne $t0, $t1, label325

	j label326

label325:
	li $t0, 1
	sw $t0, -1696($fp)

label326:
	li $t0, 0
	li $t1, 10691
	lw $t2, -748($fp)
	add $t3, $t1, $t2
	li $t1, 0
	sw $t0, -1700($fp)
	bne $t3, $t1, label329

	j label331

label331:
	li $t0, 52960
	li $t1, 0
	bne $t0, $t1, label329

	j label330

label329:
	li $t0, 1
	sw $t0, -1700($fp)

label330:
	li $t0, 0
	li $t1, 0
	li $t2, 25692
	li $t3, 7681
	sw $t0, -1704($fp)
	sw $t1, -1708($fp)
	bne $t2, $t3, label335

	j label336

label335:
	li $t0, 1
	sw $t0, -1708($fp)

label336:
	li $t0, -1
	lw $t1, -852($fp)
	mul $t2, $t0, $t1
	li $t0, -1
	mul $t3, $t0, $t2
	li $t0, 0
	li $t2, 47283
	li $t4, 17156
	add $t5, $t2, $t4
	sw $t0, -1716($fp)
	sw $t3, -1712($fp)
	lw $t2, -792($fp)
	bge $t5, $t2, label337

	j label338

label337:
	li $t0, 1
	sw $t0, -1716($fp)

label338:
	li $t0, 0
	li $t1, 0
	li $t2, 26517
	li $t3, 57120
	sw $t0, -1720($fp)
	sw $t1, -1724($fp)
	bne $t2, $t3, label341

	j label342

label341:
	li $t0, 1
	sw $t0, -1724($fp)

label342:
	lw $t0, -812($fp)
	lw $t1, -1724($fp)
	beq $t1, $t0, label339

	j label340

label339:
	li $t0, 1
	sw $t0, -1720($fp)

label340:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1720($fp)
	move $a3, $t0
	lw $t1, -1716($fp)
	move $a2, $t1
	lw $t2, -1712($fp)
	move $a1, $t2
	lw $t3, -1708($fp)
	move $a0, $t3
	jal id_DP0w5FWFu
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1728($fp)

	li $t0, 0
	lw $t1, -1728($fp)
	bne $t1, $t0, label332

	j label334

label334:
	li $t0, 47516
	li $t1, 0
	bne $t0, $t1, label332

	j label333

label332:
	li $t0, 1
	sw $t0, -1704($fp)

label333:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -1732($fp)
	sw $t1, -1736($fp)
	lw $t3, -908($fp)
	bne $t3, $t2, label346

	j label345

label345:
	li $t0, 1
	sw $t0, -1736($fp)

label346:
	lw $t0, -736($fp)
	lw $t1, -1736($fp)
	beq $t1, $t0, label343

	j label344

label343:
	li $t0, 1
	sw $t0, -1732($fp)

label344:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1732($fp)
	sw $t0, 0($sp)
	lw $t1, -1704($fp)
	move $a3, $t1
	lw $t2, -1700($fp)
	move $a2, $t2
	lw $t3, -1696($fp)
	move $a1, $t3
	lw $t4, -1692($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -1740($fp)

	lw $t0, -1572($fp)
	lw $t1, -1740($fp)
	ble $t1, $t0, label318

	j label319

label318:
	li $t0, 1
	sw $t0, -1668($fp)

label319:
	lw $t1, -1572($fp)
	move $t0, $t1
	li $t2, 44742
	lw $t3, -800($fp)
	div $t3, $t2
	mflo $t4
	li $t2, 31193
	sub $t5, $t4, $t2
	li $t2, 0
	lw $t4, -1588($fp)
	lw $t6, -860($fp)
	div $t6, $t4
	mflo $t7
	li $t8, 0
	sw $t0, -912($fp)
	sw $t2, -1748($fp)
	sw $t5, -1744($fp)
	bne $t7, $t8, label347

	j label349

label349:
	li $t0, 51887
	li $t1, 0
	bne $t0, $t1, label347

	j label348

label347:
	li $t0, 1
	sw $t0, -1748($fp)

label348:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1748($fp)
	move $a3, $t0
	lw $t1, -1744($fp)
	move $a2, $t1
	lw $t2, -912($fp)
	move $a1, $t2
	lw $t3, -1668($fp)
	move $a0, $t3
	jal id_DP0w5FWFu
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1752($fp)

	li $t0, 43152
	lw $t1, -1752($fp)
	beq $t1, $t0, label316

	j label317

label316:
	li $t0, 1
	sw $t0, -1664($fp)

label317:
	li $t0, 0
	li $t1, 34051
	lw $t2, -1576($fp)
	div $t1, $t2
	mflo $t3
	sw $t0, -1756($fp)
	lw $t1, -744($fp)
	beq $t3, $t1, label350

	j label351

label350:
	li $t0, 1
	sw $t0, -1756($fp)

label351:
	li $t0, 0
	li $t1, 0
	sw $t0, -1760($fp)
	lw $t2, -892($fp)
	bne $t2, $t1, label355

	j label353

label355:
	li $t0, 0
	lw $t1, -1156($fp)
	bne $t1, $t0, label354

	j label353

label354:
	li $t0, 0
	lw $t1, -796($fp)
	bne $t1, $t0, label352

	j label353

label352:
	li $t0, 1
	sw $t0, -1760($fp)

label353:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1760($fp)
	sw $t0, 0($sp)
	lw $t1, -1756($fp)
	move $a3, $t1
	lw $t2, -1664($fp)
	move $a2, $t2
	lw $t3, -1660($fp)
	move $a1, $t3
	lw $t4, -1656($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4

label356:
	li $t0, 0
	addi $t1, $fp, -264
	li $t2, 0
	li $t3, 19178
	lw $t4, -824($fp)
	add $t5, $t4, $t3
	sw $t0, -1764($fp)
	sw $t1, -1768($fp)
	sw $t2, -1772($fp)
	lw $t3, -1152($fp)
	bge $t5, $t3, label359

	j label360

label359:
	li $t0, 1
	sw $t0, -1772($fp)

label360:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1028
	li $t3, 7
	mul $t1, $t1, $t3
	lw $t3, -840($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	lw $t1, 0($t4)
	li $t2, 0
	sw $t0, -1776($fp)
	bne $t1, $t2, label363

	j label362

label363:
	li $t0, 0
	lw $t1, -732($fp)
	bne $t1, $t0, label361

	j label362

label361:
	li $t0, 1
	sw $t0, -1776($fp)

label362:
	lw $t0, -1144($fp)
	lw $t1, -908($fp)
	mul $t2, $t1, $t0
	li $t3, 17697
	mul $t4, $t2, $t3
	li $t2, 34724
	li $t3, 40345
	sub $t5, $t2, $t3
	li $t2, 48338
	add $t3, $t5, $t2
	sw $t3, -1784($fp)
	sw $t4, -1780($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1784($fp)
	move $a3, $t0
	lw $t1, -1780($fp)
	move $a2, $t1
	lw $t2, -1776($fp)
	move $a1, $t2
	lw $t3, -1772($fp)
	move $a0, $t3
	jal id_DP0w5FWFu
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1788($fp)

	lw $t0, -1788($fp)
	lw $t1, -792($fp)
	add $t2, $t1, $t0
	li $t3, 1
	lw $t4, -1764($fp)
	mul $t4, $t4, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t3, $t3, $t2
	lw $t2, -1768($fp)
	add $t4, $t2, $t3
	lw $t5, 0($t4)
	li $t4, 0
	sw $t3, -1764($fp)
	bne $t5, $t4, label357

	j label358

label357:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -120
	li $t3, 20289
	li $t4, 8624
	div $t3, $t4
	mflo $t5
	lw $t3, -812($fp)
	div $t5, $t3
	mflo $t4
	li $t5, 0
	li $t6, 0
	li $t7, 19732
	sw $t0, -1792($fp)
	sw $t1, -1796($fp)
	sw $t2, -1800($fp)
	sw $t4, -1804($fp)
	sw $t5, -1808($fp)
	sw $t6, -1812($fp)
	lw $t8, -884($fp)
	bne $t7, $t8, label368

	j label369

label368:
	li $t0, 1
	sw $t0, -1812($fp)

label369:
	li $t0, 26271
	lw $t1, -1812($fp)
	beq $t1, $t0, label366

	j label367

label366:
	li $t0, 1
	sw $t0, -1808($fp)

label367:
	li $t0, 60020
	move $t1, $t0
	sw $t1, -852($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -852($fp)
	move $a2, $t0
	lw $t1, -1808($fp)
	move $a1, $t1
	lw $t2, -1804($fp)
	move $a0, $t2
	jal id_Ns00
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1816($fp)

	li $t0, 6
	lw $t1, -1796($fp)
	mul $t1, $t1, $t0
	lw $t0, -1816($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -1800($fp)
	add $t3, $t2, $t1
	li $t4, 0
	li $t5, 65500
	li $t6, 0
	sw $t1, -1796($fp)
	sw $t3, -1820($fp)
	sw $t4, -1824($fp)
	bne $t5, $t6, label371

	j label370

label370:
	li $t0, 1
	sw $t0, -1824($fp)

label371:
	li $t0, 65229
	lw $t1, -1824($fp)
	mul $t2, $t1, $t0
	li $t0, 0
	li $t3, 34783
	sw $t0, -1832($fp)
	sw $t2, -1828($fp)
	lw $t4, -716($fp)
	beq $t3, $t4, label372

	j label373

label372:
	li $t0, 1
	sw $t0, -1832($fp)

label373:
	li $t0, 18253
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, -1
	mul $t1, $t0, $t2
	sw $t1, -1836($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1836($fp)
	move $a2, $t0
	lw $t1, -1832($fp)
	move $a1, $t1
	lw $t2, -1828($fp)
	move $a0, $t2
	jal id_Ns00
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1840($fp)

	lw $t1, -1820($fp)
	lw $t0, 0($t1)
	lw $t2, -1840($fp)
	blt $t0, $t2, label364

	j label365

label364:
	li $t0, 1
	sw $t0, -1792($fp)

label365:
	j label356

label358:
	li $t0, 43244
	move $t1, $t0
	li $t0, 3825
	move $t2, $t0
	li $t0, 17853
	move $t3, $t0
	move $t0, $t3
	li $t1, 0
	li $t4, 0
	sw $t0, -1844($fp)
	sw $t1, -1856($fp)
	sw $t2, -1848($fp)
	sw $t3, -1852($fp)
	sw $t4, -1860($fp)
	lw $t5, -752($fp)
	lw $t6, -12($fp)
	bne $t6, $t5, label379

	j label380

label379:
	li $t0, 1
	sw $t0, -1860($fp)

label380:
	lw $t0, -856($fp)
	lw $t1, -1860($fp)
	beq $t1, $t0, label377

	j label378

label377:
	li $t0, 1
	sw $t0, -1856($fp)

label378:
	li $t0, 53935
	lw $t1, -844($fp)
	sub $t2, $t0, $t1
	sw $t2, -1864($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1864($fp)
	move $a2, $t0
	lw $t1, -1856($fp)
	move $a1, $t1
	lw $t2, -1844($fp)
	move $a0, $t2
	jal id_Ns00
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1868($fp)

	li $t0, 0
	lw $t1, -1868($fp)
	bne $t1, $t0, label374

	j label375

label374:
	li $t0, 0
	addi $t1, $fp, -552
	li $t2, 3
	mul $t0, $t0, $t2
	lw $t2, -812($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	j label376

label375:
	li $t0, 0
	addi $t1, $fp, -120
	li $t2, 0
	li $t3, 0
	li $t4, 56786
	li $t5, 43545
	div $t4, $t5
	mflo $t6
	li $t4, 0
	sw $t0, -1872($fp)
	sw $t1, -1876($fp)
	sw $t2, -1880($fp)
	sw $t3, -1884($fp)
	bne $t6, $t4, label385

	j label384

label385:
	li $t0, 61617
	li $t1, 0
	bne $t0, $t1, label383

	j label384

label383:
	li $t0, 1
	sw $t0, -1884($fp)

label384:
	li $t0, 0
	li $t1, 0
	sw $t0, -1888($fp)
	lw $t2, -792($fp)
	bne $t2, $t1, label387

	j label386

label386:
	li $t0, 1
	sw $t0, -1888($fp)

label387:
	li $t0, 38533
	lw $t1, -1888($fp)
	div $t1, $t0
	mflo $t2
	li $t0, 60701
	li $t3, 22598
	mul $t4, $t0, $t3
	li $t0, -1
	mul $t3, $t0, $t4
	li $t0, 0
	li $t4, 30117
	sw $t0, -1900($fp)
	sw $t2, -1892($fp)
	sw $t3, -1896($fp)
	lw $t5, -12($fp)
	beq $t5, $t4, label390

	j label389

label390:
	li $t0, 0
	lw $t1, -828($fp)
	bne $t1, $t0, label388

	j label389

label388:
	li $t0, 1
	sw $t0, -1900($fp)

label389:
	li $t0, 0
	li $t1, 0
	li $t2, 42682
	lw $t3, -764($fp)
	mul $t4, $t3, $t2
	li $t2, 0
	sw $t0, -1904($fp)
	sw $t1, -1908($fp)
	bne $t4, $t2, label395

	j label394

label395:
	li $t0, 1804
	li $t1, 0
	bne $t0, $t1, label393

	j label394

label393:
	li $t0, 1
	sw $t0, -1908($fp)

label394:
	li $t0, 61311
	lw $t1, -768($fp)
	div $t1, $t0
	mflo $t2
	lw $t0, -1844($fp)
	add $t3, $t2, $t0
	li $t2, 0
	li $t4, 29033
	li $t5, 44957
	add $t6, $t4, $t5
	sw $t2, -1916($fp)
	sw $t3, -1912($fp)
	lw $t4, -716($fp)
	blt $t6, $t4, label396

	j label397

label396:
	li $t0, 1
	sw $t0, -1916($fp)

label397:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1916($fp)
	move $a3, $t0
	lw $t1, -1912($fp)
	move $a2, $t1
	lw $t2, -852($fp)
	move $a1, $t2
	lw $t3, -1908($fp)
	move $a0, $t3
	jal id_DP0w5FWFu
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1920($fp)

	li $t0, 29826
	lw $t1, -1920($fp)
	bgt $t1, $t0, label391

	j label392

label391:
	li $t0, 1
	sw $t0, -1904($fp)

label392:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1904($fp)
	sw $t0, 0($sp)
	lw $t1, -1900($fp)
	move $a3, $t1
	lw $t2, -1896($fp)
	move $a2, $t2
	lw $t3, -1892($fp)
	move $a1, $t3
	lw $t4, -1884($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -1924($fp)

	li $t0, -1
	lw $t1, -1924($fp)
	mul $t2, $t0, $t1
	li $t0, 48211
	lw $t3, -1848($fp)
	mul $t4, $t0, $t3
	li $t0, 62654
	lw $t5, -756($fp)
	mul $t6, $t5, $t0
	li $t0, 64550
	div $t6, $t0
	mflo $t7
	li $t0, 0
	addi $t6, $fp, -120
	li $t8, 0
	li $t9, 6
	mul $t0, $t0, $t9
	add $t0, $t0, $t8
	li $t8, 4
	mul $t0, $t0, $t8
	add $t8, $t6, $t0
	li $t0, 19303
	move $t6, $t0
	lw $t0, 0($t8)
	sw $t0, -1940($fp)
	sw $t2, -1928($fp)
	sw $t4, -1932($fp)
	sw $t6, -888($fp)
	sw $t7, -1936($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -888($fp)
	move $a3, $t0
	lw $t1, -1940($fp)
	move $a2, $t1
	lw $t2, -1936($fp)
	move $a1, $t2
	lw $t3, -1932($fp)
	move $a0, $t3
	jal id_DP0w5FWFu
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1944($fp)

	lw $t0, -1944($fp)
	lw $t1, -1928($fp)
	bgt $t1, $t0, label381

	j label382

label381:
	li $t0, 1
	sw $t0, -1880($fp)

label382:
	li $t0, 6
	lw $t1, -1872($fp)
	mul $t1, $t1, $t0
	lw $t0, -1880($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -1876($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	sw $t1, -1872($fp)
	move $v0, $t4
	lw $ra, 2856($sp)
	lw $fp, 2852($sp)
	addi $sp, $sp, 2860
	jr $ra

label376:
	li $t0, 0
	li $t1, 0
	lw $t2, -784($fp)
	lw $t3, -792($fp)
	sub $t4, $t3, $t2
	sw $t0, -1948($fp)
	sw $t1, -1952($fp)
	lw $t5, -760($fp)
	beq $t4, $t5, label402

	j label403

label402:
	li $t0, 1
	sw $t0, -1952($fp)

label403:
	li $t0, 31645
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, 0
	addi $t1, $fp, -120
	li $t3, 6
	mul $t0, $t0, $t3
	lw $t3, -788($fp)
	add $t0, $t0, $t3
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t1, $t0
	lw $t0, 0($t4)
	lw $t1, -792($fp)
	div $t0, $t1
	mflo $t4
	li $t0, 0
	li $t5, 0
	sw $t0, -1964($fp)
	sw $t2, -1956($fp)
	sw $t4, -1960($fp)
	lw $t6, -804($fp)
	bne $t6, $t5, label405

	j label406

label406:
	li $t0, 0
	lw $t1, -816($fp)
	bne $t1, $t0, label404

	j label405

label404:
	li $t0, 1
	sw $t0, -1964($fp)

label405:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1964($fp)
	move $a3, $t0
	lw $t1, -1960($fp)
	move $a2, $t1
	lw $t2, -1956($fp)
	move $a1, $t2
	lw $t3, -1952($fp)
	move $a0, $t3
	jal id_DP0w5FWFu
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1968($fp)

	li $t0, 65188
	lw $t1, -1968($fp)
	add $t2, $t1, $t0
	lw $t0, -820($fp)
	lw $t3, -776($fp)
	mul $t4, $t3, $t0
	add $t5, $t2, $t4
	li $t2, 0
	bne $t5, $t2, label401

	j label399

label401:
	li $t0, 0
	addi $t1, $fp, -248
	li $t2, 8
	mul $t0, $t0, $t2
	lw $t2, -868($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	li $t1, 0
	bne $t0, $t1, label400

	j label399

label400:
	li $t0, 0
	lw $t1, -788($fp)
	bne $t1, $t0, label398

	j label399

label398:
	li $t0, 1
	sw $t0, -1948($fp)

label399:
	li $t0, 45575
	move $t1, $t0
	li $t0, 0
	li $t2, 26129
	li $t3, 0
	sw $t0, -1976($fp)
	sw $t1, -1972($fp)
	bne $t2, $t3, label409

	j label408

label409:
	li $t0, 65152
	lw $t1, -864($fp)
	mul $t2, $t1, $t0
	lw $t0, -1972($fp)
	sub $t3, $t2, $t0
	lw $t2, -888($fp)
	blt $t3, $t2, label407

	j label408

label407:
	li $t0, 1
	sw $t0, -1976($fp)

label408:
	lw $t0, -20($fp)
	lw $t1, -796($fp)
	div $t1, $t0
	mflo $t2
	li $t3, -1
	mul $t4, $t3, $t2
	li $t2, 45268
	sub $t3, $t4, $t2
	li $t2, 0
	li $t4, 0
	li $t5, 60912
	sw $t2, -1984($fp)
	sw $t3, -1980($fp)
	sw $t4, -1988($fp)
	lw $t6, -832($fp)
	bne $t6, $t5, label412

	j label413

label412:
	li $t0, 1
	sw $t0, -1988($fp)

label413:
	li $t0, 17869
	lw $t1, -1988($fp)
	bne $t1, $t0, label410

	j label411

label410:
	li $t0, 1
	sw $t0, -1984($fp)

label411:
	li $t0, 0
	li $t1, 22976
	lw $t2, -824($fp)
	div $t2, $t1
	mflo $t3
	li $t1, 64738
	sw $t0, -1992($fp)
	blt $t3, $t1, label414

	j label415

label414:
	li $t0, 1
	sw $t0, -1992($fp)

label415:
	li $t0, 0
	li $t1, 0
	sw $t0, -1996($fp)
	lw $t2, -800($fp)
	bne $t2, $t1, label416

	j label419

label419:
	li $t0, 35723
	li $t1, 0
	bne $t0, $t1, label416

	j label418

label418:
	li $t0, 11376
	li $t1, 0
	bne $t0, $t1, label416

	j label417

label416:
	li $t0, 1
	sw $t0, -1996($fp)

label417:
	li $t0, 0
	addi $t1, $fp, -712
	li $t2, 8
	li $t3, 10
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 7457
	lw $t1, 0($t2)
	mul $t2, $t1, $t0
	sw $t2, -2000($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2000($fp)
	move $a3, $t0
	lw $t1, -1996($fp)
	move $a2, $t1
	lw $t2, -1992($fp)
	move $a1, $t2
	lw $t3, -1984($fp)
	move $a0, $t3
	jal id_DP0w5FWFu
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2004($fp)

	lw $t0, -2004($fp)
	lw $t1, -1980($fp)
	sub $t2, $t1, $t0
	li $t3, 0
	li $t4, 0
	addi $t5, $fp, -344
	li $t6, 5
	mul $t4, $t4, $t6
	lw $t6, -864($fp)
	add $t4, $t4, $t6
	li $t7, 4
	mul $t4, $t4, $t7
	add $t7, $t5, $t4
	lw $t4, 0($t7)
	sw $t2, -2008($fp)
	sw $t3, -2012($fp)
	lw $t5, -752($fp)
	bne $t4, $t5, label420

	j label421

label420:
	li $t0, 1
	sw $t0, -2012($fp)

label421:
	li $t0, 0
	li $t1, 0
	li $t2, 28985
	li $t3, 0
	sw $t0, -2016($fp)
	sw $t1, -2020($fp)
	bne $t2, $t3, label425

	j label424

label424:
	li $t0, 1
	sw $t0, -2020($fp)

label425:
	li $t0, 8898
	lw $t1, -2020($fp)
	blt $t1, $t0, label422

	j label423

label422:
	li $t0, 1
	sw $t0, -2016($fp)

label423:
	li $t0, 0
	li $t1, 30055
	sw $t0, -2024($fp)
	lw $t2, -900($fp)
	bge $t2, $t1, label426

	j label428

label428:
	li $t0, 59103
	li $t1, 0
	bne $t0, $t1, label426

	j label427

label426:
	li $t0, 1
	sw $t0, -2024($fp)

label427:
	lw $t0, -912($fp)
	lw $t1, -792($fp)
	mul $t2, $t1, $t0
	li $t3, 51580
	sub $t4, $t2, $t3
	sw $t4, -2028($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2028($fp)
	move $a3, $t0
	lw $t1, -2024($fp)
	move $a2, $t1
	lw $t2, -2016($fp)
	move $a1, $t2
	lw $t3, -2012($fp)
	move $a0, $t3
	jal id_DP0w5FWFu
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2032($fp)

	li $t0, -1
	lw $t1, -2032($fp)
	mul $t2, $t0, $t1
	lw $t0, -2008($fp)
	sub $t3, $t0, $t2
	li $t2, 0
	li $t4, 0
	li $t5, 0
	li $t6, 0
	li $t7, 0
	lw $t8, -808($fp)
	lw $t9, -12($fp)
	mul $s0, $t9, $t8
	li $s1, 31860
	sw $t2, -2036($fp)
	sw $t4, -2040($fp)
	sw $t5, -2044($fp)
	sw $t6, -2048($fp)
	sw $t7, -2052($fp)
	beq $s0, $s1, label437

	j label438

label437:
	li $t0, 1
	sw $t0, -2052($fp)

label438:
	lw $t0, -904($fp)
	lw $t1, -2052($fp)
	bgt $t1, $t0, label435

	j label436

label435:
	li $t0, 1
	sw $t0, -2048($fp)

label436:
	lw $t0, -716($fp)
	lw $t1, -816($fp)
	div $t1, $t0
	mflo $t2
	lw $t3, -2048($fp)
	bne $t3, $t2, label433

	j label434

label433:
	li $t0, 1
	sw $t0, -2044($fp)

label434:
	li $t0, 54878
	lw $t1, -2044($fp)
	bge $t1, $t0, label431

	j label432

label431:
	li $t0, 1
	sw $t0, -2040($fp)

label432:
	li $t0, 0
	lw $t1, -16($fp)
	lw $t2, -792($fp)
	sub $t3, $t2, $t1
	li $t4, 15077
	sw $t0, -2056($fp)
	ble $t3, $t4, label439

	j label440

label439:
	li $t0, 1
	sw $t0, -2056($fp)

label440:
	li $t0, 11281
	sw $t0, -2060($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2060($fp)
	move $a2, $t0
	lw $t1, -888($fp)
	move $a1, $t1
	lw $t2, -2056($fp)
	move $a0, $t2
	jal id_Ns00
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2064($fp)

	lw $t0, -2064($fp)
	lw $t1, -2040($fp)
	bne $t1, $t0, label429

	j label430

label429:
	li $t0, 1
	sw $t0, -2036($fp)

label430:

	li $v0, 1
	lw $t0, -1844($fp)
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
	li $t1, 19168
	move $v0, $t1
	lw $ra, 2856($sp)
	lw $fp, 2852($sp)
	addi $sp, $sp, 2860
	jr $ra

	li $t0, 63288
	move $t1, $t0
	li $t0, 8399
	move $t2, $t0
	li $t0, 0
	addi $t3, $fp, -2112
	li $t4, 0
	li $t5, 3
	mul $t0, $t0, $t5
	add $t0, $t0, $t4
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t3, $t0
	li $t0, 18183
	sw $t0, 0($t4)
	li $t3, 0
	addi $t5, $fp, -2112
	li $t6, 1
	li $t7, 3
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 20773
	sw $t3, 0($t6)
	li $t5, 0
	addi $t7, $fp, -2112
	li $t8, 2
	li $t9, 3
	mul $t5, $t5, $t9
	add $t5, $t5, $t8
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t7, $t5
	li $t5, 53855
	sw $t5, 0($t8)
	sw $t1, -2116($fp)
	sw $t2, -2120($fp)

label441:
	li $t0, 0
	lw $t1, -908($fp)
	bne $t1, $t0, label442

	j label443

label442:
	li $t0, 0
	addi $t1, $fp, -2264
	li $t2, 0
	li $t3, 9
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 37486
	sw $t0, 0($t2)
	li $t1, 0
	addi $t3, $fp, -2264
	li $t4, 1
	li $t5, 9
	mul $t1, $t1, $t5
	add $t1, $t1, $t4
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t3, $t1
	li $t1, 52418
	sw $t1, 0($t4)
	li $t3, 0
	addi $t5, $fp, -2264
	li $t6, 2
	li $t7, 9
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 53507
	sw $t3, 0($t6)
	li $t5, 0
	addi $t7, $fp, -2264
	li $t8, 3
	li $t9, 9
	mul $t5, $t5, $t9
	add $t5, $t5, $t8
	li $t8, 4
	mul $t5, $t5, $t8
	add $t8, $t7, $t5
	li $t5, 17525
	sw $t5, 0($t8)
	li $t7, 0
	addi $t9, $fp, -2264
	li $s0, 4
	li $s1, 9
	mul $t7, $t7, $s1
	add $t7, $t7, $s0
	li $s0, 4
	mul $t7, $t7, $s0
	add $s0, $t9, $t7
	li $t7, 13011
	sw $t7, 0($s0)
	li $t9, 0
	addi $s1, $fp, -2264
	li $s2, 5
	li $s3, 9
	mul $t9, $t9, $s3
	add $t9, $t9, $s2
	li $s2, 4
	mul $t9, $t9, $s2
	add $s2, $s1, $t9
	li $t9, 53123
	sw $t9, 0($s2)
	li $s1, 0
	addi $s3, $fp, -2264
	li $s4, 6
	li $s5, 9
	mul $s1, $s1, $s5
	add $s1, $s1, $s4
	li $s4, 4
	mul $s1, $s1, $s4
	add $s4, $s3, $s1
	li $s1, 62794
	sw $s1, 0($s4)
	li $s3, 0
	addi $s5, $fp, -2264
	li $s6, 7
	li $s7, 9
	mul $s3, $s3, $s7
	add $s3, $s3, $s6
	li $s6, 4
	mul $s3, $s3, $s6
	add $s6, $s5, $s3
	li $s3, 8388
	sw $s3, 0($s6)
	li $s5, 0
	addi $s7, $fp, -2264
	sw $s6, -3328($fp)
	li $s6, 8
	sw $s4, -3332($fp)
	li $s4, 9
	mul $s5, $s5, $s4
	add $s4, $s5, $s6
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 5456
	sw $s4, 0($s5)
	li $s6, 20234
	move $s7, $s6
	li $s6, 7590
	sw $s7, -2268($fp)
	move $s7, $s6
	li $s6, 41179
	sw $s7, -2272($fp)
	move $s7, $s6
	li $s6, 31610
	sw $s7, -2276($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -2280($fp)
	li $s7, 63578
	sw $s6, -2284($fp)
	lw $s6, -748($fp)
	div $s6, $s7
	sw $s5, -3336($fp)
	mflo $s5
	li $s7, 54912
	sw $s6, -748($fp)
	mul $s6, $s5, $s7
	li $s5, 39067
	div $s6, $s5
	mflo $s7
	lw $s5, -876($fp)
	mul $s6, $s7, $s5
	li $s7, 0
	sw $s6, -2288($fp)
	addi $s6, $fp, -2112
	sw $s5, -876($fp)
	li $s5, 3
	mul $s7, $s7, $s5
	lw $s5, -888($fp)
	add $s7, $s7, $s5
	sw $s5, -888($fp)
	li $s5, 4
	mul $s7, $s7, $s5
	add $s5, $s6, $s7
	lw $s7, -896($fp)
	move $s6, $s7
	sw $s7, -896($fp)
	li $s7, 27027
	sw $s6, -808($fp)
	lw $s6, -2116($fp)
	sw $s5, -2292($fp)
	mul $s5, $s6, $s7
	li $s7, 63810
	sw $s6, -2116($fp)
	move $s6, $s7
	li $s7, 0
	sw $s7, -2300($fp)
	li $s7, 0
	sw $s5, -2296($fp)
	sw $s6, -12($fp)
	sw $s6, -12($fp)
	lw $s6, -860($fp)
	bne $s6, $s7, label449

	j label447

label449:
	li $t0, 3587
	li $t1, 0
	bne $t0, $t1, label448

	j label447

label448:
	li $t0, 0
	lw $t1, -916($fp)
	bne $t1, $t0, label446

	j label447

label446:
	li $t0, 1
	sw $t0, -2300($fp)

label447:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -2304($fp)
	sw $t1, -2308($fp)
	lw $t3, -2280($fp)
	bne $t3, $t2, label452

	j label454

label454:
	li $t0, 20594
	li $t1, 0
	bne $t0, $t1, label452

	j label453

label452:
	li $t0, 1
	sw $t0, -2308($fp)

label453:
	li $t0, 0
	addi $t1, $fp, -552
	li $t2, 3
	mul $t0, $t0, $t2
	lw $t2, -828($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	li $t0, 49854
	lw $t1, -772($fp)
	mul $t4, $t0, $t1
	li $t0, 35447
	lw $t5, 0($t3)
	sw $t0, -2316($fp)
	sw $t4, -2312($fp)
	sw $t5, -2320($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2316($fp)
	move $a3, $t0
	lw $t1, -2312($fp)
	move $a2, $t1
	lw $t2, -2320($fp)
	move $a1, $t2
	lw $t3, -2308($fp)
	move $a0, $t3
	jal id_DP0w5FWFu
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2324($fp)

	li $t0, 9936
	lw $t1, -2324($fp)
	ble $t1, $t0, label450

	j label451

label450:
	li $t0, 1
	sw $t0, -2304($fp)

label451:
	li $t0, 64931
	li $t1, 46728
	div $t0, $t1
	mflo $t2
	sw $t2, -2328($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2328($fp)
	move $a2, $t0
	lw $t1, -2304($fp)
	move $a1, $t1
	lw $t2, -2300($fp)
	move $a0, $t2
	jal id_Ns00
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2332($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -784($fp)
	sw $t0, 0($sp)
	lw $t1, -2332($fp)
	move $a3, $t1
	lw $t2, -12($fp)
	move $a2, $t2
	lw $t3, -2296($fp)
	move $a1, $t3
	lw $t4, -808($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -2336($fp)

	lw $t1, -2292($fp)
	lw $t0, 0($t1)
	lw $t2, -2336($fp)
	mul $t3, $t0, $t2
	li $t0, -1
	mul $t4, $t0, $t3
	lw $t0, -2288($fp)
	bne $t0, $t4, label444

	j label445

label444:
	li $t0, 1
	sw $t0, -2284($fp)

label445:
	li $t0, 29105
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, -1
	mul $t1, $t0, $t2
	li $t0, 0
	li $t2, 0
	sw $t0, -2344($fp)
	sw $t1, -2340($fp)
	lw $t3, -784($fp)
	bne $t3, $t2, label459

	j label460

label459:
	li $t0, 1
	sw $t0, -2344($fp)

label460:
	li $t0, 0
	li $t1, 62683
	li $t2, 0
	sw $t0, -2348($fp)
	bne $t1, $t2, label463

	j label461

label463:
	li $t0, 0
	lw $t1, -792($fp)
	bne $t1, $t0, label461

	j label462

label461:
	li $t0, 1
	sw $t0, -2348($fp)

label462:
	li $t0, 55127
	li $t1, 0
	li $t2, 47288
	li $t3, 0
	sw $t0, -2352($fp)
	sw $t1, -2356($fp)
	bne $t2, $t3, label465

	j label464

label464:
	li $t0, 1
	sw $t0, -2356($fp)

label465:
	li $t0, 0
	li $t1, 17921
	sw $t0, -2360($fp)
	lw $t2, -840($fp)
	bge $t1, $t2, label466

	j label467

label466:
	li $t0, 1
	sw $t0, -2360($fp)

label467:
	li $t0, 0
	addi $t1, $fp, -2264
	li $t2, 9
	mul $t0, $t0, $t2
	lw $t2, -824($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	lw $t1, -780($fp)
	mul $t3, $t0, $t1
	li $t0, 0
	addi $t4, $fp, -120
	li $t5, 6
	mul $t0, $t0, $t5
	lw $t5, -752($fp)
	add $t0, $t0, $t5
	li $t6, 4
	mul $t0, $t0, $t6
	add $t6, $t4, $t0
	li $t0, 0
	li $t4, 0
	sw $t0, -2372($fp)
	sw $t3, -2364($fp)
	sw $t6, -2368($fp)
	lw $t7, -876($fp)
	bne $t7, $t4, label470

	j label469

label470:
	li $t0, 43446
	li $t1, 0
	bne $t0, $t1, label468

	j label469

label468:
	li $t0, 1
	sw $t0, -2372($fp)

label469:
	li $t0, 19238
	move $t1, $t0
	lw $t2, -2368($fp)
	lw $t0, 0($t2)
	sw $t0, -2376($fp)
	sw $t1, -864($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -864($fp)
	sw $t0, 0($sp)
	lw $t1, -2372($fp)
	move $a3, $t1
	lw $t2, -2376($fp)
	move $a2, $t2
	lw $t3, -2364($fp)
	move $a1, $t3
	lw $t4, -2360($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -2380($fp)

	li $t0, 4803
	lw $t1, -2380($fp)
	mul $t2, $t1, $t0
	li $t0, 0
	li $t3, 0
	sw $t0, -2388($fp)
	sw $t2, -2384($fp)
	sw $t3, -2392($fp)
	lw $t4, -792($fp)
	lw $t5, -896($fp)
	bge $t5, $t4, label473

	j label474

label473:
	li $t0, 1
	sw $t0, -2392($fp)

label474:
	lw $t0, -756($fp)
	lw $t1, -2392($fp)
	beq $t1, $t0, label471

	j label472

label471:
	li $t0, 1
	sw $t0, -2388($fp)

label472:
	lw $t1, -808($fp)
	move $t0, $t1
	sw $t0, -728($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -728($fp)
	sw $t0, 0($sp)
	lw $t1, -2388($fp)
	move $a3, $t1
	lw $t2, -2384($fp)
	move $a2, $t2
	lw $t3, -2356($fp)
	move $a1, $t3
	lw $t4, -2352($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -2396($fp)

	lw $t0, -880($fp)
	lw $t1, -2276($fp)
	div $t1, $t0
	mflo $t2
	sw $t2, -2400($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -812($fp)
	sw $t0, 0($sp)
	lw $t1, -2400($fp)
	move $a3, $t1
	lw $t2, -2396($fp)
	move $a2, $t2
	lw $t3, -2348($fp)
	move $a1, $t3
	lw $t4, -2344($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -2404($fp)

	lw $t1, -12($fp)
	move $t0, $t1
	li $t2, 0
	li $t3, 31417
	li $t4, 0
	sw $t0, -836($fp)
	sw $t2, -2408($fp)
	bne $t3, $t4, label476

	j label475

label475:
	li $t0, 1
	sw $t0, -2408($fp)

label476:
	li $t0, 36764
	lw $t1, -2408($fp)
	div $t1, $t0
	mflo $t2
	li $t0, 0
	li $t3, 0
	sw $t0, -2416($fp)
	sw $t2, -2412($fp)
	lw $t4, -732($fp)
	bne $t4, $t3, label477

	j label478

label477:
	li $t0, 1
	sw $t0, -2416($fp)

label478:
	li $t0, 17815
	lw $t1, -776($fp)
	div $t1, $t0
	mflo $t2
	li $t0, 0
	li $t3, 0
	sw $t0, -2424($fp)
	sw $t2, -2420($fp)
	lw $t4, -2268($fp)
	bne $t4, $t3, label480

	j label479

label479:
	li $t0, 1
	sw $t0, -2424($fp)

label480:
	lw $t0, -2272($fp)
	lw $t1, -2424($fp)
	add $t2, $t1, $t0
	sw $t2, -2428($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2428($fp)
	sw $t0, 0($sp)
	lw $t1, -2420($fp)
	move $a3, $t1
	lw $t2, -2416($fp)
	move $a2, $t2
	lw $t3, -876($fp)
	move $a1, $t3
	lw $t4, -2412($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -2432($fp)

	lw $t0, -780($fp)
	lw $t1, -2432($fp)
	sub $t2, $t1, $t0
	sw $t2, -2436($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2436($fp)
	move $a3, $t0
	lw $t1, -836($fp)
	move $a2, $t1
	lw $t2, -2404($fp)
	move $a1, $t2
	lw $t3, -2340($fp)
	move $a0, $t3
	jal id_DP0w5FWFu
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2440($fp)

	li $t0, -1
	lw $t1, -2440($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	li $t3, 0
	sw $t0, -2448($fp)
	sw $t2, -2444($fp)
	lw $t4, -784($fp)
	bne $t4, $t3, label481

	j label482

label481:
	li $t0, 1
	sw $t0, -2448($fp)

label482:
	lw $t0, -2448($fp)
	lw $t1, -2444($fp)
	sub $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label455

	j label458

label458:
	li $t0, -1
	lw $t1, -828($fp)
	mul $t2, $t0, $t1
	li $t0, -1
	mul $t3, $t0, $t2
	li $t0, 0
	bne $t3, $t0, label456

	j label455

label455:
	lw $t1, -796($fp)
	move $t0, $t1
	sw $t0, -812($fp)
	j label457

label456:
	li $t0, 0
	li $t1, 0
	li $t2, 19004
	li $t3, 0
	sw $t0, -2452($fp)
	sw $t1, -2456($fp)
	bne $t2, $t3, label485

	j label486

label485:
	li $t0, 1
	sw $t0, -2456($fp)

label486:
	li $t0, -1
	lw $t1, -800($fp)
	mul $t2, $t0, $t1
	lw $t0, -2456($fp)
	div $t0, $t2
	mflo $t3
	li $t2, 34022
	bgt $t3, $t2, label483

	j label484

label483:
	li $t0, 1
	sw $t0, -2452($fp)

label484:

label457:

label487:
	li $t0, 26203
	li $t1, 24460
	lw $t2, -2268($fp)
	mul $t3, $t2, $t1
	li $t1, 54256
	div $t3, $t1
	mflo $t4
	sub $t1, $t0, $t4
	li $t0, 0
	addi $t3, $fp, -552
	li $t4, 0
	li $t5, 33793
	sw $t0, -2464($fp)
	sw $t1, -2460($fp)
	sw $t3, -2468($fp)
	sw $t4, -2472($fp)
	lw $t6, -748($fp)
	bne $t5, $t6, label490

	j label491

label490:
	li $t0, 1
	sw $t0, -2472($fp)

label491:
	li $t0, 3
	lw $t1, -2464($fp)
	mul $t1, $t1, $t0
	lw $t0, -2472($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -2468($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	sw $t1, -2464($fp)
	lw $t3, -2460($fp)
	bge $t3, $t4, label488

	j label489

label488:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 0
	li $t4, 0
	sw $t0, -2476($fp)
	sw $t1, -2480($fp)
	sw $t2, -2484($fp)
	sw $t3, -2488($fp)
	lw $t5, -892($fp)
	bne $t5, $t4, label499

	j label498

label498:
	li $t0, 1
	sw $t0, -2488($fp)

label499:
	li $t0, 104
	lw $t1, -2488($fp)
	bgt $t1, $t0, label496

	j label497

label496:
	li $t0, 1
	sw $t0, -2484($fp)

label497:
	li $t0, 0
	li $t1, 0
	sw $t0, -2492($fp)
	lw $t2, -808($fp)
	bne $t2, $t1, label503

	j label502

label503:
	li $t0, 20331
	li $t1, 0
	bne $t0, $t1, label500

	j label502

label502:
	li $t0, 31835
	li $t1, 0
	bne $t0, $t1, label500

	j label501

label500:
	li $t0, 1
	sw $t0, -2492($fp)

label501:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -2496($fp)
	sw $t1, -2500($fp)
	lw $t3, -820($fp)
	bne $t3, $t2, label507

	j label506

label506:
	li $t0, 1
	sw $t0, -2500($fp)

label507:
	lw $t0, -20($fp)
	lw $t1, -2500($fp)
	beq $t1, $t0, label504

	j label505

label504:
	li $t0, 1
	sw $t0, -2496($fp)

label505:
	li $t0, 0
	li $t1, 0
	li $t2, 55016
	li $t3, 0
	sw $t0, -2504($fp)
	sw $t1, -2508($fp)
	bne $t2, $t3, label511

	j label510

label510:
	li $t0, 1
	sw $t0, -2508($fp)

label511:
	lw $t0, -24($fp)
	lw $t1, -2508($fp)
	blt $t1, $t0, label508

	j label509

label508:
	li $t0, 1
	sw $t0, -2504($fp)

label509:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2504($fp)
	move $a3, $t0
	lw $t1, -2496($fp)
	move $a2, $t1
	lw $t2, -2492($fp)
	move $a1, $t2
	lw $t3, -2484($fp)
	move $a0, $t3
	jal id_DP0w5FWFu
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2512($fp)

	li $t0, 59398
	li $t1, 1
	mul $t2, $t0, $t1
	li $t0, -1
	mul $t1, $t0, $t2
	lw $t0, -2512($fp)
	blt $t0, $t1, label494

	j label495

label494:
	li $t0, 1
	sw $t0, -2480($fp)

label495:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -504
	li $t3, 1
	mul $t1, $t1, $t3
	lw $t3, -716($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	li $t1, -1
	lw $t2, 0($t4)
	mul $t4, $t1, $t2
	li $t1, 0
	li $t2, 0
	addi $t5, $fp, -2264
	li $t6, 4
	li $t7, 9
	mul $t2, $t2, $t7
	add $t2, $t2, $t6
	li $t6, 4
	mul $t2, $t2, $t6
	add $t6, $t5, $t2
	lw $t2, 0($t6)
	li $t5, 0
	sw $t0, -2516($fp)
	sw $t1, -2524($fp)
	sw $t4, -2520($fp)
	bne $t2, $t5, label515

	j label514

label514:
	li $t0, 1
	sw $t0, -2524($fp)

label515:
	li $t0, 0
	addi $t1, $fp, -2264
	li $t2, 6
	li $t3, 9
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	lw $t0, 0($t2)
	sw $t0, -2528($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2528($fp)
	move $a2, $t0
	lw $t1, -2524($fp)
	move $a1, $t1
	lw $t2, -2520($fp)
	move $a0, $t2
	jal id_Ns00
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -2532($fp)

	li $t0, 0
	lw $t1, -2532($fp)
	bne $t1, $t0, label513

	j label512

label512:
	li $t0, 1
	sw $t0, -2516($fp)

label513:
	lw $t0, -2516($fp)
	lw $t1, -2480($fp)
	blt $t1, $t0, label492

	j label493

label492:
	li $t0, 1
	sw $t0, -2476($fp)

label493:
	j label487

label489:
	li $t0, 0
	li $t1, 0
	li $t2, 32896
	lw $t3, -820($fp)
	mul $t4, $t2, $t3
	li $t2, 23857
	sw $t0, -2536($fp)
	sw $t1, -2540($fp)
	beq $t4, $t2, label518

	j label519

label518:
	li $t0, 1
	sw $t0, -2540($fp)

label519:
	lw $t0, -864($fp)
	lw $t1, -2540($fp)
	bge $t1, $t0, label516

	j label517

label516:
	li $t0, 1
	sw $t0, -2536($fp)

label517:
	lw $t1, -2536($fp)
	move $t0, $t1
	li $t2, 0
	li $t3, 37003
	li $t4, -1
	mul $t5, $t4, $t3
	li $t3, 0
	sw $t0, -720($fp)
	sw $t2, -2544($fp)
	bne $t5, $t3, label521

	j label520

label520:
	li $t0, 1
	sw $t0, -2544($fp)

label521:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -344
	li $t3, 5
	mul $t1, $t1, $t3
	lw $t3, -744($fp)
	add $t1, $t1, $t3
	li $t4, 4
	mul $t1, $t1, $t4
	add $t4, $t2, $t1
	lw $t1, 0($t4)
	li $t2, 0
	sw $t0, -2548($fp)
	bne $t1, $t2, label523

	j label522

label522:
	li $t0, 1
	sw $t0, -2548($fp)

label523:
	li $t0, 0
	li $t1, 14088
	lw $t2, -828($fp)
	div $t1, $t2
	mflo $t3
	lw $t1, -724($fp)
	add $t4, $t3, $t1
	li $t3, 0
	addi $t5, $fp, -488
	li $t6, 8
	li $t7, 9
	mul $t3, $t3, $t7
	add $t3, $t3, $t6
	li $t6, 4
	mul $t3, $t3, $t6
	add $t6, $t5, $t3
	li $t3, 3679
	lw $t5, 0($t6)
	sub $t6, $t5, $t3
	li $t3, 0
	li $t5, 34714
	sw $t0, -2552($fp)
	sw $t3, -2564($fp)
	sw $t4, -2556($fp)
	sw $t6, -2560($fp)
	lw $t7, -892($fp)
	bne $t7, $t5, label527

	j label529

label529:
	li $t0, 0
	lw $t1, -844($fp)
	bne $t1, $t0, label527

	j label528

label527:
	li $t0, 1
	sw $t0, -2564($fp)

label528:
	lw $t0, -888($fp)
	lw $t1, -788($fp)
	add $t2, $t1, $t0
	li $t3, 0
	li $t4, 52071
	li $t5, 0
	sw $t2, -2568($fp)
	sw $t3, -2572($fp)
	bne $t4, $t5, label531

	j label530

label530:
	li $t0, 1
	sw $t0, -2572($fp)

label531:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2572($fp)
	sw $t0, 0($sp)
	lw $t1, -2568($fp)
	move $a3, $t1
	lw $t2, -2564($fp)
	move $a2, $t2
	lw $t3, -2560($fp)
	move $a1, $t3
	lw $t4, -2556($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -2576($fp)

	li $t0, 0
	lw $t1, -2576($fp)
	bne $t1, $t0, label526

	j label525

label526:
	li $t0, 0
	lw $t1, -844($fp)
	bne $t1, $t0, label524

	j label525

label524:
	li $t0, 1
	sw $t0, -2552($fp)

label525:
	li $t0, 47125
	li $t1, 53953
	div $t0, $t1
	mflo $t2
	sw $t2, -2580($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2580($fp)
	move $a3, $t0
	lw $t1, -2552($fp)
	move $a2, $t1
	lw $t2, -2548($fp)
	move $a1, $t2
	lw $t3, -2544($fp)
	move $a0, $t3
	jal id_DP0w5FWFu
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2584($fp)

	lw $t0, -848($fp)
	lw $t1, -2584($fp)
	div $t1, $t0
	mflo $t2
	move $t3, $t2
	sw $t3, -740($fp)

label532:
	li $t0, 0
	li $t1, 56875
	li $t2, -1
	mul $t3, $t2, $t1
	li $t1, 0
	sw $t0, -2588($fp)
	bne $t3, $t1, label536

	j label535

label535:
	li $t0, 1
	sw $t0, -2588($fp)

label536:
	li $t0, 0
	li $t1, 13006
	li $t2, -1
	mul $t3, $t2, $t1
	li $t1, 0
	li $t2, 0
	sw $t0, -2592($fp)
	sw $t1, -2600($fp)
	sw $t3, -2596($fp)
	lw $t4, -864($fp)
	bne $t4, $t2, label539

	j label541

label541:
	li $t0, 0
	lw $t1, -768($fp)
	bne $t1, $t0, label539

	j label540

label539:
	li $t0, 1
	sw $t0, -2600($fp)

label540:
	li $t0, 25181
	li $t1, 0
	li $t2, 0
	sw $t0, -2604($fp)
	sw $t1, -2608($fp)
	lw $t3, -800($fp)
	bne $t3, $t2, label543

	j label542

label542:
	li $t0, 1
	sw $t0, -2608($fp)

label543:
	lw $t0, -828($fp)
	lw $t1, -2608($fp)
	sub $t2, $t1, $t0
	li $t3, 0
	li $t4, 0
	li $t5, 0
	sw $t2, -2612($fp)
	sw $t3, -2616($fp)
	sw $t4, -2620($fp)
	lw $t6, -20($fp)
	bne $t6, $t5, label547

	j label546

label546:
	li $t0, 1
	sw $t0, -2620($fp)

label547:
	lw $t0, -792($fp)
	lw $t1, -2620($fp)
	beq $t1, $t0, label544

	j label545

label544:
	li $t0, 1
	sw $t0, -2616($fp)

label545:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2616($fp)
	sw $t0, 0($sp)
	lw $t1, -2612($fp)
	move $a3, $t1
	lw $t2, -2604($fp)
	move $a2, $t2
	lw $t3, -2600($fp)
	move $a1, $t3
	lw $t4, -2596($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -2624($fp)

	li $t0, 0
	lw $t1, -2624($fp)
	bne $t1, $t0, label538

	j label537

label537:
	li $t0, 1
	sw $t0, -2592($fp)

label538:
	lw $t0, -2592($fp)
	lw $t1, -2588($fp)
	blt $t1, $t0, label533

	j label534

label533:
	li $t0, 0
	li $t1, 9154
	li $t2, -1
	mul $t3, $t2, $t1
	li $t1, 0
	sw $t0, -2628($fp)
	bne $t3, $t1, label548

	j label549

label548:
	li $t0, 1
	sw $t0, -2628($fp)

label549:
	j label532

label534:
	j label441

label443:
	li $t0, 0
	li $t1, 0
	li $t2, 32010
	lw $t3, -2120($fp)
	sub $t4, $t2, $t3
	li $t2, 59203
	sw $t0, -2632($fp)
	sw $t1, -2636($fp)
	beq $t4, $t2, label555

	j label556

label555:
	li $t0, 1
	sw $t0, -2636($fp)

label556:
	li $t0, 35357
	lw $t1, -2636($fp)
	bne $t1, $t0, label553

	j label554

label553:
	li $t0, 1
	sw $t0, -2632($fp)

label554:
	lw $t1, -2632($fp)
	move $t0, $t1
	li $t2, 0
	sw $t0, -820($fp)
	bne $t0, $t2, label550

	j label551

label550:
	li $t0, -1
	lw $t1, -2116($fp)
	mul $t2, $t0, $t1
	j label552

label551:
	li $t0, 56471
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, -1
	mul $t1, $t0, $t2
	lw $t0, -828($fp)
	sub $t2, $t0, $t1
	move $v0, $t2
	lw $ra, 2856($sp)
	lw $fp, 2852($sp)
	addi $sp, $sp, 2860
	jr $ra

	li $t0, 47923
	li $t1, 0
	li $t2, 3614
	li $t3, 0
	sw $t0, -2640($fp)
	sw $t1, -2644($fp)
	bne $t2, $t3, label558

	j label557

label557:
	li $t0, 1
	sw $t0, -2644($fp)

label558:
	li $t0, -1
	lw $t1, -2644($fp)
	mul $t2, $t0, $t1
	lw $t0, -2640($fp)
	mul $t3, $t0, $t2
	li $t2, 0
	li $t4, 0
	addi $t5, $fp, -2112
	li $t6, 2
	li $t7, 3
	mul $t4, $t4, $t7
	add $t4, $t4, $t6
	li $t6, 4
	mul $t4, $t4, $t6
	add $t6, $t5, $t4
	li $t4, 35449
	li $t5, 46055
	div $t4, $t5
	mflo $t7
	li $t4, 0
	addi $t5, $fp, -264
	li $t8, 0
	li $t9, 1
	mul $t4, $t4, $t9
	add $t4, $t4, $t8
	li $t8, 4
	mul $t4, $t4, $t8
	add $t8, $t5, $t4
	lw $t4, 0($t8)
	mul $t5, $t7, $t4
	li $t4, -1
	mul $t7, $t4, $t5
	lw $t4, 0($t6)
	sw $t2, -2648($fp)
	bgt $t4, $t7, label559

	j label560

label559:
	li $t0, 1
	sw $t0, -2648($fp)

label560:
	li $t0, 0
	addi $t1, $fp, -120
	li $t2, 0
	li $t3, 0
	sw $t0, -2652($fp)
	sw $t1, -2656($fp)
	sw $t2, -2660($fp)
	lw $t4, -840($fp)
	bne $t4, $t3, label563

	j label561

label563:
	lw $t0, -784($fp)
	lw $t1, -900($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label561

	j label562

label561:
	li $t0, 1
	sw $t0, -2660($fp)

label562:
	li $t0, 6
	lw $t1, -2652($fp)
	mul $t1, $t1, $t0
	lw $t0, -2660($fp)
	add $t1, $t1, $t0
	li $t2, 4
	mul $t1, $t1, $t2
	lw $t2, -2656($fp)
	add $t3, $t2, $t1
	lw $t4, 0($t3)
	sw $t1, -2652($fp)
	move $v0, $t4
	lw $ra, 2856($sp)
	lw $fp, 2852($sp)
	addi $sp, $sp, 2860
	jr $ra

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -504
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	li $t2, 0
	sw $t0, -2664($fp)
	bne $t1, $t2, label565

	j label564

label564:
	li $t0, 1
	sw $t0, -2664($fp)

label565:
	li $t0, 42696
	li $t1, 5881
	move $t2, $t1
	lw $t1, -744($fp)
	lw $t3, -772($fp)
	add $t4, $t3, $t1
	lw $t5, -736($fp)
	sub $t6, $t4, $t5
	li $t4, 26927
	li $t7, -1
	mul $t8, $t7, $t4
	lw $t4, -792($fp)
	sub $t7, $t8, $t4
	sw $t0, -2668($fp)
	sw $t2, -884($fp)
	sw $t6, -2672($fp)
	sw $t7, -2676($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -2676($fp)
	move $a3, $t0
	lw $t1, -2672($fp)
	move $a2, $t1
	lw $t2, -884($fp)
	move $a1, $t2
	lw $t3, -2668($fp)
	move $a0, $t3
	jal id_DP0w5FWFu
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -2680($fp)

	lw $t0, -2680($fp)
	lw $t1, -2664($fp)
	add $t2, $t1, $t0

label552:
	li $t0, 0
	li $t1, 0
	li $t2, 1018
	li $t3, 0
	sw $t0, -2684($fp)
	sw $t1, -2688($fp)
	bne $t2, $t3, label569

	j label568

label568:
	li $t0, 1
	sw $t0, -2688($fp)

label569:
	lw $t0, -2688($fp)
	lw $t1, -812($fp)
	bge $t1, $t0, label566

	j label567

label566:
	li $t0, 1
	sw $t0, -2684($fp)

label567:

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
	li $t1, 0
	addi $t2, $fp, -120
	li $t3, 0
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2692($fp)

	li $v0, 1
	lw $t0, -2692($fp)
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
	sw $t1, -2696($fp)

	li $v0, 1
	lw $t0, -2696($fp)
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
	sw $t1, -2700($fp)

	li $v0, 1
	lw $t0, -2700($fp)
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
	sw $t1, -2704($fp)

	li $v0, 1
	lw $t0, -2704($fp)
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
	sw $t1, -2708($fp)

	li $v0, 1
	lw $t0, -2708($fp)
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
	sw $t1, -2712($fp)

	li $v0, 1
	lw $t0, -2712($fp)
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
	li $t1, 0
	addi $t2, $fp, -248
	li $t3, 0
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2716($fp)

	li $v0, 1
	lw $t0, -2716($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -248
	li $t3, 1
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2720($fp)

	li $v0, 1
	lw $t0, -2720($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -248
	li $t3, 2
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2724($fp)

	li $v0, 1
	lw $t0, -2724($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -248
	li $t3, 3
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2728($fp)

	li $v0, 1
	lw $t0, -2728($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -248
	li $t3, 4
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2732($fp)

	li $v0, 1
	lw $t0, -2732($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -248
	li $t3, 5
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2736($fp)

	li $v0, 1
	lw $t0, -2736($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -248
	li $t3, 6
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2740($fp)

	li $v0, 1
	lw $t0, -2740($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -248
	li $t3, 7
	li $t4, 8
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2744($fp)

	li $v0, 1
	lw $t0, -2744($fp)
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
	addi $t2, $fp, -264
	li $t3, 0
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2748($fp)

	li $v0, 1
	lw $t0, -2748($fp)
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
	li $t1, 0
	addi $t2, $fp, -344
	li $t3, 0
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2752($fp)

	li $v0, 1
	lw $t0, -2752($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -344
	li $t3, 1
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2756($fp)

	li $v0, 1
	lw $t0, -2756($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -344
	li $t3, 2
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2760($fp)

	li $v0, 1
	lw $t0, -2760($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -344
	li $t3, 3
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2764($fp)

	li $v0, 1
	lw $t0, -2764($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -344
	li $t3, 4
	li $t4, 5
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2768($fp)

	li $v0, 1
	lw $t0, -2768($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -488
	li $t3, 0
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2772($fp)

	li $v0, 1
	lw $t0, -2772($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -488
	li $t3, 1
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2776($fp)

	li $v0, 1
	lw $t0, -2776($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -488
	li $t3, 2
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2780($fp)

	li $v0, 1
	lw $t0, -2780($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -488
	li $t3, 3
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2784($fp)

	li $v0, 1
	lw $t0, -2784($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -488
	li $t3, 4
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2788($fp)

	li $v0, 1
	lw $t0, -2788($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -488
	li $t3, 5
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2792($fp)

	li $v0, 1
	lw $t0, -2792($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -488
	li $t3, 6
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2796($fp)

	li $v0, 1
	lw $t0, -2796($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -488
	li $t3, 7
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2800($fp)

	li $v0, 1
	lw $t0, -2800($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -488
	li $t3, 8
	li $t4, 9
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2804($fp)

	li $v0, 1
	lw $t0, -2804($fp)
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

	li $v0, 1
	lw $t0, -840($fp)
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
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2808($fp)

	li $v0, 1
	lw $t0, -2808($fp)
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
	addi $t2, $fp, -552
	li $t3, 0
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2812($fp)

	li $v0, 1
	lw $t0, -2812($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -552
	li $t3, 1
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2816($fp)

	li $v0, 1
	lw $t0, -2816($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -552
	li $t3, 2
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2820($fp)

	li $v0, 1
	lw $t0, -2820($fp)
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
	addi $t2, $fp, -712
	li $t3, 0
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2824($fp)

	li $v0, 1
	lw $t0, -2824($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -712
	li $t3, 1
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2828($fp)

	li $v0, 1
	lw $t0, -2828($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -712
	li $t3, 2
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2832($fp)

	li $v0, 1
	lw $t0, -2832($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -712
	li $t3, 3
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2836($fp)

	li $v0, 1
	lw $t0, -2836($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -712
	li $t3, 4
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2840($fp)

	li $v0, 1
	lw $t0, -2840($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -712
	li $t3, 5
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2844($fp)

	li $v0, 1
	lw $t0, -2844($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -712
	li $t3, 6
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2848($fp)

	li $v0, 1
	lw $t0, -2848($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -712
	li $t3, 7
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2852($fp)

	li $v0, 1
	lw $t0, -2852($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -712
	li $t3, 8
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2856($fp)

	li $v0, 1
	lw $t0, -2856($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -712
	li $t3, 9
	li $t4, 10
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -2860($fp)

	li $v0, 1
	lw $t0, -2860($fp)
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
	li $t1, 42884
	li $t2, -1
	mul $t3, $t2, $t1
	move $v0, $t3
	lw $ra, 2856($sp)
	lw $fp, 2852($sp)
	addi $sp, $sp, 2860
	jr $ra

id_sLn_u:
	addi $sp, $sp, -696
	sw $ra, 692($sp)
	sw $fp, 688($sp)
	addi $fp, $sp, 696
	sw $a0, -12($fp)
	sw $a1, -16($fp)
	sw $a2, -20($fp)
	sw $a3, -24($fp)
	lw $a0, 0($fp)
	sw $a0, -28($fp)

	li $t0, 41015
	move $t1, $t0
	li $t0, 53980
	move $t2, $t0
	li $t0, 11498
	move $t3, $t0
	li $t0, 44695
	move $t4, $t0
	li $t0, 23159
	move $t5, $t0
	li $t0, 63570
	move $t6, $t0
	li $t0, 26284
	move $t7, $t0
	li $t0, 11576
	move $t8, $t0
	li $t0, 54909
	move $t9, $t0
	li $t0, 39291
	move $s0, $t0
	li $t0, 36757
	move $s1, $t0
	li $t0, 0
	addi $s2, $fp, -76
	li $s3, 0
	li $s4, 3
	mul $t0, $t0, $s4
	add $t0, $t0, $s3
	li $s3, 4
	mul $t0, $t0, $s3
	add $s3, $s2, $t0
	li $t0, 64063
	sw $t0, 0($s3)
	li $s2, 0
	addi $s4, $fp, -76
	li $s5, 1
	li $s6, 3
	mul $s2, $s2, $s6
	add $s2, $s2, $s5
	li $s5, 4
	mul $s2, $s2, $s5
	add $s5, $s4, $s2
	li $s2, 5765
	sw $s2, 0($s5)
	li $s4, 0
	addi $s6, $fp, -76
	li $s7, 2
	sw $s5, -700($fp)
	li $s5, 3
	mul $s4, $s4, $s5
	add $s4, $s4, $s7
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s6, $s4
	li $s4, 30424
	sw $s4, 0($s5)
	li $s6, 33884
	move $s7, $s6
	li $s6, 62236
	sw $s7, -236($fp)
	move $s7, $s6
	li $s6, 12811
	sw $s7, -240($fp)
	move $s7, $s6
	li $s6, 37498
	sw $s7, -244($fp)
	move $s7, $s6
	li $s6, 53275
	sw $s7, -248($fp)
	move $s7, $s6
	li $s6, 15530
	sw $s7, -252($fp)
	move $s7, $s6
	li $s6, 7411
	sw $s7, -256($fp)
	move $s7, $s6
	li $s6, 33794
	sw $s7, -260($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -264($fp)
	addi $s7, $fp, -172
	sw $s5, -704($fp)
	li $s5, 0
	sw $s4, -708($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 12111
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -172
	sw $s5, -712($fp)
	li $s5, 1
	sw $s4, -716($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 36186
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -172
	sw $s5, -720($fp)
	li $s5, 2
	sw $s4, -724($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 2067
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -172
	sw $s5, -728($fp)
	li $s5, 3
	sw $s4, -732($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 6141
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -172
	sw $s5, -736($fp)
	li $s5, 4
	sw $s4, -740($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 13347
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -172
	sw $s5, -744($fp)
	li $s5, 5
	sw $s4, -748($fp)
	li $s4, 6
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 7948
	sw $s4, 0($s5)
	li $s6, 0
	addi $s7, $fp, -188
	sw $s5, -752($fp)
	li $s5, 0
	sw $s4, -756($fp)
	li $s4, 1
	mul $s6, $s6, $s4
	add $s4, $s6, $s5
	li $s5, 4
	mul $s4, $s4, $s5
	add $s5, $s7, $s4
	li $s4, 33068
	sw $s4, 0($s5)
	sw $t1, -192($fp)
	sw $t2, -196($fp)
	sw $t3, -200($fp)
	sw $t4, -204($fp)
	sw $t5, -208($fp)
	sw $t6, -212($fp)
	sw $t7, -216($fp)
	sw $t8, -220($fp)
	sw $t9, -224($fp)
	sw $s0, -228($fp)
	sw $s1, -232($fp)

label570:
	li $t0, 0
	addi $t1, $fp, -172
	li $t2, 2
	li $t3, 6
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, -1
	lw $t1, 0($t2)
	mul $t2, $t0, $t1
	li $t0, 0
	li $t1, 8548
	li $t3, 2809
	mul $t4, $t1, $t3
	li $t1, 0
	sw $t0, -272($fp)
	sw $t2, -268($fp)
	bne $t4, $t1, label574

	j label576

label576:
	li $t0, 62331
	li $t1, 0
	bne $t0, $t1, label574

	j label575

label574:
	li $t0, 1
	sw $t0, -272($fp)

label575:
	li $t0, 0
	li $t1, -1
	lw $t2, -200($fp)
	mul $t3, $t1, $t2
	li $t1, 0
	sw $t0, -276($fp)
	bne $t3, $t1, label579

	j label578

label579:
	li $t0, 53243
	li $t1, 0
	bne $t0, $t1, label577

	j label578

label577:
	li $t0, 1
	sw $t0, -276($fp)

label578:
	li $t0, 0
	li $t1, 25968
	li $t2, 60365
	sub $t3, $t1, $t2
	li $t1, 0
	sw $t0, -280($fp)
	bne $t3, $t1, label580

	j label582

label582:
	li $t0, 0
	lw $t1, -236($fp)
	bne $t1, $t0, label580

	j label581

label580:
	li $t0, 1
	sw $t0, -280($fp)

label581:
	li $t0, 0
	li $t1, 13991
	li $t2, 0
	sw $t0, -284($fp)
	bne $t1, $t2, label584

	j label583

label583:
	li $t0, 1
	sw $t0, -284($fp)

label584:
	li $t0, 37544
	lw $t1, -284($fp)
	add $t2, $t1, $t0
	li $t0, 0
	li $t3, 49738
	li $t4, 0
	li $t5, 0
	li $t6, 53282
	sw $t0, -292($fp)
	sw $t2, -288($fp)
	sw $t3, -296($fp)
	sw $t4, -300($fp)
	sw $t5, -304($fp)
	lw $t7, -212($fp)
	beq $t7, $t6, label589

	j label590

label589:
	li $t0, 1
	sw $t0, -304($fp)

label590:
	lw $t0, -192($fp)
	lw $t1, -304($fp)
	beq $t1, $t0, label587

	j label588

label587:
	li $t0, 1
	sw $t0, -300($fp)

label588:
	li $t0, 0
	li $t1, 0
	li $t2, 8765
	li $t3, 0
	sw $t0, -308($fp)
	sw $t1, -312($fp)
	bne $t2, $t3, label594

	j label593

label593:
	li $t0, 1
	sw $t0, -312($fp)

label594:
	lw $t0, -220($fp)
	lw $t1, -312($fp)
	bgt $t1, $t0, label591

	j label592

label591:
	li $t0, 1
	sw $t0, -308($fp)

label592:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -308($fp)
	move $a2, $t0
	lw $t1, -300($fp)
	move $a1, $t1
	lw $t2, -296($fp)
	move $a0, $t2
	jal id_Ns00
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -316($fp)

	li $t0, 0
	lw $t1, -316($fp)
	bne $t1, $t0, label586

	j label585

label585:
	li $t0, 1
	sw $t0, -292($fp)

label586:
	lw $t0, -24($fp)
	lw $t1, -264($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	li $t4, 48265
	li $t5, 0
	sw $t2, -320($fp)
	sw $t3, -324($fp)
	bne $t4, $t5, label595

	j label597

label597:
	li $t0, 0
	lw $t1, -252($fp)
	bne $t1, $t0, label595

	j label596

label595:
	li $t0, 1
	sw $t0, -324($fp)

label596:
	li $t0, 0
	li $t1, 59048
	lw $t2, -244($fp)
	mul $t3, $t1, $t2
	li $t1, 39189
	sw $t0, -328($fp)
	beq $t3, $t1, label598

	j label599

label598:
	li $t0, 1
	sw $t0, -328($fp)

label599:
	li $t0, 0
	sw $t0, -332($fp)
	lw $t1, -220($fp)
	lw $t2, -200($fp)
	bge $t2, $t1, label600

	j label601

label600:
	li $t0, 1
	sw $t0, -332($fp)

label601:
	li $t0, 0
	li $t1, 16613
	sw $t0, -336($fp)
	lw $t2, -16($fp)
	beq $t2, $t1, label602

	j label603

label602:
	li $t0, 1
	sw $t0, -336($fp)

label603:
	li $t0, 0
	li $t1, 0
	li $t2, 55748
	sw $t0, -340($fp)
	sw $t1, -344($fp)
	lw $t3, -228($fp)
	bge $t2, $t3, label606

	j label607

label606:
	li $t0, 1
	sw $t0, -344($fp)

label607:
	li $t0, 52001
	lw $t1, -344($fp)
	ble $t1, $t0, label604

	j label605

label604:
	li $t0, 1
	sw $t0, -340($fp)

label605:
	li $t0, 0
	li $t1, 54111
	lw $t2, -236($fp)
	add $t3, $t1, $t2
	li $t1, 0
	sw $t0, -348($fp)
	bne $t3, $t1, label608

	j label610

label610:
	li $t0, 43488
	li $t1, 0
	bne $t0, $t1, label608

	j label609

label608:
	li $t0, 1
	sw $t0, -348($fp)

label609:
	li $t0, 0
	li $t1, 1995
	lw $t2, -192($fp)
	add $t3, $t2, $t1
	li $t1, 61522
	sw $t0, -352($fp)
	bne $t3, $t1, label611

	j label612

label611:
	li $t0, 1
	sw $t0, -352($fp)

label612:
	li $t0, 0
	li $t1, 0
	li $t2, 11746
	sw $t0, -356($fp)
	sw $t1, -360($fp)
	lw $t3, -220($fp)
	beq $t3, $t2, label615

	j label616

label615:
	li $t0, 1
	sw $t0, -360($fp)

label616:
	li $t0, 14106
	lw $t1, -360($fp)
	bne $t1, $t0, label613

	j label614

label613:
	li $t0, 1
	sw $t0, -356($fp)

label614:
	li $t0, 32172
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, -1
	mul $t1, $t0, $t2
	sw $t1, -364($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -364($fp)
	sw $t0, 0($sp)
	lw $t1, -356($fp)
	move $a3, $t1
	lw $t2, -352($fp)
	move $a2, $t2
	lw $t3, -348($fp)
	move $a1, $t3
	lw $t4, -340($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -368($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -368($fp)
	sw $t0, 0($sp)
	lw $t1, -336($fp)
	move $a3, $t1
	lw $t2, -332($fp)
	move $a2, $t2
	lw $t3, -328($fp)
	move $a1, $t3
	lw $t4, -324($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -372($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -372($fp)
	sw $t0, 0($sp)
	lw $t1, -320($fp)
	move $a3, $t1
	lw $t2, -292($fp)
	move $a2, $t2
	lw $t3, -288($fp)
	move $a1, $t3
	lw $t4, -280($fp)
	move $a0, $t4
	jal id_sLn_u
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -376($fp)

	li $t0, 13814
	lw $t1, -252($fp)
	div $t1, $t0
	mflo $t2
	lw $t0, -248($fp)
	div $t2, $t0
	mflo $t3
	li $t2, 0
	li $t4, 20247
	li $t5, 45519
	sub $t6, $t4, $t5
	li $t4, 0
	sw $t2, -384($fp)
	sw $t3, -380($fp)
	bne $t6, $t4, label617

	j label619

label619:
	li $t0, 21762
	li $t1, 0
	bne $t0, $t1, label617

	j label618

label617:
	li $t0, 1
	sw $t0, -384($fp)

label618:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -384($fp)
	move $a3, $t0
	lw $t1, -380($fp)
	move $a2, $t1
	lw $t2, -376($fp)
	move $a1, $t2
	lw $t3, -276($fp)
	move $a0, $t3
	jal id_DP0w5FWFu
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -388($fp)

	li $t0, 0
	li $t1, 0
	sw $t0, -392($fp)
	lw $t2, -28($fp)
	bne $t2, $t1, label621

	j label622

label622:
	li $t0, 53316
	li $t1, 0
	bne $t0, $t1, label620

	j label621

label620:
	li $t0, 1
	sw $t0, -392($fp)

label621:
	li $t0, 59884
	li $t1, 0
	li $t2, 7059
	li $t3, 61864
	add $t4, $t2, $t3
	li $t2, 0
	sw $t0, -396($fp)
	sw $t1, -400($fp)
	bne $t4, $t2, label625

	j label624

label625:
	li $t0, 0
	lw $t1, -240($fp)
	bne $t1, $t0, label623

	j label624

label623:
	li $t0, 1
	sw $t0, -400($fp)

label624:
	li $t0, 0
	li $t1, 0
	sw $t0, -404($fp)
	lw $t2, -264($fp)
	bne $t2, $t1, label628

	j label627

label628:
	li $t0, 0
	lw $t1, -252($fp)
	bne $t1, $t0, label626

	j label627

label626:
	li $t0, 1
	sw $t0, -404($fp)

label627:
	li $t0, 0
	sw $t0, -408($fp)
	lw $t1, -228($fp)
	lw $t2, -240($fp)
	bne $t2, $t1, label629

	j label630

label629:
	li $t0, 1
	sw $t0, -408($fp)

label630:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -408($fp)
	sw $t0, 0($sp)
	lw $t1, -404($fp)
	move $a3, $t1
	lw $t2, -400($fp)
	move $a2, $t2
	lw $t3, -396($fp)
	move $a1, $t3
	lw $t4, -392($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -412($fp)

	li $t0, 62694
	lw $t1, -412($fp)
	sub $t2, $t1, $t0
	li $t0, 3854
	move $t3, $t0
	li $t0, 0
	li $t4, 49571
	lw $t5, -256($fp)
	add $t6, $t4, $t5
	li $t4, 0
	sw $t0, -420($fp)
	sw $t2, -416($fp)
	sw $t3, -232($fp)
	bne $t6, $t4, label633

	j label632

label633:
	li $t0, 23126
	li $t1, 0
	bne $t0, $t1, label631

	j label632

label631:
	li $t0, 1
	sw $t0, -420($fp)

label632:
	li $t0, 0
	li $t1, 0
	sw $t0, -424($fp)
	lw $t2, -228($fp)
	bne $t2, $t1, label635

	j label634

label634:
	li $t0, 1
	sw $t0, -424($fp)

label635:
	li $t0, -1
	lw $t1, -424($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	li $t3, 64219
	sw $t0, -432($fp)
	sw $t2, -428($fp)
	lw $t4, -264($fp)
	bne $t3, $t4, label638

	j label637

label638:
	li $t0, 0
	lw $t1, -28($fp)
	bne $t1, $t0, label636

	j label637

label636:
	li $t0, 1
	sw $t0, -432($fp)

label637:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -204($fp)
	sw $t0, 0($sp)
	lw $t1, -432($fp)
	move $a3, $t1
	lw $t2, -428($fp)
	move $a2, $t2
	lw $t3, -420($fp)
	move $a1, $t3
	lw $t4, -232($fp)
	move $a0, $t4
	jal id_sLn_u
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -436($fp)

	li $t0, 63562
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, -1
	mul $t1, $t0, $t2
	sw $t1, -440($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -440($fp)
	sw $t0, 0($sp)
	lw $t1, -436($fp)
	move $a3, $t1
	lw $t2, -416($fp)
	move $a2, $t2
	lw $t3, -388($fp)
	move $a1, $t3
	lw $t4, -272($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -444($fp)

	lw $t0, -444($fp)
	lw $t1, -268($fp)
	add $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label573

	j label572

label573:
	lw $t0, -28($fp)
	lw $t1, -260($fp)
	sub $t2, $t1, $t0
	li $t3, 60671
	sub $t4, $t2, $t3
	li $t2, 48421
	lw $t3, -252($fp)
	add $t5, $t2, $t3
	bgt $t4, $t5, label571

	j label572

label571:
	li $t0, 0
	li $t1, 51309
	lw $t2, -240($fp)
	div $t2, $t1
	mflo $t3
	li $t1, -1
	mul $t4, $t1, $t3
	li $t1, 0
	sw $t0, -448($fp)
	bne $t4, $t1, label639

	j label641

label641:
	li $t0, 3900
	li $t1, 0
	bne $t0, $t1, label642

	j label640

label642:
	li $t0, 31150
	li $t1, 0
	bne $t0, $t1, label639

	j label640

label639:
	li $t0, 1
	sw $t0, -448($fp)

label640:
	lw $t1, -448($fp)
	move $t0, $t1
	li $t2, 0
	li $t3, 44821
	li $t4, 0
	sw $t0, -224($fp)
	sw $t2, -452($fp)
	bne $t3, $t4, label646

	j label644

label646:
	li $t0, 0
	addi $t1, $fp, -76
	li $t2, 3
	mul $t0, $t0, $t2
	lw $t2, -252($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	li $t1, 0
	bne $t0, $t1, label645

	j label644

label645:
	li $t0, 0
	li $t1, 0
	sw $t0, -456($fp)
	lw $t2, -224($fp)
	bne $t2, $t1, label648

	j label647

label647:
	li $t0, 1
	sw $t0, -456($fp)

label648:
	li $t0, -1
	lw $t1, -24($fp)
	mul $t2, $t0, $t1
	lw $t0, -456($fp)
	mul $t3, $t0, $t2
	li $t2, 0
	bne $t3, $t2, label643

	j label644

label643:
	li $t0, 1
	sw $t0, -452($fp)

label644:
	j label570

label572:
	li $t0, 0
	addi $t1, $fp, -188
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
	li $t0, -1
	mul $t1, $t0, $t2
	li $t0, -1
	mul $t2, $t0, $t1
	li $t0, 0
	li $t1, 35033
	li $t3, 29555
	lw $t4, -208($fp)
	add $t5, $t4, $t3
	lw $t3, -256($fp)
	lw $t6, -264($fp)
	mul $t7, $t6, $t3
	add $t8, $t5, $t7
	sw $t0, -460($fp)
	beq $t1, $t8, label649

	j label650

label649:
	li $t0, 1
	sw $t0, -460($fp)

label650:
	li $t0, 0
	addi $t1, $fp, -76
	li $t2, 2
	li $t3, 3
	mul $t0, $t0, $t3
	add $t0, $t0, $t2
	li $t2, 4
	mul $t0, $t0, $t2
	add $t2, $t1, $t0
	li $t0, 0
	li $t1, 31550
	li $t3, 0
	sw $t0, -468($fp)
	sw $t2, -464($fp)
	bne $t1, $t3, label651

	j label652

label651:
	li $t0, 1
	sw $t0, -468($fp)

label652:
	lw $t1, -464($fp)
	lw $t0, 0($t1)
	lw $t2, -468($fp)
	sub $t3, $t0, $t2
	li $t0, 32324
	li $t4, -1
	mul $t5, $t4, $t0
	li $t0, 24732
	li $t4, 0
	li $t6, 0
	sw $t4, -472($fp)
	lw $t7, -244($fp)
	bne $t7, $t6, label654

	j label653

label653:
	li $t0, 1
	sw $t0, -472($fp)

label654:
	li $t0, -1
	lw $t1, -472($fp)
	mul $t2, $t0, $t1

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
	addi $t2, $fp, -76
	li $t3, 0
	li $t4, 3
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -476($fp)

	li $v0, 1
	lw $t0, -476($fp)
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
	sw $t1, -480($fp)

	li $v0, 1
	lw $t0, -480($fp)
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
	sw $t1, -484($fp)

	li $v0, 1
	lw $t0, -484($fp)
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
	li $t1, 0
	addi $t2, $fp, -172
	li $t3, 0
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -488($fp)

	li $v0, 1
	lw $t0, -488($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -172
	li $t3, 1
	li $t4, 6
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
	addi $t2, $fp, -172
	li $t3, 2
	li $t4, 6
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
	addi $t2, $fp, -172
	li $t3, 3
	li $t4, 6
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
	addi $t2, $fp, -172
	li $t3, 4
	li $t4, 6
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
	addi $t2, $fp, -172
	li $t3, 5
	li $t4, 6
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
	addi $t2, $fp, -188
	li $t3, 0
	li $t4, 1
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
	li $t2, 45656
	lw $t3, -28($fp)
	mul $t4, $t2, $t3
	li $t2, 0
	addi $t5, $fp, -172
	li $t6, 0
	li $t7, 6
	mul $t2, $t2, $t7
	add $t2, $t2, $t6
	li $t6, 4
	mul $t2, $t2, $t6
	add $t6, $t5, $t2
	lw $t2, 0($t6)
	sw $t1, -516($fp)
	blt $t4, $t2, label655

	j label657

label657:
	lw $t0, -224($fp)
	lw $t1, -12($fp)
	mul $t2, $t1, $t0
	lw $t3, -16($fp)
	bne $t3, $t2, label655

	j label656

label655:
	li $t0, 1
	sw $t0, -516($fp)

label656:
	lw $t0, -516($fp)
	move $v0, $t0
	lw $ra, 692($sp)
	lw $fp, 688($sp)
	addi $sp, $sp, 696
	jr $ra

	li $t0, 0
	li $t1, 0
	sw $t0, -520($fp)
	lw $t2, -252($fp)
	bne $t2, $t1, label659

	j label658

label658:
	li $t0, 1
	sw $t0, -520($fp)

label659:
	lw $t1, -520($fp)
	move $t0, $t1
	sw $t0, -16($fp)

label660:
	li $t0, 367
	li $t1, 0
	bne $t0, $t1, label661

	j label662

label661:
	li $t0, 0
	li $t1, 0
	sw $t0, -524($fp)
	lw $t2, -28($fp)
	bne $t2, $t1, label667

	j label666

label666:
	li $t0, 1
	sw $t0, -524($fp)

label667:
	lw $t1, -236($fp)
	move $t0, $t1
	li $t2, 44480
	lw $t3, -212($fp)
	div $t2, $t3
	mflo $t4
	lw $t2, -264($fp)
	sub $t5, $t4, $t2
	li $t4, 0
	li $t6, 0
	sw $t0, -208($fp)
	sw $t4, -532($fp)
	sw $t5, -528($fp)
	lw $t7, -16($fp)
	bne $t7, $t6, label668

	j label671

label671:
	li $t0, 60308
	li $t1, 0
	bne $t0, $t1, label668

	j label670

label670:
	li $t0, 0
	lw $t1, -196($fp)
	bne $t1, $t0, label668

	j label669

label668:
	li $t0, 1
	sw $t0, -532($fp)

label669:
	li $t0, 0
	li $t1, 53683
	lw $t2, -252($fp)
	mul $t3, $t1, $t2
	li $t1, 0
	sw $t0, -536($fp)
	bne $t3, $t1, label674

	j label673

label674:
	li $t0, 38828
	li $t1, 0
	bne $t0, $t1, label672

	j label673

label672:
	li $t0, 1
	sw $t0, -536($fp)

label673:
	li $t0, 0
	li $t1, 1831
	li $t2, 50011
	add $t3, $t1, $t2
	li $t1, 0
	sw $t0, -540($fp)
	bne $t3, $t1, label677

	j label676

label677:
	li $t0, 35986
	li $t1, 0
	bne $t0, $t1, label675

	j label676

label675:
	li $t0, 1
	sw $t0, -540($fp)

label676:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -540($fp)
	move $a2, $t0
	lw $t1, -536($fp)
	move $a1, $t1
	lw $t2, -532($fp)
	move $a0, $t2
	jal id_Ns00
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -544($fp)

	li $t0, 0
	addi $t1, $fp, -188
	li $t2, 1
	mul $t0, $t0, $t2
	lw $t2, -236($fp)
	add $t0, $t0, $t2
	li $t3, 4
	mul $t0, $t0, $t3
	add $t3, $t1, $t0
	lw $t0, 0($t3)
	sw $t0, -548($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -548($fp)
	move $a3, $t0
	lw $t1, -544($fp)
	move $a2, $t1
	lw $t2, -528($fp)
	move $a1, $t2
	lw $t3, -208($fp)
	move $a0, $t3
	jal id_DP0w5FWFu
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -552($fp)

	lw $t0, -552($fp)
	lw $t1, -216($fp)
	div $t1, $t0
	mflo $t2
	lw $t3, -524($fp)
	beq $t3, $t2, label663

	j label664

label663:
	li $t0, 0
	lw $t1, -220($fp)
	bne $t1, $t0, label678

	j label679

label678:
	li $t0, 5685
	j label680

label679:
	li $t0, 34046
	li $t1, 0
	li $t2, 59113
	li $t3, 0
	sw $t0, -556($fp)
	sw $t1, -560($fp)
	bne $t2, $t3, label682

	j label681

label681:
	li $t0, 1
	sw $t0, -560($fp)

label682:
	li $t0, 0
	li $t1, 0
	sw $t0, -564($fp)
	lw $t2, -244($fp)
	bne $t2, $t1, label684

	j label683

label683:
	li $t0, 1
	sw $t0, -564($fp)

label684:
	li $t0, -1
	lw $t1, -564($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	addi $t3, $fp, -76
	li $t4, 0
	li $t5, 3
	mul $t0, $t0, $t5
	add $t0, $t0, $t4
	li $t4, 4
	mul $t0, $t0, $t4
	add $t4, $t3, $t0
	li $t0, 54248
	li $t3, 52789
	li $t5, -1
	mul $t6, $t5, $t3
	li $t3, -1
	mul $t5, $t3, $t6
	li $t3, 0
	addi $t6, $fp, -76
	li $t7, 0
	li $t8, 3
	mul $t3, $t3, $t8
	add $t3, $t3, $t7
	li $t7, 4
	mul $t3, $t3, $t7
	add $t7, $t6, $t3
	li $t3, 0
	li $t6, 18403
	li $t8, 0
	sw $t0, -576($fp)
	sw $t2, -568($fp)
	sw $t3, -588($fp)
	sw $t4, -572($fp)
	sw $t5, -580($fp)
	sw $t7, -584($fp)
	bne $t6, $t8, label687

	j label686

label687:
	li $t0, 62667
	li $t1, 0
	bne $t0, $t1, label685

	j label686

label685:
	li $t0, 1
	sw $t0, -588($fp)

label686:
	lw $t1, -584($fp)
	lw $t0, 0($t1)
	lw $t3, -572($fp)
	lw $t2, 0($t3)
	sw $t0, -592($fp)
	sw $t2, -596($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -588($fp)
	sw $t0, 0($sp)
	lw $t1, -592($fp)
	move $a3, $t1
	lw $t2, -580($fp)
	move $a2, $t2
	lw $t3, -576($fp)
	move $a1, $t3
	lw $t4, -596($fp)
	move $a0, $t4
	jal id_sLn_u
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -600($fp)

	li $t0, 35702
	lw $t1, -224($fp)
	div $t0, $t1
	mflo $t2
	li $t0, -1
	mul $t3, $t0, $t2
	li $t0, 0
	li $t2, 630
	li $t4, 0
	sw $t0, -608($fp)
	sw $t3, -604($fp)
	bne $t2, $t4, label689

	j label688

label688:
	li $t0, 1
	sw $t0, -608($fp)

label689:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -608($fp)
	sw $t0, 0($sp)
	lw $t1, -604($fp)
	move $a3, $t1
	lw $t2, -600($fp)
	move $a2, $t2
	lw $t3, -568($fp)
	move $a1, $t3
	lw $t4, -560($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -612($fp)

	li $t0, 0
	li $t1, 32164
	li $t2, -1
	mul $t3, $t2, $t1
	li $t1, 0
	sw $t0, -616($fp)
	bne $t3, $t1, label691

	j label690

label690:
	li $t0, 1
	sw $t0, -616($fp)

label691:
	li $t0, 0
	li $t1, 65257
	sw $t0, -620($fp)
	lw $t2, -212($fp)
	beq $t1, $t2, label692

	j label693

label692:
	li $t0, 1
	sw $t0, -620($fp)

label693:
	li $t0, 0
	li $t1, 0
	sw $t0, -624($fp)
	lw $t2, -24($fp)
	bne $t2, $t1, label697

	j label696

label697:
	li $t0, 0
	lw $t1, -256($fp)
	bne $t1, $t0, label694

	j label696

label696:
	li $t0, 0
	lw $t1, -20($fp)
	bne $t1, $t0, label694

	j label695

label694:
	li $t0, 1
	sw $t0, -624($fp)

label695:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -624($fp)
	sw $t0, 0($sp)
	lw $t1, -620($fp)
	move $a3, $t1
	lw $t2, -616($fp)
	move $a2, $t2
	lw $t3, -612($fp)
	move $a1, $t3
	lw $t4, -556($fp)
	move $a0, $t4
	jal id_dEUMT8ii
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -628($fp)

	li $t0, 36968
	lw $t1, -628($fp)
	mul $t2, $t1, $t0
	li $t0, -1
	lw $t3, -220($fp)
	mul $t4, $t0, $t3
	li $t0, -1
	mul $t5, $t0, $t4
	mul $t0, $t2, $t5

label680:
	j label665

label664:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -76
	li $t4, 1
	li $t5, 3
	mul $t2, $t2, $t5
	add $t2, $t2, $t4
	li $t4, 4
	mul $t2, $t2, $t4
	add $t4, $t3, $t2
	lw $t2, 0($t4)
	li $t3, 0
	sw $t0, -632($fp)
	sw $t1, -636($fp)
	bne $t2, $t3, label701

	j label700

label700:
	li $t0, 1
	sw $t0, -636($fp)

label701:
	li $t0, 3756
	lw $t1, -636($fp)
	sub $t2, $t1, $t0
	li $t0, 4346
	li $t3, -1
	mul $t4, $t3, $t0
	bne $t2, $t4, label698

	j label699

label698:
	li $t0, 1
	sw $t0, -632($fp)

label699:

label665:
	j label660

label662:

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
	addi $t2, $fp, -76
	li $t3, 0
	li $t4, 3
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
	addi $t2, $fp, -76
	li $t3, 1
	li $t4, 3
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
	addi $t2, $fp, -76
	li $t3, 2
	li $t4, 3
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
	li $t1, 0
	addi $t2, $fp, -172
	li $t3, 0
	li $t4, 6
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
	addi $t2, $fp, -172
	li $t3, 1
	li $t4, 6
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
	addi $t2, $fp, -172
	li $t3, 2
	li $t4, 6
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
	li $t1, 0
	addi $t2, $fp, -172
	li $t3, 3
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -664($fp)

	li $v0, 1
	lw $t0, -664($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -172
	li $t3, 4
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -668($fp)

	li $v0, 1
	lw $t0, -668($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -172
	li $t3, 5
	li $t4, 6
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -672($fp)

	li $v0, 1
	lw $t0, -672($fp)
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
	li $t4, 1
	mul $t1, $t1, $t4
	add $t1, $t1, $t3
	li $t3, 4
	mul $t1, $t1, $t3
	add $t3, $t2, $t1
	lw $t1, 0($t3)
	sw $t1, -676($fp)

	li $v0, 1
	lw $t0, -676($fp)
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
	li $t5, 0
	li $t6, -1
	lw $t7, -256($fp)
	mul $t8, $t6, $t7
	li $t6, 0
	sw $t1, -680($fp)
	sw $t2, -684($fp)
	sw $t3, -688($fp)
	sw $t4, -692($fp)
	sw $t5, -696($fp)
	bne $t8, $t6, label711

	j label710

label710:
	li $t0, 1
	sw $t0, -696($fp)

label711:
	li $t0, 11391
	lw $t1, -696($fp)
	beq $t1, $t0, label708

	j label709

label708:
	li $t0, 1
	sw $t0, -692($fp)

label709:
	lw $t0, -200($fp)
	lw $t1, -692($fp)
	blt $t1, $t0, label706

	j label707

label706:
	li $t0, 1
	sw $t0, -688($fp)

label707:
	lw $t0, -220($fp)
	lw $t1, -688($fp)
	ble $t1, $t0, label704

	j label705

label704:
	li $t0, 1
	sw $t0, -684($fp)

label705:
	li $t0, 2717
	li $t1, 42892
	add $t2, $t0, $t1
	lw $t0, -684($fp)
	blt $t0, $t2, label702

	j label703

label702:
	li $t0, 1
	sw $t0, -680($fp)

label703:
	lw $t0, -680($fp)
	move $v0, $t0
	lw $ra, 692($sp)
	lw $fp, 688($sp)
	addi $sp, $sp, 696
	jr $ra

id_hmfKfivGu:
	addi $sp, $sp, -16
	sw $ra, 12($sp)
	sw $fp, 8($sp)
	addi $fp, $sp, 16
	sw $a0, -12($fp)
	sw $a1, -20($fp)
	sw $a2, -24($fp)
	sw $a3, -28($fp)

	li $t0, 11759
	li $t1, 0
	li $t2, 47197
	li $t3, 0
	sw $t1, -16($fp)
	bne $t2, $t3, label713

	j label712

label712:
	li $t0, 1
	sw $t0, -16($fp)

label713:
	lw $t1, -16($fp)
	move $t0, $t1
	li $t2, 37664
	li $t3, -1
	mul $t4, $t3, $t2
	sw $t0, -12($fp)
	move $v0, $t4
	lw $ra, 12($sp)
	lw $fp, 8($sp)
	addi $sp, $sp, 16
	jr $ra

id_abETVZ9Bk:
	addi $sp, $sp, -28
	sw $ra, 24($sp)
	sw $fp, 20($sp)
	addi $fp, $sp, 28

	li $t0, 65442
	move $t1, $t0
	li $t0, 20489
	move $t2, $t0
	li $t0, 39496
	move $t3, $t0
	move $t0, $t2
	li $t3, 49918
	move $t1, $t3
	li $t3, 0
	li $t4, 56476
	li $t5, -1
	mul $t6, $t5, $t4
	li $t4, 0
	sw $t0, -20($fp)
	sw $t1, -12($fp)
	sw $t2, -16($fp)
	sw $t3, -24($fp)
	bne $t6, $t4, label715

	j label714

label714:
	li $t0, 1
	sw $t0, -24($fp)

label715:
	li $t0, 0
	li $t1, 45181
	li $t2, -1
	mul $t3, $t2, $t1
	li $t1, 0
	sw $t0, -28($fp)
	bne $t3, $t1, label718

	j label717

label718:
	li $t0, 18428
	li $t1, 0
	bne $t0, $t1, label716

	j label717

label716:
	li $t0, 1
	sw $t0, -28($fp)

label717:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -28($fp)
	move $a3, $t0
	lw $t1, -24($fp)
	move $a2, $t1
	lw $t2, -12($fp)
	move $a1, $t2
	lw $t3, -20($fp)
	move $a0, $t3
	jal id_hmfKfivGu
	move $t4, $v0
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

	li $v0, 1
	lw $t0, -16($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -20($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 50053
	move $v0, $t1
	lw $ra, 24($sp)
	lw $fp, 20($sp)
	addi $sp, $sp, 28
	jr $ra

main:
	addi $sp, $sp, -12
	sw $ra, 8($sp)
	sw $fp, 4($sp)
	addi $fp, $sp, 12

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	jal id_abETVZ9Bk
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

