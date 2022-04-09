.data
error_msg: .asciiz "MIPS ERROR\n"  
boolean_true: .asciiz "true\n"  
boolean_false: .asciiz "false\n"  
L2: .asciiz "\n" 
.text
.globl main
main: 
jal L0
li $v0,10
syscall
L5: 
li $v0,12
syscall
jr $ra 
L7: 
li $v0,10
syscall
jr $ra 
L9: 
beq $a0, $zero, isFalse
isTrue:
la $a0, boolean_true
j printBoolean
isFalse:
la $a0, boolean_false
printBoolean:
li $v0,4
syscall
jr $ra 
L11: 
li $v0,11
syscall
jr $ra 
L13: 
li $v0,1
syscall
jr $ra 
L15: 
li $v0,4
syscall
jr $ra 
L3: 
addiu $sp, $sp, -4 
sw $ra, 0($sp)
addiu $sp, $sp, -4 
sw $a0, 0($sp)
addiu $sp, $sp, -4 
sw $a1, 0($sp)
addiu $sp, $sp, -4 
sw $a2, 0($sp)
addiu $sp, $sp, -4 
sw $a3, 0($sp)
addiu $sp, $sp, -4 
sw $t0, 0($sp)
addiu $sp, $sp, -4 
sw $t1, 0($sp)
addiu $sp, $sp, -4 
sw $t2, 0($sp)
addiu $sp, $sp, -4 
sw $t3, 0($sp)
addiu $sp, $sp, -4 
sw $t4, 0($sp)
addiu $sp, $sp, -4 
sw $t5, 0($sp)
addiu $sp, $sp, -4 
sw $t6, 0($sp)
addiu $sp, $sp, -4 
sw $t7, 0($sp)
addiu $sp, $sp, -4 
sw $t8, 0($sp)
addiu $sp, $sp, -4 
sw $t9, 0($sp)
addiu $sp, $sp, -4 
sw $s0, 0($sp)
addiu $sp, $sp, -4 
sw $s1, 0($sp)
addiu $sp, $sp, -4 
sw $s2, 0($sp)
addiu $sp, $sp, -4 
sw $s3, 0($sp)
addiu $sp, $sp, -4 
sw $s4, 0($sp)
addiu $sp, $sp, -4 
sw $s5, 0($sp)
addiu $sp, $sp, -4 
sw $s6, 0($sp)
addiu $sp, $sp, -4 
sw $s7, 0($sp)
la $t0,L2
move $a0, $t0
jal L15
L4: 
lw $s7, 0($sp) 
addiu $sp, $sp, 4 
lw $s6, 0($sp) 
addiu $sp, $sp, 4 
lw $s5, 0($sp) 
addiu $sp, $sp, 4 
lw $s4, 0($sp) 
addiu $sp, $sp, 4 
lw $s3, 0($sp) 
addiu $sp, $sp, 4 
lw $s2, 0($sp) 
addiu $sp, $sp, 4 
lw $s1, 0($sp) 
addiu $sp, $sp, 4 
lw $s0, 0($sp) 
addiu $sp, $sp, 4 
lw $t9, 0($sp) 
addiu $sp, $sp, 4 
lw $t8, 0($sp) 
addiu $sp, $sp, 4 
lw $t7, 0($sp) 
addiu $sp, $sp, 4 
lw $t6, 0($sp) 
addiu $sp, $sp, 4 
lw $t5, 0($sp) 
addiu $sp, $sp, 4 
lw $t4, 0($sp) 
addiu $sp, $sp, 4 
lw $t3, 0($sp) 
addiu $sp, $sp, 4 
lw $t2, 0($sp) 
addiu $sp, $sp, 4 
lw $t1, 0($sp) 
addiu $sp, $sp, 4 
lw $t0, 0($sp) 
addiu $sp, $sp, 4 
lw $a3, 0($sp) 
addiu $sp, $sp, 4 
lw $a2, 0($sp) 
addiu $sp, $sp, 4 
lw $a1, 0($sp) 
addiu $sp, $sp, 4 
lw $a0, 0($sp) 
addiu $sp, $sp, 4 
lw $ra, 0($sp) 
addiu $sp, $sp, 4 
jr $ra 
L0: 
addiu $sp, $sp, -4 
sw $ra, 0($sp)
addiu $sp, $sp, -4 
sw $a0, 0($sp)
addiu $sp, $sp, -4 
sw $a1, 0($sp)
addiu $sp, $sp, -4 
sw $a2, 0($sp)
addiu $sp, $sp, -4 
sw $a3, 0($sp)
addiu $sp, $sp, -4 
sw $t0, 0($sp)
addiu $sp, $sp, -4 
sw $t1, 0($sp)
addiu $sp, $sp, -4 
sw $t2, 0($sp)
addiu $sp, $sp, -4 
sw $t3, 0($sp)
addiu $sp, $sp, -4 
sw $t4, 0($sp)
addiu $sp, $sp, -4 
sw $t5, 0($sp)
addiu $sp, $sp, -4 
sw $t6, 0($sp)
addiu $sp, $sp, -4 
sw $t7, 0($sp)
addiu $sp, $sp, -4 
sw $t8, 0($sp)
addiu $sp, $sp, -4 
sw $t9, 0($sp)
addiu $sp, $sp, -4 
sw $s0, 0($sp)
addiu $sp, $sp, -4 
sw $s1, 0($sp)
addiu $sp, $sp, -4 
sw $s2, 0($sp)
addiu $sp, $sp, -4 
sw $s3, 0($sp)
addiu $sp, $sp, -4 
sw $s4, 0($sp)
addiu $sp, $sp, -4 
sw $s5, 0($sp)
addiu $sp, $sp, -4 
sw $s6, 0($sp)
addiu $sp, $sp, -4 
sw $s7, 0($sp)
addiu $t0,$zero,123
move $a0, $t0
jal L13
jal L3
addiu $t0,$zero,-2147483648
move $a0, $t0
jal L13
jal L3
addiu $t0,$zero,-2147483648
move $a0, $t0
jal L13
jal L3
addiu $t0,$zero,-2147483648
move $a0, $t0
jal L13
jal L3
L1: 
lw $s7, 0($sp) 
addiu $sp, $sp, 4 
lw $s6, 0($sp) 
addiu $sp, $sp, 4 
lw $s5, 0($sp) 
addiu $sp, $sp, 4 
lw $s4, 0($sp) 
addiu $sp, $sp, 4 
lw $s3, 0($sp) 
addiu $sp, $sp, 4 
lw $s2, 0($sp) 
addiu $sp, $sp, 4 
lw $s1, 0($sp) 
addiu $sp, $sp, 4 
lw $s0, 0($sp) 
addiu $sp, $sp, 4 
lw $t9, 0($sp) 
addiu $sp, $sp, 4 
lw $t8, 0($sp) 
addiu $sp, $sp, 4 
lw $t7, 0($sp) 
addiu $sp, $sp, 4 
lw $t6, 0($sp) 
addiu $sp, $sp, 4 
lw $t5, 0($sp) 
addiu $sp, $sp, 4 
lw $t4, 0($sp) 
addiu $sp, $sp, 4 
lw $t3, 0($sp) 
addiu $sp, $sp, 4 
lw $t2, 0($sp) 
addiu $sp, $sp, 4 
lw $t1, 0($sp) 
addiu $sp, $sp, 4 
lw $t0, 0($sp) 
addiu $sp, $sp, 4 
lw $a3, 0($sp) 
addiu $sp, $sp, 4 
lw $a2, 0($sp) 
addiu $sp, $sp, 4 
lw $a1, 0($sp) 
addiu $sp, $sp, 4 
lw $a0, 0($sp) 
addiu $sp, $sp, 4 
lw $ra, 0($sp) 
addiu $sp, $sp, 4 
li $v0,10
syscall
