.data
error_msg: .asciiz "Function did not return a value!"  
div_error_msg: .asciiz "division by zero"  
boolean_true: .asciiz "true\n"  
boolean_false: .asciiz "false\n"  
EOF_msg: .asciiz "EOF DETECTED: exiting program\n"  
__input_char_mips__: .space 2 
__i1: .word 0 
__b1: .word 0 
L2: .byte 10 40 105 116 39 115 32 111 107 32 105 102 32 116 104 101 32 102 111 108 108 111 119 105 110 103 32 97 114 101 110 39 116 32 48 47 102 97 108 115 101 41 10 0
.align 2
 
L3: .byte 9 108 111 99 97 108 32 105 110 116 32 100 101 102 97 117 108 116 32 118 97 108 117 101 58 32 0
.align 2
 
L4: .byte 10 0
.align 2
 
L5: .byte 9 108 111 99 97 108 32 98 111 111 108 101 97 110 32 100 101 102 97 117 108 116 32 118 97 108 117 101 58 32 0
.align 2
 
L6: .byte 10 0
.align 2
 
L9: .byte 103 108 111 98 97 108 32 105 110 116 32 100 101 102 97 117 108 116 32 118 97 108 117 101 58 32 0
.align 2
 
L10: .byte 10 0
.align 2
 
L11: .byte 103 108 111 98 97 108 32 98 111 111 108 101 97 110 32 100 101 102 97 117 108 116 32 118 97 108 117 101 58 32 0
.align 2
 
L12: .byte 10 0
.align 2
 
.text
.globl main
main: 
	 jal L0
li $v0,10
syscall
L14: 
	 li $v0,8
	 la $a0,__input_char_mips__
	 li $a1,2
syscall
lbu $v0, __input_char_mips__
bne $v0, $zero, L13
addu $v0, $v0, -1 
L13: 
jr $ra 
L16: 
li $v0,10
syscall
jr $ra 
L18: 
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
L20: 
li $v0,11
syscall
jr $ra 
L22: 
li $v0,1
syscall
jr $ra 
L24: 
li $v0,4
syscall
jr $ra 
L7: 
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
	 la $t2,L2
	 move $a0, $t2
	 la $t3,L24
	 jalr $t3
	 la $t2,L3
	 move $a0, $t2
	 la $t3,L24
	 jalr $t3
	 move $a0, $t0
	 la $t2,L22
	 jalr $t2
	 la $t2,L4
	 move $a0, $t2
	 la $t3,L24
	 jalr $t3
	 la $t2,L5
	 move $a0, $t2
	 la $t3,L24
	 jalr $t3
	 move $a0, $t1
	 la $t2,L18
	 jalr $t2
	 move $t2,$v0
	 la $t3,L6
	 move $a0, $t3
	 la $t4,L24
	 jalr $t4
	 addu $t3,$zero,123
	 move $t0,$t3
	 addu $t3,$zero,1
	 move $t1,$t3
L8: 
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

	 la $t0,L9
	 move $a0, $t0
	 la $t1,L24
	 jalr $t1
	 lw $t0,__i1
	 move $a0, $t0
	 la $t1,L22
	 jalr $t1
	 la $t0,L10
	 move $a0, $t0
	 la $t1,L24
	 jalr $t1
	 la $t0,L11
	 move $a0, $t0
	 la $t1,L24
	 jalr $t1
	 lw $t0,__b1
	 move $a0, $t0
	 la $t1,L18
	 jalr $t1
	 move $t1,$v0
	 la $t0,L12
	 move $a0, $t0
	 la $t2,L24
	 jalr $t2
	 la $t0,L7
	 jalr $t0
	 la $t0,L7
	 jalr $t0
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
