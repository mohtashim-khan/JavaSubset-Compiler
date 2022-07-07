.data
error_msg: .asciiz "Function did not return a value!"  
div_error_msg: .asciiz "division by zero"  
boolean_true: .asciiz "true\n"  
boolean_false: .asciiz "false\n"  
EOF_msg: .asciiz "EOF DETECTED: exiting program\n"  
__input_char_mips__: .space 2 
___havechar: .word 0 
___char: .word 0 
L4: .byte 73 110 116 101 114 110 97 108 32 101 114 114 111 114 58 32 116 111 111 32 109 97 110 121 32 117 110 103 101 116 115 33 10 0
.align 2
 
___havetoken: .word 0 
___token: .word 0 
__attr: .word 0 
L9: .byte 69 114 114 111 114 58 32 101 120 112 101 99 116 101 100 32 0
.align 2
 
L10: .byte 10 0
.align 2
 
L13: .byte 69 114 114 111 114 58 32 105 110 118 97 108 105 100 32 99 104 97 114 97 99 116 101 114 46 10 0
.align 2
 
L20: .byte 32 61 32 0
.align 2
 
L21: .byte 10 0
.align 2
 
L28: .byte 69 114 114 111 114 58 32 101 120 112 101 99 116 101 100 32 102 97 99 116 111 114 46 10 0
.align 2
 
__EOF: .word 0 
__TK_EOF: .word 0 
__TK_EOLN: .word 0 
__TK_NUMBER: .word 0 
__TK_ADD: .word 0 
__TK_SUB: .word 0 
__TK_MUL: .word 0 
__TK_DIV: .word 0 
__TK_LPAREN: .word 0 
__TK_RPAREN: .word 0 
__ASCII_0: .word 0 
__ASCII_9: .word 0 
__ASCII_PLUS: .word 0 
__ASCII_MINUS: .word 0 
__ASCII_STAR: .word 0 
__ASCII_SLASH: .word 0 
__ASCII_LPAREN: .word 0 
__ASCII_RPAREN: .word 0 
__ASCII_SPACE: .word 0 
__ASCII_TAB: .word 0 
__ASCII_CR: .word 0 
__ASCII_NL: .word 0 
.text
.globl main
main: 
	 jal L0
li $v0,10
syscall
L34: 
	 li $v0,8
	 la $a0,__input_char_mips__
	 li $a1,2
syscall
lbu $v0, __input_char_mips__
bne $v0, $zero, L33
addu $v0, $v0, -1 
L33: 
jr $ra 
L36: 
li $v0,10
syscall
jr $ra 
L38: 
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
L40: 
li $v0,11
syscall
jr $ra 
L42: 
li $v0,1
syscall
jr $ra 
L44: 
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

	 la $t0,L31
	 jalr $t0
	 la $t0,L22
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
L2: 
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

	 lw $t0,___havechar
	 bne $t0,$zero,L46
	 la $t1,L47
	 jr $t1
L46: 
	 addu $t0,$zero,0
	 la $t1,___havechar
	 sw $t0,0($t1) 
	 lw $t0,___char
	 move $v0,$t0
	 la $t1,L3
	 jr $t1
L47: 
	 la $t0,L34
	 jalr $t0
	 move $t0,$v0
	 move $v0,$t0
	 la $t1,L3
	 jr $t1
li $v0,4
la $a0,error_msg
syscall
li $v0,10
syscall
L3: 
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

L5: 
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
	 lw $t1,___havechar
	 bne $t1,$zero,L48
	 la $t2,L49
	 jr $t2
L48: 
	 la $t1,L4
	 move $a0, $t1
	 la $t2,L44
	 jalr $t2
	 la $t1,L36
	 jalr $t1
L49: 
	 addu $t1,$zero,1
	 la $t2,___havechar
	 sw $t1,0($t2) 
	 la $t1,___char
	 sw $t0,0($t1) 
L6: 
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

	 lw $t0,___havetoken
	 bne $t0,$zero,L50
	 la $t1,L51
	 jr $t1
L50: 
	 lw $t0,___token
	 move $v0,$t0
	 la $t1,L8
	 jr $t1
