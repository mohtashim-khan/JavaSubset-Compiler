.data
error_msg: .asciiz "MIPS ERROR\n"  
boolean_true: .asciiz "true\n"  
boolean_false: .asciiz "false\n"  
__globalCounter: .word 0 
__globali: .word 0 
L2: .asciiz "\n" 
L3: .asciiz "\n" 
.text
.globl main
main: 
jal L0
li $v0,10
syscall
L4: 
li $v0,12
syscall
jr $ra 
L6: 
li $v0,10
syscall
jr $ra 
L8: 
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
L10: 
li $v0,11
syscall
jr $ra 
L12: 
li $v0,1
syscall
jr $ra 
L14: 
li $v0,4
syscall
jr $ra 
L0: 
addu $sp, $sp, -4 
sw $ra, 0($sp)
addu $sp, $sp, -4 
sw $a0, 0($sp)
addu $sp, $sp, -4 
sw $a1, 0($sp)
addu $sp, $sp, -4 
sw $a2, 0($sp)
addu $sp, $sp, -4 
sw $a3, 0($sp)
addu $sp, $sp, -4 
sw $t0, 0($sp)
addu $sp, $sp, -4 
sw $t1, 0($sp)
addu $sp, $sp, -4 
sw $t2, 0($sp)
addu $sp, $sp, -4 
sw $t3, 0($sp)
addu $sp, $sp, -4 
sw $t4, 0($sp)
addu $sp, $sp, -4 
sw $t5, 0($sp)
addu $sp, $sp, -4 
sw $t6, 0($sp)
addu $sp, $sp, -4 
sw $t7, 0($sp)
addu $sp, $sp, -4 
sw $t8, 0($sp)
addu $sp, $sp, -4 
sw $t9, 0($sp)
addu $sp, $sp, -4 
sw $s0, 0($sp)
addu $sp, $sp, -4 
sw $s1, 0($sp)
addu $sp, $sp, -4 
sw $s2, 0($sp)
addu $sp, $sp, -4 
sw $s3, 0($sp)
addu $sp, $sp, -4 
sw $s4, 0($sp)
addu $sp, $sp, -4 
sw $s5, 0($sp)
addu $sp, $sp, -4 
sw $s6, 0($sp)
addu $sp, $sp, -4 
sw $s7, 0($sp)
addu $t0,$zero,0
la $t1,__globali
sw $t0,0($t1) 
addu $t0,$zero,25
la $t1,__globalCounter
sw $t0,0($t1) 
addu $t2,$zero,50
move $t1,$t2
L16: 
slt $t2,$t0,$t1
bne $t2,$zero,L17
j L18
L17: 
addu $t3,$zero,1
addu $t4,$t0,$t3
move $t0,$t4
j L16
L18: 
move $a0, $t0
jal L12
la $t2,L2
move $a0, $t2
jal L14
L19: 
lw $t3,__globali
lw $t4,__globalCounter
slt $t2,$t3,$t4
bne $t2,$zero,L20
j L21
L20: 
addu $t3,$zero,1
lw $t5,__globali
addu $t4,$t5,$t3
la $t3,__globali
sw $t4,0($t3) 
j L19
L21: 
lw $t2,__globali
move $a0, $t2
jal L12
la $t2,L3
move $a0, $t2
jal L14
L1: 
lw $s7, 0($sp) 
addu $sp, $sp, 4 
lw $s6, 0($sp) 
addu $sp, $sp, 4 
lw $s5, 0($sp) 
addu $sp, $sp, 4 
lw $s4, 0($sp) 
addu $sp, $sp, 4 
lw $s3, 0($sp) 
addu $sp, $sp, 4 
lw $s2, 0($sp) 
addu $sp, $sp, 4 
lw $s1, 0($sp) 
addu $sp, $sp, 4 
lw $s0, 0($sp) 
addu $sp, $sp, 4 
lw $t9, 0($sp) 
addu $sp, $sp, 4 
lw $t8, 0($sp) 
addu $sp, $sp, 4 
lw $t7, 0($sp) 
addu $sp, $sp, 4 
lw $t6, 0($sp) 
addu $sp, $sp, 4 
lw $t5, 0($sp) 
addu $sp, $sp, 4 
lw $t4, 0($sp) 
addu $sp, $sp, 4 
lw $t3, 0($sp) 
addu $sp, $sp, 4 
lw $t2, 0($sp) 
addu $sp, $sp, 4 
lw $t1, 0($sp) 
addu $sp, $sp, 4 
lw $t0, 0($sp) 
addu $sp, $sp, 4 
lw $a3, 0($sp) 
addu $sp, $sp, 4 
lw $a2, 0($sp) 
addu $sp, $sp, 4 
lw $a1, 0($sp) 
addu $sp, $sp, 4 
lw $a0, 0($sp) 
addu $sp, $sp, 4 
lw $ra, 0($sp) 
addu $sp, $sp, 4 
li $v0,10
syscall
