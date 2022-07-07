.data
error_msg: .asciiz "Function did not return a value!"  
div_error_msg: .asciiz "division by zero"  
boolean_true: .asciiz "true\n"  
boolean_false: .asciiz "false\n"  
EOF_msg: .asciiz "EOF DETECTED: exiting program\n"  
__input_char_mips__: .space 2 
__a: .word 0 
__b: .word 0 
__c: .word 0 
L2: .byte 101 118 97 108 117 97 116 101 100 32 65 10 0
.align 2
 
L5: .byte 101 118 97 108 117 97 116 101 100 32 66 10 0
.align 2
 
L8: .byte 101 118 97 108 117 97 116 101 100 32 67 10 0
.align 2
 
L11: .byte 105 102 32 40 40 65 32 38 38 32 66 41 32 124 124 32 67 41 32 123 46 46 46 125 32 101 108 115 101 32 123 46 46 46 125 44 32 119 105 116 104 32 65 61 0
.align 2
 
L12: .byte 32 66 61 0
.align 2
 
L13: .byte 32 67 61 0
.align 2
 
L14: .byte 10 0
.align 2
 
L15: .byte 105 102 45 112 97 114 116 32 101 120 101 99 117 116 101 100 10 0
.align 2
 
L16: .byte 101 108 115 101 45 112 97 114 116 32 101 120 101 99 117 116 101 100 10 0
.align 2
 
L19: .byte 120 32 61 32 40 65 32 38 38 32 33 66 41 32 124 124 32 67 44 32 119 105 116 104 32 65 61 0
.align 2
 
L20: .byte 32 66 61 0
.align 2
 
L21: .byte 32 67 61 0
.align 2
 
L22: .byte 10 0
.align 2
 
L23: .byte 120 61 0
.align 2
 
L24: .byte 10 0
.align 2
 
L27: .byte 10 0
.align 2
 
L28: .byte 10 0
.align 2
 
L29: .byte 10 0
.align 2
 
L30: .byte 10 0
.align 2
 
L31: .byte 10 0
.align 2
 
L32: .byte 10 0
.align 2
 
L33: .byte 10 0
.align 2
 
L34: .byte 10 0
.align 2
 
L35: .byte 10 0
.align 2
 
L36: .byte 10 0
.align 2
 
L37: .byte 10 0
.align 2
 
L38: .byte 10 0
.align 2
 
L39: .byte 10 0
.align 2
 
L40: .byte 10 0
.align 2
 
L41: .byte 10 0
.align 2
 
.text
.globl main
main: 
	 jal L0
li $v0,10
syscall
L43: 
	 li $v0,8
	 la $a0,__input_char_mips__
	 li $a1,2
syscall
lbu $v0, __input_char_mips__
bne $v0, $zero, L42
addu $v0, $v0, -1 
L42: 
jr $ra 
L45: 
li $v0,10
syscall
jr $ra 
L47: 
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
L49: 
li $v0,11
syscall
jr $ra 
L51: 
li $v0,1
syscall
jr $ra 
L53: 
li $v0,4
syscall
jr $ra 
L3: 
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

	 la $t0,L2
	 move $a0, $t0
	 la $t1,L53
	 jalr $t1
	 lw $t0,__a
	 move $v0,$t0
	 la $t1,L4
	 jr $t1
li $v0,4
la $a0,error_msg
syscall
li $v0,10
syscall
L4: 
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

L6: 
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

	 la $t0,L5
	 move $a0, $t0
	 la $t1,L53
	 jalr $t1
	 lw $t0,__b
	 move $v0,$t0
	 la $t1,L7
	 jr $t1
li $v0,4
la $a0,error_msg
syscall
li $v0,10
syscall
L7: 
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

L9: 
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

	 la $t0,L8
	 move $a0, $t0
	 la $t1,L53
	 jalr $t1
	 lw $t0,__c
	 move $v0,$t0
	 la $t1,L10
	 jr $t1
li $v0,4
la $a0,error_msg
syscall
li $v0,10
syscall
L10: 
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