L51: 
	 addu $t0,$zero,1
	 la $t1,___havetoken
	 sw $t0,0($t1) 
	 la $t0,L14
	 jalr $t0
	 move $t0,$v0
	 la $t1,___token
	 sw $t0,0($t1) 
	 move $t1,$t0
	 move $v0,$t1
	 la $t0,L8
	 jr $t0
li $v0,4
la $a0,error_msg
syscall
li $v0,10
syscall
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

L11: 
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
	 la $t1,L7
	 jalr $t1
	 move $t1,$v0
	 sne $t2,$t1,$t0
	 bne $t2,$zero,L52
	 la $t1,L53
	 jr $t1
L52: 
	 la $t1,L9
	 move $a0, $t1
	 la $t2,L44
	 jalr $t2
	 move $a0, $t0
	 la $t1,L40
	 jalr $t1
	 la $t1,L10
	 move $a0, $t1
	 la $t2,L44
	 jalr $t2
	 la $t1,L36
	 jalr $t1
L53: 
	 addu $t1,$zero,0
	 la $t2,___havetoken
	 sw $t1,0($t2) 
L12: 
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

L14: 
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
L54: 
	 la $t1,L2
	 jalr $t1
	 move $t1,$v0
	 move $t0,$t1
	 move $t2,$t0
	 move $a0, $t2
	 la $t1,L18
	 jalr $t1
	 move $t1,$v0
	 bne $t1,$zero,L55
	 la $t2,L56
	 jr $t2
L55: 
	 la $t1,L54
	 jr $t1
L56: 
	 lw $t2,__EOF
	 seq $t1,$t0,$t2
	 bne $t1,$zero,L57
	 la $t2,L58
	 jr $t2
L57: 
	 lw $t1,__TK_EOF
	 move $v0,$t1
	 la $t2,L15
	 jr $t2
L58: 
	 lw $t2,__ASCII_NL
	 seq $t1,$t0,$t2
	 bne $t1,$zero,L59
	 la $t2,L60
	 jr $t2
L59: 
	 lw $t1,__TK_EOLN
	 move $v0,$t1
	 la $t2,L15
	 jr $t2
L60: 
	 lw $t2,__ASCII_PLUS
	 seq $t1,$t0,$t2
	 bne $t1,$zero,L61
	 la $t2,L62
	 jr $t2
L61: 
	 lw $t1,__TK_ADD
	 move $v0,$t1
	 la $t2,L15
	 jr $t2
L62: 
	 lw $t2,__ASCII_MINUS
	 seq $t1,$t0,$t2
	 bne $t1,$zero,L63
	 la $t2,L64
	 jr $t2
L63: 
	 lw $t1,__TK_SUB
	 move $v0,$t1
	 la $t2,L15
	 jr $t2
L64: 
	 lw $t2,__ASCII_STAR
	 seq $t1,$t0,$t2
	 bne $t1,$zero,L65
	 la $t2,L66
	 jr $t2
L65: 
	 lw $t1,__TK_MUL
	 move $v0,$t1
	 la $t2,L15
	 jr $t2
L66: 
	 lw $t2,__ASCII_SLASH
	 seq $t1,$t0,$t2
	 bne $t1,$zero,L67
	 la $t2,L68
	 jr $t2
L67: 
	 lw $t1,__TK_DIV
	 move $v0,$t1
	 la $t2,L15
	 jr $t2
L68: 
	 lw $t2,__ASCII_LPAREN
	 seq $t1,$t0,$t2
	 bne $t1,$zero,L69
	 la $t2,L70
	 jr $t2
L69: 
	 lw $t1,__TK_LPAREN
	 move $v0,$t1
	 la $t2,L15
	 jr $t2
L70: 
	 lw $t2,__ASCII_RPAREN
	 seq $t1,$t0,$t2
	 bne $t1,$zero,L71
	 la $t2,L72
	 jr $t2
L71: 
	 lw $t1,__TK_RPAREN
	 move $v0,$t1
	 la $t2,L15
	 jr $t2
