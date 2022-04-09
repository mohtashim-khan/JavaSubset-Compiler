.data
error_msg: .asciiz "MIPS ERROR\n"  
boolean_true: .asciiz "true\n"  
boolean_false: .asciiz "false\n"  
global_1: .word 0 
global_2: .word 0 
function_global_1: .word 0 
function_global_2: .word 0 
L2: .asciiz "the first mod should be 0 and is : \n" 
L3: .asciiz "\n" 
L4: .asciiz "the second mod should be 0 and is: \n" 
L5: .asciiz "\n" 
L6: .asciiz "the Function mod should be 4 and is: \n" 
L7: .asciiz "\n" 
L8: .asciiz "the global mod should be 25 and is: \n" 
L9: .asciiz "\n" 
L10: .asciiz "function_global_1 is: \n" 
L11: .asciiz "\n" 
L12: .asciiz "function_global_2 is: \n" 
L13: .asciiz "\n" 
L14: .asciiz "the Function Global should be 5 and is: \n" 
L15: .asciiz "\n" 
.text
.globl main
main: 
jal L0
li $v0,10
syscall
L18: 
li $v0,12
syscall
jr $ra 
L20: 
li $v0,10
syscall
jr $ra 
L22: 
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
L24: 
li $v0,11
syscall
jr $ra 
L26: 
li $v0,1
syscall
jr $ra 
L28: 
li $v0,4
syscall
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
addiu $t2,$zero,100
move $t0,$t2
addiu $t2,$zero,100
move $t1,$t2
div $t0,$t1
mfhi $t3
move $t2,$t3
la $t3,L2
move $a0, $t3
jal L28
move $a0, $t2
jal L26
la $t3,L3
move $a0, $t3
jal L28
addiu $t4,$zero,50
div $t0,$t4
mfhi $t5
move $t3,$t5
la $t4,L4
move $a0, $t4
jal L28
move $a0, $t3
jal L26
la $t4,L5
move $a0, $t4
jal L28
la $t4,L6
move $a0, $t4
jal L28
addiu $t4,$zero,4
addiu $t5,$zero,5
move $a0, $t4
move $a1, $t5
jal L16
move $a0, $v0
jal L26
la $t4,L7
move $a0, $t4
jal L28
addiu $t4,$zero,75
la $t5,global_1
sw $t4,0($t5) 
move $t5,$t4
addiu $t4,$zero,50
la $t6,global_2
sw $t4,0($t6) 
move $t6,$t4
lw $t8,global_1
lw $t9,global_2
div $t8,$t9
mfhi $t7
move $t4,$t7
la $t7,L8
move $a0, $t7
jal L28
move $a0, $t4
jal L26
la $t7,L9
move $a0, $t7
jal L28
addiu $t7,$zero,30
la $s0,function_global_1
sw $t7,0($s0) 
move $s0,$t7
addiu $t7,$zero,25
la $s1,function_global_2
sw $t7,0($s1) 
move $s1,$t7
la $t7,L10
move $a0, $t7
jal L28
lw $t7,function_global_1
move $a0, $t7
jal L26
la $t7,L11
move $a0, $t7
jal L28
la $t7,L12
move $a0, $t7
jal L28
lw $t7,function_global_2
move $a0, $t7
jal L26
la $t7,L13
move $a0, $t7
jal L28
la $t7,L14
move $a0, $t7
jal L28
lw $t7,function_global_1
lw $s2,function_global_2
move $a0, $t7
move $a1, $s2
jal L16
move $a0, $v0
jal L26
la $t7,L15
move $a0, $t7
jal L28
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
L16: 
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
move $t0,$a0
move $t1,$a1
div $t0,$t1
mfhi $t2
move $v0,$t2
j L17
li $v0,4
la $a0,error_msg
syscall
li $v0,10
syscall
L17: 
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
