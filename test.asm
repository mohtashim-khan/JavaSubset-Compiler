.data
error_msg: .asciiz "Function did not return a value!"  
div_error_msg: .asciiz "division by zero"  
boolean_true: .asciiz "true\n"  
boolean_false: .asciiz "false\n"  
__a: .word 0 
__b: .word 0 
__c: .word 0 
L2: .asciiz "evaluated A\n" 
L5: .asciiz "evaluated B\n" 
L8: .asciiz "evaluated C\n" 
L11: .asciiz "if ((A && B) || C) {...} else {...}, with A=" 
L12: .asciiz " B=" 
L13: .asciiz " C=" 
L14: .asciiz "\n" 
L15: .asciiz "if-part executed\n" 
L16: .asciiz "else-part executed\n" 
L19: .asciiz "x = (A && !B) || C, with A=" 
L20: .asciiz " B=" 
L21: .asciiz " C=" 
L22: .asciiz "\n" 
L23: .asciiz "x=" 
L24: .asciiz "\n" 
L27: .asciiz "\n" 
L28: .asciiz "\n" 
L29: .asciiz "\n" 
L30: .asciiz "\n" 
L31: .asciiz "\n" 
L32: .asciiz "\n" 
L33: .asciiz "\n" 
L34: .asciiz "\n" 
L35: .asciiz "\n" 
L36: .asciiz "\n" 
L37: .asciiz "\n" 
L38: .asciiz "\n" 
L39: .asciiz "\n" 
L40: .asciiz "\n" 
L41: .asciiz "\n" 
.text
.globl main
main: 
	 jal L0
li $v0,10
syscall
L42: 
li $v0,12
syscall
jr $ra 
L44: 
li $v0,10
syscall
jr $ra 
L46: 
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
L48: 
li $v0,11
syscall
jr $ra 
L50: 
li $v0,1
syscall
jr $ra 
L52: 
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
	 la $t1,L52
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
	 la $t1,L52
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
	 la $t1,L52
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
	 la $t4,L52
	 jalr $t4
	 lw $t3,__a
	 move $a0, $t3
	 la $t4,L46
	 jalr $t4
	 move $t4,$v0
	 la $t3,L12
	 move $a0, $t3
	 la $t5,L52
	 jalr $t5
	 lw $t3,__b
	 move $a0, $t3
	 la $t5,L46
	 jalr $t5
	 move $t5,$v0
	 la $t3,L13
	 move $a0, $t3
	 la $t6,L52
	 jalr $t6
	 lw $t3,__c
	 move $a0, $t3
	 la $t6,L46
	 jalr $t6
	 move $t6,$v0
	 la $t3,L14
	 move $a0, $t3
	 la $t7,L52
	 jalr $t7
	 move $t3,$zero
	 move $t7,$zero
	 la $t8,L3
	 jalr $t8
	 move $t8,$v0
	 bne $t8,$zero,L64
	 la $t8,L61
	 jr $t8
L64: 
	 la $t8,L6
	 jalr $t8
	 move $t8,$v0
	 bne $t8,$zero,L62
L61: 
	 addu $t7,0
	 la $t9,L63
	 jr $t9
L62: 
	 addu $t7,1
L63: 
	 beq $t7,$zero,L60
	 la $t7,L58
	 jr $t7
L60: 
	 la $t7,L9
	 jalr $t7
	 move $t7,$v0
	 beq $t7,$zero,L57
L58: 
	 addu $t3,1
	 la $t8,L59
	 jr $t8
L57: 
	 addu $t3,0
L59: 
	 bne $t3,$zero,L54
	 la $t7,L55
	 jr $t7
L54: 
	 la $t3,L15
	 move $a0, $t3
	 la $t7,L52
	 jalr $t7
	 la $t3,L56
	 jr $t3
L55: 
	 la $t3,L16
	 move $a0, $t3
	 la $t7,L52
	 jalr $t7
L56: 
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
	 la $t4,L52
	 jalr $t4
	 lw $t3,__a
	 move $a0, $t3
	 la $t4,L46
	 jalr $t4
	 move $t4,$v0
	 la $t3,L20
	 move $a0, $t3
	 la $t5,L52
	 jalr $t5
	 lw $t3,__b
	 move $a0, $t3
	 la $t5,L46
	 jalr $t5
	 move $t5,$v0
	 la $t3,L21
	 move $a0, $t3
	 la $t6,L52
	 jalr $t6
	 lw $t3,__c
	 move $a0, $t3
	 la $t6,L46
	 jalr $t6
	 move $t6,$v0
	 la $t3,L22
	 move $a0, $t3
	 la $t7,L52
	 jalr $t7
	 move $t7,$zero
	 move $t8,$zero
	 la $t9,L3
	 jalr $t9
	 move $t9,$v0
	 bne $t9,$zero,L72
	 la $t9,L69
	 jr $t9
L72: 
	 la $t9,L6
	 jalr $t9
	 move $t9,$v0
	 not $s0,$t9
	 addu $s1,31
	 sll $s0,$s0,$s1
	 srl $s0,$s0,$s1
	 bne $t9,$zero,L70
L69: 
	 addu $t8,0
	 la $t9,L71
	 jr $t9
L70: 
	 addu $t8,1
L71: 
	 beq $t8,$zero,L68
	 la $t8,L66
	 jr $t8
L68: 
	 la $t8,L9
	 jalr $t8
	 move $t8,$v0
	 beq $t8,$zero,L65
L66: 
	 addu $t7,1
	 la $t9,L67
	 jr $t9
L65: 
	 addu $t7,0
L67: 
	 move $t3,$t7
	 la $t7,L23
	 move $a0, $t7
	 la $t8,L52
	 jalr $t8
	 move $a0, $t3
	 la $t7,L46
	 jalr $t7
	 move $t7,$v0
	 la $t8,L24
	 move $a0, $t8
	 la $t9,L52
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
	 la $t1,L52
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
	 la $t1,L52
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
	 la $t1,L52
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
	 la $t1,L52
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
	 la $t1,L52
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
	 la $t1,L52
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
	 la $t1,L52
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
	 la $t1,L52
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
	 la $t1,L52
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
	 la $t1,L52
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
	 la $t1,L52
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
	 la $t1,L52
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
	 la $t1,L52
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
	 la $t1,L52
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
	 la $t1,L52
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