L72: 
	 move $a0, $t0
	 la $t1,L16
	 jalr $t1
	 move $t1,$v0
	 bne $t1,$zero,L73
	 la $t2,L74
	 jr $t2
L73: 
	 addu $t1,$zero,0
	 la $t2,__attr
	 sw $t1,0($t2) 
L75: 
	 move $a0, $t0
	 la $t1,L16
	 jalr $t1
	 move $t1,$v0
	 bne $t1,$zero,L76
	 la $t2,L77
	 jr $t2
L76: 
	 addu $t1,$zero,10
	 lw $t3,__attr
	 mul $t2,$t3,$t1
	 lw $t3,__ASCII_0
	 subu $t1,$t0,$t3
	 addu $t3,$t2,$t1
	 la $t1,__attr
	 sw $t3,0($t1) 
	 la $t1,L2
	 jalr $t1
	 move $t1,$v0
	 move $t0,$t1
	 la $t1,L75
	 jr $t1
L77: 
	 move $a0, $t0
	 la $t1,L5
	 jalr $t1
	 lw $t1,__TK_NUMBER
	 move $v0,$t1
	 la $t2,L15
	 jr $t2
L74: 
	 la $t1,L13
	 move $a0, $t1
	 la $t2,L44
	 jalr $t2
	 la $t1,L36
	 jalr $t1
li $v0,4
la $a0,error_msg
syscall
li $v0,10
syscall
L15: 
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

L16: 
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
	 move $t1,$zero
	 lw $t3,__ASCII_0
	 sge $t2,$t0,$t3
	 bne $t2,$zero,L81
	 la $t2,L78
	 jr $t2
L81: 
	 lw $t3,__ASCII_9
	 sle $t2,$t0,$t3
	 bne $t2,$zero,L79
L78: 
	 addu $t1,0
	 la $t3,L80
	 jr $t3
L79: 
	 addu $t1,1
L80: 
	 move $v0,$t1
	 la $t2,L17
	 jr $t2
li $v0,4
la $a0,error_msg
syscall
li $v0,10
syscall
L17: 
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

L18: 
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
	 move $t1,$zero
	 move $t2,$zero
	 lw $t4,__ASCII_SPACE
	 seq $t3,$t0,$t4
	 beq $t3,$zero,L89
	 la $t3,L87
	 jr $t3
L89: 
	 lw $t4,__ASCII_TAB
	 seq $t3,$t0,$t4
	 beq $t3,$zero,L86
L87: 
	 addu $t2,1
	 la $t4,L88
	 jr $t4
L86: 
	 addu $t2,0
L88: 
	 beq $t2,$zero,L85
	 la $t2,L83
	 jr $t2
L85: 
	 lw $t3,__ASCII_CR
	 seq $t2,$t0,$t3
	 beq $t2,$zero,L82
L83: 
	 addu $t1,1
	 la $t3,L84
	 jr $t3
L82: 
	 addu $t1,0
L84: 
	 move $v0,$t1
	 la $t2,L19
	 jr $t2
li $v0,4
la $a0,error_msg
syscall
li $v0,10
syscall
L19: 
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

L22: 
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
L90: 
	 la $t1,L7
	 jalr $t1
	 move $t1,$v0
	 lw $t3,__TK_EOF
	 sne $t2,$t1,$t3
	 bne $t2,$zero,L91
	 la $t1,L92
	 jr $t1
L91: 
	 la $t1,L24
	 jalr $t1
	 move $t1,$v0
	 move $t0,$t1
	 lw $t1,__TK_EOLN
	 move $a0, $t1
	 la $t2,L11
	 jalr $t2
	 la $t1,L20
	 move $a0, $t1
	 la $t2,L44
	 jalr $t2
	 move $a0, $t0
	 la $t1,L42
	 jalr $t1
	 la $t1,L21
	 move $a0, $t1
	 la $t2,L44
	 jalr $t2
	 la $t1,L90
	 jr $t1
L92: 
L23: 
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

L24: 
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
	 la $t3,L26
	 jalr $t3
	 move $t3,$v0
	 move $t0,$t3
