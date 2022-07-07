.data
error_msg: .asciiz "Function did not return a value!"  
div_error_msg: .asciiz "division by zero"  
boolean_true: .asciiz "true\n"  
boolean_false: .asciiz "false\n"  
EOF_msg: .asciiz "EOF DETECTED: exiting program\n"  
__input_char_mips__: .space 2 
L2: .byte 10 0
.align 2
 
L3: .byte 10 0
.align 2
 
.text
.globl main
main: 
	 jal L0
li $v0,10
syscall
L5: 
	 li $v0,8
	 la $a0,__input_char_mips__
	 li $a1,2
syscall
lbu $v0, __input_char_mips__
bne $v0, $zero, L4
addu $v0, $v0, -1 
L4: 
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

	 move $t0,$zero
	 move $t1,$zero
	 addu $t2,$zero,0
	 move $t0,$t2
L17: 
	 addu $t2,$zero,10
	 slt $t3,$t0,$t2
	 bne $t3,$zero,L18
	 la $t2,L19
	 jr $t2
L18: 
	 move $a0, $t0
	 la $t2,L13
	 jalr $t2
	 la $t2,L2
	 move $a0, $t2
	 la $t3,L15
	 jalr $t3
	 addu $t2,$zero,100
	 move $t1,$t2
L20: 
	 addu $t2,$zero,110
	 slt $t3,$t1,$t2
	 bne $t3,$zero,L21
	 la $t2,L22
	 jr $t2
L21: 
	 move $a0, $t1
	 la $t2,L13
	 jalr $t2
	 la $t2,L3
	 move $a0, $t2
	 la $t3,L15
	 jalr $t3
	 addu $t2,$zero,105
	 seq $t3,$t1,$t2
	 bne $t3,$zero,L23
	 la $t2,L24
	 jr $t2
L23: 
	 la $t2,L22
	 jr $t2
L24: 
	 addu $t2,$zero,1
	 addu $t3,$t1,$t2
	 move $t1,$t3
	 la $t2,L20
	 jr $t2
L22: 
	 addu $t2,$zero,5
	 seq $t3,$t0,$t2
	 bne $t3,$zero,L25
	 la $t2,L26
	 jr $t2
L25: 
	 la $t2,L19
	 jr $t2
L26: 
	 addu $t2,$zero,1
	 addu $t3,$t0,$t2
	 move $t0,$t3
	 la $t2,L17
	 jr $t2
L19: 
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
