.data
_prompt: .asciiz "Enter an integer:"
_ret: .asciiz "\n"
.globl main
.text
id_P8WC91JR:
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

id_J6NNzMC5:
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

id__KYe:
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

id_km1x0:
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

id_o4vwrlnRrI:
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

id_GtviOg:
	addi $sp, $sp, -288
	sw $ra, 284($sp)
	sw $fp, 280($sp)
	addi $fp, $sp, 288
	sw $a0, -12($fp)
	sw $a1, -16($fp)
	sw $a2, -20($fp)
	sw $a3, -24($fp)

	li $t0, 0
	addi $t1, $fp, -40
	li $t2, 0
	li $t3, 1
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	li $t1, 39216
	sw $t1, 0($t2)
	li $t5, 7864
	move $t6, $t5
	li $t5, 45566
	move $t7, $t5
	li $t5, 25087
	move $t8, $t5
	li $t5, 30287
	move $t9, $t5
	li $t5, 62970
	move $s0, $t5
	li $t5, 46776
	move $s1, $t5
	li $t5, 37335
	move $s2, $t5
	li $t5, 51501
	move $s3, $t5
	li $t5, 26017
	move $s4, $t5
	li $t5, 19457
	move $s5, $t5
	li $t5, 9537
	move $s6, $t5
	li $t5, 40853
	move $s7, $t5
	li $t5, 62736
	sw $s7, -88($fp)
	move $s7, $t5
	li $t5, 0
	sw $s7, -92($fp)
	li $s7, 0
	sw $s7, -100($fp)
	li $s7, 56061
	sw $t5, -96($fp)
	sw $t6, -44($fp)
	sw $t7, -48($fp)
	sw $t8, -52($fp)
	sw $t9, -56($fp)
	sw $s0, -60($fp)
	sw $s1, -64($fp)
	sw $s2, -68($fp)
	sw $s3, -72($fp)
	sw $s4, -76($fp)
	sw $s5, -80($fp)
	sw $s6, -84($fp)
	blt $t6, $s7, label118

	j label119

label118:
	li $t0, 1
	sw $t0, -100($fp)

label119:
	lw $t0, -48($fp)
	lw $t1, -100($fp)
	bne $t1, $t0, label116

	j label117

label116:
	li $t0, 1
	sw $t0, -96($fp)

label117:
	li $t0, 41714
	lw $t1, -64($fp)
	div $t0, $t1
	mflo $t2
	li $t0, 64816
	div $t2, $t0
	mflo $t3
	lw $t2, -72($fp)
	move $t0, $t2
	li $t4, 0
	li $t5, 48570
	lw $t6, -88($fp)
	sub $t7, $t6, $t5
	sw $t0, -84($fp)
	sw $t3, -104($fp)
	sw $t4, -108($fp)
	lw $t5, -48($fp)
	bne $t7, $t5, label120

	j label121

label120:
	li $t0, 1
	sw $t0, -108($fp)

label121:
	li $t0, 35467
	lw $t1, -64($fp)
	add $t2, $t0, $t1
	li $t0, 49805
	move $t3, $t0
	li $t0, 0
	li $t4, 0
	li $t5, 32005
	sw $t0, -116($fp)
	sw $t2, -112($fp)
	sw $t3, -76($fp)
	sw $t4, -120($fp)
	lw $t6, -24($fp)
	bgt $t6, $t5, label124

	j label125

label124:
	li $t0, 1
	sw $t0, -120($fp)

label125:
	li $t0, 60336
	lw $t1, -120($fp)
	ble $t1, $t0, label122

	j label123

label122:
	li $t0, 1
	sw $t0, -116($fp)

label123:
	li $t0, 0
	li $t1, 65107
	lw $t2, -68($fp)
	add $t3, $t2, $t1
	sw $t0, -124($fp)
	lw $t1, -60($fp)
	bne $t3, $t1, label126

	j label127

label126:
	li $t0, 1
	sw $t0, -124($fp)