L93: 
	 move $t3,$zero
	 la $t4,L7
	 jalr $t4
	 move $t4,$v0
	 lw $t6,__TK_ADD
	 seq $t5,$t4,$t6
	 beq $t5,$zero,L99
	 la $t4,L97
	 jr $t4
L99: 
	 la $t4,L7
	 jalr $t4
	 move $t4,$v0
	 lw $t6,__TK_SUB
	 seq $t5,$t4,$t6
	 beq $t5,$zero,L96
L97: 
	 addu $t3,1
	 la $t4,L98
	 jr $t4
L96: 
	 addu $t3,0
L98: 
	 bne $t3,$zero,L94
	 la $t4,L95
	 jr $t4
L94: 
	 la $t3,L7
	 jalr $t3
	 move $t3,$v0
	 move $t2,$t3
	 move $t4,$t2
	 move $a0, $t4
	 la $t3,L11
	 jalr $t3
	 la $t3,L26
	 jalr $t3
	 move $t3,$v0
	 move $t1,$t3
	 lw $t4,__TK_ADD
	 seq $t3,$t2,$t4
	 bne $t3,$zero,L100
	 la $t4,L101
	 jr $t4
L100: 
	 addu $t3,$t0,$t1
	 move $t0,$t3
	 move $t4,$t0
	 la $t3,L102
	 jr $t3
L101: 
	 subu $t3,$t0,$t1
	 move $t0,$t3
	 move $t5,$t0
L102: 
	 la $t3,L93
	 jr $t3
L95: 
	 move $v0,$t0
	 la $t3,L25
	 jr $t3
li $v0,4
la $a0,error_msg
syscall
li $v0,10
syscall
L25: 
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

L26: 
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
	 la $t3,L29
	 jalr $t3
	 move $t3,$v0
	 move $t0,$t3
L103: 
	 move $t3,$zero
	 la $t4,L7
	 jalr $t4
	 move $t4,$v0
	 lw $t6,__TK_MUL
	 seq $t5,$t4,$t6
	 beq $t5,$zero,L109
	 la $t4,L107
	 jr $t4
L109: 
	 la $t4,L7
	 jalr $t4
	 move $t4,$v0
	 lw $t6,__TK_DIV
	 seq $t5,$t4,$t6
	 beq $t5,$zero,L106
L107: 
	 addu $t3,1
	 la $t4,L108
	 jr $t4
L106: 
	 addu $t3,0
L108: 
	 bne $t3,$zero,L104
	 la $t4,L105
	 jr $t4
L104: 
	 la $t3,L7
	 jalr $t3
	 move $t3,$v0
	 move $t2,$t3
	 move $t4,$t2
	 move $a0, $t4
	 la $t3,L11
	 jalr $t3
	 la $t3,L29
	 jalr $t3
	 move $t3,$v0
	 move $t1,$t3
	 lw $t4,__TK_MUL
	 seq $t3,$t2,$t4
	 bne $t3,$zero,L110
	 la $t4,L111
	 jr $t4
L110: 
	 mul $t3,$t0,$t1
	 move $t0,$t3
	 move $t4,$t0
	 la $t3,L112
	 jr $t3
L111: 
	 bne $t1,$zero,L113
li $v0,4
la $a0,div_error_msg
syscall
li $v0,10
syscall
L113: 
	 div $t0,$t1
	 mflo $t3
	 move $t0,$t3
	 move $t5,$t0
L112: 
	 la $t3,L103
	 jr $t3
L105: 
	 move $v0,$t0
	 la $t3,L27
	 jr $t3
li $v0,4
la $a0,error_msg
syscall
li $v0,10
syscall
L27: 
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

L29: 
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
	 la $t2,L7
	 jalr $t2
	 move $t2,$v0
	 move $t1,$t2
	 lw $t3,__TK_LPAREN
	 seq $t2,$t1,$t3
	 bne $t2,$zero,L114
	 la $t3,L115
	 jr $t3
L114: 
	 lw $t2,__TK_LPAREN
	 move $a0, $t2
	 la $t3,L11
	 jalr $t3
	 la $t2,L24
	 jalr $t2
	 move $t2,$v0
	 move $t0,$t2
	 lw $t2,__TK_RPAREN
	 move $a0, $t2
	 la $t3,L11
	 jalr $t3
	 la $t2,L116
	 jr $t2