L17: 
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

	 move $t0,$a0
	 move $t1,$a1
	 move $t2,$a2
	 la $t3,__a
	 sw $t0,0($t3) 
	 la $t3,__b
	 sw $t1,0($t3) 
	 la $t3,__c
	 sw $t2,0($t3) 
	 la $t3,L11
	 move $a0, $t3
	 la $t4,L53
	 jalr $t4
	 lw $t3,__a
	 move $a0, $t3
	 la $t4,L47
	 jalr $t4
	 move $t4,$v0
	 la $t3,L12
	 move $a0, $t3
	 la $t5,L53
	 jalr $t5
	 lw $t3,__b
	 move $a0, $t3
	 la $t5,L47
	 jalr $t5
	 move $t5,$v0
	 la $t3,L13
	 move $a0, $t3
	 la $t6,L53
	 jalr $t6
	 lw $t3,__c
	 move $a0, $t3
	 la $t6,L47
	 jalr $t6
	 move $t6,$v0
	 la $t3,L14
	 move $a0, $t3
	 la $t7,L53
	 jalr $t7
	 move $t3,$zero
	 move $t7,$zero
	 la $t8,L3
	 jalr $t8
	 move $t8,$v0
	 bne $t8,$zero,L65
	 la $t8,L62
	 jr $t8
L65: 
	 la $t8,L6
	 jalr $t8
	 move $t8,$v0
	 bne $t8,$zero,L63
L62: 
	 addu $t7,0
	 la $t9,L64
	 jr $t9
L63: 
	 addu $t7,1
L64: 
	 beq $t7,$zero,L61
	 la $t7,L59
	 jr $t7
L61: 
	 la $t7,L9
	 jalr $t7
	 move $t7,$v0
	 beq $t7,$zero,L58
L59: 
	 addu $t3,1
	 la $t8,L60
	 jr $t8
L58: 
	 addu $t3,0
L60: 
	 bne $t3,$zero,L55
	 la $t7,L56
	 jr $t7
L55: 
	 la $t3,L15
	 move $a0, $t3
	 la $t7,L53
	 jalr $t7
	 la $t3,L57
	 jr $t3
L56: 
	 la $t3,L16
	 move $a0, $t3
	 la $t7,L53
	 jalr $t7
L57: 
L18: 
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

L25: 
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

	 move $t0,$a0
	 move $t1,$a1
	 move $t2,$a2
	 la $t3,__a
	 sw $t0,0($t3) 
	 la $t3,__b
	 sw $t1,0($t3) 
	 la $t3,__c
	 sw $t2,0($t3) 
	 la $t3,L19
	 move $a0, $t3
	 la $t4,L53
	 jalr $t4
	 lw $t3,__a
	 move $a0, $t3
	 la $t4,L47
	 jalr $t4
	 move $t4,$v0
	 la $t3,L20
	 move $a0, $t3
	 la $t5,L53
	 jalr $t5
	 lw $t3,__b
	 move $a0, $t3
	 la $t5,L47
	 jalr $t5
	 move $t5,$v0
	 la $t3,L21
	 move $a0, $t3
	 la $t6,L53
	 jalr $t6
	 lw $t3,__c
	 move $a0, $t3
	 la $t6,L47
	 jalr $t6
	 move $t6,$v0
	 la $t3,L22
	 move $a0, $t3
	 la $t7,L53
	 jalr $t7
	 move $t3,$zero
	 move $t7,$zero
	 move $t8,$zero
	 la $t9,L3
	 jalr $t9
	 move $t9,$v0
	 bne $t9,$zero,L73
	 la $t9,L70
	 jr $t9
L73: 
	 la $t9,L6
	 jalr $t9
	 move $t9,$v0
	 not $s0,$t9
	 addu $s1,31
	 sll $s0,$s0,$s1
	 srl $s0,$s0,$s1
	 bne $s0,$zero,L71
L70: 
	 addu $t8,0
	 la $t9,L72
	 jr $t9
L71: 
	 addu $t8,1
L72: 
	 beq $t8,$zero,L69
	 la $t8,L67
	 jr $t8
L69: 
	 la $t8,L9
	 jalr $t8
	 move $t8,$v0
	 beq $t8,$zero,L66
L67: 
	 addu $t7,1
	 la $t9,L68
	 jr $t9
L66: 
	 addu $t7,0
L68: 
	 move $t3,$t7
	 la $t7,L23
	 move $a0, $t7
	 la $t8,L53
	 jalr $t8
	 move $a0, $t3
	 la $t7,L47
	 jalr $t7
	 move $t7,$v0
	 la $t8,L24
	 move $a0, $t8
	 la $t9,L53
	 jalr $t9