label127:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -124($fp)
	move $a3, $t0
	lw $t1, -116($fp)
	move $a2, $t1
	lw $t2, -76($fp)
	move $a1, $t2
	lw $t3, -112($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -128($fp)

	lw $t0, -56($fp)
	lw $t1, -128($fp)
	div $t1, $t0
	mflo $t2
	sw $t2, -132($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -132($fp)
	move $a3, $t0
	lw $t1, -56($fp)
	move $a2, $t1
	lw $t2, -92($fp)
	move $a1, $t2
	lw $t3, -108($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -136($fp)

	li $t0, 0
	sw $t0, -140($fp)
	lw $t1, -24($fp)
	lw $t2, -52($fp)
	blt $t2, $t1, label128

	j label129

label128:
	li $t0, 1
	sw $t0, -140($fp)

label129:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -140($fp)
	move $a3, $t0
	lw $t1, -136($fp)
	move $a2, $t1
	lw $t2, -84($fp)
	move $a1, $t2
	lw $t3, -104($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -144($fp)

	li $t0, 0
	addi $t1, $fp, -40
	li $t2, 0
	li $t3, 1
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	li $t1, 41351
	lw $t5, 0($t2)
	sub $t2, $t5, $t1
	li $t1, 28083
	sw $t1, -152($fp)
	sw $t2, -148($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -152($fp)
	move $a3, $t0
	lw $t1, -148($fp)
	move $a2, $t1
	lw $t2, -144($fp)
	move $a1, $t2
	lw $t3, -96($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -156($fp)

	li $t0, 7967
	lw $t1, -156($fp)
	mul $t2, $t1, $t0
	li $t0, 0
	li $t3, 0
	addi $t4, $fp, -40
	li $t5, 0
	sw $t0, -160($fp)
	sw $t3, -164($fp)
	sw $t4, -168($fp)
	sw $t5, -172($fp)
	lw $t6, -44($fp)
	lw $t7, -24($fp)
	bgt $t7, $t6, label133

	j label134

label133:
	li $t0, 1
	sw $t0, -172($fp)

label134:
	li $t0, 1
	lw $t1, -164($fp)
	mul $t2, $t1, $t0
	lw $t0, -172($fp)
	add $t3, $t2, $t0
	li $t4, 4
	mul $t5, $t3, $t4
	lw $t4, -168($fp)
	add $t6, $t4, $t5
	li $t7, 539
	lw $t8, 0($t6)
	div $t8, $t7
	mflo $t6
	li $t7, 0
	sw $t1, -164($fp)
	sw $t2, -164($fp)
	sw $t3, -164($fp)
	sw $t5, -164($fp)
	bne $t6, $t7, label130

	j label132

label132:
	li $t0, 0
	li $t1, 24332
	lw $t2, -64($fp)
	add $t3, $t1, $t2
	li $t1, 0
	sw $t0, -176($fp)
	bne $t3, $t1, label135

	j label137

label137:
	li $t0, 0
	lw $t1, -68($fp)
	bne $t1, $t0, label135

	j label136

label135:
	li $t0, 1
	sw $t0, -176($fp)

label136:
	li $t0, 0
	li $t1, 54131
	lw $t2, -60($fp)
	mul $t3, $t1, $t2
	li $t1, 0
	sw $t0, -180($fp)
	bne $t3, $t1, label138

	j label140

label140:
	li $t0, 39755
	li $t1, 0
	bne $t0, $t1, label138

	j label139

label138:
	li $t0, 1
	sw $t0, -180($fp)

label139:
	li $t0, 0
	li $t1, 32196
	li $t2, 0
	sw $t0, -184($fp)
	bne $t1, $t2, label142

	j label141

label141:
	li $t0, 1
	sw $t0, -184($fp)

label142:
	li $t0, 0
	li $t1, 34162
	li $t2, 0
	sw $t0, -188($fp)
	bne $t1, $t2, label145

	j label143

label145:
	li $t0, 0
	lw $t1, -52($fp)
	bne $t1, $t0, label143

	j label144

label143:
	li $t0, 1
	sw $t0, -188($fp)

label144:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -188($fp)
	move $a3, $t0
	lw $t1, -184($fp)
	move $a2, $t1
	lw $t2, -180($fp)
	move $a1, $t2
	lw $t3, -176($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -192($fp)

	li $t0, 64843
	lw $t1, -56($fp)
	sub $t2, $t1, $t0
	lw $t0, -192($fp)
	blt $t0, $t2, label130

	j label131

label130:
	li $t0, 1
	sw $t0, -160($fp)

label131:
	li $t0, 0
	addi $t1, $fp, -40
	li $t2, 0
	li $t3, 1
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	li $t1, 46083
	li $t5, -1
	mul $t6, $t5, $t1
	lw $t1, 0($t2)
	add $t2, $t1, $t6
	li $t1, 34283
	lw $t5, -52($fp)
	div $t1, $t5
	mflo $t6
	li $t1, -1
	mul $t7, $t1, $t6
	add $t1, $t2, $t7
	li $t2, 0
	bne $t1, $t2, label149

	j label147

label149:
	li $t0, 0
	li $t1, 17561
	li $t2, -1
	mul $t3, $t2, $t1
	li $t1, 0
	sw $t0, -196($fp)
	bne $t3, $t1, label151

	j label150

label150:
	li $t0, 1
	sw $t0, -196($fp)

label151:
	li $t0, -1
	lw $t1, -196($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label146

	j label147

label146:
	li $t0, 6565
	li $t1, 53740
	mul $t2, $t0, $t1
	lw $t0, -48($fp)
	add $t1, $t2, $t0
	li $t2, 0
	li $t3, 27099
	lw $t4, -76($fp)
	add $t5, $t3, $t4
	sw $t1, -200($fp)
	sw $t2, -204($fp)
	beq $t5, $t4, label152

	j label153

label152:
	li $t0, 1
	sw $t0, -204($fp)

label153:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -208($fp)
	sw $t1, -212($fp)
	lw $t3, -20($fp)
	bne $t3, $t2, label157

	j label156

label156:
	li $t0, 1
	sw $t0, -212($fp)

label157:
	li $t0, 47418
	lw $t1, -212($fp)
	bne $t1, $t0, label154

	j label155

label154:
	li $t0, 1
	sw $t0, -208($fp)

label155:
	li $t0, 50940
	move $t1, $t0
	li $t0, 0
	li $t2, 17624
	li $t3, 23596
	div $t2, $t3
	mflo $t4
	li $t2, 0
	sw $t0, -216($fp)
	sw $t1, -24($fp)
	bne $t4, $t2, label160

	j label159

label160:
	li $t0, 50221
	li $t1, 0
	bne $t0, $t1, label158

	j label159

label158:
	li $t0, 1
	sw $t0, -216($fp)

label159:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -216($fp)
	move $a3, $t0
	lw $t1, -88($fp)
	move $a2, $t1
	lw $t2, -24($fp)
	move $a1, $t2
	lw $t3, -208($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -220($fp)

	li $t0, -1
	lw $t1, -220($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	li $t3, 0
	sw $t0, -228($fp)
	sw $t2, -224($fp)
	lw $t4, -64($fp)
	bne $t4, $t3, label162

	j label161

label161:
	li $t0, 1
	sw $t0, -228($fp)

label162:
	lw $t0, -60($fp)
	lw $t1, -228($fp)
	mul $t2, $t1, $t0
	sw $t2, -232($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -232($fp)
	move $a3, $t0
	lw $t1, -224($fp)
	move $a2, $t1
	lw $t2, -204($fp)
	move $a1, $t2
	lw $t3, -200($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -236($fp)

	lw $t0, -236($fp)
	move $v0, $t0
	lw $ra, 284($sp)
	lw $fp, 280($sp)
	addi $sp, $sp, 288
	jr $ra

	j label148

label147:
	li $t0, 0
	li $t1, 658
	li $t2, 0
	sw $t0, -240($fp)
	bne $t1, $t2, label165

	j label164

label165:
	li $t0, 59063
	li $t1, 0
	bne $t0, $t1, label163

	j label164

label163:
	li $t0, 1
	sw $t0, -240($fp)

label164:
	lw $t1, -240($fp)
	move $t0, $t1
	move $t2, $t0
	sw $t0, -48($fp)
	sw $t2, -56($fp)

label148:

label166:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 0
	li $t4, 0
	sw $t0, -244($fp)
	sw $t1, -248($fp)
	sw $t2, -252($fp)
	sw $t3, -256($fp)
	sw $t4, -260($fp)
	lw $t5, -12($fp)
	lw $t6, -80($fp)
	bgt $t6, $t5, label177

	j label178

label177:
	li $t0, 1
	sw $t0, -260($fp)

label178:
	lw $t0, -68($fp)
	lw $t1, -260($fp)
	beq $t1, $t0, label175

	j label176

label175:
	li $t0, 1
	sw $t0, -256($fp)

label176:
	lw $t0, -48($fp)
	lw $t1, -68($fp)
	add $t2, $t1, $t0
	lw $t3, -256($fp)
	beq $t3, $t2, label173

	j label174

label173:
	li $t0, 1
	sw $t0, -252($fp)

label174:
	lw $t0, -68($fp)
	lw $t1, -16($fp)
	div $t1, $t0
	mflo $t2
	lw $t3, -252($fp)
	bne $t3, $t2, label171

	j label172

label171:
	li $t0, 1
	sw $t0, -248($fp)

label172:
	li $t0, 34490
	lw $t1, -248($fp)
	beq $t1, $t0, label169

	j label170

label169:
	li $t0, 1
	sw $t0, -244($fp)

label170:
	li $t0, 32663
	lw $t1, -52($fp)
	add $t2, $t1, $t0
	lw $t0, -244($fp)
	ble $t0, $t2, label167

	j label168

label167:
	li $t0, 53863
	li $t1, 34061
	mul $t2, $t0, $t1
	li $t0, 33659
	div $t2, $t0
	mflo $t1
	li $t0, -1
	mul $t2, $t0, $t1
	j label166

label168:
	li $t0, 0
	addi $t1, $fp, -40
	li $t2, 0
	li $t3, 1
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	lw $t1, 0($t2)
	sw $t1, -264($fp)

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
	lw $t0, -44($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -48($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -52($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -56($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -60($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -64($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -68($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -72($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -76($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -80($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -84($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	li $t1, 0
	lw $t2, -60($fp)
	lw $t3, -24($fp)
	add $t4, $t3, $t2
	li $t5, 24021
	sub $t6, $t4, $t5
	li $t4, 9877
	lw $t5, -92($fp)
	div $t4, $t5
	mflo $t7
	li $t4, 61742
	add $t8, $t7, $t4
	li $t4, 31988
	lw $t7, -68($fp)
	add $t9, $t7, $t4
	li $t4, 10416
	sub $s0, $t9, $t4
	li $t4, 0
	li $t9, 20538
	li $s1, -1
	mul $s2, $s1, $t9
	li $t9, 0
	sw $t1, -268($fp)
	sw $t4, -284($fp)
	sw $t6, -272($fp)
	sw $t8, -276($fp)
	sw $s0, -280($fp)
	bne $s2, $t9, label184

	j label183

label184:
	li $t0, 0
	lw $t1, -24($fp)
	bne $t1, $t0, label182

	j label183

label182:
	li $t0, 1
	sw $t0, -284($fp)

label183:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -284($fp)
	move $a3, $t0
	lw $t1, -280($fp)
	move $a2, $t1
	lw $t2, -276($fp)
	move $a1, $t2
	lw $t3, -272($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -288($fp)

	li $t0, 0
	lw $t1, -288($fp)
	bne $t1, $t0, label180

	j label181

label181:
	li $t0, 0
	addi $t1, $fp, -40
	li $t2, 0
	li $t3, 1
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	lw $t1, 0($t2)
	li $t2, 0
	bne $t1, $t2, label180

	j label179

label179:
	li $t0, 1
	sw $t0, -268($fp)

label180:
	lw $t0, -268($fp)
	move $v0, $t0
	lw $ra, 284($sp)
	lw $fp, 280($sp)
	addi $sp, $sp, 288
	jr $ra

id_PzYrNI:
	addi $sp, $sp, -1316
	sw $ra, 1312($sp)
	sw $fp, 1308($sp)
	addi $fp, $sp, 1316
	sw $a0, -12($fp)
	sw $a1, -16($fp)
	sw $a2, -20($fp)
	sw $a3, -24($fp)
	lw $a0, 0($fp)
	sw $a0, -28($fp)

	li $t0, 0
	addi $t1, $fp, -108
	li $t2, 0
	li $t3, 5
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	li $t1, 52734
	sw $t1, 0($t2)
	li $t5, 0
	addi $t6, $fp, -108
	li $t7, 1
	li $t8, 5
	mul $t9, $t5, $t8
	add $t8, $t9, $t7
	li $t7, 4
	mul $s0, $t8, $t7
	add $t7, $t6, $s0
	li $t6, 54746
	sw $t6, 0($t7)
	li $s0, 0
	addi $s1, $fp, -108
	li $s2, 2
	li $s3, 5
	mul $s4, $s0, $s3
	add $s3, $s4, $s2
	li $s2, 4
	mul $s5, $s3, $s2
	add $s2, $s1, $s5
	li $s1, 49479
	sw $s1, 0($s2)
	li $s5, 0
	addi $s6, $fp, -108
	li $s7, 3
	sw $s4, -1320($fp)
	li $s4, 5
	sw $s3, -1320($fp)
	mul $s3, $s5, $s4
	add $s4, $s3, $s7
	li $s7, 4
	sw $s2, -1324($fp)
	mul $s2, $s4, $s7
	add $s7, $s6, $s2
	li $s2, 49682
	sw $s2, 0($s7)
	li $s6, 0
	sw $s7, -1328($fp)
	addi $s7, $fp, -108
	sw $s5, -1332($fp)
	li $s5, 4
	sw $s4, -1332($fp)
	li $s4, 5
	sw $s3, -1332($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1336($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 20806
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1340($fp)
	addi $s6, $fp, -188
	sw $s5, -1344($fp)
	li $s5, 0
	sw $s4, -1340($fp)
	li $s4, 5
	sw $s3, -1340($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1348($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 30026
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1352($fp)
	addi $s7, $fp, -188
	sw $s5, -1356($fp)
	li $s5, 1
	sw $s4, -1352($fp)
	li $s4, 5
	sw $s3, -1352($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1360($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 18429
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1364($fp)
	addi $s6, $fp, -188
	sw $s5, -1368($fp)
	li $s5, 2
	sw $s4, -1364($fp)
	li $s4, 5
	sw $s3, -1364($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1372($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 38368
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1376($fp)
	addi $s7, $fp, -188
	sw $s5, -1380($fp)
	li $s5, 3
	sw $s4, -1376($fp)
	li $s4, 5
	sw $s3, -1376($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1384($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 36591
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1388($fp)
	addi $s6, $fp, -188
	sw $s5, -1392($fp)
	li $s5, 4
	sw $s4, -1388($fp)
	li $s4, 5
	sw $s3, -1388($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1396($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 6633
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1400($fp)
	addi $s7, $fp, -316
	sw $s5, -1404($fp)
	li $s5, 0
	sw $s4, -1400($fp)
	li $s4, 8
	sw $s3, -1400($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1408($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 65467
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1412($fp)
	addi $s6, $fp, -316
	sw $s5, -1416($fp)
	li $s5, 1
	sw $s4, -1412($fp)
	li $s4, 8
	sw $s3, -1412($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1420($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 18473
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1424($fp)
	addi $s7, $fp, -316
	sw $s5, -1428($fp)
	li $s5, 2
	sw $s4, -1424($fp)
	li $s4, 8
	sw $s3, -1424($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1432($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 57573
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1436($fp)
	addi $s6, $fp, -316
	sw $s5, -1440($fp)
	li $s5, 3
	sw $s4, -1436($fp)
	li $s4, 8
	sw $s3, -1436($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1444($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 17555
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1448($fp)
	addi $s7, $fp, -316
	sw $s5, -1452($fp)
	li $s5, 4
	sw $s4, -1448($fp)
	li $s4, 8
	sw $s3, -1448($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1456($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 42069
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1460($fp)
	addi $s6, $fp, -316
	sw $s5, -1464($fp)
	li $s5, 5
	sw $s4, -1460($fp)
	li $s4, 8
	sw $s3, -1460($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1468($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 42258
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1472($fp)
	addi $s7, $fp, -316
	sw $s5, -1476($fp)
	li $s5, 6
	sw $s4, -1472($fp)
	li $s4, 8
	sw $s3, -1472($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1480($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 18213
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1484($fp)
	addi $s6, $fp, -316
	sw $s5, -1488($fp)
	li $s5, 7
	sw $s4, -1484($fp)
	li $s4, 8
	sw $s3, -1484($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1492($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 35597
	sw $s2, 0($s5)
	li $s6, 11212
	sw $s7, -1496($fp)
	move $s7, $s6
	li $s6, 50876
	sw $s7, -528($fp)
	move $s7, $s6
	li $s6, 23924
	sw $s7, -532($fp)
	move $s7, $s6
	li $s6, 45274
	sw $s7, -536($fp)
	move $s7, $s6
	li $s6, 18999
	sw $s7, -540($fp)
	move $s7, $s6
	li $s6, 47945
	sw $s7, -544($fp)
	move $s7, $s6
	li $s6, 55151
	sw $s7, -548($fp)
	move $s7, $s6
	li $s6, 15205
	sw $s7, -552($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -556($fp)
	addi $s7, $fp, -476
	sw $s5, -1500($fp)
	li $s5, 0
	sw $s4, -1496($fp)
	li $s4, 10
	sw $s3, -1496($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1504($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 14398
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1508($fp)
	addi $s6, $fp, -476
	sw $s5, -1512($fp)
	li $s5, 1
	sw $s4, -1508($fp)
	li $s4, 10
	sw $s3, -1508($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1516($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 31
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1520($fp)
	addi $s7, $fp, -476
	sw $s5, -1524($fp)
	li $s5, 2
	sw $s4, -1520($fp)
	li $s4, 10
	sw $s3, -1520($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1528($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 35743
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1532($fp)
	addi $s6, $fp, -476
	sw $s5, -1536($fp)
	li $s5, 3
	sw $s4, -1532($fp)
	li $s4, 10
	sw $s3, -1532($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1540($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 34982
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1544($fp)
	addi $s7, $fp, -476
	sw $s5, -1548($fp)
	li $s5, 4
	sw $s4, -1544($fp)
	li $s4, 10
	sw $s3, -1544($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1552($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 50203
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1556($fp)
	addi $s6, $fp, -476
	sw $s5, -1560($fp)
	li $s5, 5
	sw $s4, -1556($fp)
	li $s4, 10
	sw $s3, -1556($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1564($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 22942
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1568($fp)
	addi $s7, $fp, -476
	sw $s5, -1572($fp)
	li $s5, 6
	sw $s4, -1568($fp)
	li $s4, 10
	sw $s3, -1568($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1576($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 24192
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1580($fp)
	addi $s6, $fp, -476
	sw $s5, -1584($fp)
	li $s5, 7
	sw $s4, -1580($fp)
	li $s4, 10
	sw $s3, -1580($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1588($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 34146
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1592($fp)
	addi $s7, $fp, -476
	sw $s5, -1596($fp)
	li $s5, 8
	sw $s4, -1592($fp)
	li $s4, 10
	sw $s3, -1592($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1600($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 7088
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1604($fp)
	addi $s6, $fp, -476
	sw $s5, -1608($fp)
	li $s5, 9
	sw $s4, -1604($fp)
	li $s4, 10
	sw $s3, -1604($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1612($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 44998
	sw $s2, 0($s5)
	li $s6, 64173
	sw $s7, -1616($fp)
	move $s7, $s6
	li $s6, 25517
	sw $s7, -560($fp)
	move $s7, $s6
	li $s6, 17830
	sw $s7, -564($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -568($fp)
	addi $s7, $fp, -524
	sw $s5, -1620($fp)
	li $s5, 0
	sw $s4, -1616($fp)
	li $s4, 3
	sw $s3, -1616($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1624($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 35228
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1628($fp)
	addi $s6, $fp, -524
	sw $s5, -1632($fp)
	li $s5, 1
	sw $s4, -1628($fp)
	li $s4, 3
	sw $s3, -1628($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1636($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 32150
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1640($fp)
	addi $s7, $fp, -524
	sw $s5, -1644($fp)
	li $s5, 2
	sw $s4, -1640($fp)
	li $s4, 3
	sw $s3, -1640($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1648($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 17761
	sw $s2, 0($s5)
	li $s7, 53702
	sw $s6, -1652($fp)
	move $s6, $s7
	li $s7, 24187
	sw $s6, -572($fp)
	move $s6, $s7
	li $s7, 35316
	sw $s6, -576($fp)
	move $s6, $s7
	li $s7, 30235
	sw $s6, -580($fp)
	move $s6, $s7
	li $s7, 910
	sw $s6, -584($fp)
	move $s6, $s7
	li $s7, 0
	sw $s6, -588($fp)
	addi $s6, $fp, -108
	sw $s5, -1656($fp)
	li $s5, 0
	sw $s4, -1652($fp)
	li $s4, 5
	sw $s3, -1652($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1660($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	lw $s2, 0($s5)
	sw $s2, -592($fp)

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
	addi $t2, $fp, -108
	li $t3, 1
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -596($fp)

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
	addi $t2, $fp, -108
	li $t3, 2
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -600($fp)

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
	addi $t2, $fp, -108
	li $t3, 3
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -604($fp)

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
	addi $t2, $fp, -108
	li $t3, 4
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -608($fp)

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
	addi $t2, $fp, -188
	li $t3, 0
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -612($fp)

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
	addi $t2, $fp, -188
	li $t3, 1
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -616($fp)

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
	addi $t2, $fp, -188
	li $t3, 2
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -620($fp)

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
	addi $t2, $fp, -188
	li $t3, 3
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -624($fp)

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
	addi $t2, $fp, -188
	li $t3, 4
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -628($fp)

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
	addi $t2, $fp, -316
	li $t3, 0
	li $t4, 8
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -632($fp)

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
	addi $t2, $fp, -316
	li $t3, 1
	li $t4, 8
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -636($fp)

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
	addi $t2, $fp, -316
	li $t3, 2
	li $t4, 8
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -640($fp)

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
	addi $t2, $fp, -316
	li $t3, 3
	li $t4, 8
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -644($fp)

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
	addi $t2, $fp, -316
	li $t3, 4
	li $t4, 8
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -648($fp)

	li $v0, 1
	lw $t0, -648($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -316
	li $t3, 5
	li $t4, 8
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -652($fp)

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
	addi $t2, $fp, -316
	li $t3, 6
	li $t4, 8
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -656($fp)

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
	addi $t2, $fp, -316
	li $t3, 7
	li $t4, 8
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -660($fp)

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
	lw $t0, -528($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -532($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -536($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -540($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -544($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -548($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -552($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	addi $t2, $fp, -476
	li $t3, 0
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -664($fp)

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
	addi $t2, $fp, -476
	li $t3, 1
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -668($fp)

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
	addi $t2, $fp, -476
	li $t3, 2
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -672($fp)

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
	addi $t2, $fp, -476
	li $t3, 3
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -676($fp)

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
	addi $t2, $fp, -476
	li $t3, 4
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -680($fp)

	li $v0, 1
	lw $t0, -680($fp)
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
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -684($fp)

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
	addi $t2, $fp, -476
	li $t3, 6
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -688($fp)

	li $v0, 1
	lw $t0, -688($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -476
	li $t3, 7
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -692($fp)

	li $v0, 1
	lw $t0, -692($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -476
	li $t3, 8
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -696($fp)

	li $v0, 1
	lw $t0, -696($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -476
	li $t3, 9
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -700($fp)

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
	lw $t0, -560($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -564($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	addi $t2, $fp, -524
	li $t3, 0
	li $t4, 3
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -704($fp)

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
	addi $t2, $fp, -524
	li $t3, 1
	li $t4, 3
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -708($fp)

	li $v0, 1
	lw $t0, -708($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -524
	li $t3, 2
	li $t4, 3
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -712($fp)

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
	lw $t0, -572($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	lw $t0, -580($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -584($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -588($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -316
	li $t4, 0
	li $t5, 8
	mul $t6, $t2, $t5
	add $t5, $t6, $t4
	li $t4, 4
	mul $t7, $t5, $t4
	add $t4, $t3, $t7
	lw $t3, 0($t4)
	li $t4, 0
	sw $t1, -716($fp)
	bne $t3, $t4, label186

	j label185

label185:
	li $t0, 1
	sw $t0, -716($fp)

label186:
	lw $t0, -716($fp)
	move $v0, $t0
	lw $ra, 1312($sp)
	lw $fp, 1308($sp)
	addi $sp, $sp, 1316
	jr $ra

	li $t0, 0
	addi $t1, $fp, -108
	li $t2, 0
	li $t3, 0
	sw $t0, -720($fp)
	sw $t1, -724($fp)
	sw $t2, -728($fp)
	lw $t4, -12($fp)
	bne $t4, $t3, label191

	j label190

label190:
	li $t0, 1
	sw $t0, -728($fp)

label191:
	li $t0, 0
	addi $t1, $fp, -476
	li $t2, 10
	mul $t3, $t0, $t2
	lw $t2, -572($fp)
	add $t4, $t3, $t2
	li $t5, 4
	mul $t6, $t4, $t5
	add $t5, $t1, $t6
	lw $t1, 0($t5)
	lw $t5, -728($fp)
	mul $t6, $t5, $t1
	li $t1, 5
	lw $t7, -720($fp)
	mul $t8, $t7, $t1
	add $t1, $t8, $t6
	li $t6, 4
	mul $t9, $t1, $t6
	lw $t6, -724($fp)
	add $s0, $t6, $t9
	lw $s1, 0($s0)
	li $s0, 0
	sw $t1, -720($fp)
	sw $t7, -720($fp)
	sw $t8, -720($fp)
	sw $t9, -720($fp)
	bne $s1, $s0, label187

	j label188

label187:
	lw $t0, -532($fp)
	lw $t1, -568($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	bne $t2, $t3, label192

	j label195

label195:
	li $t0, 12122
	li $t1, 0
	bne $t0, $t1, label193

	j label192

label192:
	li $t0, 38870
	move $t1, $t0
	li $t0, 0
	addi $t2, $fp, -776
	li $t3, 0
	li $t4, 3
	mul $t5, $t0, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	li $t2, 24221
	sw $t2, 0($t3)
	li $t6, 0
	addi $t7, $fp, -776
	li $t8, 1
	li $t9, 3
	mul $s0, $t6, $t9
	add $t9, $s0, $t8
	li $t8, 4
	mul $s1, $t9, $t8
	add $t8, $t7, $s1
	li $t7, 57396
	sw $t7, 0($t8)
	li $s1, 0
	addi $s2, $fp, -776
	li $s3, 2
	li $s4, 3
	mul $s5, $s1, $s4
	add $s4, $s5, $s3
	li $s3, 4
	mul $s6, $s4, $s3
	add $s3, $s2, $s6
	li $s2, 57869
	sw $s2, 0($s3)
	li $s6, 6630
	li $s7, 47011
	sw $s7, -1664($fp)
	li $s7, 0
	sw $s7, -784($fp)
	li $s7, 0
	sw $s6, -1668($fp)
	addi $s6, $fp, -188
	sw $s5, -1672($fp)
	li $s5, 5
	sw $s4, -1672($fp)
	mul $s4, $s7, $s5
	lw $s5, -552($fp)
	sw $s3, -1676($fp)
	add $s3, $s4, $s5
	sw $s5, -552($fp)
	li $s5, 4
	sw $s2, -1680($fp)
	mul $s2, $s3, $s5
	add $s5, $s6, $s2
	li $s2, 0
	li $s6, 7539
	sw $s7, -1684($fp)
	li $s7, 0
	sw $t1, -780($fp)
	sw $s2, -792($fp)
	sw $s5, -788($fp)
	bne $s6, $s7, label201

	j label200

label200:
	li $t0, 1
	sw $t0, -792($fp)

label201:
	lw $t1, -788($fp)
	lw $t0, 0($t1)
	lw $t2, -792($fp)
	mul $t3, $t0, $t2
	li $t0, 0
	bne $t3, $t0, label199

	j label197

label199:
	li $t0, 0
	li $t1, 21028
	li $t2, 0
	sw $t0, -796($fp)
	bne $t1, $t2, label203

	j label202

label202:
	li $t0, 1
	sw $t0, -796($fp)

label203:
	li $t0, 0
	li $t1, 47043
	lw $t2, -584($fp)
	mul $t3, $t1, $t2
	li $t1, 0
	li $t4, 43282
	li $t5, 0
	sw $t0, -800($fp)
	sw $t1, -808($fp)
	sw $t3, -804($fp)
	bne $t4, $t5, label209

	j label207

label209:
	li $t0, 0
	lw $t1, -544($fp)
	bne $t1, $t0, label208

	j label207

label208:
	li $t0, 0
	lw $t1, -584($fp)
	bne $t1, $t0, label206

	j label207

label206:
	li $t0, 1
	sw $t0, -808($fp)

label207:
	li $t0, 0
	li $t1, 56010
	li $t2, 31710
	add $t3, $t1, $t2
	li $t1, 688
	sw $t0, -812($fp)
	bgt $t3, $t1, label210

	j label211

label210:
	li $t0, 1
	sw $t0, -812($fp)

label211:
	lw $t0, -548($fp)
	lw $t1, -544($fp)
	div $t1, $t0
	mflo $t2
	li $t3, -1
	mul $t4, $t3, $t2
	sw $t4, -816($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -816($fp)
	move $a3, $t0
	lw $t1, -812($fp)
	move $a2, $t1
	lw $t2, -808($fp)
	move $a1, $t2
	lw $t3, -804($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -820($fp)

	li $t0, 0
	lw $t1, -820($fp)
	bne $t1, $t0, label205

	j label204

label204:
	li $t0, 1
	sw $t0, -800($fp)

label205:
	li $t0, 0
	li $t1, 14666
	sw $t0, -824($fp)
	lw $t2, -12($fp)
	bgt $t2, $t1, label214

	j label213

label214:
	li $t0, 0
	lw $t1, -540($fp)
	bne $t1, $t0, label212

	j label213

label212:
	li $t0, 1
	sw $t0, -824($fp)

label213:
	li $t0, 321
	li $t1, 7776
	mul $t2, $t0, $t1
	li $t0, 1
	mul $t1, $t2, $t0
	li $t0, 0
	addi $t2, $fp, -776
	li $t3, 3
	mul $t4, $t0, $t3
	lw $t3, -780($fp)
	add $t5, $t4, $t3
	li $t6, 4
	mul $t7, $t5, $t6
	add $t6, $t2, $t7
	li $t2, 64494
	lw $t7, 0($t6)
	div $t7, $t2
	mflo $t6
	sw $t1, -828($fp)
	sw $t6, -832($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -832($fp)
	sw $t0, 0($sp)
	lw $t1, -828($fp)
	move $a3, $t1
	lw $t2, -824($fp)
	move $a2, $t2
	lw $t3, -800($fp)
	move $a1, $t3
	lw $t4, -796($fp)
	move $a0, $t4
	jal id_PzYrNI
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -836($fp)

	li $t0, 33293
	lw $t1, -836($fp)
	bge $t1, $t0, label198

	j label197

label198:
	li $t0, 11959
	lw $t2, -552($fp)
	move $t1, $t2
	li $t3, 34186
	move $t4, $t3
	li $t3, 0
	addi $t5, $fp, -188
	li $t6, 5
	mul $t7, $t3, $t6
	lw $t6, -540($fp)
	add $t8, $t7, $t6
	li $t9, 4
	mul $s0, $t8, $t9
	add $t9, $t5, $s0
	li $t5, 0
	li $s0, 0
	sw $t0, -840($fp)
	sw $t1, -28($fp)
	sw $t4, -564($fp)
	sw $t5, -848($fp)
	sw $t9, -844($fp)
	lw $s1, -560($fp)
	bne $s1, $s0, label216

	j label215

label215:
	li $t0, 1
	sw $t0, -848($fp)

label216:
	li $t0, 0
	li $t1, 65443
	li $t2, 29721
	sw $t0, -852($fp)
	blt $t1, $t2, label219

	j label218

label219:
	li $t0, 0
	lw $t1, -532($fp)
	bne $t1, $t0, label217

	j label218

label217:
	li $t0, 1
	sw $t0, -852($fp)

label218:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -108
	li $t3, 5
	mul $t4, $t1, $t3
	lw $t3, -572($fp)
	add $t5, $t4, $t3
	li $t6, 4
	mul $t7, $t5, $t6
	add $t6, $t2, $t7
	lw $t2, 0($t6)
	sw $t0, -856($fp)
	lw $t6, -20($fp)
	bne $t2, $t6, label220

	j label221

label220:
	li $t0, 1
	sw $t0, -856($fp)

label221:
	li $t0, 22352
	move $t1, $t0
	li $t0, 0
	addi $t2, $fp, -476
	li $t3, 5
	li $t4, 10
	mul $t5, $t0, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	li $t2, 52588
	lw $t6, 0($t3)
	div $t6, $t2
	mflo $t3
	lw $t6, -544($fp)
	move $t2, $t6
	sw $t1, -24($fp)
	sw $t2, -528($fp)
	sw $t3, -860($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -528($fp)
	sw $t0, 0($sp)
	lw $t1, -860($fp)
	move $a3, $t1
	lw $t2, -24($fp)
	move $a2, $t2
	lw $t3, -856($fp)
	move $a1, $t3
	lw $t4, -852($fp)
	move $a0, $t4
	jal id_PzYrNI
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -864($fp)

	lw $t1, -844($fp)
	lw $t0, 0($t1)
	sw $t0, -868($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -864($fp)
	sw $t0, 0($sp)
	lw $t1, -848($fp)
	move $a3, $t1
	lw $t2, -868($fp)
	move $a2, $t2
	lw $t3, -564($fp)
	move $a1, $t3
	lw $t4, -28($fp)
	move $a0, $t4
	jal id_PzYrNI
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -872($fp)

	lw $t0, -872($fp)
	lw $t1, -840($fp)
	div $t1, $t0
	mflo $t2
	li $t3, -1
	mul $t4, $t3, $t2
	li $t2, 0
	bne $t4, $t2, label196

	j label197

label196:
	li $t0, 1
	sw $t0, -784($fp)

label197:
	j label194

label193:
	li $t0, 25005
	move $t1, $t0
	li $t0, 0
	li $t2, 0
	li $t3, 0
	addi $t4, $fp, -108
	li $t5, 4
	li $t6, 5
	mul $t7, $t3, $t6
	add $t6, $t7, $t5
	li $t5, 4
	mul $t8, $t6, $t5
	add $t5, $t4, $t8
	lw $t4, 0($t5)
	lw $t5, -588($fp)
	sub $t8, $t4, $t5
	li $t4, 37127
	li $t9, -1
	mul $s0, $t9, $t4
	add $t4, $t8, $s0
	li $t8, 0
	li $t9, 26365
	lw $s0, -16($fp)
	div $s0, $t9
	mflo $s1
	li $t9, 0
	sw $t0, -880($fp)
	sw $t1, -876($fp)
	sw $t2, -884($fp)
	sw $t4, -888($fp)
	sw $t8, -892($fp)
	bne $s1, $t9, label226

	j label228

label228:
	li $t0, 0
	lw $t1, -548($fp)
	bne $t1, $t0, label226

	j label227

label226:
	li $t0, 1
	sw $t0, -892($fp)

label227:
	li $t0, 0
	li $t1, 11569
	lw $t2, -12($fp)
	div $t2, $t1
	mflo $t3
	li $t1, 0
	sw $t0, -896($fp)
	bne $t3, $t1, label231

	j label230

label231:
	li $t0, 0
	lw $t1, -876($fp)
	bne $t1, $t0, label229

	j label230

label229:
	li $t0, 1
	sw $t0, -896($fp)

label230:
	li $t0, 28988
	move $t1, $t0
	sw $t1, -532($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -532($fp)
	move $a3, $t0
	lw $t1, -896($fp)
	move $a2, $t1
	lw $t2, -564($fp)
	move $a1, $t2
	lw $t3, -892($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -900($fp)

	lw $t0, -544($fp)
	lw $t1, -900($fp)
	sub $t2, $t1, $t0
	lw $t3, -888($fp)
	bge $t3, $t2, label224

	j label225

label224:
	li $t0, 1
	sw $t0, -884($fp)

label225:
	li $t0, 18698
	li $t1, 18200
	li $t2, -1
	mul $t3, $t2, $t1
	div $t0, $t3
	mflo $t1
	lw $t0, -884($fp)
	bge $t0, $t1, label222

	j label223

label222:
	li $t0, 1
	sw $t0, -880($fp)

label223:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 0
	sw $t0, -904($fp)
	sw $t1, -908($fp)
	sw $t2, -912($fp)
	lw $t4, -580($fp)
	bne $t4, $t3, label238

	j label237

label238:
	li $t0, 10463
	li $t1, 0
	bne $t0, $t1, label236

	j label237

label236:
	li $t0, 1
	sw $t0, -912($fp)

label237:
	li $t0, 26237
	move $t1, $t0
	li $t0, 0
	addi $t2, $fp, -476
	li $t3, 10
	mul $t4, $t0, $t3
	lw $t3, -560($fp)
	add $t5, $t4, $t3
	li $t6, 4
	mul $t7, $t5, $t6
	add $t6, $t2, $t7
	li $t2, 39228
	move $t7, $t2
	lw $t2, 0($t6)
	sw $t1, -544($fp)
	sw $t2, -916($fp)
	sw $t7, -576($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -576($fp)
	sw $t0, 0($sp)
	lw $t1, -916($fp)
	move $a3, $t1
	lw $t2, -544($fp)
	move $a2, $t2
	lw $t3, -20($fp)
	move $a1, $t3
	lw $t4, -912($fp)
	move $a0, $t4
	jal id_PzYrNI
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -920($fp)

	li $t0, 0
	addi $t1, $fp, -476
	li $t2, 4
	li $t3, 10
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	li $t1, 29703
	move $t5, $t1
	lw $t1, 0($t2)
	sw $t1, -924($fp)
	sw $t5, -540($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -540($fp)
	sw $t0, 0($sp)
	lw $t1, -924($fp)
	move $a3, $t1
	lw $t2, -920($fp)
	move $a2, $t2
	lw $t3, -560($fp)
	move $a1, $t3
	lw $t4, -548($fp)
	move $a0, $t4
	jal id_PzYrNI
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -928($fp)

	li $t0, 0
	lw $t1, -928($fp)
	bne $t1, $t0, label235

	j label234

label234:
	li $t0, 1
	sw $t0, -908($fp)

label235:
	li $t0, -1
	lw $t1, -908($fp)
	mul $t2, $t0, $t1
	lw $t0, -28($fp)
	bgt $t2, $t0, label232

	j label233

label232:
	li $t0, 1
	sw $t0, -904($fp)

label233:

label194:
	j label189

label188:
	li $t0, 0
	li $t1, -1
	lw $t2, -532($fp)
	mul $t3, $t1, $t2
	li $t1, -1
	mul $t4, $t1, $t3
	li $t1, 0
	addi $t3, $fp, -476
	li $t5, 8
	li $t6, 10
	mul $t7, $t1, $t6
	add $t6, $t7, $t5
	li $t5, 4
	mul $t8, $t6, $t5
	add $t5, $t3, $t8
	lw $t3, 0($t5)
	sw $t0, -932($fp)
	beq $t4, $t3, label239

	j label240

label239:
	li $t0, 1
	sw $t0, -932($fp)

label240:

label189:

label241:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -476
	li $t3, 0
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	li $t3, 0
	sw $t0, -936($fp)
	bne $t2, $t3, label246

	j label245

label245:
	li $t0, 1
	sw $t0, -936($fp)

label246:
	li $t0, -1
	lw $t1, -936($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label244

	j label243

label244:
	li $t0, 12449
	li $t1, 0
	bne $t0, $t1, label243

	j label242

label242:
	li $t0, 0
	li $t1, 38498
	li $t2, 0
	sw $t0, -940($fp)
	bne $t1, $t2, label251

	j label250

label250:
	li $t0, 1
	sw $t0, -940($fp)

label251:
	li $t0, 22960
	li $t1, 0
	li $t2, 0
	sw $t0, -944($fp)
	sw $t1, -948($fp)
	lw $t3, -576($fp)
	bne $t3, $t2, label255

	j label253

label255:
	li $t0, 0
	lw $t1, -580($fp)
	bne $t1, $t0, label254

	j label253

label254:
	li $t0, 45742
	li $t1, 0
	bne $t0, $t1, label252

	j label253

label252:
	li $t0, 1
	sw $t0, -948($fp)

label253:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -476
	li $t3, 10
	mul $t4, $t1, $t3
	lw $t3, -528($fp)
	add $t5, $t4, $t3
	li $t6, 4
	mul $t7, $t5, $t6
	add $t6, $t2, $t7
	lw $t2, 0($t6)
	li $t6, 0
	sw $t0, -952($fp)
	bne $t2, $t6, label256

	j label258

label258:
	li $t0, 0
	lw $t1, -28($fp)
	bne $t1, $t0, label256

	j label257

label256:
	li $t0, 1
	sw $t0, -952($fp)

label257:
	li $t0, 0
	li $t1, 0
	sw $t0, -956($fp)
	lw $t2, -568($fp)
	bne $t2, $t1, label260

	j label259

label259:
	li $t0, 1
	sw $t0, -956($fp)

label260:
	lw $t0, -552($fp)
	lw $t1, -956($fp)
	sub $t2, $t1, $t0
	lw $t3, -588($fp)
	lw $t4, -548($fp)
	sub $t5, $t4, $t3
	sw $t2, -960($fp)
	sw $t5, -964($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -964($fp)
	sw $t0, 0($sp)
	lw $t1, -960($fp)
	move $a3, $t1
	lw $t2, -952($fp)
	move $a2, $t2
	lw $t3, -948($fp)
	move $a1, $t3
	lw $t4, -532($fp)
	move $a0, $t4
	jal id_PzYrNI
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -968($fp)

	lw $t0, -968($fp)
	lw $t1, -944($fp)
	add $t2, $t1, $t0
	lw $t3, -940($fp)
	beq $t3, $t2, label247

	j label248

label247:
	li $t0, 57147
	lw $t1, -548($fp)
	div $t1, $t0
	mflo $t2
	lw $t0, -544($fp)
	div $t2, $t0
	mflo $t3
	li $t2, -1
	mul $t4, $t2, $t3
	li $t2, 45650
	bgt $t4, $t2, label261

	j label262

label261:

label264:
	li $t0, 0
	lw $t1, -560($fp)
	bne $t1, $t0, label266

	j label265

label265:
	li $t0, 0
	addi $t1, $fp, -1128
	li $t2, 0
	li $t3, 10
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	li $t1, 14643
	sw $t1, 0($t2)
	li $t5, 0
	addi $t6, $fp, -1128
	li $t7, 1
	li $t8, 10
	mul $t9, $t5, $t8
	add $t8, $t9, $t7
	li $t7, 4
	mul $s0, $t8, $t7
	add $t7, $t6, $s0
	li $t6, 13963
	sw $t6, 0($t7)
	li $s0, 0
	addi $s1, $fp, -1128
	li $s2, 2
	li $s3, 10
	mul $s4, $s0, $s3
	add $s3, $s4, $s2
	li $s2, 4
	mul $s5, $s3, $s2
	add $s2, $s1, $s5
	li $s1, 4209
	sw $s1, 0($s2)
	li $s5, 0
	addi $s6, $fp, -1128
	li $s7, 3
	sw $s4, -1688($fp)
	li $s4, 10
	sw $s3, -1688($fp)
	mul $s3, $s5, $s4
	add $s4, $s3, $s7
	li $s7, 4
	sw $s2, -1692($fp)
	mul $s2, $s4, $s7
	add $s7, $s6, $s2
	li $s2, 14144
	sw $s2, 0($s7)
	li $s6, 0
	sw $s7, -1696($fp)
	addi $s7, $fp, -1128
	sw $s5, -1700($fp)
	li $s5, 4
	sw $s4, -1700($fp)
	li $s4, 10
	sw $s3, -1700($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1704($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 1015
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1708($fp)
	addi $s6, $fp, -1128
	sw $s5, -1712($fp)
	li $s5, 5
	sw $s4, -1708($fp)
	li $s4, 10
	sw $s3, -1708($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1716($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 29214
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1720($fp)
	addi $s7, $fp, -1128
	sw $s5, -1724($fp)
	li $s5, 6
	sw $s4, -1720($fp)
	li $s4, 10
	sw $s3, -1720($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1728($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 1639
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1732($fp)
	addi $s6, $fp, -1128
	sw $s5, -1736($fp)
	li $s5, 7
	sw $s4, -1732($fp)
	li $s4, 10
	sw $s3, -1732($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1740($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 53899
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1744($fp)
	addi $s7, $fp, -1128
	sw $s5, -1748($fp)
	li $s5, 8
	sw $s4, -1744($fp)
	li $s4, 10
	sw $s3, -1744($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1752($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 805
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1756($fp)
	addi $s6, $fp, -1128
	sw $s5, -1760($fp)
	li $s5, 9
	sw $s4, -1756($fp)
	li $s4, 10
	sw $s3, -1756($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1764($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 28004
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1768($fp)
	li $s7, 0
	sw $s6, -1132($fp)
	addi $s6, $fp, -1128
	sw $s5, -1772($fp)
	lw $s5, -580($fp)
	sw $s4, -1768($fp)
	lw $s4, -588($fp)
	sw $s3, -1768($fp)
	sub $s3, $s4, $s5
	sw $s5, -580($fp)
	li $s5, 10
	sw $s4, -588($fp)
	mul $s4, $s7, $s5
	add $s5, $s4, $s3
	li $s3, 4
	sw $s2, -1776($fp)
	mul $s2, $s5, $s3
	add $s3, $s6, $s2
	li $s2, -1
	lw $s6, 0($s3)
	mul $s3, $s2, $s6
	li $s2, 0
	bne $s3, $s2, label269

	j label268

label269:
	li $t0, 0
	li $t1, 65469
	li $t2, -1
	mul $t3, $t2, $t1
	li $t1, 0
	sw $t0, -1136($fp)
	bne $t3, $t1, label271

	j label270

label270:
	li $t0, 1
	sw $t0, -1136($fp)

label271:
	li $t0, 29793
	lw $t1, -1136($fp)
	beq $t1, $t0, label267

	j label268

label267:
	li $t0, 1
	sw $t0, -1132($fp)

label268:
	j label264

label266:
	j label263

label262:

label272:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 46703
	li $t4, 0
	sw $t0, -1140($fp)
	sw $t1, -1144($fp)
	sw $t2, -1148($fp)
	bne $t3, $t4, label280

	j label279

label279:
	li $t0, 1
	sw $t0, -1148($fp)

label280:
	li $t0, 18133
	lw $t1, -16($fp)
	add $t2, $t0, $t1
	li $t0, 0
	li $t3, 40257
	sw $t0, -1156($fp)
	sw $t2, -1152($fp)
	lw $t4, -576($fp)
	beq $t4, $t3, label281

	j label283

label283:
	li $t0, 0
	lw $t1, -28($fp)
	bne $t1, $t0, label281

	j label282

label281:
	li $t0, 1
	sw $t0, -1156($fp)

label282:
	li $t0, 0
	li $t1, 7404
	li $t2, -1
	mul $t3, $t2, $t1
	li $t1, 0
	sw $t0, -1160($fp)
	bne $t3, $t1, label284

	j label286

label286:
	li $t0, 57361
	li $t1, 0
	bne $t0, $t1, label284

	j label285

label284:
	li $t0, 1
	sw $t0, -1160($fp)

label285:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1160($fp)
	move $a3, $t0
	lw $t1, -1156($fp)
	move $a2, $t1
	lw $t2, -1152($fp)
	move $a1, $t2
	lw $t3, -1148($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1164($fp)

	li $t0, -1
	lw $t1, -1164($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	addi $t3, $fp, -188
	li $t4, 4
	li $t5, 5
	mul $t6, $t0, $t5
	add $t5, $t6, $t4
	li $t4, 4
	mul $t7, $t5, $t4
	add $t4, $t3, $t7
	lw $t3, 0($t4)
	bgt $t2, $t3, label277

	j label278

label277:
	li $t0, 1
	sw $t0, -1144($fp)

label278:
	li $t0, 0
	addi $t1, $fp, -524
	li $t2, 3
	mul $t3, $t0, $t2
	lw $t2, -560($fp)
	add $t4, $t3, $t2
	li $t5, 4
	mul $t6, $t4, $t5
	add $t5, $t1, $t6
	lw $t1, 0($t5)
	lw $t5, -1144($fp)
	bge $t5, $t1, label275

	j label276

label275:
	li $t0, 1
	sw $t0, -1140($fp)

label276:
	li $t0, -1
	lw $t1, -528($fp)
	mul $t2, $t0, $t1
	lw $t0, -1140($fp)
	beq $t0, $t2, label273

	j label274

label273:
	li $t0, 0
	li $t1, 21528
	li $t2, 0
	li $t3, 55908
	li $t4, -1
	mul $t5, $t4, $t3
	li $t3, 0
	sw $t0, -1168($fp)
	sw $t1, -1172($fp)
	sw $t2, -1176($fp)
	bne $t5, $t3, label290

	j label289

label289:
	li $t0, 1
	sw $t0, -1176($fp)

label290:
	lw $t0, -1176($fp)
	lw $t1, -1172($fp)
	bne $t1, $t0, label287

	j label288

label287:
	li $t0, 1
	sw $t0, -1168($fp)

label288:
	j label272

label274:

label263:
	j label249

label248:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	addi $t3, $fp, -188
	li $t4, 5
	mul $t5, $t2, $t4
	lw $t4, -580($fp)
	add $t6, $t5, $t4
	li $t7, 4
	mul $t8, $t6, $t7
	add $t7, $t3, $t8
	lw $t3, 0($t7)
	li $t7, 0
	sw $t0, -1180($fp)
	sw $t1, -1184($fp)
	bne $t3, $t7, label295

	j label294

label294:
	li $t0, 1
	sw $t0, -1184($fp)

label295:
	li $t0, 0
	addi $t1, $fp, -316
	li $t2, 8
	mul $t3, $t0, $t2
	lw $t2, -584($fp)
	add $t4, $t3, $t2
	li $t5, 4
	mul $t6, $t4, $t5
	add $t5, $t1, $t6
	lw $t1, 0($t5)
	lw $t5, -1184($fp)
	add $t6, $t5, $t1
	li $t1, 0
	bne $t6, $t1, label293

	j label292

label293:
	li $t0, 16061
	lw $t1, -556($fp)
	mul $t2, $t0, $t1
	lw $t0, -576($fp)
	div $t2, $t0
	mflo $t3
	li $t2, 362
	mul $t4, $t3, $t2
	li $t2, 0
	bne $t4, $t2, label291

	j label292

label291:
	li $t0, 1
	sw $t0, -1180($fp)

label292:

label249:
	j label241

label243:
	li $t0, 0
	addi $t1, $fp, -108
	li $t2, 0
	li $t3, 5
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	lw $t1, 0($t2)
	sw $t1, -1188($fp)

	li $v0, 1
	lw $t0, -1188($fp)
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
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1192($fp)

	li $v0, 1
	lw $t0, -1192($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -108
	li $t3, 2
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1196($fp)

	li $v0, 1
	lw $t0, -1196($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -108
	li $t3, 3
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1200($fp)

	li $v0, 1
	lw $t0, -1200($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -108
	li $t3, 4
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1204($fp)

	li $v0, 1
	lw $t0, -1204($fp)
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
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1208($fp)

	li $v0, 1
	lw $t0, -1208($fp)
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
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1212($fp)

	li $v0, 1
	lw $t0, -1212($fp)
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
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1216($fp)

	li $v0, 1
	lw $t0, -1216($fp)
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
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1220($fp)

	li $v0, 1
	lw $t0, -1220($fp)
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
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1224($fp)

	li $v0, 1
	lw $t0, -1224($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -316
	li $t3, 0
	li $t4, 8
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1228($fp)

	li $v0, 1
	lw $t0, -1228($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -316
	li $t3, 1
	li $t4, 8
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1232($fp)

	li $v0, 1
	lw $t0, -1232($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -316
	li $t3, 2
	li $t4, 8
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1236($fp)

	li $v0, 1
	lw $t0, -1236($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -316
	li $t3, 3
	li $t4, 8
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1240($fp)

	li $v0, 1
	lw $t0, -1240($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -316
	li $t3, 4
	li $t4, 8
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1244($fp)

	li $v0, 1
	lw $t0, -1244($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -316
	li $t3, 5
	li $t4, 8
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1248($fp)

	li $v0, 1
	lw $t0, -1248($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -316
	li $t3, 6
	li $t4, 8
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1252($fp)

	li $v0, 1
	lw $t0, -1252($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -316
	li $t3, 7
	li $t4, 8
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1256($fp)

	li $v0, 1
	lw $t0, -1256($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -528($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -532($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -536($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -540($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -544($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -548($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -552($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	addi $t2, $fp, -476
	li $t3, 0
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1260($fp)

	li $v0, 1
	lw $t0, -1260($fp)
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
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1264($fp)

	li $v0, 1
	lw $t0, -1264($fp)
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
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1268($fp)

	li $v0, 1
	lw $t0, -1268($fp)
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
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1272($fp)

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
	addi $t2, $fp, -476
	li $t3, 4
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1276($fp)

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
	addi $t2, $fp, -476
	li $t3, 5
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1280($fp)

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
	addi $t2, $fp, -476
	li $t3, 6
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1284($fp)

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
	addi $t2, $fp, -476
	li $t3, 7
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1288($fp)

	li $v0, 1
	lw $t0, -1288($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -476
	li $t3, 8
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1292($fp)

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
	addi $t2, $fp, -476
	li $t3, 9
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1296($fp)

	li $v0, 1
	lw $t0, -1296($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -560($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -564($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	addi $t2, $fp, -524
	li $t3, 0
	li $t4, 3
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1300($fp)

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
	addi $t2, $fp, -524
	li $t3, 1
	li $t4, 3
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1304($fp)

	li $v0, 1
	lw $t0, -1304($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -524
	li $t3, 2
	li $t4, 3
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1308($fp)

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
	lw $t0, -572($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	lw $t0, -580($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -584($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -588($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 14374
	li $t4, 0
	sw $t1, -1312($fp)
	sw $t2, -1316($fp)
	bne $t3, $t4, label299

	j label300

label299:
	li $t0, 1
	sw $t0, -1316($fp)

label300:
	li $t0, 0
	addi $t1, $fp, -476
	li $t2, 4
	li $t3, 10
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	lw $t1, 0($t2)
	lw $t2, -1316($fp)
	mul $t5, $t2, $t1
	li $t1, 0
	bne $t5, $t1, label296

	j label298

label298:
	li $t0, 0
	lw $t1, -536($fp)
	bne $t1, $t0, label296

	j label297

label296:
	li $t0, 1
	sw $t0, -1312($fp)

label297:
	lw $t0, -1312($fp)
	move $v0, $t0
	lw $ra, 1312($sp)
	lw $fp, 1308($sp)
	addi $sp, $sp, 1316
	jr $ra

id_j:
	addi $sp, $sp, -32
	sw $ra, 28($sp)
	sw $fp, 24($sp)
	addi $fp, $sp, 32
	sw $a0, -12($fp)
	sw $a1, -16($fp)

	li $t0, 37334
	move $t1, $t0
	lw $t0, -16($fp)
	mul $t2, $t0, $t1
	add $t3, $t2, $t1
	li $t2, 0
	li $t4, 0
	sw $t1, -20($fp)
	sw $t2, -28($fp)
	sw $t3, -24($fp)
	bne $t1, $t4, label301

	j label304

label304:
	li $t0, 8716
	li $t1, 0
	bne $t0, $t1, label301

	j label303

label303:
	li $t0, 23782
	li $t1, 0
	bne $t0, $t1, label301

	j label302

label301:
	li $t0, 1
	sw $t0, -28($fp)

label302:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -28($fp)
	move $a1, $t0
	lw $t1, -24($fp)
	move $a0, $t1
	jal id_j
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4

	li $v0, 1
	lw $t0, -20($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 28945
	li $t3, 54366
	sw $t1, -32($fp)
	bge $t2, $t3, label307

	j label306

label307:
	lw $t0, -12($fp)
	lw $t1, -20($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label305

	j label306

label305:
	li $t0, 1
	sw $t0, -32($fp)

label306:
	lw $t0, -32($fp)
	move $v0, $t0
	lw $ra, 28($sp)
	lw $fp, 24($sp)
	addi $sp, $sp, 32
	jr $ra

id_Axiwv5:
	addi $sp, $sp, -2032
	sw $ra, 2028($sp)
	sw $fp, 2024($sp)
	addi $fp, $sp, 2032
	sw $a0, -12($fp)
	sw $a1, -16($fp)

	li $t0, 38425
	move $t1, $t0
	li $t0, 42908
	move $t2, $t0
	li $t0, 0
	li $t3, 0
	sw $t0, -28($fp)
	sw $t1, -20($fp)
	sw $t2, -24($fp)
	bne $t2, $t3, label309

	j label308

label308:
	li $t0, 1
	sw $t0, -28($fp)

label309:
	li $t0, 58575
	lw $t1, -28($fp)
	add $t2, $t1, $t0
	li $t0, 52570
	move $t3, $t0
	li $t0, 43923
	move $t4, $t0
	li $t0, 22253
	move $t5, $t0
	li $t0, 54209
	move $t6, $t0
	li $t0, 32286
	move $t7, $t0
	li $t0, 23059
	move $t8, $t0
	li $t0, 16678
	move $t9, $t0
	li $t0, 32219
	move $s0, $t0
	li $t0, 52852
	move $s1, $t0
	li $t0, 63381
	move $s2, $t0
	li $t0, 50352
	move $s3, $t0
	li $t0, 27573
	move $s4, $t0
	li $t0, 5249
	move $s5, $t0
	li $t0, 42178
	move $s6, $t0
	li $t0, 0
	addi $s7, $fp, -188
	sw $s6, -484($fp)
	li $s6, 0
	sw $s5, -480($fp)
	li $s5, 10
	sw $s4, -476($fp)
	mul $s4, $t0, $s5
	add $s5, $s4, $s6
	li $s6, 4
	sw $s3, -472($fp)
	mul $s3, $s5, $s6
	add $s6, $s7, $s3
	li $s3, 59801
	sw $s3, 0($s6)
	li $s7, 0
	sw $s6, -2036($fp)
	addi $s6, $fp, -188
	sw $s5, -2040($fp)
	li $s5, 1
	sw $s4, -2040($fp)
	li $s4, 10
	sw $s3, -2044($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -468($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 16638
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2048($fp)
	addi $s7, $fp, -188
	sw $s5, -2052($fp)
	li $s5, 2
	sw $s4, -2048($fp)
	li $s4, 10
	sw $s3, -2048($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2056($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 63706
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2060($fp)
	addi $s6, $fp, -188
	sw $s5, -2064($fp)
	li $s5, 3
	sw $s4, -2060($fp)
	li $s4, 10
	sw $s3, -2060($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2068($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 50173
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2072($fp)
	addi $s7, $fp, -188
	sw $s5, -2076($fp)
	li $s5, 4
	sw $s4, -2072($fp)
	li $s4, 10
	sw $s3, -2072($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2080($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 32699
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2084($fp)
	addi $s6, $fp, -188
	sw $s5, -2088($fp)
	li $s5, 5
	sw $s4, -2084($fp)
	li $s4, 10
	sw $s3, -2084($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2092($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 64068
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2096($fp)
	addi $s7, $fp, -188
	sw $s5, -2100($fp)
	li $s5, 6
	sw $s4, -2096($fp)
	li $s4, 10
	sw $s3, -2096($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2104($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 64548
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2108($fp)
	addi $s6, $fp, -188
	sw $s5, -2112($fp)
	li $s5, 7
	sw $s4, -2108($fp)
	li $s4, 10
	sw $s3, -2108($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2116($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 61209
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2120($fp)
	addi $s7, $fp, -188
	sw $s5, -2124($fp)
	li $s5, 8
	sw $s4, -2120($fp)
	li $s4, 10
	sw $s3, -2120($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2128($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 37393
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2132($fp)
	addi $s6, $fp, -188
	sw $s5, -2136($fp)
	li $s5, 9
	sw $s4, -2132($fp)
	li $s4, 10
	sw $s3, -2132($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2140($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 36346
	sw $s2, 0($s5)
	li $s6, 4389
	sw $s7, -2144($fp)
	move $s7, $s6
	li $s6, 61175
	sw $s7, -488($fp)
	move $s7, $s6
	li $s6, 65291
	sw $s7, -492($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -496($fp)
	addi $s7, $fp, -300
	sw $s5, -2148($fp)
	li $s5, 0
	sw $s4, -2144($fp)
	li $s4, 7
	sw $s3, -2144($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2152($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 58756
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2156($fp)
	addi $s6, $fp, -300
	sw $s5, -2160($fp)
	li $s5, 1
	sw $s4, -2156($fp)
	li $s4, 7
	sw $s3, -2156($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2164($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 34065
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2168($fp)
	addi $s7, $fp, -300
	sw $s5, -2172($fp)
	li $s5, 2
	sw $s4, -2168($fp)
	li $s4, 7
	sw $s3, -2168($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2176($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 42663
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2180($fp)
	addi $s6, $fp, -300
	sw $s5, -2184($fp)
	li $s5, 3
	sw $s4, -2180($fp)
	li $s4, 7
	sw $s3, -2180($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2188($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 51795
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2192($fp)
	addi $s7, $fp, -300
	sw $s5, -2196($fp)
	li $s5, 4
	sw $s4, -2192($fp)
	li $s4, 7
	sw $s3, -2192($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2200($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 21099
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2204($fp)
	addi $s6, $fp, -300
	sw $s5, -2208($fp)
	li $s5, 5
	sw $s4, -2204($fp)
	li $s4, 7
	sw $s3, -2204($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2212($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 21050
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2216($fp)
	addi $s7, $fp, -300
	sw $s5, -2220($fp)
	li $s5, 6
	sw $s4, -2216($fp)
	li $s4, 7
	sw $s3, -2216($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2224($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 8513
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2228($fp)
	addi $s6, $fp, -428
	sw $s5, -2232($fp)
	li $s5, 0
	sw $s4, -2228($fp)
	li $s4, 8
	sw $s3, -2228($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2236($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 9772
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2240($fp)
	addi $s7, $fp, -428
	sw $s5, -2244($fp)
	li $s5, 1
	sw $s4, -2240($fp)
	li $s4, 8
	sw $s3, -2240($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2248($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 53337
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2252($fp)
	addi $s6, $fp, -428
	sw $s5, -2256($fp)
	li $s5, 2
	sw $s4, -2252($fp)
	li $s4, 8
	sw $s3, -2252($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2260($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 31572
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2264($fp)
	addi $s7, $fp, -428
	sw $s5, -2268($fp)
	li $s5, 3
	sw $s4, -2264($fp)
	li $s4, 8
	sw $s3, -2264($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2272($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 26450
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2276($fp)
	addi $s6, $fp, -428
	sw $s5, -2280($fp)
	li $s5, 4
	sw $s4, -2276($fp)
	li $s4, 8
	sw $s3, -2276($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2284($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 20020
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2288($fp)
	addi $s7, $fp, -428
	sw $s5, -2292($fp)
	li $s5, 5
	sw $s4, -2288($fp)
	li $s4, 8
	sw $s3, -2288($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2296($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 18888
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2300($fp)
	addi $s6, $fp, -428
	sw $s5, -2304($fp)
	li $s5, 6
	sw $s4, -2300($fp)
	li $s4, 8
	sw $s3, -2300($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2308($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 24295
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2312($fp)
	addi $s7, $fp, -428
	sw $s5, -2316($fp)
	li $s5, 7
	sw $s4, -2312($fp)
	li $s4, 8
	sw $s3, -2312($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2320($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 4837
	sw $s2, 0($s5)
	li $s7, 46462
	sw $s6, -2324($fp)
	move $s6, $s7
	li $s7, 29545
	sw $s6, -500($fp)
	move $s6, $s7
	li $s7, 47015
	sw $s6, -504($fp)
	move $s6, $s7
	li $s7, 40727
	sw $s6, -508($fp)
	move $s6, $s7
	li $s7, 0
	sw $s7, -516($fp)
	li $s7, 0
	sw $t3, -432($fp)
	sw $t4, -436($fp)
	sw $t5, -440($fp)
	sw $t6, -444($fp)
	sw $t7, -448($fp)
	sw $t8, -452($fp)
	sw $t9, -456($fp)
	sw $s0, -460($fp)
	sw $s1, -464($fp)
	sw $s6, -512($fp)
	bne $t5, $s7, label311

	j label310

label310:
	li $t0, 1
	sw $t0, -516($fp)

label311:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, -1
	lw $t4, -504($fp)
	mul $t5, $t3, $t4
	li $t3, 0
	sw $t0, -520($fp)
	sw $t1, -524($fp)
	sw $t2, -528($fp)
	bne $t5, $t3, label316

	j label317

label316:
	li $t0, 1
	sw $t0, -528($fp)

label317:
	li $t0, 0
	addi $t1, $fp, -300
	li $t2, 7
	mul $t3, $t0, $t2
	lw $t2, -512($fp)
	add $t4, $t3, $t2
	li $t5, 4
	mul $t6, $t4, $t5
	add $t5, $t1, $t6
	lw $t1, 0($t5)
	lw $t5, -528($fp)
	beq $t5, $t1, label314

	j label315

label314:
	li $t0, 1
	sw $t0, -524($fp)

label315:
	lw $t0, -456($fp)
	lw $t1, -524($fp)
	bge $t1, $t0, label312

	j label313

label312:
	li $t0, 1
	sw $t0, -520($fp)

label313:
	li $t0, 0
	addi $t1, $fp, -560
	li $t2, 0
	li $t3, 2
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	li $t1, 46183
	sw $t1, 0($t2)
	li $t5, 0
	addi $t6, $fp, -560
	li $t7, 1
	li $t8, 2
	mul $t9, $t5, $t8
	add $t8, $t9, $t7
	li $t7, 4
	mul $s0, $t8, $t7
	add $t7, $t6, $s0
	li $t6, 45185
	sw $t6, 0($t7)
	li $s0, 0
	addi $s1, $fp, -704
	li $s2, 0
	li $s3, 9
	mul $s4, $s0, $s3
	add $s3, $s4, $s2
	li $s2, 4
	mul $s5, $s3, $s2
	add $s2, $s1, $s5
	li $s1, 25364
	sw $s1, 0($s2)
	li $s5, 0
	addi $s6, $fp, -704
	li $s7, 1
	sw $s4, -2328($fp)
	li $s4, 9
	sw $s3, -2328($fp)
	mul $s3, $s5, $s4
	add $s4, $s3, $s7
	li $s7, 4
	sw $s2, -2332($fp)
	mul $s2, $s4, $s7
	add $s7, $s6, $s2
	li $s2, 13346
	sw $s2, 0($s7)
	li $s6, 0
	sw $s7, -2336($fp)
	addi $s7, $fp, -704
	sw $s5, -2340($fp)
	li $s5, 2
	sw $s4, -2340($fp)
	li $s4, 9
	sw $s3, -2340($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2344($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 43718
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2348($fp)
	addi $s6, $fp, -704
	sw $s5, -2352($fp)
	li $s5, 3
	sw $s4, -2348($fp)
	li $s4, 9
	sw $s3, -2348($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2356($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 24376
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2360($fp)
	addi $s7, $fp, -704
	sw $s5, -2364($fp)
	li $s5, 4
	sw $s4, -2360($fp)
	li $s4, 9
	sw $s3, -2360($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2368($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 9019
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2372($fp)
	addi $s6, $fp, -704
	sw $s5, -2376($fp)
	li $s5, 5
	sw $s4, -2372($fp)
	li $s4, 9
	sw $s3, -2372($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2380($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 15575
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2384($fp)
	addi $s7, $fp, -704
	sw $s5, -2388($fp)
	li $s5, 6
	sw $s4, -2384($fp)
	li $s4, 9
	sw $s3, -2384($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2392($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 60723
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2396($fp)
	addi $s6, $fp, -704
	sw $s5, -2400($fp)
	li $s5, 7
	sw $s4, -2396($fp)
	li $s4, 9
	sw $s3, -2396($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2404($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 13408
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2408($fp)
	addi $s7, $fp, -704
	sw $s5, -2412($fp)
	li $s5, 8
	sw $s4, -2408($fp)
	li $s4, 9
	sw $s3, -2408($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2416($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 11214
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2420($fp)
	addi $s6, $fp, -560
	sw $s5, -2424($fp)
	li $s5, 0
	sw $s4, -2420($fp)
	li $s4, 2
	sw $s3, -2420($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2428($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	lw $s2, 0($s5)
	sw $s2, -708($fp)

	li $v0, 1
	lw $t0, -708($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -560
	li $t3, 1
	li $t4, 2
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -712($fp)

	li $v0, 1
	lw $t0, -712($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -704
	li $t3, 0
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -716($fp)

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
	addi $t2, $fp, -704
	li $t3, 1
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -720($fp)

	li $v0, 1
	lw $t0, -720($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -704
	li $t3, 2
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -724($fp)

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
	addi $t2, $fp, -704
	li $t3, 3
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -728($fp)

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
	addi $t2, $fp, -704
	li $t3, 4
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -732($fp)

	li $v0, 1
	lw $t0, -732($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -704
	li $t3, 5
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -736($fp)

	li $v0, 1
	lw $t0, -736($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -704
	li $t3, 6
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -740($fp)

	li $v0, 1
	lw $t0, -740($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -704
	li $t3, 7
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -744($fp)

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
	addi $t2, $fp, -704
	li $t3, 8
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -748($fp)

	li $v0, 1
	lw $t0, -748($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	lw $t1, -452($fp)
	move $v0, $t1
	lw $ra, 2028($sp)
	lw $fp, 2024($sp)
	addi $sp, $sp, 2032
	jr $ra

	li $t0, 60478
	li $t1, -1
	mul $t2, $t1, $t0
	move $t0, $t2
	move $t1, $t0
	sw $t0, -508($fp)
	sw $t1, -500($fp)
	move $v0, $t1
	lw $ra, 2028($sp)
	lw $fp, 2024($sp)
	addi $sp, $sp, 2032
	jr $ra

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -188
	li $t3, 10
	mul $t4, $t1, $t3
	lw $t3, -440($fp)
	add $t5, $t4, $t3
	li $t6, 4
	mul $t7, $t5, $t6
	add $t6, $t2, $t7
	li $t2, -1
	lw $t7, 0($t6)
	mul $t6, $t2, $t7
	li $t2, 0
	sw $t0, -752($fp)
	bne $t6, $t2, label319

	j label318

label318:
	li $t0, 1
	sw $t0, -752($fp)

label319:
	lw $t0, -752($fp)
	lw $t1, -440($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 6628
	move $t4, $t3
	li $t3, 0
	li $t5, 0
	addi $t6, $fp, -560
	li $t7, 0
	li $t8, 45279
	lw $t9, -476($fp)
	mul $s0, $t9, $t8
	sw $t3, -760($fp)
	sw $t4, -756($fp)
	sw $t5, -764($fp)
	sw $t6, -768($fp)
	sw $t7, -772($fp)
	lw $t8, -432($fp)
	ble $s0, $t8, label323

	j label324

label323:
	li $t0, 1
	sw $t0, -772($fp)

label324:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -488($fp)
	move $a1, $t0
	lw $t1, -772($fp)
	move $a0, $t1
	jal id_Axiwv5
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -776($fp)

	li $t0, 37606
	lw $t1, -472($fp)
	sub $t2, $t1, $t0
	li $t0, 58424
	lw $t3, -468($fp)
	sub $t4, $t3, $t0
	li $t0, 842
	add $t5, $t4, $t0
	li $t0, 0
	li $t4, 58656
	sw $t0, -788($fp)
	sw $t2, -780($fp)
	sw $t5, -784($fp)
	bne $t1, $t4, label325

	j label326

label325:
	li $t0, 1
	sw $t0, -788($fp)

label326:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -788($fp)
	move $a3, $t0
	lw $t1, -784($fp)
	move $a2, $t1
	lw $t2, -780($fp)
	move $a1, $t2
	lw $t3, -776($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -792($fp)

	li $t0, 2
	lw $t1, -764($fp)
	mul $t2, $t1, $t0
	lw $t0, -792($fp)
	add $t3, $t2, $t0
	li $t4, 4
	mul $t5, $t3, $t4
	lw $t4, -768($fp)
	add $t6, $t4, $t5
	lw $t7, 0($t6)
	li $t6, 0
	sw $t1, -764($fp)
	sw $t2, -764($fp)
	sw $t3, -764($fp)
	sw $t5, -764($fp)
	bne $t7, $t6, label322

	j label321

label322:
	li $t0, 0
	lw $t1, -756($fp)
	bne $t1, $t0, label320

	j label321

label320:
	li $t0, 1
	sw $t0, -760($fp)

label321:
	li $t0, 0
	li $t1, -1
	lw $t2, -460($fp)
	mul $t3, $t1, $t2
	li $t1, 0
	sw $t0, -796($fp)
	bne $t3, $t1, label328

	j label327

label327:
	li $t0, 1
	sw $t0, -796($fp)

label328:
	li $t0, 0
	addi $t1, $fp, -560
	li $t2, 0
	li $t3, 2
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	lw $t1, 0($t2)
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
	addi $t2, $fp, -560
	li $t3, 1
	li $t4, 2
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -804($fp)

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
	addi $t2, $fp, -704
	li $t3, 0
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -808($fp)

	li $v0, 1
	lw $t0, -808($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -704
	li $t3, 1
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -812($fp)

	li $v0, 1
	lw $t0, -812($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -704
	li $t3, 2
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -816($fp)

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
	addi $t2, $fp, -704
	li $t3, 3
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -820($fp)

	li $v0, 1
	lw $t0, -820($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -704
	li $t3, 4
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -824($fp)

	li $v0, 1
	lw $t0, -824($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -704
	li $t3, 5
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -828($fp)

	li $v0, 1
	lw $t0, -828($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -704
	li $t3, 6
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -832($fp)

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
	addi $t2, $fp, -704
	li $t3, 7
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -836($fp)

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
	addi $t2, $fp, -704
	li $t3, 8
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -840($fp)

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
	addi $t2, $fp, -560
	li $t3, 2
	mul $t4, $t1, $t3
	lw $t3, -440($fp)
	add $t5, $t4, $t3
	li $t6, 4
	mul $t7, $t5, $t6
	add $t6, $t2, $t7
	lw $t2, 0($t6)
	lw $t6, -504($fp)
	div $t2, $t6
	mflo $t7
	li $t2, 1401
	add $t8, $t7, $t2
	li $t2, 10615
	sub $t7, $t8, $t2
	li $t2, 46457
	lw $t8, -480($fp)
	mul $t9, $t8, $t2
	li $t2, 32973
	add $s0, $t9, $t2
	li $t2, 0
	li $t9, 37065
	li $s1, 942
	sw $t2, -852($fp)
	sw $t7, -844($fp)
	sw $s0, -848($fp)
	bgt $t9, $s1, label329

	j label331

label331:
	li $t0, 51861
	li $t1, 0
	bne $t0, $t1, label329

	j label330

label329:
	li $t0, 1
	sw $t0, -852($fp)

label330:
	li $t0, 0
	addi $t1, $fp, -704
	li $t2, 3
	li $t3, 9
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	li $t1, 32787
	lw $t5, 0($t2)
	sub $t2, $t5, $t1
	li $t1, 0
	li $t5, 0
	li $t6, 25370
	sw $t1, -860($fp)
	sw $t2, -856($fp)
	sw $t5, -864($fp)
	lw $t7, -476($fp)
	bge $t7, $t6, label334

	j label335

label334:
	li $t0, 1
	sw $t0, -864($fp)

label335:
	lw $t0, -464($fp)
	lw $t1, -864($fp)
	bne $t1, $t0, label332

	j label333

label332:
	li $t0, 1
	sw $t0, -860($fp)

label333:
	li $t0, 52794
	li $t1, 7978
	div $t0, $t1
	mflo $t2
	lw $t0, -484($fp)
	div $t2, $t0
	mflo $t1
	sw $t1, -868($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -868($fp)
	sw $t0, 0($sp)
	lw $t1, -860($fp)
	move $a3, $t1
	lw $t2, -856($fp)
	move $a2, $t2
	lw $t3, -852($fp)
	move $a1, $t3
	lw $t4, -848($fp)
	move $a0, $t4
	jal id_PzYrNI
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -872($fp)

	lw $t0, -872($fp)
	lw $t1, -844($fp)
	add $t2, $t1, $t0
	move $v0, $t2
	lw $ra, 2028($sp)
	lw $fp, 2024($sp)
	addi $sp, $sp, 2032
	jr $ra

	li $t0, 0
	lw $t1, -492($fp)
	bne $t1, $t0, label336

	j label337

label336:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 6017
	lw $t4, -500($fp)
	div $t3, $t4
	mflo $t5
	li $t3, 0
	addi $t6, $fp, -428
	li $t7, 8
	mul $t8, $t3, $t7
	lw $t7, -448($fp)
	add $t9, $t8, $t7
	li $s0, 4
	mul $s1, $t9, $s0
	add $s0, $t6, $s1
	lw $t6, 0($s0)
	sw $t0, -876($fp)
	sw $t1, -880($fp)
	sw $t2, -884($fp)
	sw $t5, -888($fp)
	sw $t6, -892($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -892($fp)
	move $a1, $t0
	lw $t1, -888($fp)
	move $a0, $t1
	jal id_Axiwv5
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -896($fp)

	li $t0, 0
	lw $t1, -896($fp)
	bne $t1, $t0, label342

	j label343

label342:
	li $t0, 1
	sw $t0, -884($fp)

label343:
	lw $t0, -436($fp)
	lw $t1, -884($fp)
	bne $t1, $t0, label340

	j label341

label340:
	li $t0, 1
	sw $t0, -880($fp)

label341:
	li $t0, 32443
	lw $t1, -500($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	li $t3, 33343
	lw $t4, -512($fp)
	sub $t5, $t3, $t4
	li $t3, 0
	sw $t0, -904($fp)
	sw $t2, -900($fp)
	bne $t5, $t3, label346

	j label345

label346:
	li $t0, 0
	lw $t1, -448($fp)
	bne $t1, $t0, label344

	j label345

label344:
	li $t0, 1
	sw $t0, -904($fp)

label345:
	li $t0, 0
	li $t1, 19363
	li $t2, 0
	sw $t0, -908($fp)
	bne $t1, $t2, label347

	j label350

label350:
	li $t0, 10625
	li $t1, 0
	bne $t0, $t1, label347

	j label349

label349:
	li $t0, 57719
	li $t1, 0
	bne $t0, $t1, label347

	j label348

label347:
	li $t0, 1
	sw $t0, -908($fp)

label348:
	lw $t1, -476($fp)
	move $t0, $t1
	li $t2, 28382
	lw $t3, -460($fp)
	add $t4, $t2, $t3
	add $t2, $t4, $t1
	li $t4, 0
	addi $t5, $fp, -428
	li $t6, 8
	mul $t7, $t4, $t6
	lw $t6, -20($fp)
	add $t8, $t7, $t6
	li $t9, 4
	mul $s0, $t8, $t9
	add $t9, $t5, $s0
	li $t5, 0
	li $s0, 0
	sw $t0, -484($fp)
	sw $t2, -912($fp)
	sw $t5, -920($fp)
	sw $t9, -916($fp)
	lw $s1, -444($fp)
	bne $s1, $s0, label351

	j label354

label354:
	li $t0, 0
	lw $t1, -476($fp)
	bne $t1, $t0, label351

	j label353

label353:
	li $t0, 0
	lw $t1, -436($fp)
	bne $t1, $t0, label351

	j label352

label351:
	li $t0, 1
	sw $t0, -920($fp)

label352:
	lw $t1, -916($fp)
	lw $t0, 0($t1)
	sw $t0, -924($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -920($fp)
	sw $t0, 0($sp)
	lw $t1, -924($fp)
	move $a3, $t1
	lw $t2, -912($fp)
	move $a2, $t2
	lw $t3, -484($fp)
	move $a1, $t3
	lw $t4, -908($fp)
	move $a0, $t4
	jal id_PzYrNI
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -928($fp)

	li $t0, -1
	lw $t1, -928($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	li $t3, 26200
	sw $t0, -936($fp)
	sw $t2, -932($fp)
	lw $t4, -504($fp)
	beq $t4, $t3, label355

	j label357

label357:
	li $t0, 52906
	li $t1, 0
	bne $t0, $t1, label355

	j label356

label355:
	li $t0, 1
	sw $t0, -936($fp)

label356:
	lw $t1, -460($fp)
	move $t0, $t1
	sw $t0, -472($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -496($fp)
	sw $t0, 0($sp)
	lw $t1, -472($fp)
	move $a3, $t1
	lw $t2, -936($fp)
	move $a2, $t2
	lw $t3, -932($fp)
	move $a1, $t3
	lw $t4, -904($fp)
	move $a0, $t4
	jal id_PzYrNI
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -940($fp)

	lw $t0, -940($fp)
	lw $t1, -900($fp)
	add $t2, $t1, $t0
	lw $t3, -880($fp)
	bne $t3, $t2, label338

	j label339

label338:
	li $t0, 1
	sw $t0, -876($fp)

label339:

label337:
	li $t0, 41790
	move $t1, $t0
	li $t0, 0
	addi $t2, $fp, -1004
	li $t3, 0
	li $t4, 4
	mul $t5, $t0, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	li $t2, 37415
	sw $t2, 0($t3)
	li $t6, 0
	addi $t7, $fp, -1004
	li $t8, 1
	li $t9, 4
	mul $s0, $t6, $t9
	add $t9, $s0, $t8
	li $t8, 4
	mul $s1, $t9, $t8
	add $t8, $t7, $s1
	li $t7, 47849
	sw $t7, 0($t8)
	li $s1, 0
	addi $s2, $fp, -1004
	li $s3, 2
	li $s4, 4
	mul $s5, $s1, $s4
	add $s4, $s5, $s3
	li $s3, 4
	mul $s6, $s4, $s3
	add $s3, $s2, $s6
	li $s2, 48419
	sw $s2, 0($s3)
	li $s6, 0
	addi $s7, $fp, -1004
	sw $s5, -2432($fp)
	li $s5, 3
	sw $s4, -2432($fp)
	li $s4, 4
	sw $s3, -2436($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2440($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 17158
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2444($fp)
	addi $s6, $fp, -1068
	sw $s5, -2448($fp)
	li $s5, 0
	sw $s4, -2444($fp)
	li $s4, 4
	sw $s3, -2444($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2452($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 19919
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2456($fp)
	addi $s7, $fp, -1068
	sw $s5, -2460($fp)
	li $s5, 1
	sw $s4, -2456($fp)
	li $s4, 4
	sw $s3, -2456($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2464($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 41307
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2468($fp)
	addi $s6, $fp, -1068
	sw $s5, -2472($fp)
	li $s5, 2
	sw $s4, -2468($fp)
	li $s4, 4
	sw $s3, -2468($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2476($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 18001
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2480($fp)
	addi $s7, $fp, -1068
	sw $s5, -2484($fp)
	li $s5, 3
	sw $s4, -2480($fp)
	li $s4, 4
	sw $s3, -2480($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2488($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 13039
	sw $s2, 0($s5)
	li $s7, 42708
	sw $s6, -2492($fp)
	move $s6, $s7
	li $s7, 28616
	sw $s6, -1444($fp)
	move $s6, $s7
	li $s7, 0
	sw $s6, -1448($fp)
	addi $s6, $fp, -1228
	sw $s5, -2496($fp)
	li $s5, 0
	sw $s4, -2492($fp)
	li $s4, 10
	sw $s3, -2492($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2500($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 59497
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2504($fp)
	addi $s7, $fp, -1228
	sw $s5, -2508($fp)
	li $s5, 1
	sw $s4, -2504($fp)
	li $s4, 10
	sw $s3, -2504($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2512($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 10145
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2516($fp)
	addi $s6, $fp, -1228
	sw $s5, -2520($fp)
	li $s5, 2
	sw $s4, -2516($fp)
	li $s4, 10
	sw $s3, -2516($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2524($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 145
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2528($fp)
	addi $s7, $fp, -1228
	sw $s5, -2532($fp)
	li $s5, 3
	sw $s4, -2528($fp)
	li $s4, 10
	sw $s3, -2528($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2536($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 60439
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2540($fp)
	addi $s6, $fp, -1228
	sw $s5, -2544($fp)
	li $s5, 4
	sw $s4, -2540($fp)
	li $s4, 10
	sw $s3, -2540($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2548($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 62006
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2552($fp)
	addi $s7, $fp, -1228
	sw $s5, -2556($fp)
	li $s5, 5
	sw $s4, -2552($fp)
	li $s4, 10
	sw $s3, -2552($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2560($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 61506
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2564($fp)
	addi $s6, $fp, -1228
	sw $s5, -2568($fp)
	li $s5, 6
	sw $s4, -2564($fp)
	li $s4, 10
	sw $s3, -2564($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2572($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 682
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2576($fp)
	addi $s7, $fp, -1228
	sw $s5, -2580($fp)
	li $s5, 7
	sw $s4, -2576($fp)
	li $s4, 10
	sw $s3, -2576($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2584($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 29258
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2588($fp)
	addi $s6, $fp, -1228
	sw $s5, -2592($fp)
	li $s5, 8
	sw $s4, -2588($fp)
	li $s4, 10
	sw $s3, -2588($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2596($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 21340
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2600($fp)
	addi $s7, $fp, -1228
	sw $s5, -2604($fp)
	li $s5, 9
	sw $s4, -2600($fp)
	li $s4, 10
	sw $s3, -2600($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2608($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 53476
	sw $s2, 0($s5)
	li $s7, 37236
	sw $s6, -2612($fp)
	move $s6, $s7
	li $s7, 27357
	sw $s6, -1452($fp)
	move $s6, $s7
	li $s7, 20383
	sw $s6, -1456($fp)
	move $s6, $s7
	li $s7, 5043
	sw $s6, -1460($fp)
	move $s6, $s7
	li $s7, 46720
	sw $s6, -1464($fp)
	move $s6, $s7
	li $s7, 0
	sw $s6, -1468($fp)
	addi $s6, $fp, -1324
	sw $s5, -2616($fp)
	li $s5, 0
	sw $s4, -2612($fp)
	li $s4, 6
	sw $s3, -2612($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2620($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 31009
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2624($fp)
	addi $s7, $fp, -1324
	sw $s5, -2628($fp)
	li $s5, 1
	sw $s4, -2624($fp)
	li $s4, 6
	sw $s3, -2624($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2632($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 62763
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2636($fp)
	addi $s6, $fp, -1324
	sw $s5, -2640($fp)
	li $s5, 2
	sw $s4, -2636($fp)
	li $s4, 6
	sw $s3, -2636($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2644($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 9566
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2648($fp)
	addi $s7, $fp, -1324
	sw $s5, -2652($fp)
	li $s5, 3
	sw $s4, -2648($fp)
	li $s4, 6
	sw $s3, -2648($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2656($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 57209
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2660($fp)
	addi $s6, $fp, -1324
	sw $s5, -2664($fp)
	li $s5, 4
	sw $s4, -2660($fp)
	li $s4, 6
	sw $s3, -2660($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2668($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 50133
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2672($fp)
	addi $s7, $fp, -1324
	sw $s5, -2676($fp)
	li $s5, 5
	sw $s4, -2672($fp)
	li $s4, 6
	sw $s3, -2672($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2680($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 51357
	sw $s2, 0($s5)
	li $s7, 29088
	sw $s6, -2684($fp)
	move $s6, $s7
	li $s7, 32446
	sw $s6, -1472($fp)
	move $s6, $s7
	li $s7, 34240
	sw $s6, -1476($fp)
	move $s6, $s7
	li $s7, 46247
	sw $s6, -1480($fp)
	move $s6, $s7
	li $s7, 0
	sw $s6, -1484($fp)
	addi $s6, $fp, -1436
	sw $s5, -2688($fp)
	li $s5, 0
	sw $s4, -2684($fp)
	li $s4, 7
	sw $s3, -2684($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2692($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 52365
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2696($fp)
	addi $s7, $fp, -1436
	sw $s5, -2700($fp)
	li $s5, 1
	sw $s4, -2696($fp)
	li $s4, 7
	sw $s3, -2696($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2704($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 10011
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2708($fp)
	addi $s6, $fp, -1436
	sw $s5, -2712($fp)
	li $s5, 2
	sw $s4, -2708($fp)
	li $s4, 7
	sw $s3, -2708($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2716($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 64248
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2720($fp)
	addi $s7, $fp, -1436
	sw $s5, -2724($fp)
	li $s5, 3
	sw $s4, -2720($fp)
	li $s4, 7
	sw $s3, -2720($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2728($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 65405
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2732($fp)
	addi $s6, $fp, -1436
	sw $s5, -2736($fp)
	li $s5, 4
	sw $s4, -2732($fp)
	li $s4, 7
	sw $s3, -2732($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2740($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 52719
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -2744($fp)
	addi $s7, $fp, -1436
	sw $s5, -2748($fp)
	li $s5, 5
	sw $s4, -2744($fp)
	li $s4, 7
	sw $s3, -2744($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2752($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 27328
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -2756($fp)
	addi $s6, $fp, -1436
	sw $s5, -2760($fp)
	li $s5, 6
	sw $s4, -2756($fp)
	li $s4, 7
	sw $s3, -2756($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -2764($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 59366
	sw $s2, 0($s5)
	li $s6, 62864
	sw $s7, -2768($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -1488($fp)
	li $s7, 0
	sw $s6, -1492($fp)
	addi $s6, $fp, -188
	sw $s5, -2772($fp)
	li $s5, 10
	sw $s4, -2768($fp)
	mul $s4, $s7, $s5
	lw $s5, -492($fp)
	sw $s3, -2768($fp)
	add $s3, $s4, $s5
	sw $s5, -492($fp)
	li $s5, 4
	sw $s2, -2776($fp)
	mul $s2, $s3, $s5
	add $s5, $s6, $s2
	lw $s2, 0($s5)
	li $s5, 0
	sw $t1, -1440($fp)
	bne $s2, $s5, label361

	j label360

label360:
	li $t0, 1
	sw $t0, -1492($fp)

label361:
	lw $t1, -1492($fp)
	move $t0, $t1
	li $t2, 0
	sw $t0, -1488($fp)
	bne $t0, $t2, label358

	j label359

label358:
	li $t0, 27473
	move $t1, $t0
	li $t0, 0
	lw $t2, -444($fp)
	mul $t3, $t1, $t2
	lw $t1, -464($fp)
	add $t4, $t1, $t3
	li $t3, 0
	sw $t0, -1496($fp)
	bne $t4, $t3, label365

	j label363

label365:
	li $t0, 0
	li $t1, 0
	sw $t0, -1500($fp)
	lw $t2, -460($fp)
	bne $t2, $t1, label367

	j label366

label366:
	li $t0, 1
	sw $t0, -1500($fp)

label367:
	lw $t0, -476($fp)
	lw $t1, -1500($fp)
	add $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label364

	j label363

label364:
	li $t0, 54269
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, -1
	mul $t1, $t0, $t2
	li $t0, 0
	addi $t2, $fp, -1228
	li $t3, 4
	li $t4, 10
	mul $t5, $t0, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	bge $t1, $t2, label362

	j label363

label362:
	li $t0, 1
	sw $t0, -1496($fp)

label363:

label359:

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
	addi $t2, $fp, -1004
	li $t3, 0
	li $t4, 4
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1504($fp)

	li $v0, 1
	lw $t0, -1504($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1004
	li $t3, 1
	li $t4, 4
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1508($fp)

	li $v0, 1
	lw $t0, -1508($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1004
	li $t3, 2
	li $t4, 4
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1512($fp)

	li $v0, 1
	lw $t0, -1512($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1004
	li $t3, 3
	li $t4, 4
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1516($fp)

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
	addi $t2, $fp, -1068
	li $t3, 0
	li $t4, 4
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1520($fp)

	li $v0, 1
	lw $t0, -1520($fp)
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
	li $t4, 4
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1524($fp)

	li $v0, 1
	lw $t0, -1524($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1068
	li $t3, 2
	li $t4, 4
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1528($fp)

	li $v0, 1
	lw $t0, -1528($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1068
	li $t3, 3
	li $t4, 4
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1532($fp)

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
	lw $t0, -1444($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	addi $t2, $fp, -1228
	li $t3, 0
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1536($fp)

	li $v0, 1
	lw $t0, -1536($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1228
	li $t3, 1
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1540($fp)

	li $v0, 1
	lw $t0, -1540($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1228
	li $t3, 2
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1544($fp)

	li $v0, 1
	lw $t0, -1544($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1228
	li $t3, 3
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1548($fp)

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
	addi $t2, $fp, -1228
	li $t3, 4
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1552($fp)

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
	addi $t2, $fp, -1228
	li $t3, 5
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1556($fp)

	li $v0, 1
	lw $t0, -1556($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1228
	li $t3, 6
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1560($fp)

	li $v0, 1
	lw $t0, -1560($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1228
	li $t3, 7
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1564($fp)

	li $v0, 1
	lw $t0, -1564($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1228
	li $t3, 8
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1568($fp)

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
	addi $t2, $fp, -1228
	li $t3, 9
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1572($fp)

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
	lw $t0, -1452($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1456($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1460($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -1464($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	addi $t2, $fp, -1324
	li $t3, 0
	li $t4, 6
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1576($fp)

	li $v0, 1
	lw $t0, -1576($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1324
	li $t3, 1
	li $t4, 6
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1580($fp)

	li $v0, 1
	lw $t0, -1580($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1324
	li $t3, 2
	li $t4, 6
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1584($fp)

	li $v0, 1
	lw $t0, -1584($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1324
	li $t3, 3
	li $t4, 6
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1588($fp)

	li $v0, 1
	lw $t0, -1588($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1324
	li $t3, 4
	li $t4, 6
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1592($fp)

	li $v0, 1
	lw $t0, -1592($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1324
	li $t3, 5
	li $t4, 6
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1596($fp)

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
	lw $t0, -1472($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	lw $t0, -1480($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	addi $t2, $fp, -1436
	li $t3, 0
	li $t4, 7
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1600($fp)

	li $v0, 1
	lw $t0, -1600($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1436
	li $t3, 1
	li $t4, 7
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1604($fp)

	li $v0, 1
	lw $t0, -1604($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1436
	li $t3, 2
	li $t4, 7
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1608($fp)

	li $v0, 1
	lw $t0, -1608($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1436
	li $t3, 3
	li $t4, 7
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1612($fp)

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
	addi $t2, $fp, -1436
	li $t3, 4
	li $t4, 7
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1616($fp)

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
	addi $t2, $fp, -1436
	li $t3, 5
	li $t4, 7
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1620($fp)

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
	addi $t2, $fp, -1436
	li $t3, 6
	li $t4, 7
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1624($fp)

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
	lw $t0, -1488($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 54951
	li $t4, -1
	mul $t5, $t4, $t3
	li $t3, 0
	sw $t1, -1628($fp)
	sw $t2, -1632($fp)
	bne $t5, $t3, label372

	j label371

label371:
	li $t0, 1
	sw $t0, -1632($fp)

label372:
	li $t0, -1
	lw $t1, -1440($fp)
	mul $t2, $t0, $t1
	lw $t0, -1632($fp)
	add $t3, $t0, $t2
	li $t2, 0
	addi $t4, $fp, -1004
	li $t5, 4
	mul $t6, $t2, $t5
	lw $t5, -484($fp)
	add $t7, $t6, $t5
	li $t8, 4
	mul $t9, $t7, $t8
	add $t8, $t4, $t9
	lw $t4, 0($t8)
	bgt $t3, $t4, label368

	j label370

label370:
	li $t0, 23056
	lw $t1, -12($fp)
	add $t2, $t0, $t1
	li $t0, 0
	li $t3, 0
	lw $t4, -1476($fp)
	lw $t5, -468($fp)
	div $t5, $t4
	mflo $t6
	li $t7, 44784
	sw $t0, -1640($fp)
	sw $t2, -1636($fp)
	sw $t3, -1644($fp)
	blt $t6, $t7, label376

	j label377

label376:
	li $t0, 1
	sw $t0, -1644($fp)

label377:
	lw $t1, -440($fp)
	move $t0, $t1
	sw $t0, -460($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -460($fp)
	move $a1, $t0
	lw $t1, -1644($fp)
	move $a0, $t1
	jal id_j
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1648($fp)

	li $t0, 0
	lw $t1, -1648($fp)
	bne $t1, $t0, label373

	j label375

label375:
	li $t0, 0
	lw $t1, -1460($fp)
	bne $t1, $t0, label373

	j label374

label373:
	li $t0, 1
	sw $t0, -1640($fp)

label374:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -428
	li $t3, 5
	li $t4, 8
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	li $t3, 0
	sw $t0, -1652($fp)
	bne $t2, $t3, label380

	j label379

label380:
	li $t0, 6606
	li $t1, 0
	bne $t0, $t1, label378

	j label379

label378:
	li $t0, 1
	sw $t0, -1652($fp)

label379:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -1228
	li $t3, 10
	mul $t4, $t1, $t3
	lw $t3, -476($fp)
	add $t5, $t4, $t3
	li $t6, 4
	mul $t7, $t5, $t6
	add $t6, $t2, $t7
	lw $t2, 0($t6)
	li $t6, 0
	sw $t0, -1656($fp)
	bne $t2, $t6, label382

	j label381

label381:
	li $t0, 1
	sw $t0, -1656($fp)

label382:
	li $t0, 63274
	move $t1, $t0
	sw $t1, -436($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -436($fp)
	move $a3, $t0
	lw $t1, -1656($fp)
	move $a2, $t1
	lw $t2, -1652($fp)
	move $a1, $t2
	lw $t3, -1640($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1660($fp)

	lw $t0, -1660($fp)
	lw $t1, -1636($fp)
	bgt $t1, $t0, label368

	j label369

label368:
	li $t0, 1
	sw $t0, -1628($fp)

label369:
	lw $t0, -1628($fp)
	move $v0, $t0
	lw $ra, 2028($sp)
	lw $fp, 2024($sp)
	addi $sp, $sp, 2032
	jr $ra

	li $t0, 0
	lw $t1, -1464($fp)
	bne $t1, $t0, label384

	j label386

label386:
	li $t0, 0
	addi $t1, $fp, -1068
	li $t2, 4
	mul $t3, $t0, $t2
	lw $t2, -20($fp)
	add $t4, $t3, $t2
	li $t5, 4
	mul $t6, $t4, $t5
	add $t5, $t1, $t6
	lw $t1, 0($t5)
	li $t5, 0
	bne $t1, $t5, label385

	j label384

label385:
	li $t0, 0
	li $t1, 0
	li $t2, 65336
	li $t3, 0
	sw $t0, -1664($fp)
	sw $t1, -1668($fp)
	bne $t2, $t3, label390

	j label389

label389:
	li $t0, 1
	sw $t0, -1668($fp)

label390:
	lw $t0, -480($fp)
	lw $t1, -1668($fp)
	bne $t1, $t0, label387

	j label388

label387:
	li $t0, 1
	sw $t0, -1664($fp)

label388:
	lw $t0, -456($fp)
	lw $t1, -1664($fp)
	ble $t1, $t0, label383

	j label384

label383:
	li $t0, 53326
	move $t1, $t0
	li $t0, 28747
	move $t2, $t0
	li $t0, 62563
	move $t3, $t0
	li $t0, 0
	li $t4, 0
	li $t5, 62893
	li $t6, 0
	sw $t0, -1684($fp)
	sw $t1, -1672($fp)
	sw $t2, -1676($fp)
	sw $t3, -1680($fp)
	sw $t4, -1688($fp)
	bne $t5, $t6, label396

	j label395

label396:
	li $t0, 0
	lw $t1, -432($fp)
	bne $t1, $t0, label393

	j label395

label395:
	li $t0, 0
	lw $t1, -20($fp)
	bne $t1, $t0, label393

	j label394

label393:
	li $t0, 1
	sw $t0, -1688($fp)

label394:
	li $t0, 0
	li $t1, 0
	li $t2, 20421
	li $t3, 47161
	mul $t4, $t2, $t3
	li $t2, 0
	sw $t0, -1692($fp)
	sw $t1, -1696($fp)
	bne $t4, $t2, label399

	j label401

label401:
	li $t0, 48714
	li $t1, 0
	bne $t0, $t1, label399

	j label400

label399:
	li $t0, 1
	sw $t0, -1696($fp)

label400:
	li $t0, 0
	li $t1, 49509
	lw $t2, -436($fp)
	mul $t3, $t1, $t2
	li $t1, 0
	sw $t0, -1700($fp)
	bne $t3, $t1, label402

	j label404

label404:
	li $t0, 14071
	li $t1, 0
	bne $t0, $t1, label402

	j label403

label402:
	li $t0, 1
	sw $t0, -1700($fp)

label403:
	li $t0, 0
	li $t1, 0
	sw $t0, -1704($fp)
	lw $t2, -432($fp)
	bne $t2, $t1, label406

	j label405

label405:
	li $t0, 1
	sw $t0, -1704($fp)

label406:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1704($fp)
	move $a3, $t0
	lw $t1, -1700($fp)
	move $a2, $t1
	lw $t2, -448($fp)
	move $a1, $t2
	lw $t3, -1696($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1708($fp)

	li $t0, 17418
	lw $t1, -1708($fp)
	bgt $t1, $t0, label397

	j label398

label397:
	li $t0, 1
	sw $t0, -1692($fp)

label398:
	li $t0, 0
	li $t1, 0
	li $t2, 30220
	li $t3, 0
	sw $t0, -1712($fp)
	sw $t1, -1716($fp)
	bne $t2, $t3, label410

	j label409

label409:
	li $t0, 1
	sw $t0, -1716($fp)

label410:
	lw $t0, -1680($fp)
	lw $t1, -1716($fp)
	bgt $t1, $t0, label407

	j label408

label407:
	li $t0, 1
	sw $t0, -1712($fp)

label408:
	li $t0, 0
	lw $t1, -1676($fp)
	lw $t2, -1444($fp)
	add $t3, $t2, $t1
	li $t4, 0
	sw $t0, -1720($fp)
	bne $t3, $t4, label413

	j label412

label413:
	li $t0, 0
	lw $t1, -1448($fp)
	bne $t1, $t0, label411

	j label412

label411:
	li $t0, 1
	sw $t0, -1720($fp)

label412:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1720($fp)
	move $a3, $t0
	lw $t1, -1712($fp)
	move $a2, $t1
	lw $t2, -1692($fp)
	move $a1, $t2
	lw $t3, -1688($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1724($fp)

	li $t0, 0
	li $t1, 0
	sw $t0, -1728($fp)
	lw $t2, -460($fp)
	bne $t2, $t1, label414

	j label415

label414:
	li $t0, 1
	sw $t0, -1728($fp)

label415:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	li $t3, 901
	li $t4, 0
	sw $t0, -1732($fp)
	sw $t1, -1736($fp)
	sw $t2, -1740($fp)
	bne $t3, $t4, label422

	j label421

label421:
	li $t0, 1
	sw $t0, -1740($fp)

label422:
	li $t0, 27429
	lw $t1, -1740($fp)
	bne $t1, $t0, label419

	j label420

label419:
	li $t0, 1
	sw $t0, -1736($fp)

label420:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -1744($fp)
	sw $t1, -1748($fp)
	lw $t3, -1464($fp)
	bne $t3, $t2, label426

	j label425

label425:
	li $t0, 1
	sw $t0, -1748($fp)

label426:
	lw $t0, -476($fp)
	lw $t1, -1748($fp)
	blt $t1, $t0, label423

	j label424

label423:
	li $t0, 1
	sw $t0, -1744($fp)

label424:
	lw $t0, -472($fp)
	lw $t1, -1484($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	li $t4, 0
	addi $t5, $fp, -428
	li $t6, 2
	li $t7, 8
	mul $t8, $t4, $t7
	add $t7, $t8, $t6
	li $t6, 4
	mul $t9, $t7, $t6
	add $t6, $t5, $t9
	lw $t5, 0($t6)
	li $t6, 0
	sw $t2, -1752($fp)
	sw $t3, -1756($fp)
	bne $t5, $t6, label429

	j label428

label429:
	li $t0, 14612
	li $t1, 0
	bne $t0, $t1, label427

	j label428

label427:
	li $t0, 1
	sw $t0, -1756($fp)

label428:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1756($fp)
	move $a3, $t0
	lw $t1, -1752($fp)
	move $a2, $t1
	lw $t2, -1744($fp)
	move $a1, $t2
	lw $t3, -1736($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1760($fp)

	li $t0, 0
	lw $t1, -1760($fp)
	bne $t1, $t0, label418

	j label417

label418:
	li $t0, 56260
	li $t1, 0
	bne $t0, $t1, label416

	j label417

label416:
	li $t0, 1
	sw $t0, -1732($fp)

label417:
	li $t0, 0
	li $t1, 0
	sw $t0, -1764($fp)
	lw $t2, -1672($fp)
	bne $t2, $t1, label430

	j label432

label432:
	li $t0, 0
	lw $t1, -436($fp)
	bne $t1, $t0, label430

	j label431

label430:
	li $t0, 1
	sw $t0, -1764($fp)

label431:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1764($fp)
	move $a3, $t0
	lw $t1, -1732($fp)
	move $a2, $t1
	lw $t2, -1728($fp)
	move $a1, $t2
	lw $t3, -1724($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1768($fp)

	li $t0, 60136
	lw $t1, -1768($fp)
	div $t1, $t0
	mflo $t2
	li $t0, -1
	mul $t3, $t0, $t2
	li $t0, 0
	li $t2, 0
	sw $t0, -1776($fp)
	sw $t3, -1772($fp)
	lw $t4, -460($fp)
	bne $t4, $t2, label434

	j label433

label433:
	li $t0, 1
	sw $t0, -1776($fp)

label434:
	lw $t0, -1776($fp)
	lw $t1, -472($fp)
	mul $t2, $t1, $t0
	lw $t3, -1772($fp)
	blt $t3, $t2, label391

	j label392

label391:
	li $t0, 1
	sw $t0, -1684($fp)

label392:

label384:
	li $t0, 11940
	move $t1, $t0
	li $t0, 0
	li $t2, -1
	lw $t3, -484($fp)
	mul $t4, $t2, $t3
	li $t2, -1
	mul $t5, $t2, $t4
	li $t2, 0
	sw $t0, -1784($fp)
	sw $t1, -1780($fp)
	bne $t5, $t2, label437

	j label436

label437:
	li $t0, 0
	li $t1, 18198
	li $t2, 0
	sw $t0, -1788($fp)
	bne $t1, $t2, label439

	j label438

label438:
	li $t0, 1
	sw $t0, -1788($fp)

label439:
	lw $t0, -508($fp)
	lw $t1, -1788($fp)
	sub $t2, $t1, $t0
	li $t3, 0
	li $t4, 0
	addi $t5, $fp, -1228
	li $t6, 10
	mul $t7, $t4, $t6
	lw $t6, -432($fp)
	add $t8, $t7, $t6
	li $t9, 4
	mul $s0, $t8, $t9
	add $t9, $t5, $s0
	li $t5, 0
	lw $s0, -1472($fp)
	lw $s1, -16($fp)
	add $s2, $s1, $s0
	li $s3, 0
	sw $t2, -1792($fp)
	sw $t3, -1796($fp)
	sw $t5, -1804($fp)
	sw $t9, -1800($fp)
	bne $s2, $s3, label445

	j label444

label445:
	li $t0, 0
	lw $t1, -1444($fp)
	bne $t1, $t0, label443

	j label444

label443:
	li $t0, 1
	sw $t0, -1804($fp)

label444:
	li $t0, 48869
	lw $t1, -504($fp)
	mul $t2, $t0, $t1
	li $t0, -1
	mul $t3, $t0, $t2
	lw $t2, -1456($fp)
	move $t0, $t2
	lw $t5, -1800($fp)
	lw $t4, 0($t5)
	sw $t0, -1460($fp)
	sw $t3, -1808($fp)
	sw $t4, -1812($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1460($fp)
	move $a3, $t0
	lw $t1, -1808($fp)
	move $a2, $t1
	lw $t2, -1804($fp)
	move $a1, $t2
	lw $t3, -1812($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1816($fp)

	li $t0, 0
	lw $t1, -1816($fp)
	bne $t1, $t0, label440

	j label442

label442:
	li $t0, 5738
	li $t1, 0
	bne $t0, $t1, label440

	j label441

label440:
	li $t0, 1
	sw $t0, -1796($fp)

label441:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -1820($fp)
	sw $t1, -1824($fp)
	lw $t3, -1464($fp)
	bne $t3, $t2, label451

	j label449

label451:
	li $t0, 0
	lw $t1, -1780($fp)
	bne $t1, $t0, label450

	j label449

label450:
	li $t0, 0
	lw $t1, -1440($fp)
	bne $t1, $t0, label448

	j label449

label448:
	li $t0, 1
	sw $t0, -1824($fp)

label449:
	li $t0, 0
	li $t1, 41642
	li $t2, 0
	sw $t0, -1828($fp)
	bne $t1, $t2, label454

	j label453

label454:
	li $t0, 0
	lw $t1, -436($fp)
	bne $t1, $t0, label452

	j label453

label452:
	li $t0, 1
	sw $t0, -1828($fp)

label453:
	li $t0, 0
	li $t1, 38284
	sw $t0, -1832($fp)
	lw $t2, -1472($fp)
	blt $t1, $t2, label455

	j label457

label457:
	li $t0, 0
	lw $t1, -1452($fp)
	bne $t1, $t0, label455

	j label456

label455:
	li $t0, 1
	sw $t0, -1832($fp)

label456:
	lw $t1, -1444($fp)
	move $t0, $t1
	sw $t0, -476($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -476($fp)
	move $a3, $t0
	lw $t1, -1832($fp)
	move $a2, $t1
	lw $t2, -1828($fp)
	move $a1, $t2
	lw $t3, -1824($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1836($fp)

	li $t0, 28795
	lw $t1, -1836($fp)
	bgt $t1, $t0, label446

	j label447

label446:
	li $t0, 1
	sw $t0, -1820($fp)

label447:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1820($fp)
	move $a1, $t0
	lw $t1, -1796($fp)
	move $a0, $t1
	jal id_j
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1840($fp)

	lw $t0, -1840($fp)
	lw $t1, -1792($fp)
	add $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label435

	j label436

label435:
	li $t0, 1
	sw $t0, -1784($fp)

label436:
	li $t0, 0
	li $t1, 0
	li $t2, 20890
	li $t3, 0
	sw $t0, -1844($fp)
	sw $t1, -1848($fp)
	bne $t2, $t3, label462

	j label461

label461:
	li $t0, 1
	sw $t0, -1848($fp)

label462:
	lw $t0, -508($fp)
	lw $t1, -1448($fp)
	mul $t2, $t1, $t0
	lw $t3, -1848($fp)
	sub $t4, $t3, $t2
	li $t2, 0
	bne $t4, $t2, label458

	j label460

label460:
	li $t0, 15639
	li $t1, 0
	li $t2, 0
	sw $t0, -1852($fp)
	sw $t1, -1856($fp)
	lw $t3, -492($fp)
	bne $t3, $t2, label464

	j label463

label463:
	li $t0, 1
	sw $t0, -1856($fp)

label464:
	lw $t0, -1856($fp)
	lw $t1, -1852($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	bne $t2, $t3, label458

	j label459

label458:
	li $t0, 1
	sw $t0, -1844($fp)

label459:
	li $t0, 23552
	li $t1, 27496
	lw $t2, -444($fp)
	div $t2, $t1
	mflo $t3
	li $t1, 13377
	mul $t4, $t3, $t1
	add $t1, $t0, $t4
	li $t0, 23352
	li $t3, 15287
	mul $t4, $t0, $t3
	lw $t0, -1464($fp)
	mul $t3, $t4, $t0
	li $t4, 0
	li $t5, 0
	li $t6, 0
	sw $t1, -1860($fp)
	sw $t3, -1864($fp)
	sw $t4, -1868($fp)
	sw $t5, -1872($fp)
	sw $t6, -1876($fp)
	lw $t7, -492($fp)
	lw $t8, -1472($fp)
	bne $t8, $t7, label472

	j label473

label472:
	li $t0, 1
	sw $t0, -1876($fp)

label473:
	lw $t0, -452($fp)
	lw $t1, -1876($fp)
	bne $t1, $t0, label470

	j label471

label470:
	li $t0, 1
	sw $t0, -1872($fp)

label471:
	lw $t1, -504($fp)
	move $t0, $t1
	sw $t0, -1468($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1468($fp)
	move $a1, $t0
	lw $t1, -1872($fp)
	move $a0, $t1
	jal id_j
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1880($fp)

	li $t0, 0
	lw $t1, -1880($fp)
	bne $t1, $t0, label467

	j label469

label469:
	li $t0, 0
	lw $t1, -1480($fp)
	bne $t1, $t0, label467

	j label468

label467:
	li $t0, 1
	sw $t0, -1868($fp)

label468:
	li $t0, 0
	li $t1, 42125
	move $t2, $t1
	lw $t1, -436($fp)
	lw $t3, -492($fp)
	mul $t4, $t3, $t1
	lw $t5, -456($fp)
	sub $t6, $t4, $t5
	sw $t0, -1884($fp)
	sw $t2, -484($fp)
	sw $t6, -1888($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1888($fp)
	move $a1, $t0
	lw $t1, -484($fp)
	move $a0, $t1
	jal id_Axiwv5
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1892($fp)

	li $t0, -1
	lw $t1, -1892($fp)
	mul $t2, $t0, $t1
	li $t0, 20380
	move $t3, $t0
	sw $t2, -1896($fp)
	sw $t3, -1460($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1460($fp)
	move $a1, $t0
	lw $t1, -1896($fp)
	move $a0, $t1
	jal id_j
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1900($fp)

	li $t0, 0
	lw $t1, -1900($fp)
	bne $t1, $t0, label474

	j label476

label476:
	li $t0, 12644
	li $t1, 0
	bne $t0, $t1, label474

	j label475

label474:
	li $t0, 1
	sw $t0, -1884($fp)

label475:
	li $t0, 0
	li $t1, 0
	li $t2, 62546
	sw $t0, -1904($fp)
	sw $t1, -1908($fp)
	lw $t3, -476($fp)
	ble $t3, $t2, label481

	j label480

label481:
	li $t0, 2005
	li $t1, 0
	bne $t0, $t1, label479

	j label480

label479:
	li $t0, 1
	sw $t0, -1908($fp)

label480:
	li $t0, 0
	li $t1, 0
	sw $t0, -1912($fp)
	lw $t2, -1448($fp)
	bne $t2, $t1, label484

	j label483

label484:
	li $t0, 0
	lw $t1, -488($fp)
	bne $t1, $t0, label482

	j label483

label482:
	li $t0, 1
	sw $t0, -1912($fp)

label483:
	li $t0, 0
	addi $t1, $fp, -1436
	li $t2, 4
	li $t3, 7
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	li $t1, 0
	addi $t5, $fp, -1324
	li $t6, 6
	mul $t7, $t1, $t6
	lw $t6, -1484($fp)
	add $t8, $t7, $t6
	li $t9, 4
	mul $s0, $t8, $t9
	add $t9, $t5, $s0
	lw $t5, 0($t9)
	lw $t9, -512($fp)
	div $t5, $t9
	mflo $s0
	lw $t5, 0($t2)
	sw $t5, -1920($fp)
	sw $s0, -1916($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1916($fp)
	move $a3, $t0
	lw $t1, -1920($fp)
	move $a2, $t1
	lw $t2, -1912($fp)
	move $a1, $t2
	lw $t3, -1908($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1924($fp)

	lw $t0, -20($fp)
	lw $t1, -1924($fp)
	beq $t1, $t0, label477

	j label478

label477:
	li $t0, 1
	sw $t0, -1904($fp)

label478:
	lw $t1, -1452($fp)
	move $t0, $t1
	sw $t0, -1440($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1440($fp)
	move $a1, $t0
	lw $t1, -1904($fp)
	move $a0, $t1
	jal id_Axiwv5
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1928($fp)

	li $t0, 16076
	lw $t1, -1928($fp)
	mul $t2, $t1, $t0
	sw $t2, -1932($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1932($fp)
	move $a3, $t0
	lw $t1, -1884($fp)
	move $a2, $t1
	lw $t2, -1868($fp)
	move $a1, $t2
	lw $t3, -1864($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1936($fp)

	lw $t0, -1936($fp)
	lw $t1, -1860($fp)
	beq $t1, $t0, label465

	j label466

label465:
	li $t0, 0
	li $t1, 0
	sw $t0, -1940($fp)
	lw $t2, -492($fp)
	bne $t2, $t1, label486

	j label485

label485:
	li $t0, 1
	sw $t0, -1940($fp)

label486:
	lw $t0, -492($fp)
	lw $t1, -1940($fp)
	mul $t2, $t1, $t0
	li $t3, -1
	lw $t4, -468($fp)
	mul $t5, $t3, $t4
	lw $t3, -488($fp)
	add $t6, $t5, $t3
	sw $t2, -1944($fp)
	sw $t6, -1948($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1948($fp)
	move $a1, $t0
	lw $t1, -1944($fp)
	move $a0, $t1
	jal id_j
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1952($fp)

	lw $t0, -436($fp)
	lw $t1, -1952($fp)
	add $t2, $t1, $t0
	move $v0, $t2
	lw $ra, 2028($sp)
	lw $fp, 2024($sp)
	addi $sp, $sp, 2032
	jr $ra

label466:

label487:
	li $t0, 0
	li $t1, 13240
	li $t2, 0
	sw $t0, -1956($fp)
	bne $t1, $t2, label490

	j label493

label493:
	li $t0, 11204
	li $t1, 0
	bne $t0, $t1, label490

	j label492

label492:
	li $t0, 16977
	li $t1, 0
	bne $t0, $t1, label490

	j label491

label490:
	li $t0, 1
	sw $t0, -1956($fp)

label491:
	li $t0, 0
	li $t1, 40669
	li $t2, 40136
	sub $t3, $t1, $t2
	sw $t0, -1960($fp)
	lw $t1, -1448($fp)
	beq $t3, $t1, label494

	j label495

label494:
	li $t0, 1
	sw $t0, -1960($fp)

label495:
	li $t0, 17747
	lw $t1, -1452($fp)
	add $t2, $t1, $t0
	li $t0, 0
	li $t3, 0
	sw $t0, -1968($fp)
	sw $t2, -1964($fp)
	lw $t4, -1472($fp)
	bne $t4, $t3, label498

	j label497

label498:
	li $t0, 55281
	li $t1, 0
	bne $t0, $t1, label496

	j label497

label496:
	li $t0, 1
	sw $t0, -1968($fp)

label497:
	li $t0, 0
	li $t1, 30861
	sw $t0, -1972($fp)
	lw $t2, -1460($fp)
	bge $t2, $t1, label499

	j label500

label499:
	li $t0, 1
	sw $t0, -1972($fp)

label500:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1972($fp)
	sw $t0, 0($sp)
	lw $t1, -1968($fp)
	move $a3, $t1
	lw $t2, -1964($fp)
	move $a2, $t2
	lw $t3, -1960($fp)
	move $a1, $t3
	lw $t4, -1956($fp)
	move $a0, $t4
	jal id_PzYrNI
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -1976($fp)

	lw $t1, -1976($fp)
	move $t0, $t1
	li $t2, 0
	sw $t0, -432($fp)
	bne $t0, $t2, label488

	j label489

label488:
	li $t0, 0
	li $t1, 0
	li $t2, 12347
	lw $t3, -480($fp)
	add $t4, $t3, $t2
	li $t2, 0
	sw $t0, -1980($fp)
	sw $t1, -1984($fp)
	bne $t4, $t2, label505

	j label504

label505:
	li $t0, 1685
	li $t1, 0
	bne $t0, $t1, label503

	j label504

label503:
	li $t0, 1
	sw $t0, -1984($fp)

label504:
	li $t0, 0
	sw $t0, -1988($fp)
	lw $t1, -492($fp)
	lw $t2, -484($fp)
	bne $t2, $t1, label506

	j label507

label506:
	li $t0, 1
	sw $t0, -1988($fp)

label507:
	li $t0, 0
	li $t1, 0
	sw $t0, -1992($fp)
	lw $t2, -476($fp)
	bne $t2, $t1, label509

	j label508

label508:
	li $t0, 1
	sw $t0, -1992($fp)

label509:
	li $t0, -1
	lw $t1, -1992($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	li $t3, 49059
	li $t4, 0
	sw $t0, -2000($fp)
	sw $t2, -1996($fp)
	bne $t3, $t4, label510

	j label513

label513:
	li $t0, 0
	lw $t1, -460($fp)
	bne $t1, $t0, label510

	j label512

label512:
	li $t0, 61216
	li $t1, 0
	bne $t0, $t1, label510

	j label511

label510:
	li $t0, 1
	sw $t0, -2000($fp)

label511:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2000($fp)
	sw $t0, 0($sp)
	lw $t1, -508($fp)
	move $a3, $t1
	lw $t2, -1996($fp)
	move $a2, $t2
	lw $t3, -1988($fp)
	move $a1, $t3
	lw $t4, -1984($fp)
	move $a0, $t4
	jal id_PzYrNI
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -2004($fp)

	li $t0, 7423
	li $t1, -1
	mul $t2, $t1, $t0
	lw $t0, -2004($fp)
	div $t0, $t2
	mflo $t1
	li $t2, 0
	lw $t3, -1448($fp)
	lw $t4, -1456($fp)
	div $t4, $t3
	mflo $t5
	li $t6, 25165
	sw $t1, -2008($fp)
	sw $t2, -2012($fp)
	bne $t5, $t6, label514

	j label515

label514:
	li $t0, 1
	sw $t0, -2012($fp)

label515:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -492($fp)
	move $a1, $t0
	lw $t1, -2012($fp)
	move $a0, $t1
	jal id_j
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -2016($fp)

	lw $t0, -2016($fp)
	lw $t1, -2008($fp)
	beq $t1, $t0, label501

	j label502

label501:
	li $t0, 1
	sw $t0, -1980($fp)

label502:
	lw $t0, -1980($fp)
	move $v0, $t0
	lw $ra, 2028($sp)
	lw $fp, 2024($sp)
	addi $sp, $sp, 2032
	jr $ra

	j label487

label489:
	li $t0, 0
	li $t1, 33964
	li $t2, 0
	sw $t0, -2020($fp)
	bne $t1, $t2, label517

	j label518

label518:
	li $t0, 36218
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, -1
	mul $t1, $t0, $t2
	li $t0, 0
	bne $t1, $t0, label516

	j label517

label516:
	li $t0, 1
	sw $t0, -2020($fp)

label517:

	li $v0, 1
	lw $t0, -20($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	li $t2, 46055
	li $t3, 49603
	add $t4, $t2, $t3
	li $t2, 0
	li $t3, 0
	sw $t1, -2024($fp)
	sw $t2, -2032($fp)
	sw $t4, -2028($fp)
	lw $t5, -20($fp)
	bne $t5, $t3, label521

	j label522

label521:
	li $t0, 1
	sw $t0, -2032($fp)

label522:
	lw $t0, -2032($fp)
	lw $t1, -2028($fp)
	bne $t1, $t0, label519

	j label520

label519:
	li $t0, 1
	sw $t0, -2024($fp)

label520:
	lw $t0, -2024($fp)
	move $v0, $t0
	lw $ra, 2028($sp)
	lw $fp, 2024($sp)
	addi $sp, $sp, 2032
	jr $ra

id_dWmnE:
	addi $sp, $sp, -28
	sw $ra, 24($sp)
	sw $fp, 20($sp)
	addi $fp, $sp, 28
	sw $a0, -12($fp)
	sw $a1, -16($fp)
	sw $a2, -32($fp)

	li $t0, 0
	sw $t0, -20($fp)
	lw $t1, -16($fp)
	lw $t2, -12($fp)
	ble $t2, $t1, label523

	j label524

label523:
	li $t0, 1
	sw $t0, -20($fp)

label524:
	li $t0, 0
	li $t1, 59770
	li $t2, 0
	sw $t0, -24($fp)
	bne $t1, $t2, label526

	j label525

label525:
	li $t0, 1
	sw $t0, -24($fp)

label526:
	lw $t1, -24($fp)
	move $t0, $t1
	move $t2, $t0
	li $t3, 0
	li $t4, 0
	sw $t0, -16($fp)
	sw $t2, -12($fp)
	sw $t3, -28($fp)
	bne $t0, $t4, label528

	j label527

label527:
	li $t0, 1
	sw $t0, -28($fp)

label528:
	li $t0, 8016
	lw $t1, -28($fp)
	div $t1, $t0
	mflo $t2
	move $v0, $t2
	lw $ra, 24($sp)
	lw $fp, 20($sp)
	addi $sp, $sp, 28
	jr $ra

id_cwS3I2v:
	addi $sp, $sp, -76
	sw $ra, 72($sp)
	sw $fp, 68($sp)
	addi $fp, $sp, 76
	sw $a0, -12($fp)
	sw $a1, -80($fp)

	li $t0, 0
	addi $t1, $fp, -44
	li $t2, 0
	li $t3, 2
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	li $t1, 62981
	sw $t1, 0($t2)
	li $t5, 0
	addi $t6, $fp, -44
	li $t7, 1
	li $t8, 2
	mul $t9, $t5, $t8
	add $t8, $t9, $t7
	li $t7, 4
	mul $s0, $t8, $t7
	add $t7, $t6, $s0
	li $t6, 17587
	sw $t6, 0($t7)
	li $s0, 0
	lw $s1, -12($fp)
	mul $s2, $s1, $s1
	li $s3, 0
	addi $s4, $fp, -44
	li $s5, 0
	li $s6, 2
	mul $s7, $s3, $s6
	add $s6, $s7, $s5
	li $s5, 4
	sw $s2, -52($fp)
	mul $s2, $s6, $s5
	add $s5, $s4, $s2
	li $s2, 37967
	lw $s4, 0($s5)
	mul $s5, $s4, $s2
	li $s2, 35947
	div $s1, $s2
	mflo $s4
	li $s2, 0
	sw $s7, -84($fp)
	li $s7, 36580
	sw $s6, -84($fp)
	li $s6, 0
	sw $s0, -48($fp)
	sw $s2, -64($fp)
	sw $s4, -60($fp)
	sw $s5, -56($fp)
	bne $s7, $s6, label533

	j label531

label533:
	li $t0, 39972
	li $t1, 0
	bne $t0, $t1, label531

	j label532

label531:
	li $t0, 1
	sw $t0, -64($fp)

label532:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -12($fp)
	move $a2, $t0
	lw $t1, -64($fp)
	move $a1, $t1
	lw $t2, -60($fp)
	move $a0, $t2
	jal id_dWmnE
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -68($fp)

	lw $t0, -68($fp)
	lw $t1, -56($fp)
	mul $t2, $t1, $t0
	lw $t3, -52($fp)
	ble $t3, $t2, label529

	j label530

label529:
	li $t0, 1
	sw $t0, -48($fp)

label530:
	li $t0, 0
	addi $t1, $fp, -44
	li $t2, 0
	li $t3, 2
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	lw $t1, 0($t2)
	sw $t1, -72($fp)

	li $v0, 1
	lw $t0, -72($fp)
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
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -76($fp)

	li $v0, 1
	lw $t0, -76($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 31769
	li $t2, -1
	mul $t3, $t2, $t1
	move $v0, $t3
	lw $ra, 72($sp)
	lw $fp, 68($sp)
	addi $sp, $sp, 76
	jr $ra

id_D:
	addi $sp, $sp, -1336
	sw $ra, 1332($sp)
	sw $fp, 1328($sp)
	addi $fp, $sp, 1336
	sw $a0, -12($fp)
	sw $a1, -16($fp)
	sw $a2, -20($fp)
	sw $a3, -24($fp)
	lw $a0, 0($fp)
	sw $a0, -28($fp)

	li $t0, 0
	addi $t1, $fp, -124
	li $t2, 0
	li $t3, 6
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	li $t1, 17563
	sw $t1, 0($t2)
	li $t5, 0
	addi $t6, $fp, -124
	li $t7, 1
	li $t8, 6
	mul $t9, $t5, $t8
	add $t8, $t9, $t7
	li $t7, 4
	mul $s0, $t8, $t7
	add $t7, $t6, $s0
	li $t6, 56048
	sw $t6, 0($t7)
	li $s0, 0
	addi $s1, $fp, -124
	li $s2, 2
	li $s3, 6
	mul $s4, $s0, $s3
	add $s3, $s4, $s2
	li $s2, 4
	mul $s5, $s3, $s2
	add $s2, $s1, $s5
	li $s1, 45009
	sw $s1, 0($s2)
	li $s5, 0
	addi $s6, $fp, -124
	li $s7, 3
	sw $s4, -1340($fp)
	li $s4, 6
	sw $s3, -1340($fp)
	mul $s3, $s5, $s4
	add $s4, $s3, $s7
	li $s7, 4
	sw $s2, -1344($fp)
	mul $s2, $s4, $s7
	add $s7, $s6, $s2
	li $s2, 28767
	sw $s2, 0($s7)
	li $s6, 0
	sw $s7, -1348($fp)
	addi $s7, $fp, -124
	sw $s5, -1352($fp)
	li $s5, 4
	sw $s4, -1352($fp)
	li $s4, 6
	sw $s3, -1352($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1356($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 7490
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1360($fp)
	addi $s6, $fp, -124
	sw $s5, -1364($fp)
	li $s5, 5
	sw $s4, -1360($fp)
	li $s4, 6
	sw $s3, -1360($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1368($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 20142
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1372($fp)
	addi $s7, $fp, -172
	sw $s5, -1376($fp)
	li $s5, 0
	sw $s4, -1372($fp)
	li $s4, 3
	sw $s3, -1372($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1380($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 3368
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1384($fp)
	addi $s6, $fp, -172
	sw $s5, -1388($fp)
	li $s5, 1
	sw $s4, -1384($fp)
	li $s4, 3
	sw $s3, -1384($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1392($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 25237
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1396($fp)
	addi $s7, $fp, -172
	sw $s5, -1400($fp)
	li $s5, 2
	sw $s4, -1396($fp)
	li $s4, 3
	sw $s3, -1396($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1404($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 9887
	sw $s2, 0($s5)
	li $s7, 34229
	sw $s6, -1408($fp)
	move $s6, $s7
	li $s7, 37585
	sw $s6, -576($fp)
	move $s6, $s7
	li $s7, 0
	sw $s6, -580($fp)
	addi $s6, $fp, -188
	sw $s5, -1412($fp)
	li $s5, 0
	sw $s4, -1408($fp)
	li $s4, 1
	sw $s3, -1408($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1416($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 11572
	sw $s2, 0($s5)
	li $s6, 17752
	sw $s7, -1420($fp)
	move $s7, $s6
	li $s6, 33265
	sw $s7, -584($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -588($fp)
	addi $s7, $fp, -348
	sw $s5, -1424($fp)
	li $s5, 0
	sw $s4, -1420($fp)
	li $s4, 10
	sw $s3, -1420($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1428($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 18995
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1432($fp)
	addi $s6, $fp, -348
	sw $s5, -1436($fp)
	li $s5, 1
	sw $s4, -1432($fp)
	li $s4, 10
	sw $s3, -1432($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1440($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 42917
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1444($fp)
	addi $s7, $fp, -348
	sw $s5, -1448($fp)
	li $s5, 2
	sw $s4, -1444($fp)
	li $s4, 10
	sw $s3, -1444($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1452($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 1694
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1456($fp)
	addi $s6, $fp, -348
	sw $s5, -1460($fp)
	li $s5, 3
	sw $s4, -1456($fp)
	li $s4, 10
	sw $s3, -1456($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1464($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 55214
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1468($fp)
	addi $s7, $fp, -348
	sw $s5, -1472($fp)
	li $s5, 4
	sw $s4, -1468($fp)
	li $s4, 10
	sw $s3, -1468($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1476($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 23436
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1480($fp)
	addi $s6, $fp, -348
	sw $s5, -1484($fp)
	li $s5, 5
	sw $s4, -1480($fp)
	li $s4, 10
	sw $s3, -1480($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1488($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 51297
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1492($fp)
	addi $s7, $fp, -348
	sw $s5, -1496($fp)
	li $s5, 6
	sw $s4, -1492($fp)
	li $s4, 10
	sw $s3, -1492($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1500($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 49448
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1504($fp)
	addi $s6, $fp, -348
	sw $s5, -1508($fp)
	li $s5, 7
	sw $s4, -1504($fp)
	li $s4, 10
	sw $s3, -1504($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1512($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 31452
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1516($fp)
	addi $s7, $fp, -348
	sw $s5, -1520($fp)
	li $s5, 8
	sw $s4, -1516($fp)
	li $s4, 10
	sw $s3, -1516($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1524($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 48742
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1528($fp)
	addi $s6, $fp, -348
	sw $s5, -1532($fp)
	li $s5, 9
	sw $s4, -1528($fp)
	li $s4, 10
	sw $s3, -1528($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1536($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 1499
	sw $s2, 0($s5)
	li $s6, 54755
	sw $s7, -1540($fp)
	move $s7, $s6
	li $s6, 22776
	sw $s7, -592($fp)
	move $s7, $s6
	li $s6, 39466
	sw $s7, -596($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -600($fp)
	addi $s7, $fp, -492
	sw $s5, -1544($fp)
	li $s5, 0
	sw $s4, -1540($fp)
	li $s4, 9
	sw $s3, -1540($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1548($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 25166
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1552($fp)
	addi $s6, $fp, -492
	sw $s5, -1556($fp)
	li $s5, 1
	sw $s4, -1552($fp)
	li $s4, 9
	sw $s3, -1552($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1560($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 59356
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1564($fp)
	addi $s7, $fp, -492
	sw $s5, -1568($fp)
	li $s5, 2
	sw $s4, -1564($fp)
	li $s4, 9
	sw $s3, -1564($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1572($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 13902
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1576($fp)
	addi $s6, $fp, -492
	sw $s5, -1580($fp)
	li $s5, 3
	sw $s4, -1576($fp)
	li $s4, 9
	sw $s3, -1576($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1584($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 56935
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1588($fp)
	addi $s7, $fp, -492
	sw $s5, -1592($fp)
	li $s5, 4
	sw $s4, -1588($fp)
	li $s4, 9
	sw $s3, -1588($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1596($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 11384
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1600($fp)
	addi $s6, $fp, -492
	sw $s5, -1604($fp)
	li $s5, 5
	sw $s4, -1600($fp)
	li $s4, 9
	sw $s3, -1600($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1608($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 4415
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1612($fp)
	addi $s7, $fp, -492
	sw $s5, -1616($fp)
	li $s5, 6
	sw $s4, -1612($fp)
	li $s4, 9
	sw $s3, -1612($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1620($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 36408
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1624($fp)
	addi $s6, $fp, -492
	sw $s5, -1628($fp)
	li $s5, 7
	sw $s4, -1624($fp)
	li $s4, 9
	sw $s3, -1624($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1632($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 40151
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1636($fp)
	addi $s7, $fp, -492
	sw $s5, -1640($fp)
	li $s5, 8
	sw $s4, -1636($fp)
	li $s4, 9
	sw $s3, -1636($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1644($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 11905
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1648($fp)
	addi $s6, $fp, -572
	sw $s5, -1652($fp)
	li $s5, 0
	sw $s4, -1648($fp)
	li $s4, 5
	sw $s3, -1648($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1656($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 56550
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1660($fp)
	addi $s7, $fp, -572
	sw $s5, -1664($fp)
	li $s5, 1
	sw $s4, -1660($fp)
	li $s4, 5
	sw $s3, -1660($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1668($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 43519
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1672($fp)
	addi $s6, $fp, -572
	sw $s5, -1676($fp)
	li $s5, 2
	sw $s4, -1672($fp)
	li $s4, 5
	sw $s3, -1672($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1680($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 37142
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1684($fp)
	addi $s7, $fp, -572
	sw $s5, -1688($fp)
	li $s5, 3
	sw $s4, -1684($fp)
	li $s4, 5
	sw $s3, -1684($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1692($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 901
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1696($fp)
	addi $s6, $fp, -572
	sw $s5, -1700($fp)
	li $s5, 4
	sw $s4, -1696($fp)
	li $s4, 5
	sw $s3, -1696($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1704($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 12212
	sw $s2, 0($s5)
	li $s6, 9191
	sw $s7, -1708($fp)
	move $s7, $s6
	li $s6, 12473
	sw $s7, -604($fp)
	move $s7, $s6
	li $s6, 29964
	sw $s7, -608($fp)
	move $s7, $s6
	li $s6, 42457
	sw $s7, -612($fp)
	move $s7, $s6
	li $s6, 31469
	sw $s7, -616($fp)
	move $s7, $s6
	li $s6, 7345
	sw $s7, -620($fp)
	move $s7, $s6
	li $s6, 44151
	sw $s7, -624($fp)
	move $s7, $s6
	li $s6, 21147
	sw $s7, -628($fp)
	move $s7, $s6
	li $s6, 30782
	sw $s7, -632($fp)
	move $s7, $s6
	li $s6, 0
	sw $s7, -636($fp)
	addi $s7, $fp, -124
	sw $s5, -1712($fp)
	li $s5, 0
	sw $s4, -1708($fp)
	li $s4, 6
	sw $s3, -1708($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1716($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	lw $s2, 0($s5)
	sw $s2, -640($fp)

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
	addi $t2, $fp, -124
	li $t3, 1
	li $t4, 6
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -644($fp)

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
	addi $t2, $fp, -124
	li $t3, 2
	li $t4, 6
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -648($fp)

	li $v0, 1
	lw $t0, -648($fp)
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
	li $t4, 6
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -652($fp)

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
	addi $t2, $fp, -124
	li $t3, 4
	li $t4, 6
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -656($fp)

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
	addi $t2, $fp, -124
	li $t3, 5
	li $t4, 6
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -660($fp)

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
	li $t3, 0
	li $t4, 3
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -664($fp)

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
	li $t3, 1
	li $t4, 3
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -668($fp)

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
	li $t3, 2
	li $t4, 3
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -672($fp)

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
	lw $t0, -576($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -580($fp)
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
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -676($fp)

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
	lw $t0, -584($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -588($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -348
	li $t3, 0
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -680($fp)

	li $v0, 1
	lw $t0, -680($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -348
	li $t3, 1
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -684($fp)

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
	addi $t2, $fp, -348
	li $t3, 2
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -688($fp)

	li $v0, 1
	lw $t0, -688($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -348
	li $t3, 3
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -692($fp)

	li $v0, 1
	lw $t0, -692($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -348
	li $t3, 4
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -696($fp)

	li $v0, 1
	lw $t0, -696($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -348
	li $t3, 5
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -700($fp)

	li $v0, 1
	lw $t0, -700($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -348
	li $t3, 6
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -704($fp)

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
	addi $t2, $fp, -348
	li $t3, 7
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -708($fp)

	li $v0, 1
	lw $t0, -708($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -348
	li $t3, 8
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -712($fp)

	li $v0, 1
	lw $t0, -712($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -348
	li $t3, 9
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -716($fp)

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
	lw $t0, -592($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -596($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	addi $t2, $fp, -492
	li $t3, 0
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -720($fp)

	li $v0, 1
	lw $t0, -720($fp)
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
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -724($fp)

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
	addi $t2, $fp, -492
	li $t3, 2
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -728($fp)

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
	addi $t2, $fp, -492
	li $t3, 3
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -732($fp)

	li $v0, 1
	lw $t0, -732($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -492
	li $t3, 4
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -736($fp)

	li $v0, 1
	lw $t0, -736($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -492
	li $t3, 5
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -740($fp)

	li $v0, 1
	lw $t0, -740($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -492
	li $t3, 6
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -744($fp)

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
	addi $t2, $fp, -492
	li $t3, 7
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -748($fp)

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
	addi $t2, $fp, -492
	li $t3, 8
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -752($fp)

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
	addi $t2, $fp, -572
	li $t3, 0
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -756($fp)

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
	addi $t2, $fp, -572
	li $t3, 1
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -760($fp)

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
	addi $t2, $fp, -572
	li $t3, 2
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -764($fp)

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
	addi $t2, $fp, -572
	li $t3, 3
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -768($fp)

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
	addi $t2, $fp, -572
	li $t3, 4
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -772($fp)

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
	lw $t0, -604($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -608($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -612($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -616($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -620($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	lw $t0, -628($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -632($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	li $t2, 0
	li $t3, 0
	li $t4, 0
	addi $t5, $fp, -492
	li $t6, 3
	li $t7, 9
	mul $t8, $t4, $t7
	add $t7, $t8, $t6
	li $t6, 4
	mul $t9, $t7, $t6
	add $t6, $t5, $t9
	lw $t5, -616($fp)
	lw $t9, -604($fp)
	mul $s0, $t9, $t5
	mul $s1, $s0, $t9
	lw $s0, -632($fp)
	mul $s2, $s0, $s0
	li $s3, 0
	li $s4, 62234
	li $s5, -1
	mul $s6, $s5, $s4
	li $s4, 13119
	sw $t1, -776($fp)
	sw $t2, -780($fp)
	sw $t3, -784($fp)
	sw $t6, -788($fp)
	sw $s1, -792($fp)
	sw $s2, -796($fp)
	sw $s3, -800($fp)
	bne $s6, $s4, label541

	j label542

label541:
	li $t0, 1
	sw $t0, -800($fp)

label542:
	li $t0, 0
	addi $t1, $fp, -348
	li $t2, 10
	mul $t3, $t0, $t2
	lw $t2, -604($fp)
	add $t4, $t3, $t2
	li $t5, 4
	mul $t6, $t4, $t5
	add $t5, $t1, $t6
	lw $t1, 0($t5)
	lw $t5, -580($fp)
	div $t1, $t5
	mflo $t6
	lw $t7, -788($fp)
	lw $t1, 0($t7)
	sw $t1, -808($fp)
	sw $t6, -804($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -804($fp)
	sw $t0, 0($sp)
	lw $t1, -800($fp)
	move $a3, $t1
	lw $t2, -796($fp)
	move $a2, $t2
	lw $t3, -792($fp)
	move $a1, $t3
	lw $t4, -808($fp)
	move $a0, $t4
	jal id_PzYrNI
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -812($fp)

	lw $t0, -604($fp)
	lw $t1, -812($fp)
	ble $t1, $t0, label539

	j label540

label539:
	li $t0, 1
	sw $t0, -784($fp)

label540:
	li $t0, 6559
	lw $t1, -784($fp)
	ble $t1, $t0, label537

	j label538

label537:
	li $t0, 1
	sw $t0, -780($fp)

label538:
	li $t0, 51454
	lw $t1, -780($fp)
	bge $t1, $t0, label536

	j label535

label536:
	li $t0, 0
	li $t1, 0
	sw $t0, -816($fp)
	lw $t2, -612($fp)
	bne $t2, $t1, label544

	j label543

label543:
	li $t0, 1
	sw $t0, -816($fp)

label544:
	li $t0, -1
	lw $t1, -816($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label535

	j label534

label534:
	li $t0, 1
	sw $t0, -776($fp)

label535:
	lw $t0, -776($fp)
	move $v0, $t0
	lw $ra, 1332($sp)
	lw $fp, 1328($sp)
	addi $sp, $sp, 1336
	jr $ra

label545:
	li $t0, 0
	li $t1, 0
	li $t2, 35895
	li $t3, 46025
	li $t4, -1
	mul $t5, $t4, $t3
	sw $t0, -820($fp)
	sw $t1, -824($fp)
	bge $t2, $t5, label550

	j label551

label550:
	li $t0, 1
	sw $t0, -824($fp)

label551:
	li $t0, 11084
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, -1
	mul $t1, $t0, $t2
	lw $t0, -824($fp)
	bge $t0, $t1, label548

	j label549

label548:
	li $t0, 1
	sw $t0, -820($fp)

label549:
	li $t0, 29716
	lw $t1, -820($fp)
	bgt $t1, $t0, label546

	j label547

label546:
	li $t0, 0
	li $t1, 0
	li $t2, 59928
	li $t3, 2484
	div $t2, $t3
	mflo $t4
	li $t2, 41100
	div $t4, $t2
	mflo $t3
	li $t2, 64343
	li $t4, 1
	mul $t5, $t2, $t4
	li $t2, -1
	mul $t4, $t2, $t5
	lw $t2, -632($fp)
	lw $t5, -592($fp)
	div $t5, $t2
	mflo $t6
	add $t7, $t6, $t5
	li $t6, 0
	li $t8, -1
	lw $t9, -608($fp)
	mul $s0, $t8, $t9
	sw $t0, -828($fp)
	sw $t1, -832($fp)
	sw $t3, -836($fp)
	sw $t4, -840($fp)
	sw $t6, -848($fp)
	sw $t7, -844($fp)
	lw $t8, -12($fp)
	bge $s0, $t8, label556

	j label557

label556:
	li $t0, 1
	sw $t0, -848($fp)

label557:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -848($fp)
	move $a3, $t0
	lw $t1, -844($fp)
	move $a2, $t1
	lw $t2, -840($fp)
	move $a1, $t2
	lw $t3, -836($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -852($fp)

	li $t0, 15715
	lw $t1, -852($fp)
	mul $t2, $t1, $t0
	li $t0, 0
	li $t3, 0
	addi $t4, $fp, -492
	li $t5, 6
	li $t6, 9
	mul $t7, $t3, $t6
	add $t6, $t7, $t5
	li $t5, 4
	mul $t8, $t6, $t5
	add $t5, $t4, $t8
	lw $t4, 0($t5)
	sw $t0, -860($fp)
	sw $t2, -856($fp)
	lw $t5, -616($fp)
	bgt $t4, $t5, label558

	j label559

label558:
	li $t0, 1
	sw $t0, -860($fp)

label559:
	li $t0, 0
	li $t1, 0
	li $t2, 59235
	li $t3, 0
	sw $t0, -864($fp)
	sw $t1, -868($fp)
	bne $t2, $t3, label563

	j label562

label562:
	li $t0, 1
	sw $t0, -868($fp)

label563:
	li $t0, 47854
	lw $t1, -868($fp)
	beq $t1, $t0, label560

	j label561

label560:
	li $t0, 1
	sw $t0, -864($fp)

label561:
	li $t0, 0
	li $t1, 30808
	li $t2, 5911
	sw $t0, -872($fp)
	blt $t1, $t2, label566

	j label565

label566:
	li $t0, 0
	lw $t1, -628($fp)
	bne $t1, $t0, label564

	j label565

label564:
	li $t0, 1
	sw $t0, -872($fp)

label565:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -872($fp)
	move $a3, $t0
	lw $t1, -864($fp)
	move $a2, $t1
	lw $t2, -860($fp)
	move $a1, $t2
	lw $t3, -856($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -876($fp)

	lw $t0, -604($fp)
	lw $t1, -876($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 57046
	lw $t4, -612($fp)
	div $t4, $t3
	mflo $t5
	li $t3, 43282
	li $t6, 35876
	mul $t7, $t3, $t6
	sw $t2, -880($fp)
	sw $t5, -884($fp)
	sw $t7, -888($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -888($fp)
	move $a1, $t0
	lw $t1, -884($fp)
	move $a0, $t1
	jal id_cwS3I2v
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -892($fp)

	lw $t0, -892($fp)
	lw $t1, -880($fp)
	sub $t2, $t1, $t0
	li $t3, 33967
	li $t4, 9215
	mul $t5, $t3, $t4
	li $t3, -1
	mul $t4, $t3, $t5
	beq $t2, $t4, label554

	j label555

label554:
	li $t0, 1
	sw $t0, -832($fp)

label555:
	li $t0, 0
	li $t1, 43221
	li $t2, 0
	sw $t0, -896($fp)
	bne $t1, $t2, label568

	j label567

label567:
	li $t0, 1
	sw $t0, -896($fp)

label568:
	lw $t0, -896($fp)
	lw $t1, -832($fp)
	bne $t1, $t0, label552

	j label553

label552:
	li $t0, 1
	sw $t0, -828($fp)

label553:
	lw $t0, -828($fp)
	move $v0, $t0
	lw $ra, 1332($sp)
	lw $fp, 1328($sp)
	addi $sp, $sp, 1336
	jr $ra

	j label545

label547:
	li $t0, 0
	addi $t1, $fp, -492
	li $t2, 2
	li $t3, 9
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	lw $t1, 0($t2)
	li $t2, 0
	bne $t1, $t2, label569

	j label570

label569:

label571:
	li $t0, 0
	addi $t1, $fp, -492
	li $t2, 7
	li $t3, 9
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	li $t1, -1
	lw $t5, 0($t2)
	mul $t2, $t1, $t5
	lw $t1, -628($fp)
	lw $t5, -584($fp)
	add $t6, $t5, $t1
	li $t7, 0
	addi $t8, $fp, -492
	li $t9, 2
	li $s0, 9
	mul $s1, $t7, $s0
	add $s0, $s1, $t9
	li $t9, 4
	mul $s2, $s0, $t9
	add $t9, $t8, $s2
	li $t8, 0
	li $s2, 0
	sw $t2, -900($fp)
	sw $t6, -904($fp)
	sw $t8, -912($fp)
	sw $t9, -908($fp)
	lw $s3, -608($fp)
	bne $s3, $s2, label575

	j label574

label574:
	li $t0, 1
	sw $t0, -912($fp)

label575:
	li $t0, 0
	li $t1, 0
	li $t2, 55613
	lw $t3, -608($fp)
	sub $t4, $t2, $t3
	li $t2, 0
	sw $t0, -916($fp)
	sw $t1, -920($fp)
	bne $t4, $t2, label581

	j label580

label581:
	li $t0, 41980
	li $t1, 0
	bne $t0, $t1, label579

	j label580

label579:
	li $t0, 1
	sw $t0, -920($fp)

label580:
	li $t0, 56620
	li $t1, 0
	li $t2, 0
	sw $t0, -924($fp)
	sw $t1, -928($fp)
	lw $t3, -628($fp)
	bne $t3, $t2, label583

	j label582

label582:
	li $t0, 1
	sw $t0, -928($fp)

label583:
	li $t0, 25973
	lw $t1, -928($fp)
	sub $t2, $t1, $t0
	li $t0, 0
	addi $t3, $fp, -492
	li $t4, 9
	mul $t5, $t0, $t4
	lw $t4, -608($fp)
	add $t6, $t5, $t4
	li $t7, 4
	mul $t8, $t6, $t7
	add $t7, $t3, $t8
	li $t3, -1
	lw $t8, 0($t7)
	mul $t7, $t3, $t8
	sw $t2, -932($fp)
	sw $t7, -936($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -936($fp)
	move $a3, $t0
	lw $t1, -932($fp)
	move $a2, $t1
	lw $t2, -924($fp)
	move $a1, $t2
	lw $t3, -920($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -940($fp)

	li $t0, 0
	lw $t1, -940($fp)
	bne $t1, $t0, label576

	j label578

label578:
	li $t0, 0
	lw $t1, -604($fp)
	bne $t1, $t0, label576

	j label577

label576:
	li $t0, 1
	sw $t0, -916($fp)

label577:
	lw $t1, -908($fp)
	lw $t0, 0($t1)
	sw $t0, -944($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -916($fp)
	move $a2, $t0
	lw $t1, -912($fp)
	move $a1, $t1
	lw $t2, -944($fp)
	move $a0, $t2
	jal id_dWmnE
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -948($fp)

	li $t0, 0
	li $t1, 22470
	li $t2, 0
	sw $t0, -952($fp)
	bne $t1, $t2, label585

	j label584

label584:
	li $t0, 1
	sw $t0, -952($fp)

label585:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -952($fp)
	move $a3, $t0
	lw $t1, -948($fp)
	move $a2, $t1
	lw $t2, -904($fp)
	move $a1, $t2
	lw $t3, -900($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -956($fp)

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -188
	li $t3, 1
	mul $t4, $t1, $t3
	lw $t3, -24($fp)
	add $t5, $t4, $t3
	li $t6, 4
	mul $t7, $t5, $t6
	add $t6, $t2, $t7
	lw $t2, 0($t6)
	li $t6, 0
	sw $t0, -960($fp)
	bne $t2, $t6, label587

	j label586

label586:
	li $t0, 1
	sw $t0, -960($fp)

label587:
	lw $t0, -960($fp)
	lw $t1, -956($fp)
	mul $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label572

	j label573

label572:
	li $t0, 2168
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, 0
	bne $t2, $t0, label589

	j label591

label591:
	li $t0, 0
	li $t1, 0
	li $t2, 55689
	li $t3, 16862
	sw $t0, -964($fp)
	sw $t1, -968($fp)
	beq $t2, $t3, label596

	j label595

label596:
	li $t0, 0
	lw $t1, -624($fp)
	bne $t1, $t0, label594

	j label595

label594:
	li $t0, 1
	sw $t0, -968($fp)

label595:
	li $t0, 0
	li $t1, 4652
	lw $t2, -16($fp)
	mul $t3, $t2, $t1
	li $t1, 0
	li $t4, 0
	li $t5, 31253
	lw $t6, -628($fp)
	add $t7, $t6, $t5
	li $t5, 15669
	sw $t0, -972($fp)
	sw $t1, -980($fp)
	sw $t3, -976($fp)
	sw $t4, -984($fp)
	bne $t7, $t5, label601

	j label602

label601:
	li $t0, 1
	sw $t0, -984($fp)

label602:
	li $t0, 0
	li $t1, 0
	li $t2, 43545
	li $t3, -1
	mul $t4, $t3, $t2
	li $t2, 0
	sw $t0, -988($fp)
	sw $t1, -992($fp)
	bne $t4, $t2, label605

	j label607

label607:
	li $t0, 0
	lw $t1, -628($fp)
	bne $t1, $t0, label605

	j label606

label605:
	li $t0, 1
	sw $t0, -992($fp)

label606:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -172
	li $t3, 1
	li $t4, 3
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	li $t3, 0
	sw $t0, -996($fp)
	bne $t2, $t3, label609

	j label608

label608:
	li $t0, 1
	sw $t0, -996($fp)

label609:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -996($fp)
	move $a1, $t0
	lw $t1, -992($fp)
	move $a0, $t1
	jal id_j
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1000($fp)

	li $t0, 7916
	lw $t1, -1000($fp)
	ble $t1, $t0, label603

	j label604

label603:
	li $t0, 1
	sw $t0, -988($fp)

label604:
	li $t0, 0
	sw $t0, -1004($fp)
	lw $t1, -600($fp)
	lw $t2, -604($fp)
	bne $t2, $t1, label612

	j label611

label612:
	li $t0, 40667
	li $t1, 0
	bne $t0, $t1, label610

	j label611

label610:
	li $t0, 1
	sw $t0, -1004($fp)

label611:
	li $t0, 0
	addi $t1, $fp, -572
	li $t2, 4
	li $t3, 5
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	li $t1, 0
	li $t5, 46579
	li $t6, 0
	sw $t1, -1012($fp)
	sw $t2, -1008($fp)
	bne $t5, $t6, label614

	j label613

label613:
	li $t0, 1
	sw $t0, -1012($fp)

label614:
	lw $t1, -1008($fp)
	lw $t0, 0($t1)
	sw $t0, -1016($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1012($fp)
	sw $t0, 0($sp)
	lw $t1, -1016($fp)
	move $a3, $t1
	lw $t2, -1004($fp)
	move $a2, $t2
	lw $t3, -988($fp)
	move $a1, $t3
	lw $t4, -984($fp)
	move $a0, $t4
	jal id_PzYrNI
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -1020($fp)

	lw $t0, -584($fp)
	lw $t1, -1020($fp)
	ble $t1, $t0, label599

	j label600

label599:
	li $t0, 1
	sw $t0, -980($fp)

label600:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -980($fp)
	move $a1, $t0
	lw $t1, -976($fp)
	move $a0, $t1
	jal id_Axiwv5
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1024($fp)

	li $t0, 0
	addi $t1, $fp, -172
	li $t2, 0
	li $t3, 3
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	li $t1, -1
	lw $t5, 0($t2)
	mul $t2, $t1, $t5
	li $t1, 0
	li $t5, 16919
	sw $t1, -1032($fp)
	sw $t2, -1028($fp)
	lw $t6, -620($fp)
	bne $t6, $t5, label615

	j label616

label615:
	li $t0, 1
	sw $t0, -1032($fp)

label616:
	li $t0, 0
	li $t1, 34176
	li $t2, 0
	sw $t0, -1036($fp)
	bne $t1, $t2, label620

	j label618

label620:
	li $t0, 0
	lw $t1, -628($fp)
	bne $t1, $t0, label619

	j label618

label619:
	li $t0, 0
	lw $t1, -620($fp)
	bne $t1, $t0, label617

	j label618

label617:
	li $t0, 1
	sw $t0, -1036($fp)

label618:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1036($fp)
	move $a3, $t0
	lw $t1, -1032($fp)
	move $a2, $t1
	lw $t2, -1028($fp)
	move $a1, $t2
	lw $t3, -1024($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1040($fp)

	lw $t0, -604($fp)
	lw $t1, -1040($fp)
	beq $t1, $t0, label597

	j label598

label597:
	li $t0, 1
	sw $t0, -972($fp)

label598:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -972($fp)
	move $a1, $t0
	lw $t1, -968($fp)
	move $a0, $t1
	jal id_Axiwv5
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1044($fp)

	li $t0, 0
	li $t1, 25685
	li $t2, 60140
	sw $t0, -1048($fp)
	ble $t1, $t2, label621

	j label622

label621:
	li $t0, 1
	sw $t0, -1048($fp)

label622:
	li $t0, 0
	addi $t1, $fp, -492
	li $t2, 3
	li $t3, 9
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	lw $t1, 0($t2)
	sw $t1, -1052($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1052($fp)
	move $a2, $t0
	lw $t1, -1048($fp)
	move $a1, $t1
	lw $t2, -1044($fp)
	move $a0, $t2
	jal id_dWmnE
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -1056($fp)

	lw $t0, -28($fp)
	lw $t1, -1056($fp)
	bge $t1, $t0, label592

	j label593

label592:
	li $t0, 1
	sw $t0, -964($fp)

label593:
	lw $t0, -576($fp)
	lw $t1, -964($fp)
	blt $t1, $t0, label588

	j label589

label588:
	li $t0, 0
	addi $t1, $fp, -172
	li $t2, 0
	li $t3, 0
	li $t4, 0
	li $t5, 3072
	li $t6, 23717
	sub $t7, $t5, $t6
	li $t5, 25933
	sw $t0, -1060($fp)
	sw $t1, -1064($fp)
	sw $t2, -1068($fp)
	sw $t3, -1072($fp)
	sw $t4, -1076($fp)
	beq $t7, $t5, label627

	j label628

label627:
	li $t0, 1
	sw $t0, -1076($fp)

label628:
	li $t0, 0
	li $t1, 0
	li $t2, 0
	sw $t0, -1080($fp)
	sw $t1, -1084($fp)
	lw $t3, -596($fp)
	bne $t3, $t2, label632

	j label631

label631:
	li $t0, 1
	sw $t0, -1084($fp)

label632:
	lw $t0, -632($fp)
	lw $t1, -1084($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 8238
	li $t4, -1
	mul $t5, $t4, $t3
	li $t3, 13794
	sub $t4, $t5, $t3
	li $t3, 0
	sw $t2, -1088($fp)
	sw $t3, -1096($fp)
	sw $t4, -1092($fp)
	lw $t5, -636($fp)
	lw $t6, -608($fp)
	beq $t6, $t5, label633

	j label634

label633:
	li $t0, 1
	sw $t0, -1096($fp)

label634:
	lw $t1, -24($fp)
	move $t0, $t1
	sw $t0, -628($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -628($fp)
	move $a1, $t0
	lw $t1, -1096($fp)
	move $a0, $t1
	jal id_Axiwv5
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1100($fp)

	li $t0, 2377
	lw $t1, -1100($fp)
	mul $t2, $t1, $t0
	sw $t2, -1104($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1104($fp)
	move $a3, $t0
	lw $t1, -588($fp)
	move $a2, $t1
	lw $t2, -1092($fp)
	move $a1, $t2
	lw $t3, -1088($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1108($fp)

	li $t0, 0
	lw $t1, -1108($fp)
	bne $t1, $t0, label630

	j label629

label629:
	li $t0, 1
	sw $t0, -1080($fp)

label630:
	li $t0, 64858
	sw $t0, -1112($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -588($fp)
	move $a3, $t0
	lw $t1, -1112($fp)
	move $a2, $t1
	lw $t2, -1080($fp)
	move $a1, $t2
	lw $t3, -1076($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -1116($fp)

	li $t0, 39767
	lw $t1, -1116($fp)
	bne $t1, $t0, label625

	j label626

label625:
	li $t0, 1
	sw $t0, -1072($fp)

label626:
	lw $t0, -608($fp)
	lw $t1, -616($fp)
	div $t1, $t0
	mflo $t2
	lw $t3, -1072($fp)
	beq $t3, $t2, label623

	j label624

label623:
	li $t0, 1
	sw $t0, -1068($fp)

label624:
	li $t0, 3
	lw $t1, -1060($fp)
	mul $t2, $t1, $t0
	lw $t0, -1068($fp)
	add $t3, $t2, $t0
	li $t4, 4
	mul $t5, $t3, $t4
	lw $t4, -1064($fp)
	add $t6, $t4, $t5
	sw $t1, -1060($fp)
	sw $t2, -1060($fp)
	sw $t3, -1060($fp)
	sw $t5, -1060($fp)
	j label590

label589:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -124
	li $t3, 0
	li $t4, 0
	li $t5, 24847
	sw $t0, -1120($fp)
	sw $t1, -1124($fp)
	sw $t2, -1128($fp)
	sw $t3, -1132($fp)
	sw $t4, -1136($fp)
	lw $t6, -604($fp)
	bne $t5, $t6, label640

	j label641

label640:
	li $t0, 1
	sw $t0, -1136($fp)

label641:
	lw $t0, -584($fp)
	lw $t1, -1136($fp)
	beq $t1, $t0, label638

	j label639

label638:
	li $t0, 1
	sw $t0, -1132($fp)

label639:
	li $t0, 6
	lw $t1, -1124($fp)
	mul $t2, $t1, $t0
	lw $t0, -1132($fp)
	add $t3, $t2, $t0
	li $t4, 4
	mul $t5, $t3, $t4
	lw $t4, -1128($fp)
	add $t6, $t4, $t5
	lw $t7, 0($t6)
	li $t6, 0
	sw $t1, -1124($fp)
	sw $t2, -1124($fp)
	sw $t3, -1124($fp)
	sw $t5, -1124($fp)
	bne $t7, $t6, label637

	j label636

label637:
	li $t0, 0
	lw $t1, -576($fp)
	bne $t1, $t0, label635

	j label636

label635:
	li $t0, 1
	sw $t0, -1120($fp)

label636:

label590:
	j label571

label573:

label570:
	li $t0, 0
	addi $t1, $fp, -492
	li $t2, 0
	li $t3, 0
	addi $t4, $fp, -572
	li $t5, 4
	li $t6, 5
	mul $t7, $t3, $t6
	add $t6, $t7, $t5
	li $t5, 4
	mul $t8, $t6, $t5
	add $t5, $t4, $t8
	lw $t4, 0($t5)
	li $t5, 0
	sw $t0, -1140($fp)
	sw $t1, -1144($fp)
	sw $t2, -1148($fp)
	bne $t4, $t5, label645

	j label647

label647:
	li $t0, 41709
	lw $t1, -616($fp)
	blt $t0, $t1, label645

	j label646

label645:
	li $t0, 1
	sw $t0, -1148($fp)

label646:
	li $t0, 9
	lw $t1, -1140($fp)
	mul $t2, $t1, $t0
	lw $t0, -1148($fp)
	add $t3, $t2, $t0
	li $t4, 4
	mul $t5, $t3, $t4
	lw $t4, -1144($fp)
	add $t6, $t4, $t5
	lw $t7, 0($t6)
	li $t6, 0
	sw $t1, -1140($fp)
	sw $t2, -1140($fp)
	sw $t3, -1140($fp)
	sw $t5, -1140($fp)
	bne $t7, $t6, label642

	j label643

label642:
	li $t0, 0
	li $t1, 6143
	li $t2, 61173
	div $t1, $t2
	mflo $t3
	li $t1, 57378
	sub $t2, $t3, $t1
	li $t1, 0
	addi $t3, $fp, -348
	li $t4, 4
	li $t5, 10
	mul $t6, $t1, $t5
	add $t5, $t6, $t4
	li $t4, 4
	mul $t7, $t5, $t4
	add $t4, $t3, $t7
	lw $t3, 0($t4)
	sw $t0, -1152($fp)
	blt $t2, $t3, label648

	j label649

label648:
	li $t0, 1
	sw $t0, -1152($fp)

label649:
	lw $t1, -1152($fp)
	move $t0, $t1
	sw $t0, -620($fp)
	j label644

label643:
	li $t0, 0
	li $t1, 18223
	li $t2, -1
	mul $t3, $t2, $t1
	li $t1, 0
	addi $t2, $fp, -348
	li $t4, 0
	li $t5, 57604
	li $t6, 0
	sw $t0, -1156($fp)
	sw $t1, -1164($fp)
	sw $t2, -1168($fp)
	sw $t3, -1160($fp)
	sw $t4, -1172($fp)
	bne $t5, $t6, label654

	j label653

label654:
	li $t0, 0
	lw $t1, -620($fp)
	bne $t1, $t0, label652

	j label653

label652:
	li $t0, 1
	sw $t0, -1172($fp)

label653:
	li $t0, 10
	lw $t1, -1164($fp)
	mul $t2, $t1, $t0
	lw $t0, -1172($fp)
	add $t3, $t2, $t0
	li $t4, 4
	mul $t5, $t3, $t4
	lw $t4, -1168($fp)
	add $t6, $t4, $t5
	lw $t7, 0($t6)
	sw $t1, -1164($fp)
	sw $t2, -1164($fp)
	sw $t3, -1164($fp)
	sw $t5, -1164($fp)
	lw $t6, -1160($fp)
	bge $t6, $t7, label650

	j label651

label650:
	li $t0, 1
	sw $t0, -1156($fp)

label651:

label644:
	li $t0, 0
	addi $t1, $fp, -124
	li $t2, 0
	li $t3, 6
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	lw $t1, 0($t2)
	sw $t1, -1176($fp)

	li $v0, 1
	lw $t0, -1176($fp)
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
	li $t4, 6
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1180($fp)

	li $v0, 1
	lw $t0, -1180($fp)
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
	li $t4, 6
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1184($fp)

	li $v0, 1
	lw $t0, -1184($fp)
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
	li $t4, 6
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1188($fp)

	li $v0, 1
	lw $t0, -1188($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -124
	li $t3, 4
	li $t4, 6
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1192($fp)

	li $v0, 1
	lw $t0, -1192($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -124
	li $t3, 5
	li $t4, 6
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1196($fp)

	li $v0, 1
	lw $t0, -1196($fp)
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
	li $t4, 3
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1200($fp)

	li $v0, 1
	lw $t0, -1200($fp)
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
	li $t4, 3
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1204($fp)

	li $v0, 1
	lw $t0, -1204($fp)
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
	li $t4, 3
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1208($fp)

	li $v0, 1
	lw $t0, -1208($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	lw $t0, -580($fp)
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
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1212($fp)

	li $v0, 1
	lw $t0, -1212($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -584($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -588($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -348
	li $t3, 0
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1216($fp)

	li $v0, 1
	lw $t0, -1216($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -348
	li $t3, 1
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1220($fp)

	li $v0, 1
	lw $t0, -1220($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -348
	li $t3, 2
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1224($fp)

	li $v0, 1
	lw $t0, -1224($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -348
	li $t3, 3
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1228($fp)

	li $v0, 1
	lw $t0, -1228($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -348
	li $t3, 4
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1232($fp)

	li $v0, 1
	lw $t0, -1232($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -348
	li $t3, 5
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1236($fp)

	li $v0, 1
	lw $t0, -1236($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -348
	li $t3, 6
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1240($fp)

	li $v0, 1
	lw $t0, -1240($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -348
	li $t3, 7
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1244($fp)

	li $v0, 1
	lw $t0, -1244($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -348
	li $t3, 8
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1248($fp)

	li $v0, 1
	lw $t0, -1248($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -348
	li $t3, 9
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1252($fp)

	li $v0, 1
	lw $t0, -1252($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -592($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -596($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	addi $t2, $fp, -492
	li $t3, 0
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1256($fp)

	li $v0, 1
	lw $t0, -1256($fp)
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
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1260($fp)

	li $v0, 1
	lw $t0, -1260($fp)
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
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1264($fp)

	li $v0, 1
	lw $t0, -1264($fp)
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
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1268($fp)

	li $v0, 1
	lw $t0, -1268($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -492
	li $t3, 4
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1272($fp)

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
	addi $t2, $fp, -492
	li $t3, 5
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1276($fp)

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
	addi $t2, $fp, -492
	li $t3, 6
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1280($fp)

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
	addi $t2, $fp, -492
	li $t3, 7
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1284($fp)

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
	addi $t2, $fp, -492
	li $t3, 8
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1288($fp)

	li $v0, 1
	lw $t0, -1288($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -572
	li $t3, 0
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1292($fp)

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
	addi $t2, $fp, -572
	li $t3, 1
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1296($fp)

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
	addi $t2, $fp, -572
	li $t3, 2
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1300($fp)

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
	addi $t2, $fp, -572
	li $t3, 3
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1304($fp)

	li $v0, 1
	lw $t0, -1304($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -572
	li $t3, 4
	li $t4, 5
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1308($fp)

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
	lw $t0, -604($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -608($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -612($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -616($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -620($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	lw $t0, -628($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -632($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	lw $t2, -20($fp)
	lw $t3, -628($fp)
	sub $t4, $t3, $t2
	mul $t5, $t3, $t3
	li $t6, 17737
	mul $t7, $t5, $t6
	li $t5, 26923
	li $t6, 0
	addi $t8, $fp, -348
	li $t9, 10
	mul $s0, $t6, $t9
	lw $t9, -608($fp)
	add $s1, $s0, $t9
	li $s2, 4
	mul $s3, $s1, $s2
	add $s2, $t8, $s3
	li $t8, 30792
	lw $s3, 0($s2)
	mul $s2, $s3, $t8
	li $t8, 0
	li $s3, 64316
	li $s4, 0
	sw $t1, -1312($fp)
	sw $t4, -1316($fp)
	sw $t5, -1324($fp)
	sw $t7, -1320($fp)
	sw $t8, -1332($fp)
	sw $s2, -1328($fp)
	bne $s3, $s4, label657

	j label659

label659:
	li $t0, 27132
	li $t1, 0
	bne $t0, $t1, label657

	j label658

label657:
	li $t0, 1
	sw $t0, -1332($fp)

label658:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1332($fp)
	sw $t0, 0($sp)
	lw $t1, -1328($fp)
	move $a3, $t1
	lw $t2, -1324($fp)
	move $a2, $t2
	lw $t3, -1320($fp)
	move $a1, $t3
	lw $t4, -1316($fp)
	move $a0, $t4
	jal id_D
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -1336($fp)

	li $t0, 0
	lw $t1, -1336($fp)
	bne $t1, $t0, label656

	j label655

label655:
	li $t0, 1
	sw $t0, -1312($fp)

label656:
	lw $t0, -584($fp)
	lw $t1, -1312($fp)
	mul $t2, $t1, $t0
	move $v0, $t2
	lw $ra, 1332($sp)
	lw $fp, 1328($sp)
	addi $sp, $sp, 1336
	jr $ra

id_fQC3d9:
	addi $sp, $sp, -1184
	sw $ra, 1180($sp)
	sw $fp, 1176($sp)
	addi $fp, $sp, 1184

	li $t0, 47263
	move $t1, $t0
	li $t0, 15699
	move $t2, $t0
	li $t0, 61309
	move $t3, $t0
	li $t0, 7412
	move $t4, $t0
	li $t0, 10304
	move $t5, $t0
	li $t0, 42531
	move $t6, $t0
	li $t0, 0
	addi $t7, $fp, -152
	li $t8, 0
	li $t9, 9
	mul $s0, $t0, $t9
	add $t9, $s0, $t8
	li $t8, 4
	mul $s1, $t9, $t8
	add $t8, $t7, $s1
	li $t7, 63460
	sw $t7, 0($t8)
	li $s1, 0
	addi $s2, $fp, -152
	li $s3, 1
	li $s4, 9
	mul $s5, $s1, $s4
	add $s4, $s5, $s3
	li $s3, 4
	mul $s6, $s4, $s3
	add $s3, $s2, $s6
	li $s2, 13376
	sw $s2, 0($s3)
	li $s6, 0
	addi $s7, $fp, -152
	sw $s5, -1188($fp)
	li $s5, 2
	sw $s4, -1188($fp)
	li $s4, 9
	sw $s3, -1192($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1196($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 712
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1200($fp)
	addi $s6, $fp, -152
	sw $s5, -1204($fp)
	li $s5, 3
	sw $s4, -1200($fp)
	li $s4, 9
	sw $s3, -1200($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1208($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 23857
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1212($fp)
	addi $s7, $fp, -152
	sw $s5, -1216($fp)
	li $s5, 4
	sw $s4, -1212($fp)
	li $s4, 9
	sw $s3, -1212($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1220($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 21614
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1224($fp)
	addi $s6, $fp, -152
	sw $s5, -1228($fp)
	li $s5, 5
	sw $s4, -1224($fp)
	li $s4, 9
	sw $s3, -1224($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1232($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 14507
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1236($fp)
	addi $s7, $fp, -152
	sw $s5, -1240($fp)
	li $s5, 6
	sw $s4, -1236($fp)
	li $s4, 9
	sw $s3, -1236($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1244($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 26234
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1248($fp)
	addi $s6, $fp, -152
	sw $s5, -1252($fp)
	li $s5, 7
	sw $s4, -1248($fp)
	li $s4, 9
	sw $s3, -1248($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1256($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 20936
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1260($fp)
	addi $s7, $fp, -152
	sw $s5, -1264($fp)
	li $s5, 8
	sw $s4, -1260($fp)
	li $s4, 9
	sw $s3, -1260($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1268($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 54274
	sw $s2, 0($s5)
	li $s7, 51082
	sw $s6, -1272($fp)
	move $s6, $s7
	li $s7, 0
	sw $s6, -340($fp)
	addi $s6, $fp, -312
	sw $s5, -1276($fp)
	li $s5, 0
	sw $s4, -1272($fp)
	li $s4, 10
	sw $s3, -1272($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1280($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 22426
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1284($fp)
	addi $s7, $fp, -312
	sw $s5, -1288($fp)
	li $s5, 1
	sw $s4, -1284($fp)
	li $s4, 10
	sw $s3, -1284($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1292($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 18659
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1296($fp)
	addi $s6, $fp, -312
	sw $s5, -1300($fp)
	li $s5, 2
	sw $s4, -1296($fp)
	li $s4, 10
	sw $s3, -1296($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1304($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 27255
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1308($fp)
	addi $s7, $fp, -312
	sw $s5, -1312($fp)
	li $s5, 3
	sw $s4, -1308($fp)
	li $s4, 10
	sw $s3, -1308($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1316($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 28569
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1320($fp)
	addi $s6, $fp, -312
	sw $s5, -1324($fp)
	li $s5, 4
	sw $s4, -1320($fp)
	li $s4, 10
	sw $s3, -1320($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1328($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 14296
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1332($fp)
	addi $s7, $fp, -312
	sw $s5, -1336($fp)
	li $s5, 5
	sw $s4, -1332($fp)
	li $s4, 10
	sw $s3, -1332($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1340($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 19098
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1344($fp)
	addi $s6, $fp, -312
	sw $s5, -1348($fp)
	li $s5, 6
	sw $s4, -1344($fp)
	li $s4, 10
	sw $s3, -1344($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1352($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 12721
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1356($fp)
	addi $s7, $fp, -312
	sw $s5, -1360($fp)
	li $s5, 7
	sw $s4, -1356($fp)
	li $s4, 10
	sw $s3, -1356($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1364($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 56902
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1368($fp)
	addi $s6, $fp, -312
	sw $s5, -1372($fp)
	li $s5, 8
	sw $s4, -1368($fp)
	li $s4, 10
	sw $s3, -1368($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1376($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 37321
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1380($fp)
	addi $s7, $fp, -312
	sw $s5, -1384($fp)
	li $s5, 9
	sw $s4, -1380($fp)
	li $s4, 10
	sw $s3, -1380($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1388($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 4789
	sw $s2, 0($s5)
	li $s7, 9104
	sw $s6, -1392($fp)
	move $s6, $s7
	li $s7, 64244
	sw $s6, -344($fp)
	move $s6, $s7
	li $s7, 35582
	sw $s6, -348($fp)
	move $s6, $s7
	li $s7, 7884
	sw $s6, -352($fp)
	move $s6, $s7
	li $s7, 25841
	sw $s6, -356($fp)
	move $s6, $s7
	li $s7, 17309
	sw $s6, -360($fp)
	move $s6, $s7
	sw $t1, -316($fp)
	sw $t2, -320($fp)
	sw $t3, -324($fp)
	sw $t4, -328($fp)
	sw $t5, -332($fp)
	sw $t6, -336($fp)
	sw $s6, -364($fp)

label660:
	li $t0, 0
	addi $t1, $fp, -152
	li $t2, 0
	li $t3, 23584
	li $t4, 0
	sw $t0, -368($fp)
	sw $t1, -372($fp)
	sw $t2, -376($fp)
	bne $t3, $t4, label664

	j label663

label663:
	li $t0, 1
	sw $t0, -376($fp)

label664:
	li $t0, 9
	lw $t1, -368($fp)
	mul $t2, $t1, $t0
	lw $t0, -376($fp)
	add $t3, $t2, $t0
	li $t4, 4
	mul $t5, $t3, $t4
	lw $t4, -372($fp)
	add $t6, $t4, $t5
	lw $t7, 0($t6)
	move $t6, $t7
	li $t7, 0
	sw $t1, -368($fp)
	sw $t2, -368($fp)
	sw $t3, -368($fp)
	sw $t5, -368($fp)
	sw $t6, -324($fp)
	bne $t6, $t7, label661

	j label662

label661:
	li $t0, 21614
	move $t1, $t0
	li $t0, 24721
	move $t2, $t0
	li $t0, 0
	addi $t3, $fp, -504
	li $t4, 0
	li $t5, 8
	mul $t6, $t0, $t5
	add $t5, $t6, $t4
	li $t4, 4
	mul $t7, $t5, $t4
	add $t4, $t3, $t7
	li $t3, 33888
	sw $t3, 0($t4)
	li $t7, 0
	addi $t8, $fp, -504
	li $t9, 1
	li $s0, 8
	mul $s1, $t7, $s0
	add $s0, $s1, $t9
	li $t9, 4
	mul $s2, $s0, $t9
	add $t9, $t8, $s2
	li $t8, 64145
	sw $t8, 0($t9)
	li $s2, 0
	addi $s3, $fp, -504
	li $s4, 2
	li $s5, 8
	mul $s6, $s2, $s5
	add $s5, $s6, $s4
	li $s4, 4
	mul $s7, $s5, $s4
	add $s4, $s3, $s7
	li $s3, 22645
	sw $s3, 0($s4)
	li $s7, 0
	sw $s6, -1396($fp)
	addi $s6, $fp, -504
	sw $s5, -1396($fp)
	li $s5, 3
	sw $s4, -1400($fp)
	li $s4, 8
	sw $s3, -1404($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1396($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 47264
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1408($fp)
	addi $s7, $fp, -504
	sw $s5, -1412($fp)
	li $s5, 4
	sw $s4, -1408($fp)
	li $s4, 8
	sw $s3, -1408($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1416($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 64858
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1420($fp)
	addi $s6, $fp, -504
	sw $s5, -1424($fp)
	li $s5, 5
	sw $s4, -1420($fp)
	li $s4, 8
	sw $s3, -1420($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1428($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 46502
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1432($fp)
	addi $s7, $fp, -504
	sw $s5, -1436($fp)
	li $s5, 6
	sw $s4, -1432($fp)
	li $s4, 8
	sw $s3, -1432($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1440($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 3342
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1444($fp)
	addi $s6, $fp, -504
	sw $s5, -1448($fp)
	li $s5, 7
	sw $s4, -1444($fp)
	li $s4, 8
	sw $s3, -1444($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1452($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 13829
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1456($fp)
	addi $s7, $fp, -552
	sw $s5, -1460($fp)
	li $s5, 0
	sw $s4, -1456($fp)
	li $s4, 3
	sw $s3, -1456($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1464($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 7201
	sw $s2, 0($s5)
	li $s7, 0
	sw $s6, -1468($fp)
	addi $s6, $fp, -552
	sw $s5, -1472($fp)
	li $s5, 1
	sw $s4, -1468($fp)
	li $s4, 3
	sw $s3, -1468($fp)
	mul $s3, $s7, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1476($fp)
	mul $s2, $s4, $s5
	add $s5, $s6, $s2
	li $s2, 24278
	sw $s2, 0($s5)
	li $s6, 0
	sw $s7, -1480($fp)
	addi $s7, $fp, -552
	sw $s5, -1484($fp)
	li $s5, 2
	sw $s4, -1480($fp)
	li $s4, 3
	sw $s3, -1480($fp)
	mul $s3, $s6, $s4
	add $s4, $s3, $s5
	li $s5, 4
	sw $s2, -1488($fp)
	mul $s2, $s4, $s5
	add $s5, $s7, $s2
	li $s2, 2567
	sw $s2, 0($s5)
	lw $s7, -344($fp)
	sw $s6, -1492($fp)
	lw $s6, -328($fp)
	sw $s5, -1496($fp)
	add $s5, $s6, $s7
	sw $s7, -344($fp)
	li $s7, 58283
	sw $s6, -328($fp)
	add $s6, $s5, $s7
	li $s5, 0
	li $s7, 46704
	sw $s6, -564($fp)
	li $s6, 0
	sw $t1, -556($fp)
	sw $t2, -560($fp)
	sw $s5, -568($fp)
	bne $s7, $s6, label666

	j label665

label665:
	li $t0, 1
	sw $t0, -568($fp)

label666:
	lw $t0, -568($fp)
	lw $t1, -564($fp)
	add $t2, $t1, $t0
	lw $t4, -340($fp)
	move $t3, $t4
	li $t5, 21226
	sw $t2, -572($fp)
	sw $t3, -560($fp)
	sw $t5, -576($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -576($fp)
	move $a1, $t0
	lw $t1, -560($fp)
	move $a0, $t1
	jal id_cwS3I2v
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -580($fp)

	lw $t0, -580($fp)
	lw $t1, -572($fp)
	add $t2, $t1, $t0
	li $t3, 20002
	li $t4, -1
	mul $t5, $t4, $t3
	add $t3, $t2, $t5
	li $t2, 0
	addi $t4, $fp, -504
	li $t5, 8
	mul $t6, $t2, $t5
	lw $t5, -556($fp)
	add $t7, $t6, $t5
	li $t8, 4
	mul $t9, $t7, $t8
	add $t8, $t4, $t9
	li $t4, -1
	lw $t9, 0($t8)
	mul $t8, $t4, $t9
	move $t4, $t8
	li $t8, 0
	li $t9, 0
	addi $s0, $fp, -552
	li $s1, 9738
	lw $s2, -356($fp)
	div $s1, $s2
	mflo $s3
	li $s1, 3
	mul $s4, $t9, $s1
	add $s1, $s4, $s3
	li $s3, 4
	mul $s5, $s1, $s3
	add $s3, $s0, $s5
	lw $s0, 0($s3)
	li $s3, 0
	sw $t4, -344($fp)
	sw $t8, -584($fp)
	bne $s0, $s3, label667

	j label668

label667:
	li $t0, 1
	sw $t0, -584($fp)

label668:
	li $t0, 0
	li $t1, 35523
	li $t2, 39100
	mul $t3, $t1, $t2
	sw $t0, -588($fp)
	lw $t1, -316($fp)
	bge $t1, $t3, label669

	j label670

label669:
	li $t0, 1
	sw $t0, -588($fp)

label670:
	lw $t1, -588($fp)
	move $t0, $t1
	sw $t0, -360($fp)
	j label660

label662:
	lw $t0, -356($fp)
	lw $t1, -316($fp)
	mul $t2, $t1, $t0
	li $t3, 22459
	mul $t4, $t2, $t3
	li $t2, 26889
	lw $t3, -352($fp)
	div $t3, $t2
	mflo $t5
	add $t2, $t4, $t5
	lw $t4, -364($fp)
	blt $t2, $t4, label673

	j label672

label673:
	li $t0, 10886
	lw $t1, -348($fp)
	add $t2, $t0, $t1
	li $t0, 27249
	lw $t3, -344($fp)
	div $t3, $t0
	mflo $t4
	beq $t2, $t4, label671

	j label672

label671:
	lw $t0, -320($fp)
	move $v0, $t0
	lw $ra, 1180($sp)
	lw $fp, 1176($sp)
	addi $sp, $sp, 1184
	jr $ra

label672:
	li $t0, 35993
	move $t1, $t0
	li $t0, 9594
	move $t2, $t0
	li $t0, 0
	addi $t3, $fp, -604
	li $t4, 0
	li $t5, 1
	mul $t6, $t0, $t5
	add $t5, $t6, $t4
	li $t4, 4
	mul $t7, $t5, $t4
	add $t4, $t3, $t7
	li $t3, 62831
	sw $t3, 0($t4)
	li $t7, 43878
	move $t8, $t7
	li $t7, 35435
	move $t9, $t7
	li $t7, 14604
	move $s0, $t7
	li $t7, 1926
	move $s1, $t7
	li $t7, 0
	li $s2, 0
	li $s3, 0
	addi $s4, $fp, -604
	li $s5, 0
	li $s6, 1
	mul $s7, $s3, $s6
	add $s6, $s7, $s5
	li $s5, 4
	sw $s2, -636($fp)
	mul $s2, $s6, $s5
	add $s5, $s4, $s2
	lw $s2, 0($s5)
	li $s4, 0
	sw $t1, -608($fp)
	sw $t2, -612($fp)
	sw $t7, -632($fp)
	sw $t8, -616($fp)
	sw $t9, -620($fp)
	sw $s0, -624($fp)
	sw $s1, -628($fp)
	bne $s2, $s4, label680

	j label679

label679:
	li $t0, 1
	sw $t0, -636($fp)

label680:
	li $t0, -1
	lw $t1, -636($fp)
	mul $t2, $t0, $t1
	li $t0, 35814
	li $t3, -1
	mul $t4, $t3, $t0
	bne $t2, $t4, label677

	j label678

label677:
	li $t0, 1
	sw $t0, -632($fp)

label678:
	li $t0, 55659
	lw $t1, -632($fp)
	bgt $t1, $t0, label674

	j label676

label676:
	lw $t0, -608($fp)
	lw $t1, -612($fp)
	add $t2, $t1, $t0
	li $t3, 61971
	sub $t4, $t2, $t3
	li $t2, 0
	li $t3, 0
	addi $t5, $fp, -312
	li $t6, 10
	mul $t7, $t3, $t6
	lw $t6, -352($fp)
	add $t8, $t7, $t6
	li $t9, 4
	mul $s0, $t8, $t9
	add $t9, $t5, $s0
	li $t5, 17542
	lw $s0, 0($t9)
	sw $t2, -644($fp)
	sw $t4, -640($fp)
	beq $s0, $t5, label681

	j label682

label681:
	li $t0, 1
	sw $t0, -644($fp)

label682:
	li $t0, 0
	li $t1, 0
	li $t2, 54981
	sw $t0, -648($fp)
	sw $t1, -652($fp)
	lw $t3, -336($fp)
	blt $t2, $t3, label685

	j label686

label685:
	li $t0, 1
	sw $t0, -652($fp)

label686:
	lw $t0, -620($fp)
	lw $t1, -652($fp)
	bne $t1, $t0, label683

	j label684

label683:
	li $t0, 1
	sw $t0, -648($fp)

label684:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -648($fp)
	move $a2, $t0
	lw $t1, -644($fp)
	move $a1, $t1
	lw $t2, -640($fp)
	move $a0, $t2
	jal id_dWmnE
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -656($fp)

	lw $t0, -656($fp)
	lw $t1, -344($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	bne $t2, $t3, label674

	j label675

label674:
	li $t0, 42937
	move $t1, $t0
	li $t0, 20884
	move $t2, $t0
	li $t0, 3274
	move $t3, $t0
	li $t0, 50138
	lw $t4, -620($fp)
	div $t4, $t0
	mflo $t5
	li $t0, 0
	li $t6, 0
	addi $t7, $fp, -312
	li $t8, 10
	mul $t9, $t6, $t8
	add $t8, $t9, $t4
	li $s0, 4
	mul $s1, $t8, $s0
	add $s0, $t7, $s1
	lw $t7, 0($s0)
	li $s0, 0
	sw $t0, -676($fp)
	sw $t1, -660($fp)
	sw $t2, -664($fp)
	sw $t3, -668($fp)
	sw $t5, -672($fp)
	bne $t7, $s0, label691

	j label690

label690:
	li $t0, 1
	sw $t0, -676($fp)

label691:
	li $t0, -1
	lw $t1, -676($fp)
	mul $t2, $t0, $t1
	lw $t0, -672($fp)
	div $t0, $t2
	mflo $t3
	li $t2, 0
	bne $t3, $t2, label687

	j label688

label687:
	lw $t0, -332($fp)
	lw $t1, -664($fp)
	div $t1, $t0
	mflo $t2
	j label689

label688:
	li $t0, 45162
	li $t1, 5841
	mul $t2, $t0, $t1
	li $t0, 0
	li $t1, 0
	sw $t0, -684($fp)
	sw $t2, -680($fp)
	lw $t3, -628($fp)
	bne $t3, $t1, label693

	j label692

label692:
	li $t0, 1
	sw $t0, -684($fp)

label693:
	lw $t0, -684($fp)
	lw $t1, -680($fp)
	mul $t2, $t1, $t0
	lw $t3, -612($fp)
	mul $t4, $t2, $t3
	li $t2, 0
	li $t5, 0
	sw $t2, -692($fp)
	sw $t4, -688($fp)
	lw $t6, -332($fp)
	bne $t6, $t5, label695

	j label694

label694:
	li $t0, 1
	sw $t0, -692($fp)

label695:
	lw $t0, -316($fp)
	lw $t1, -624($fp)
	div $t1, $t0
	mflo $t2
	lw $t3, -660($fp)
	lw $t4, -668($fp)
	mul $t5, $t4, $t3
	sw $t2, -696($fp)
	sw $t5, -700($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -700($fp)
	move $a1, $t0
	lw $t1, -696($fp)
	move $a0, $t1
	jal id_cwS3I2v
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -704($fp)

	lw $t0, -704($fp)
	lw $t1, -692($fp)
	div $t1, $t0
	mflo $t2
	li $t3, -1
	mul $t4, $t3, $t2
	lw $t2, -688($fp)
	sub $t3, $t2, $t4

label689:
	li $t0, 0
	li $t1, 0
	sw $t0, -708($fp)
	lw $t2, -324($fp)
	bne $t2, $t1, label701

	j label702

label701:
	li $t0, 1
	sw $t0, -708($fp)

label702:
	li $t0, 42885
	lw $t1, -616($fp)
	mul $t2, $t0, $t1
	lw $t0, -708($fp)
	add $t3, $t0, $t2
	li $t2, 0
	bne $t3, $t2, label696

	j label700

label700:
	li $t0, 0
	lw $t1, -620($fp)
	bne $t1, $t0, label696

	j label699

label699:
	li $t0, -1
	lw $t1, -352($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	bne $t2, $t0, label696

	j label697

label696:
	li $t0, 0
	li $t1, 26330
	li $t2, 27068
	mul $t3, $t1, $t2
	li $t1, 62888
	div $t3, $t1
	mflo $t2
	lw $t1, -624($fp)
	div $t2, $t1
	mflo $t3
	li $t2, 36068
	div $t3, $t2
	mflo $t4
	li $t2, 62591
	li $t3, 0
	li $t5, 0
	li $t6, 36452
	sw $t0, -712($fp)
	sw $t2, -720($fp)
	sw $t3, -724($fp)
	sw $t4, -716($fp)
	sw $t5, -728($fp)
	lw $t7, -360($fp)
	bge $t6, $t7, label707

	j label708

label707:
	li $t0, 1
	sw $t0, -728($fp)

label708:
	lw $t0, -332($fp)
	lw $t1, -728($fp)
	beq $t1, $t0, label705

	j label706

label705:
	li $t0, 1
	sw $t0, -724($fp)

label706:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -724($fp)
	move $a1, $t0
	lw $t1, -720($fp)
	move $a0, $t1
	jal id_j
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -732($fp)

	lw $t0, -732($fp)
	lw $t1, -716($fp)
	beq $t1, $t0, label703

	j label704

label703:
	li $t0, 1
	sw $t0, -712($fp)

label704:
	j label698

label697:
	li $t0, 0
	li $t1, 58528
	lw $t2, -340($fp)
	mul $t3, $t1, $t2
	li $t1, 23944
	mul $t4, $t3, $t1
	li $t1, 47338
	mul $t3, $t4, $t1
	li $t1, 0
	addi $t4, $fp, -312
	li $t5, 6
	li $t6, 10
	mul $t7, $t1, $t6
	add $t6, $t7, $t5
	li $t5, 4
	mul $t8, $t6, $t5
	add $t5, $t4, $t8
	li $t4, -1
	lw $t8, 0($t5)
	mul $t5, $t4, $t8
	div $t3, $t5
	mflo $t4
	li $t3, 56933
	sw $t0, -736($fp)
	bgt $t4, $t3, label709

	j label710

label709:
	li $t0, 1
	sw $t0, -736($fp)

label710:

label698:
	li $t0, 0
	li $t1, 0
	sw $t0, -740($fp)
	lw $t2, -324($fp)
	bne $t2, $t1, label712

	j label711

label711:
	li $t0, 1
	sw $t0, -740($fp)

label712:
	lw $t0, -356($fp)
	lw $t1, -740($fp)
	div $t1, $t0
	mflo $t2
	li $t3, 0
	li $t4, 17536
	sw $t2, -744($fp)
	sw $t3, -748($fp)
	lw $t5, -328($fp)
	bge $t5, $t4, label713

	j label715

label715:
	li $t0, 38280
	li $t1, 0
	bne $t0, $t1, label713

	j label714

label713:
	li $t0, 1
	sw $t0, -748($fp)

label714:
	li $t0, 0
	li $t1, 0
	sw $t0, -752($fp)
	lw $t2, -336($fp)
	bne $t2, $t1, label718

	j label717

label718:
	li $t0, 26832
	li $t1, 0
	bne $t0, $t1, label716

	j label717

label716:
	li $t0, 1
	sw $t0, -752($fp)

label717:
	li $t0, 0
	li $t1, 32140
	li $t2, 0
	sw $t0, -756($fp)
	bne $t1, $t2, label722

	j label721

label722:
	li $t0, 40206
	li $t1, 0
	bne $t0, $t1, label719

	j label721

label721:
	li $t0, 0
	lw $t1, -344($fp)
	bne $t1, $t0, label719

	j label720

label719:
	li $t0, 1
	sw $t0, -756($fp)

label720:
	li $t0, 0
	li $t1, 18346
	li $t2, 5929
	add $t3, $t1, $t2
	li $t1, 0
	sw $t0, -760($fp)
	bne $t3, $t1, label725

	j label724

label725:
	li $t0, 0
	lw $t1, -332($fp)
	bne $t1, $t0, label723

	j label724

label723:
	li $t0, 1
	sw $t0, -760($fp)

label724:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -760($fp)
	sw $t0, 0($sp)
	lw $t1, -756($fp)
	move $a3, $t1
	lw $t2, -752($fp)
	move $a2, $t2
	lw $t3, -748($fp)
	move $a1, $t3
	lw $t4, -744($fp)
	move $a0, $t4
	jal id_D
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -764($fp)

	lw $t0, -324($fp)
	lw $t1, -764($fp)
	add $t2, $t1, $t0
	li $t3, 10484
	move $t4, $t3
	li $t3, 0
	li $t5, 0
	sw $t3, -768($fp)
	bne $t4, $t5, label727

	j label726

label726:
	li $t0, 1
	sw $t0, -768($fp)

label727:
	li $t0, -1
	lw $t1, -768($fp)
	mul $t2, $t0, $t1

label675:
	li $t0, 0
	addi $t1, $fp, -816
	li $t2, 0
	li $t3, 3
	mul $t4, $t0, $t3
	add $t3, $t4, $t2
	li $t2, 4
	mul $t5, $t3, $t2
	add $t2, $t1, $t5
	li $t1, 8469
	sw $t1, 0($t2)
	li $t5, 0
	addi $t6, $fp, -816
	li $t7, 1
	li $t8, 3
	mul $t9, $t5, $t8
	add $t8, $t9, $t7
	li $t7, 4
	mul $s0, $t8, $t7
	add $t7, $t6, $s0
	li $t6, 2364
	sw $t6, 0($t7)
	li $s0, 0
	addi $s1, $fp, -816
	li $s2, 2
	li $s3, 3
	mul $s4, $s0, $s3
	add $s3, $s4, $s2
	li $s2, 4
	mul $s5, $s3, $s2
	add $s2, $s1, $s5
	li $s1, 28026
	sw $s1, 0($s2)
	li $s5, 63450
	move $s6, $s5
	li $s5, 45302
	move $s7, $s5
	li $s5, 48910
	sw $s7, -824($fp)
	move $s7, $s5
	li $s5, 1188
	sw $s7, -828($fp)
	move $s7, $s5
	li $s5, 29904
	sw $s7, -832($fp)
	move $s7, $s5
	li $s5, 28536
	sw $s7, -836($fp)
	move $s7, $s5
	li $s5, 7029
	sw $s7, -840($fp)
	move $s7, $s5
	li $s5, 0
	sw $s7, -844($fp)
	li $s7, 0
	sw $s7, -852($fp)
	li $s7, 7254
	sw $s6, -820($fp)
	lw $s6, -352($fp)
	sw $s5, -848($fp)
	add $s5, $s7, $s6
	li $s7, 54866
	bne $s5, $s7, label730

	j label731

label730:
	li $t0, 1
	sw $t0, -852($fp)

label731:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -852($fp)
	move $a1, $t0
	lw $t1, -356($fp)
	move $a0, $t1
	jal id_cwS3I2v
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -856($fp)

	li $t0, 0
	lw $t1, -856($fp)
	bne $t1, $t0, label729

	j label728

label728:
	li $t0, 1
	sw $t0, -848($fp)

label729:
	li $t0, 0
	li $t1, 34097
	li $t2, 4606
	div $t1, $t2
	mflo $t3
	li $t1, 25399
	lw $t2, -620($fp)
	div $t1, $t2
	mflo $t4
	li $t1, 31152
	li $t5, 0
	li $t6, -1
	lw $t7, -832($fp)
	mul $t8, $t6, $t7
	li $t6, 41058
	sub $t9, $t8, $t6
	lw $t8, -840($fp)
	move $t6, $t8
	li $s0, 0
	li $s1, 18391
	li $s2, 0
	sw $t0, -860($fp)
	sw $t1, -872($fp)
	sw $t3, -864($fp)
	sw $t4, -868($fp)
	sw $t5, -876($fp)
	sw $t6, -344($fp)
	sw $t9, -880($fp)
	sw $s0, -884($fp)
	bne $s1, $s2, label739

	j label738

label738:
	li $t0, 1
	sw $t0, -884($fp)

label739:
	li $t0, -1
	lw $t1, -884($fp)
	mul $t2, $t0, $t1
	li $t0, 0
	li $t3, 55097
	li $t4, -1
	mul $t5, $t4, $t3
	li $t3, 0
	sw $t0, -892($fp)
	sw $t2, -888($fp)
	bne $t5, $t3, label742

	j label741

label742:
	li $t0, 22861
	li $t1, 0
	bne $t0, $t1, label740

	j label741

label740:
	li $t0, 1
	sw $t0, -892($fp)

label741:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -892($fp)
	move $a1, $t0
	lw $t1, -888($fp)
	move $a0, $t1
	jal id_cwS3I2v
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -896($fp)

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -604
	li $t3, 1
	mul $t4, $t1, $t3
	lw $t3, -332($fp)
	add $t5, $t4, $t3
	li $t6, 4
	mul $t7, $t5, $t6
	add $t6, $t2, $t7
	lw $t2, 0($t6)
	sw $t0, -900($fp)
	lw $t6, -352($fp)
	bgt $t2, $t6, label743

	j label744

label743:
	li $t0, 1
	sw $t0, -900($fp)

label744:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -900($fp)
	sw $t0, 0($sp)
	lw $t1, -896($fp)
	move $a3, $t1
	lw $t2, -344($fp)
	move $a2, $t2
	lw $t3, -332($fp)
	move $a1, $t3
	lw $t4, -880($fp)
	move $a0, $t4
	jal id_PzYrNI
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -904($fp)

	li $t0, 0
	lw $t1, -904($fp)
	bne $t1, $t0, label737

	j label736

label737:
	li $t0, 38632
	li $t1, 0
	bne $t0, $t1, label735

	j label736

label735:
	li $t0, 1
	sw $t0, -876($fp)

label736:
	li $t0, 49499
	li $t1, -1
	mul $t2, $t1, $t0
	li $t0, 14258
	add $t1, $t2, $t0
	sw $t1, -908($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -908($fp)
	move $a2, $t0
	lw $t1, -876($fp)
	move $a1, $t1
	lw $t2, -872($fp)
	move $a0, $t2
	jal id_dWmnE
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -912($fp)

	li $t0, 0
	li $t1, 56168
	lw $t2, -356($fp)
	div $t2, $t1
	mflo $t3
	li $t1, 0
	sw $t0, -916($fp)
	bne $t3, $t1, label747

	j label746

label747:
	li $t0, 22243
	li $t1, 0
	bne $t0, $t1, label745

	j label746

label745:
	li $t0, 1
	sw $t0, -916($fp)

label746:
	li $t0, 41090
	lw $t1, -628($fp)
	div $t1, $t0
	mflo $t2
	li $t0, 22772
	mul $t3, $t2, $t0
	sw $t3, -920($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -920($fp)
	sw $t0, 0($sp)
	lw $t1, -916($fp)
	move $a3, $t1
	lw $t2, -912($fp)
	move $a2, $t2
	lw $t3, -868($fp)
	move $a1, $t3
	lw $t4, -864($fp)
	move $a0, $t4
	jal id_D
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -924($fp)

	li $t0, 62449
	lw $t1, -924($fp)
	sub $t2, $t1, $t0
	li $t0, 59436
	lw $t3, -316($fp)
	mul $t4, $t3, $t0
	li $t0, -1
	mul $t5, $t0, $t4
	li $t0, 0
	li $t4, 0
	sw $t0, -936($fp)
	sw $t2, -928($fp)
	sw $t5, -932($fp)
	lw $t6, -628($fp)
	bne $t6, $t4, label750

	j label749

label750:
	li $t0, 0
	lw $t1, -836($fp)
	bne $t1, $t0, label748

	j label749

label748:
	li $t0, 1
	sw $t0, -936($fp)

label749:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -936($fp)
	move $a2, $t0
	lw $t1, -932($fp)
	move $a1, $t1
	lw $t2, -928($fp)
	move $a0, $t2
	jal id_dWmnE
	move $t3, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t3, -940($fp)

	li $t0, 0
	lw $t1, -940($fp)
	bne $t1, $t0, label732

	j label734

label734:
	li $t0, 28701
	li $t1, 0
	bne $t0, $t1, label732

	j label733

label732:
	li $t0, 1
	sw $t0, -860($fp)

label733:
	li $t0, 7397
	lw $t1, -620($fp)
	div $t1, $t0
	mflo $t2
	li $t0, 2369
	sub $t3, $t2, $t0
	li $t0, 0
	li $t2, 0
	li $t4, -1
	lw $t5, -844($fp)
	mul $t6, $t4, $t5
	sw $t0, -948($fp)
	sw $t2, -952($fp)
	sw $t3, -944($fp)
	lw $t4, -628($fp)
	bne $t6, $t4, label754

	j label755

label754:
	li $t0, 1
	sw $t0, -952($fp)

label755:
	li $t0, 31066
	li $t1, 0
	li $t2, 0
	li $t3, 35423
	sw $t0, -956($fp)
	sw $t1, -960($fp)
	sw $t2, -964($fp)
	lw $t4, -324($fp)
	beq $t3, $t4, label758

	j label759

label758:
	li $t0, 1
	sw $t0, -964($fp)

label759:
	li $t0, 283
	lw $t1, -964($fp)
	beq $t1, $t0, label756

	j label757

label756:
	li $t0, 1
	sw $t0, -960($fp)

label757:
	li $t0, 10832
	li $t1, 18797
	mul $t2, $t0, $t1
	li $t0, 0
	li $t1, -1
	lw $t3, -832($fp)
	mul $t4, $t1, $t3
	li $t1, 0
	sw $t0, -972($fp)
	sw $t2, -968($fp)
	bne $t4, $t1, label761

	j label760

label760:
	li $t0, 1
	sw $t0, -972($fp)

label761:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -972($fp)
	sw $t0, 0($sp)
	lw $t1, -968($fp)
	move $a3, $t1
	lw $t2, -960($fp)
	move $a2, $t2
	lw $t3, -956($fp)
	move $a1, $t3
	lw $t4, -952($fp)
	move $a0, $t4
	jal id_PzYrNI
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -976($fp)

	li $t0, 0
	lw $t1, -976($fp)
	bne $t1, $t0, label751

	j label753

label753:
	li $t0, 0
	lw $t1, -832($fp)
	bne $t1, $t0, label751

	j label752

label751:
	li $t0, 1
	sw $t0, -948($fp)

label752:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -332($fp)
	move $a3, $t0
	lw $t1, -948($fp)
	move $a2, $t1
	lw $t2, -944($fp)
	move $a1, $t2
	lw $t3, -860($fp)
	move $a0, $t3
	jal id_GtviOg
	move $t4, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t4, -980($fp)

	li $t0, -1
	lw $t1, -980($fp)
	mul $t2, $t0, $t1
	li $t0, -1
	mul $t3, $t0, $t2
	lw $t0, -848($fp)
	add $t2, $t0, $t3
	li $t3, 0
	addi $t4, $fp, -816
	li $t5, 0
	li $t6, 0
	addi $t7, $fp, -816
	li $t8, 1
	li $t9, 3
	mul $s0, $t6, $t9
	add $t9, $s0, $t8
	li $t8, 4
	mul $s1, $t9, $t8
	add $t8, $t7, $s1
	li $t7, -1
	lw $s1, 0($t8)
	mul $t8, $t7, $s1
	li $t7, 0
	sw $t3, -984($fp)
	sw $t4, -988($fp)
	sw $t5, -992($fp)
	bne $t8, $t7, label764

	j label763

label764:
	li $t0, 47333
	lw $t1, -332($fp)
	bgt $t1, $t0, label762

	j label763

label762:
	li $t0, 1
	sw $t0, -992($fp)

label763:
	li $t0, 3
	lw $t1, -984($fp)
	mul $t2, $t1, $t0
	lw $t0, -992($fp)
	add $t3, $t2, $t0
	li $t4, 4
	mul $t5, $t3, $t4
	lw $t4, -988($fp)
	add $t6, $t4, $t5
	li $t7, 8501
	lw $t8, -344($fp)
	mul $t9, $t8, $t7
	li $t7, 47990
	mul $s0, $t9, $t7
	li $t7, 42599
	div $s0, $t7
	mflo $t9
	move $t7, $t9
	sw $t1, -984($fp)
	sw $t2, -984($fp)
	sw $t3, -984($fp)
	sw $t5, -984($fp)
	sw $t7, -836($fp)

label765:
	li $t0, 0
	li $t1, 52596
	lw $t2, -348($fp)
	mul $t3, $t2, $t1
	li $t1, 0
	sw $t0, -996($fp)
	bne $t3, $t1, label768

	j label770

label770:
	li $t0, 62062
	li $t1, 0
	bne $t0, $t1, label768

	j label769

label768:
	li $t0, 1
	sw $t0, -996($fp)

label769:
	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -152
	li $t3, 9
	mul $t4, $t1, $t3
	lw $t3, -620($fp)
	add $t5, $t4, $t3
	li $t6, 4
	mul $t7, $t5, $t6
	add $t6, $t2, $t7
	lw $t2, 0($t6)
	sw $t0, -1000($fp)
	lw $t6, -344($fp)
	blt $t2, $t6, label771

	j label772

label771:
	li $t0, 1
	sw $t0, -1000($fp)

label772:
	li $t0, 8215
	lw $t1, -620($fp)
	div $t1, $t0
	mflo $t2
	li $t0, 28119
	sub $t3, $t2, $t0
	li $t0, 14917
	li $t2, -1
	mul $t4, $t2, $t0
	li $t0, -1
	mul $t2, $t0, $t4
	li $t0, 0
	li $t4, 63312
	li $t5, 0
	sw $t0, -1012($fp)
	sw $t2, -1008($fp)
	sw $t3, -1004($fp)
	bne $t4, $t5, label776

	j label774

label776:
	li $t0, 0
	lw $t1, -628($fp)
	bne $t1, $t0, label775

	j label774

label775:
	li $t0, 0
	lw $t1, -828($fp)
	bne $t1, $t0, label773

	j label774

label773:
	li $t0, 1
	sw $t0, -1012($fp)

label774:
	li $t0, 50980
	move $t1, $t0
	li $t0, 0
	li $t2, 53549
	li $t3, 0
	sw $t0, -1016($fp)
	sw $t1, -836($fp)
	bne $t2, $t3, label778

	j label777

label777:
	li $t0, 1
	sw $t0, -1016($fp)

label778:
	li $t0, 0
	li $t1, 0
	sw $t0, -1020($fp)
	lw $t2, -352($fp)
	bne $t2, $t1, label782

	j label780

label782:
	li $t0, 47275
	li $t1, 0
	bne $t0, $t1, label781

	j label780

label781:
	li $t0, 0
	lw $t1, -360($fp)
	bne $t1, $t0, label779

	j label780

label779:
	li $t0, 1
	sw $t0, -1020($fp)

label780:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1020($fp)
	move $a1, $t0
	lw $t1, -1016($fp)
	move $a0, $t1
	jal id_cwS3I2v
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1024($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	jal id_fQC3d9
	move $t0, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t0, -1028($fp)

	li $t0, 0
	li $t1, 0
	li $t2, 65238
	sw $t0, -1032($fp)
	sw $t1, -1036($fp)
	lw $t3, -832($fp)
	beq $t3, $t2, label785

	j label786

label785:
	li $t0, 1
	sw $t0, -1036($fp)

label786:
	lw $t0, -616($fp)
	lw $t1, -1036($fp)
	beq $t1, $t0, label783

	j label784

label783:
	li $t0, 1
	sw $t0, -1032($fp)

label784:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1032($fp)
	sw $t0, 0($sp)
	lw $t1, -1028($fp)
	move $a3, $t1
	lw $t2, -1024($fp)
	move $a2, $t2
	lw $t3, -836($fp)
	move $a1, $t3
	lw $t4, -1012($fp)
	move $a0, $t4
	jal id_D
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -1040($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1040($fp)
	sw $t0, 0($sp)
	lw $t1, -1008($fp)
	move $a3, $t1
	lw $t2, -1004($fp)
	move $a2, $t2
	lw $t3, -1000($fp)
	move $a1, $t3
	lw $t4, -996($fp)
	move $a0, $t4
	jal id_D
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -1044($fp)

	li $t0, 0
	addi $t1, $fp, -816
	li $t2, 3
	mul $t3, $t0, $t2
	lw $t2, -352($fp)
	add $t4, $t3, $t2
	li $t5, 4
	mul $t6, $t4, $t5
	add $t5, $t1, $t6
	lw $t1, 0($t5)
	lw $t5, -1044($fp)
	mul $t6, $t5, $t1
	li $t1, 0
	bne $t6, $t1, label766

	j label767

label766:
	li $t0, 0
	lw $t1, -820($fp)
	lw $t2, -620($fp)
	sub $t3, $t2, $t1
	lw $t4, -832($fp)
	sub $t5, $t3, $t4
	li $t3, 44181
	sw $t0, -1048($fp)
	sw $t3, -1056($fp)
	sw $t5, -1052($fp)

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -1056($fp)
	move $a1, $t0
	lw $t1, -1052($fp)
	move $a0, $t1
	jal id_j
	move $t2, $v0
	addi $sp, $sp, 0
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t2, -1060($fp)

	li $t0, 3982
	lw $t1, -1060($fp)
	mul $t2, $t1, $t0
	li $t0, 40792
	mul $t3, $t2, $t0
	li $t0, -1
	lw $t2, -624($fp)
	mul $t4, $t0, $t2
	li $t0, 0
	li $t5, 1417
	li $t6, -1
	mul $t7, $t6, $t5
	li $t5, 0
	sw $t0, -1072($fp)
	sw $t3, -1064($fp)
	sw $t4, -1068($fp)
	bne $t7, $t5, label791

	j label790

label790:
	li $t0, 1
	sw $t0, -1072($fp)

label791:
	li $t0, 0
	li $t1, 895
	li $t2, 0
	sw $t0, -1076($fp)
	bne $t1, $t2, label792

	j label793

label792:
	li $t0, 1
	sw $t0, -1076($fp)

label793:
	li $t0, 0
	li $t1, 34693
	li $t2, 30119
	sw $t0, -1080($fp)
	bgt $t1, $t2, label794

	j label796

label796:
	li $t0, 8292
	li $t1, 0
	bne $t0, $t1, label794

	j label795

label794:
	li $t0, 1
	sw $t0, -1080($fp)

label795:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1080($fp)
	sw $t0, 0($sp)
	lw $t1, -1076($fp)
	move $a3, $t1
	lw $t2, -1072($fp)
	move $a2, $t2
	lw $t3, -1068($fp)
	move $a1, $t3
	lw $t4, -824($fp)
	move $a0, $t4
	jal id_D
	move $t5, $v0
	addi $sp, $sp, 4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	sw $t5, -1084($fp)

	lw $t0, -1084($fp)
	lw $t1, -1064($fp)
	add $t2, $t1, $t0
	li $t3, 0
	bne $t2, $t3, label789

	j label788

label789:
	li $t0, 0
	addi $t1, $fp, -312
	li $t2, 0
	li $t3, 37062
	li $t4, 61185
	sw $t0, -1088($fp)
	sw $t1, -1092($fp)
	sw $t2, -1096($fp)
	beq $t3, $t4, label797

	j label798

label797:
	li $t0, 1
	sw $t0, -1096($fp)

label798:
	li $t0, 10
	lw $t1, -1088($fp)
	mul $t2, $t1, $t0
	lw $t0, -1096($fp)
	add $t3, $t2, $t0
	li $t4, 4
	mul $t5, $t3, $t4
	lw $t4, -1092($fp)
	add $t6, $t4, $t5
	lw $t7, 0($t6)
	li $t6, 0
	sw $t1, -1088($fp)
	sw $t2, -1088($fp)
	sw $t3, -1088($fp)
	sw $t5, -1088($fp)
	bne $t7, $t6, label787

	j label788

label787:
	li $t0, 1
	sw $t0, -1048($fp)

label788:
	j label765

label767:

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
	li $t1, 0
	addi $t2, $fp, -152
	li $t3, 0
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1100($fp)

	li $v0, 1
	lw $t0, -1100($fp)
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
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1104($fp)

	li $v0, 1
	lw $t0, -1104($fp)
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
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1108($fp)

	li $v0, 1
	lw $t0, -1108($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -152
	li $t3, 3
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1112($fp)

	li $v0, 1
	lw $t0, -1112($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -152
	li $t3, 4
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1116($fp)

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
	addi $t2, $fp, -152
	li $t3, 5
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1120($fp)

	li $v0, 1
	lw $t0, -1120($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -152
	li $t3, 6
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1124($fp)

	li $v0, 1
	lw $t0, -1124($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -152
	li $t3, 7
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1128($fp)

	li $v0, 1
	lw $t0, -1128($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -152
	li $t3, 8
	li $t4, 9
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1132($fp)

	li $v0, 1
	lw $t0, -1132($fp)
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
	li $t1, 0
	addi $t2, $fp, -312
	li $t3, 0
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1136($fp)

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
	addi $t2, $fp, -312
	li $t3, 1
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1140($fp)

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
	addi $t2, $fp, -312
	li $t3, 2
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1144($fp)

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
	addi $t2, $fp, -312
	li $t3, 3
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1148($fp)

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
	addi $t2, $fp, -312
	li $t3, 4
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1152($fp)

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
	addi $t2, $fp, -312
	li $t3, 5
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1156($fp)

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
	addi $t2, $fp, -312
	li $t3, 6
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1160($fp)

	li $v0, 1
	lw $t0, -1160($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -312
	li $t3, 7
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1164($fp)

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
	addi $t2, $fp, -312
	li $t3, 8
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1168($fp)

	li $v0, 1
	lw $t0, -1168($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 0
	addi $t2, $fp, -312
	li $t3, 9
	li $t4, 10
	mul $t5, $t1, $t4
	add $t4, $t5, $t3
	li $t3, 4
	mul $t6, $t4, $t3
	add $t3, $t2, $t6
	lw $t2, 0($t3)
	sw $t2, -1172($fp)

	li $v0, 1
	lw $t0, -1172($fp)
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

	li $v0, 1
	lw $t0, -348($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -352($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

	li $v0, 1
	lw $t0, -356($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0

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
	li $t2, 0
	addi $t3, $fp, -312
	li $t4, 3
	li $t5, 10
	mul $t6, $t2, $t5
	add $t5, $t6, $t4
	li $t4, 4
	mul $t7, $t5, $t4
	add $t4, $t3, $t7
	lw $t3, 0($t4)
	li $t4, 0
	sw $t1, -1176($fp)
	bne $t3, $t4, label799

	j label801

label801:
	li $t0, 0
	li $t1, 0
	sw $t0, -1180($fp)
	sw $t1, -1184($fp)
	lw $t2, -332($fp)
	lw $t3, -336($fp)
	ble $t3, $t2, label804

	j label805

label804:
	li $t0, 1
	sw $t0, -1184($fp)

label805:
	lw $t0, -336($fp)
	lw $t1, -1184($fp)
	bne $t1, $t0, label802

	j label803

label802:
	li $t0, 1
	sw $t0, -1180($fp)

label803:
	lw $t0, -324($fp)
	lw $t1, -320($fp)
	sub $t2, $t1, $t0
	lw $t3, -1180($fp)
	bne $t3, $t2, label799

	j label800

label799:
	li $t0, 1
	sw $t0, -1176($fp)

label800:
	lw $t0, -1176($fp)
	move $v0, $t0
	lw $ra, 1180($sp)
	lw $fp, 1176($sp)
	addi $sp, $sp, 1184
	jr $ra

id_Nr:
	addi $sp, $sp, -20
	sw $ra, 16($sp)
	sw $fp, 12($sp)
	addi $fp, $sp, 20

	li $t0, 62512
	move $t1, $t0
	li $t0, 38817
	move $t2, $t0
	li $t0, 47217
	move $t3, $t0
	li $t0, 0
	li $t4, 44309
	li $t5, 0
	sw $t0, -20($fp)
	sw $t1, -12($fp)
	sw $t2, -16($fp)
	sw $t3, -16($fp)
	bne $t4, $t5, label806

	j label808

label808:
	li $t0, 0
	lw $t1, -12($fp)
	bne $t1, $t0, label806

	j label807

label806:
	li $t0, 1
	sw $t0, -20($fp)

label807:

	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, 0
	lw $t0, -20($fp)
	move $a1, $t0
	lw $t1, -16($fp)
	move $a0, $t1
	jal id_cwS3I2v
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

	li $v0, 1
	lw $t0, -16($fp)
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, _ret
	syscall
	move $v0, $zero

	li $t0, 0
	li $t1, 47318
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
	jal id_Nr
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