L115: 
	 lw $t3,__TK_SUB
	 seq $t2,$t1,$t3
	 bne $t2,$zero,L117
	 la $t3,L118
	 jr $t3
L117: 
	 lw $t2,__TK_SUB
	 move $a0, $t2
	 la $t3,L11
	 jalr $t3
	 la $t2,L29
	 jalr $t2
	 move $t2,$v0
	 negu $t3,$t2
	 move $t0,$t3
	 la $t2,L119
	 jr $t2
L118: 
	 lw $t3,__TK_NUMBER
	 seq $t2,$t1,$t3
	 bne $t2,$zero,L120
	 la $t3,L121
	 jr $t3
L120: 
	 lw $t2,__TK_NUMBER
	 move $a0, $t2
	 la $t3,L11
	 jalr $t3
	 lw $t2,__attr
	 move $t0,$t2
	 la $t2,L122
	 jr $t2
L121: 
	 la $t2,L28
	 move $a0, $t2
	 la $t3,L44
	 jalr $t3
	 la $t2,L36
	 jalr $t2
L122: 
L119: 
L116: 
	 move $v0,$t0
	 la $t2,L30
	 jr $t2
li $v0,4
la $a0,error_msg
syscall
li $v0,10
syscall
L30: 
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

L31: 
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

	 addu $t0,$zero,1
	 negu $t1,$t0
	 la $t0,__EOF
	 sw $t1,0($t0) 
	 addu $t0,$zero,48
	 la $t1,__ASCII_0
	 sw $t0,0($t1) 
	 addu $t0,$zero,57
	 la $t1,__ASCII_9
	 sw $t0,0($t1) 
	 addu $t0,$zero,43
	 la $t1,__ASCII_PLUS
	 sw $t0,0($t1) 
	 addu $t0,$zero,45
	 la $t1,__ASCII_MINUS
	 sw $t0,0($t1) 
	 addu $t0,$zero,42
	 la $t1,__ASCII_STAR
	 sw $t0,0($t1) 
	 addu $t0,$zero,47
	 la $t1,__ASCII_SLASH
	 sw $t0,0($t1) 
	 addu $t0,$zero,40
	 la $t1,__ASCII_LPAREN
	 sw $t0,0($t1) 
	 addu $t0,$zero,41
	 la $t1,__ASCII_RPAREN
	 sw $t0,0($t1) 
	 addu $t0,$zero,32
	 la $t1,__ASCII_SPACE
	 sw $t0,0($t1) 
	 addu $t0,$zero,9
	 la $t1,__ASCII_TAB
	 sw $t0,0($t1) 
	 addu $t0,$zero,13
	 la $t1,__ASCII_CR
	 sw $t0,0($t1) 
	 addu $t0,$zero,10
	 la $t1,__ASCII_NL
	 sw $t0,0($t1) 
	 addu $t0,$zero,256
	 la $t1,__TK_EOF
	 sw $t0,0($t1) 
	 addu $t0,$zero,257
	 la $t1,__TK_NUMBER
	 sw $t0,0($t1) 
	 lw $t0,__ASCII_PLUS
	 la $t1,__TK_ADD
	 sw $t0,0($t1) 
	 lw $t0,__ASCII_MINUS
	 la $t1,__TK_SUB
	 sw $t0,0($t1) 
	 lw $t0,__ASCII_STAR
	 la $t1,__TK_MUL
	 sw $t0,0($t1) 
	 lw $t0,__ASCII_SLASH
	 la $t1,__TK_DIV
	 sw $t0,0($t1) 
	 lw $t0,__ASCII_LPAREN
	 la $t1,__TK_LPAREN
	 sw $t0,0($t1) 
	 lw $t0,__ASCII_RPAREN
	 la $t1,__TK_RPAREN
	 sw $t0,0($t1) 
	 lw $t0,__ASCII_NL
	 la $t1,__TK_EOLN
	 sw $t0,0($t1) 
L32: 
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