L26: 
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

	 addu $t0,$zero,0
	 addu $t1,$zero,0
	 addu $t2,$zero,0
	 move $a0, $t0
	 move $a1, $t1
	 move $a2, $t2
	 la $t0,L17
	 jalr $t0
	 la $t0,L27
	 move $a0, $t0
	 la $t1,L53
	 jalr $t1
	 addu $t0,$zero,0
	 addu $t1,$zero,0
	 addu $t2,$zero,1
	 move $a0, $t0
	 move $a1, $t1
	 move $a2, $t2
	 la $t0,L17
	 jalr $t0
	 la $t0,L28
	 move $a0, $t0
	 la $t1,L53
	 jalr $t1
	 addu $t0,$zero,0
	 addu $t1,$zero,1
	 addu $t2,$zero,0
	 move $a0, $t0
	 move $a1, $t1
	 move $a2, $t2
	 la $t0,L17
	 jalr $t0
	 la $t0,L29
	 move $a0, $t0
	 la $t1,L53
	 jalr $t1
	 addu $t0,$zero,0
	 addu $t1,$zero,1
	 addu $t2,$zero,1
	 move $a0, $t0
	 move $a1, $t1
	 move $a2, $t2
	 la $t0,L17
	 jalr $t0
	 la $t0,L30
	 move $a0, $t0
	 la $t1,L53
	 jalr $t1
	 addu $t0,$zero,1
	 addu $t1,$zero,0
	 addu $t2,$zero,0
	 move $a0, $t0
	 move $a1, $t1
	 move $a2, $t2
	 la $t0,L17
	 jalr $t0
	 la $t0,L31
	 move $a0, $t0
	 la $t1,L53
	 jalr $t1
	 addu $t0,$zero,1
	 addu $t1,$zero,0
	 addu $t2,$zero,1
	 move $a0, $t0
	 move $a1, $t1
	 move $a2, $t2
	 la $t0,L17
	 jalr $t0
	 la $t0,L32
	 move $a0, $t0
	 la $t1,L53
	 jalr $t1
	 addu $t0,$zero,1
	 addu $t1,$zero,1
	 addu $t2,$zero,0
	 move $a0, $t0
	 move $a1, $t1
	 move $a2, $t2
	 la $t0,L17
	 jalr $t0
	 la $t0,L33
	 move $a0, $t0
	 la $t1,L53
	 jalr $t1
	 addu $t0,$zero,1
	 addu $t1,$zero,1
	 addu $t2,$zero,1
	 move $a0, $t0
	 move $a1, $t1
	 move $a2, $t2
	 la $t0,L17
	 jalr $t0
	 la $t0,L34
	 move $a0, $t0
	 la $t1,L53
	 jalr $t1
	 addu $t0,$zero,0
	 addu $t1,$zero,0
	 addu $t2,$zero,0
	 move $a0, $t0
	 move $a1, $t1
	 move $a2, $t2
	 la $t0,L25
	 jalr $t0
	 la $t0,L35
	 move $a0, $t0
	 la $t1,L53
	 jalr $t1
	 addu $t0,$zero,0
	 addu $t1,$zero,0
	 addu $t2,$zero,1
	 move $a0, $t0
	 move $a1, $t1
	 move $a2, $t2
	 la $t0,L25
	 jalr $t0
	 la $t0,L36
	 move $a0, $t0
	 la $t1,L53
	 jalr $t1
	 addu $t0,$zero,0
	 addu $t1,$zero,1
	 addu $t2,$zero,0
	 move $a0, $t0
	 move $a1, $t1
	 move $a2, $t2
	 la $t0,L25
	 jalr $t0
	 la $t0,L37
	 move $a0, $t0
	 la $t1,L53
	 jalr $t1
	 addu $t0,$zero,0
	 addu $t1,$zero,1
	 addu $t2,$zero,1
	 move $a0, $t0
	 move $a1, $t1
	 move $a2, $t2
	 la $t0,L25
	 jalr $t0
	 la $t0,L38
	 move $a0, $t0
	 la $t1,L53
	 jalr $t1
	 addu $t0,$zero,1
	 addu $t1,$zero,0
	 addu $t2,$zero,0
	 move $a0, $t0
	 move $a1, $t1
	 move $a2, $t2
	 la $t0,L25
	 jalr $t0
	 la $t0,L39
	 move $a0, $t0
	 la $t1,L53
	 jalr $t1
	 addu $t0,$zero,1
	 addu $t1,$zero,0
	 addu $t2,$zero,1
	 move $a0, $t0
	 move $a1, $t1
	 move $a2, $t2
	 la $t0,L25
	 jalr $t0
	 la $t0,L40
	 move $a0, $t0
	 la $t1,L53
	 jalr $t1
	 addu $t0,$zero,1
	 addu $t1,$zero,1
	 addu $t2,$zero,0
	 move $a0, $t0
	 move $a1, $t1
	 move $a2, $t2
	 la $t0,L25
	 jalr $t0
	 la $t0,L41
	 move $a0, $t0
	 la $t1,L53
	 jalr $t1
	 addu $t0,$zero,1
	 addu $t1,$zero,1
	 addu $t2,$zero,1
	 move $a0, $t0
	 move $a1, $t1
	 move $a2, $t2
	 la $t0,L25
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
