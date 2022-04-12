.data
error_msg: .asciiz "Function did not return a value!"  
div_error_msg: .asciiz "division by zero"  
boolean_true: .asciiz "true\n"  
boolean_false: .asciiz "false\n"  
EOF_msg: .asciiz "EOF DETECTED: exiting program\n"  
__input_char_mips__: .space 2 
L2: .byte 102 105 98 40 48 41 32 61 32 48 10 0
.align 2
 
L3: .byte 102 105 98 40 49 41 32 61 32 49 10 0
.align 2
 
L4: .byte 102 105 98 40 0
.align 2
 
L5: .byte 41 32 61 32 0
.align 2
 
L6: .byte 10 0
.align 2
 
.text
.globl main
main: 
	 jal L0
li $v0,10
syscall
L8: 
	 li $v0,8
	 la $a0,__input_char_mips__
	 li $a1,2
syscall
lbu $v0, __input_char_mips__
bne $v0, $zero, L7
addu $v0, $v0, -1 
L7: 
jr $ra 
L10: 
li $v0,10
syscall
jr $ra 
L12: 
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
L14: 
li $v0,11
syscall
jr $ra 
L16: 
li $v0,1
syscall
jr $ra 
L18: 
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
	 move $t2,$zero
	 move $t3,$zero
	 addu $t4,$zero,2
	 move $t0,$t4
	 addu $t4,$zero,1
	 move $t2,$t4
	 addu $t4,$zero,0
	 move $t3,$t4
	 la $t4,L2
	 move $a0, $t4
	 la $t5,L18
	 jalr $t5
	 la $t4,L3
	 move $a0, $t4
	 la $t5,L18
	 jalr $t5
L20: 
	 addu $t4,$zero,47
	 slt $t5,$t0,$t4
	 bne $t5,$zero,L21
	 la $t4,L22
	 jr $t4
L21: 
	 la $t4,L4
	 move $a0, $t4
	 la $t5,L18
	 jalr $t5
	 move $a0, $t0
	 la $t4,L16
	 jalr $t4
	 la $t4,L5
	 move $a0, $t4
	 la $t5,L18
	 jalr $t5
	 addu $t4,$t2,$t3
	 move $t1,$t4
	 move $a0, $t1
	 la $t4,L16
	 jalr $t4
	 move $t3,$t2
	 move $t2,$t1
	 la $t4,L6
	 move $a0, $t4
	 la $t5,L18
	 jalr $t5
	 addu $t4,$zero,1
	 addu $t5,$t0,$t4
	 move $t0,$t5
	 la $t4,L20
	 jr $t4
L22: 
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
