.data
error_msg: .asciiz "Function did not return a value!"  
div_error_msg: .asciiz "division by zero"  
boolean_true: .asciiz "true\n"  
boolean_false: .asciiz "false\n"  
EOF_msg: .asciiz "EOF DETECTED: exiting program\n"  
__input_char_mips__: .space 2 
__A_0: .word 0 
__A_1: .word 0 
__A_2: .word 0 
__A_3: .word 0 
__A_4: .word 0 
__A_5: .word 0 
__A_6: .word 0 
__A_7: .word 0 
__A_8: .word 0 
__A_9: .word 0 
__A_10: .word 0 
__A_11: .word 0 
__A_12: .word 0 
__A_13: .word 0 
__A_14: .word 0 
__not_there: .word 0 
L2: .byte 32 0
.align 2
 
L3: .byte 32 0
.align 2
 
L4: .byte 32 0
.align 2
 
L5: .byte 32 0
.align 2
 
L6: .byte 32 0
.align 2
 
L7: .byte 32 0
.align 2
 
L8: .byte 32 0
.align 2
 
L9: .byte 32 0
.align 2
 
L10: .byte 32 0
.align 2
 
L11: .byte 32 0
.align 2
 
L12: .byte 32 0
.align 2
 
L13: .byte 32 0
.align 2
 
L14: .byte 32 0
.align 2
 
L15: .byte 32 0
.align 2
 
L16: .byte 32 0
.align 2
 
L17: .byte 10 0
.align 2
 
__INTERNALX: .word 0 
.text
.globl main
main: 
	 jal L0
li $v0,10
syscall
L25: 
	 li $v0,8
	 la $a0,__input_char_mips__
	 li $a1,2
syscall
lbu $v0, __input_char_mips__
bne $v0, $zero, L24
addu $v0, $v0, -1 
L24: 
jr $ra 
L27: 
li $v0,10
syscall
jr $ra 
L29: 
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
L31: 
li $v0,11
syscall
jr $ra 
L33: 
li $v0,1
syscall
jr $ra 
L35: 
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
	 addu $t4,$zero,1
	 move $a0, $t4
	 la $t4,L20
	 jalr $t4
	 addu $t4,$zero,0
	 move $t0,$t4
L37: 
	 addu $t4,$zero,14
	 sle $t5,$t0,$t4
	 bne $t5,$zero,L38
	 la $t4,L39
	 jr $t4
L38: 
	 addu $t4,$zero,0
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L40
	 la $t4,L41
	 jr $t4
L40: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 bne $t5,$zero,L43
li $v0,4
la $a0,div_error_msg
syscall
li $v0,10
syscall
L43: 
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_0
	 sw $t6,0($t4) 
	 la $t4,L42
	 jr $t4
L41: 
	 addu $t4,$zero,1
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L44
	 la $t4,L45
	 jr $t4
L44: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 bne $t5,$zero,L47
li $v0,4
la $a0,div_error_msg
syscall
li $v0,10
syscall
L47: 
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_1
	 sw $t6,0($t4) 
	 la $t4,L46
	 jr $t4
L45: 
	 addu $t4,$zero,2
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L48
	 la $t4,L49
	 jr $t4
L48: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 bne $t5,$zero,L51
li $v0,4
la $a0,div_error_msg
syscall
li $v0,10
syscall
L51: 
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_2
	 sw $t6,0($t4) 
	 la $t4,L50
	 jr $t4
L49: 
	 addu $t4,$zero,3
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L52
	 la $t4,L53
	 jr $t4
L52: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 bne $t5,$zero,L55
li $v0,4
la $a0,div_error_msg
syscall
li $v0,10
syscall
L55: 
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_3
	 sw $t6,0($t4) 
	 la $t4,L54
	 jr $t4
L53: 
	 addu $t4,$zero,4
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L56
	 la $t4,L57
	 jr $t4
L56: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 bne $t5,$zero,L59
li $v0,4
la $a0,div_error_msg
syscall
li $v0,10
syscall
L59: 
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_4
	 sw $t6,0($t4) 
	 la $t4,L58
	 jr $t4
L57: 
	 addu $t4,$zero,5
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L60
	 la $t4,L61
	 jr $t4
L60: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 bne $t5,$zero,L63
li $v0,4
la $a0,div_error_msg
syscall
li $v0,10
syscall
L63: 
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_5
	 sw $t6,0($t4) 
	 la $t4,L62
	 jr $t4
L61: 
	 addu $t4,$zero,6
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L64
	 la $t4,L65
	 jr $t4
L64: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 bne $t5,$zero,L67
li $v0,4
la $a0,div_error_msg
syscall
li $v0,10
syscall
L67: 
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_6
	 sw $t6,0($t4) 
	 la $t4,L66
	 jr $t4
L65: 
	 addu $t4,$zero,7
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L68
	 la $t4,L69
	 jr $t4
L68: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 bne $t5,$zero,L71
li $v0,4
la $a0,div_error_msg
syscall
li $v0,10
syscall
L71: 
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_7
	 sw $t6,0($t4) 
	 la $t4,L70
	 jr $t4
L69: 
	 addu $t4,$zero,8
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L72
	 la $t4,L73
	 jr $t4
L72: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 bne $t5,$zero,L75
li $v0,4
la $a0,div_error_msg
syscall
li $v0,10
syscall
L75: 
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_8
	 sw $t6,0($t4) 
	 la $t4,L74
	 jr $t4
L73: 
	 addu $t4,$zero,9
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L76
	 la $t4,L77
	 jr $t4
L76: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 bne $t5,$zero,L79
li $v0,4
la $a0,div_error_msg
syscall
li $v0,10
syscall
L79: 
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_9
	 sw $t6,0($t4) 
	 la $t4,L78
	 jr $t4
L77: 
	 addu $t4,$zero,10
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L80
	 la $t4,L81
	 jr $t4
L80: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 bne $t5,$zero,L83
li $v0,4
la $a0,div_error_msg
syscall
li $v0,10
syscall
L83: 
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_10
	 sw $t6,0($t4) 
	 la $t4,L82
	 jr $t4
L81: 
	 addu $t4,$zero,11
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L84
	 la $t4,L85
	 jr $t4
L84: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 bne $t5,$zero,L87
li $v0,4
la $a0,div_error_msg
syscall
li $v0,10
syscall
L87: 
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_11
	 sw $t6,0($t4) 
	 la $t4,L86
	 jr $t4
L85: 
	 addu $t4,$zero,12
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L88
	 la $t4,L89
	 jr $t4
L88: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 bne $t5,$zero,L91
li $v0,4
la $a0,div_error_msg
syscall
li $v0,10
syscall
L91: 
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_12
	 sw $t6,0($t4) 
	 la $t4,L90
	 jr $t4
L89: 
	 addu $t4,$zero,13
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L92
	 la $t4,L93
	 jr $t4
L92: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 bne $t5,$zero,L95
li $v0,4
la $a0,div_error_msg
syscall
li $v0,10
syscall
L95: 
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_13
	 sw $t6,0($t4) 
	 la $t4,L94
	 jr $t4
L93: 
	 addu $t4,$zero,14
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L96
	 la $t4,L97
	 jr $t4
L96: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 bne $t5,$zero,L98
li $v0,4
la $a0,div_error_msg
syscall
li $v0,10
syscall
L98: 
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_14
	 sw $t6,0($t4) 
L97: 
L94: 
L90: 
L86: 
L82: 
L78: 
L74: 
L70: 
L66: 
L62: 
L58: 
L54: 
L50: 
L46: 
L42: 
	 addu $t4,$zero,1
	 addu $t5,$t0,$t4
	 move $t0,$t5
	 la $t4,L37
	 jr $t4
L39: 
	 la $t4,L18
	 jalr $t4
	 addu $t4,$zero,0
	 move $t0,$t4
L99: 
	 addu $t4,$zero,13
	 sle $t5,$t0,$t4
	 bne $t5,$zero,L100
	 la $t4,L101
	 jr $t4
L100: 
	 move $t3,$t0
	 addu $t4,$zero,1
	 addu $t5,$t0,$t4
	 move $t1,$t5
L102: 
	 addu $t4,$zero,14
	 sle $t5,$t1,$t4
	 bne $t5,$zero,L103
	 la $t4,L104
	 jr $t4
L103: 
	 addu $t4,$zero,1
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L105
	 la $t4,L106
	 jr $t4
L105: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L108
	 la $t4,L109
	 jr $t4
L108: 
	 lw $t5,__A_1
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L111
	 la $t5,L112
	 jr $t5
L111: 
	 addu $t4,$zero,1
	 move $t3,$t4
L112: 
	 la $t4,L110
	 jr $t4
L109: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L113
	 la $t4,L114
	 jr $t4
L113: 
	 lw $t5,__A_1
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L116
	 la $t5,L117
	 jr $t5
L116: 
	 addu $t4,$zero,1
	 move $t3,$t4
L117: 
	 la $t4,L115
	 jr $t4
L114: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L118
	 la $t4,L119
	 jr $t4
L118: 
	 lw $t5,__A_1
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L121
	 la $t5,L122
	 jr $t5
L121: 
	 addu $t4,$zero,1
	 move $t3,$t4
L122: 
	 la $t4,L120
	 jr $t4
L119: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L123
	 la $t4,L124
	 jr $t4
L123: 
	 lw $t5,__A_1
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L126
	 la $t5,L127
	 jr $t5
L126: 
	 addu $t4,$zero,1
	 move $t3,$t4
L127: 
	 la $t4,L125
	 jr $t4
L124: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L128
	 la $t4,L129
	 jr $t4
L128: 
	 lw $t5,__A_1
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L131
	 la $t5,L132
	 jr $t5
L131: 
	 addu $t4,$zero,1
	 move $t3,$t4
L132: 
	 la $t4,L130
	 jr $t4
L129: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L133
	 la $t4,L134
	 jr $t4
L133: 
	 lw $t5,__A_1
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L136
	 la $t5,L137
	 jr $t5
L136: 
	 addu $t4,$zero,1
	 move $t3,$t4
L137: 
	 la $t4,L135
	 jr $t4
L134: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L138
	 la $t4,L139
	 jr $t4
L138: 
	 lw $t5,__A_1
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L141
	 la $t5,L142
	 jr $t5
L141: 
	 addu $t4,$zero,1
	 move $t3,$t4
L142: 
	 la $t4,L140
	 jr $t4
L139: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L143
	 la $t4,L144
	 jr $t4
L143: 
	 lw $t5,__A_1
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L146
	 la $t5,L147
	 jr $t5
L146: 
	 addu $t4,$zero,1
	 move $t3,$t4
L147: 
	 la $t4,L145
	 jr $t4
L144: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L148
	 la $t4,L149
	 jr $t4
L148: 
	 lw $t5,__A_1
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L151
	 la $t5,L152
	 jr $t5
L151: 
	 addu $t4,$zero,1
	 move $t3,$t4
L152: 
	 la $t4,L150
	 jr $t4
L149: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L153
	 la $t4,L154
	 jr $t4
L153: 
	 lw $t5,__A_1
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L156
	 la $t5,L157
	 jr $t5
L156: 
	 addu $t4,$zero,1
	 move $t3,$t4
L157: 
	 la $t4,L155
	 jr $t4
L154: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L158
	 la $t4,L159
	 jr $t4
L158: 
	 lw $t5,__A_1
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L161
	 la $t5,L162
	 jr $t5
L161: 
	 addu $t4,$zero,1
	 move $t3,$t4
L162: 
	 la $t4,L160
	 jr $t4
L159: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L163
	 la $t4,L164
	 jr $t4
L163: 
	 lw $t5,__A_1
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L166
	 la $t5,L167
	 jr $t5
L166: 
	 addu $t4,$zero,1
	 move $t3,$t4
L167: 
	 la $t4,L165
	 jr $t4
L164: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L168
	 la $t4,L169
	 jr $t4
L168: 
	 lw $t5,__A_1
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L171
	 la $t5,L172
	 jr $t5
L171: 
	 addu $t4,$zero,1
	 move $t3,$t4
L172: 
	 la $t4,L170
	 jr $t4
L169: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L173
	 la $t4,L174
	 jr $t4
L173: 
	 lw $t5,__A_1
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L176
	 la $t5,L177
	 jr $t5
L176: 
	 addu $t4,$zero,1
	 move $t3,$t4
L177: 
	 la $t4,L175
	 jr $t4
L174: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L178
	 la $t4,L179
	 jr $t4
L178: 
	 lw $t5,__A_1
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L180
	 la $t5,L181
	 jr $t5
L180: 
	 addu $t4,$zero,1
	 move $t3,$t4
L181: 
L179: 
L175: 
L170: 
L165: 
L160: 
L155: 
L150: 
L145: 
L140: 
L135: 
L130: 
L125: 
L120: 
L115: 
L110: 
	 la $t4,L107
	 jr $t4
L106: 
	 addu $t4,$zero,2
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L182
	 la $t4,L183
	 jr $t4
L182: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L185
	 la $t4,L186
	 jr $t4
L185: 
	 lw $t5,__A_2
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L188
	 la $t5,L189
	 jr $t5
L188: 
	 addu $t4,$zero,2
	 move $t3,$t4
L189: 
	 la $t4,L187
	 jr $t4
L186: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L190
	 la $t4,L191
	 jr $t4
L190: 
	 lw $t5,__A_2
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L193
	 la $t5,L194
	 jr $t5
L193: 
	 addu $t4,$zero,2
	 move $t3,$t4
L194: 
	 la $t4,L192
	 jr $t4
L191: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L195
	 la $t4,L196
	 jr $t4
L195: 
	 lw $t5,__A_2
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L198
	 la $t5,L199
	 jr $t5
L198: 
	 addu $t4,$zero,2
	 move $t3,$t4
L199: 
	 la $t4,L197
	 jr $t4
L196: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L200
	 la $t4,L201
	 jr $t4
L200: 
	 lw $t5,__A_2
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L203
	 la $t5,L204
	 jr $t5
L203: 
	 addu $t4,$zero,2
	 move $t3,$t4
L204: 
	 la $t4,L202
	 jr $t4
L201: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L205
	 la $t4,L206
	 jr $t4
L205: 
	 lw $t5,__A_2
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L208
	 la $t5,L209
	 jr $t5
L208: 
	 addu $t4,$zero,2
	 move $t3,$t4
L209: 
	 la $t4,L207
	 jr $t4
L206: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L210
	 la $t4,L211
	 jr $t4
L210: 
	 lw $t5,__A_2
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L213
	 la $t5,L214
	 jr $t5
L213: 
	 addu $t4,$zero,2
	 move $t3,$t4
L214: 
	 la $t4,L212
	 jr $t4
L211: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L215
	 la $t4,L216
	 jr $t4
L215: 
	 lw $t5,__A_2
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L218
	 la $t5,L219
	 jr $t5
L218: 
	 addu $t4,$zero,2
	 move $t3,$t4
L219: 
	 la $t4,L217
	 jr $t4
L216: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L220
	 la $t4,L221
	 jr $t4
L220: 
	 lw $t5,__A_2
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L223
	 la $t5,L224
	 jr $t5
L223: 
	 addu $t4,$zero,2
	 move $t3,$t4
L224: 
	 la $t4,L222
	 jr $t4
L221: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L225
	 la $t4,L226
	 jr $t4
L225: 
	 lw $t5,__A_2
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L228
	 la $t5,L229
	 jr $t5
L228: 
	 addu $t4,$zero,2
	 move $t3,$t4
L229: 
	 la $t4,L227
	 jr $t4
L226: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L230
	 la $t4,L231
	 jr $t4
L230: 
	 lw $t5,__A_2
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L233
	 la $t5,L234
	 jr $t5
L233: 
	 addu $t4,$zero,2
	 move $t3,$t4
L234: 
	 la $t4,L232
	 jr $t4
L231: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L235
	 la $t4,L236
	 jr $t4
L235: 
	 lw $t5,__A_2
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L238
	 la $t5,L239
	 jr $t5
L238: 
	 addu $t4,$zero,2
	 move $t3,$t4
L239: 
	 la $t4,L237
	 jr $t4
L236: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L240
	 la $t4,L241
	 jr $t4
L240: 
	 lw $t5,__A_2
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L243
	 la $t5,L244
	 jr $t5
L243: 
	 addu $t4,$zero,2
	 move $t3,$t4
L244: 
	 la $t4,L242
	 jr $t4
L241: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L245
	 la $t4,L246
	 jr $t4
L245: 
	 lw $t5,__A_2
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L248
	 la $t5,L249
	 jr $t5
L248: 
	 addu $t4,$zero,2
	 move $t3,$t4
L249: 
	 la $t4,L247
	 jr $t4
L246: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L250
	 la $t4,L251
	 jr $t4
L250: 
	 lw $t5,__A_2
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L253
	 la $t5,L254
	 jr $t5
L253: 
	 addu $t4,$zero,2
	 move $t3,$t4
L254: 
	 la $t4,L252
	 jr $t4
L251: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L255
	 la $t4,L256
	 jr $t4
L255: 
	 lw $t5,__A_2
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L257
	 la $t5,L258
	 jr $t5
L257: 
	 addu $t4,$zero,2
	 move $t3,$t4
L258: 
L256: 
L252: 
L247: 
L242: 
L237: 
L232: 
L227: 
L222: 
L217: 
L212: 
L207: 
L202: 
L197: 
L192: 
L187: 
	 la $t4,L184
	 jr $t4
L183: 
	 addu $t4,$zero,3
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L259
	 la $t4,L260
	 jr $t4
L259: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L262
	 la $t4,L263
	 jr $t4
L262: 
	 lw $t5,__A_3
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L265
	 la $t5,L266
	 jr $t5
L265: 
	 addu $t4,$zero,3
	 move $t3,$t4
L266: 
	 la $t4,L264
	 jr $t4
L263: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L267
	 la $t4,L268
	 jr $t4
L267: 
	 lw $t5,__A_3
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L270
	 la $t5,L271
	 jr $t5
L270: 
	 addu $t4,$zero,3
	 move $t3,$t4
L271: 
	 la $t4,L269
	 jr $t4
L268: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L272
	 la $t4,L273
	 jr $t4
L272: 
	 lw $t5,__A_3
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L275
	 la $t5,L276
	 jr $t5
L275: 
	 addu $t4,$zero,3
	 move $t3,$t4
L276: 
	 la $t4,L274
	 jr $t4
L273: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L277
	 la $t4,L278
	 jr $t4
L277: 
	 lw $t5,__A_3
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L280
	 la $t5,L281
	 jr $t5
L280: 
	 addu $t4,$zero,3
	 move $t3,$t4
L281: 
	 la $t4,L279
	 jr $t4
L278: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L282
	 la $t4,L283
	 jr $t4
L282: 
	 lw $t5,__A_3
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L285
	 la $t5,L286
	 jr $t5
L285: 
	 addu $t4,$zero,3
	 move $t3,$t4
L286: 
	 la $t4,L284
	 jr $t4
L283: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L287
	 la $t4,L288
	 jr $t4
L287: 
	 lw $t5,__A_3
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L290
	 la $t5,L291
	 jr $t5
L290: 
	 addu $t4,$zero,3
	 move $t3,$t4
L291: 
	 la $t4,L289
	 jr $t4
L288: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L292
	 la $t4,L293
	 jr $t4
L292: 
	 lw $t5,__A_3
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L295
	 la $t5,L296
	 jr $t5
L295: 
	 addu $t4,$zero,3
	 move $t3,$t4
L296: 
	 la $t4,L294
	 jr $t4
L293: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L297
	 la $t4,L298
	 jr $t4
L297: 
	 lw $t5,__A_3
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L300
	 la $t5,L301
	 jr $t5
L300: 
	 addu $t4,$zero,3
	 move $t3,$t4
L301: 
	 la $t4,L299
	 jr $t4
L298: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L302
	 la $t4,L303
	 jr $t4
L302: 
	 lw $t5,__A_3
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L305
	 la $t5,L306
	 jr $t5
L305: 
	 addu $t4,$zero,3
	 move $t3,$t4
L306: 
	 la $t4,L304
	 jr $t4
L303: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L307
	 la $t4,L308
	 jr $t4
L307: 
	 lw $t5,__A_3
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L310
	 la $t5,L311
	 jr $t5
L310: 
	 addu $t4,$zero,3
	 move $t3,$t4
L311: 
	 la $t4,L309
	 jr $t4
L308: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L312
	 la $t4,L313
	 jr $t4
L312: 
	 lw $t5,__A_3
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L315
	 la $t5,L316
	 jr $t5
L315: 
	 addu $t4,$zero,3
	 move $t3,$t4
L316: 
	 la $t4,L314
	 jr $t4
L313: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L317
	 la $t4,L318
	 jr $t4
L317: 
	 lw $t5,__A_3
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L320
	 la $t5,L321
	 jr $t5
L320: 
	 addu $t4,$zero,3
	 move $t3,$t4
L321: 
	 la $t4,L319
	 jr $t4
L318: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L322
	 la $t4,L323
	 jr $t4
L322: 
	 lw $t5,__A_3
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L325
	 la $t5,L326
	 jr $t5
L325: 
	 addu $t4,$zero,3
	 move $t3,$t4
L326: 
	 la $t4,L324
	 jr $t4
L323: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L327
	 la $t4,L328
	 jr $t4
L327: 
	 lw $t5,__A_3
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L330
	 la $t5,L331
	 jr $t5
L330: 
	 addu $t4,$zero,3
	 move $t3,$t4
L331: 
	 la $t4,L329
	 jr $t4
L328: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L332
	 la $t4,L333
	 jr $t4
L332: 
	 lw $t5,__A_3
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L334
	 la $t5,L335
	 jr $t5
L334: 
	 addu $t4,$zero,3
	 move $t3,$t4
L335: 
L333: 
L329: 
L324: 
L319: 
L314: 
L309: 
L304: 
L299: 
L294: 
L289: 
L284: 
L279: 
L274: 
L269: 
L264: 
	 la $t4,L261
	 jr $t4
L260: 
	 addu $t4,$zero,4
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L336
	 la $t4,L337
	 jr $t4
L336: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L339
	 la $t4,L340
	 jr $t4
L339: 
	 lw $t5,__A_4
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L342
	 la $t5,L343
	 jr $t5
L342: 
	 addu $t4,$zero,4
	 move $t3,$t4
L343: 
	 la $t4,L341
	 jr $t4
L340: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L344
	 la $t4,L345
	 jr $t4
L344: 
	 lw $t5,__A_4
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L347
	 la $t5,L348
	 jr $t5
L347: 
	 addu $t4,$zero,4
	 move $t3,$t4
L348: 
	 la $t4,L346
	 jr $t4
L345: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L349
	 la $t4,L350
	 jr $t4
L349: 
	 lw $t5,__A_4
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L352
	 la $t5,L353
	 jr $t5
L352: 
	 addu $t4,$zero,4
	 move $t3,$t4
L353: 
	 la $t4,L351
	 jr $t4
L350: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L354
	 la $t4,L355
	 jr $t4
L354: 
	 lw $t5,__A_4
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L357
	 la $t5,L358
	 jr $t5
L357: 
	 addu $t4,$zero,4
	 move $t3,$t4
L358: 
	 la $t4,L356
	 jr $t4
L355: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L359
	 la $t4,L360
	 jr $t4
L359: 
	 lw $t5,__A_4
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L362
	 la $t5,L363
	 jr $t5
L362: 
	 addu $t4,$zero,4
	 move $t3,$t4
L363: 
	 la $t4,L361
	 jr $t4
L360: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L364
	 la $t4,L365
	 jr $t4
L364: 
	 lw $t5,__A_4
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L367
	 la $t5,L368
	 jr $t5
L367: 
	 addu $t4,$zero,4
	 move $t3,$t4
L368: 
	 la $t4,L366
	 jr $t4
L365: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L369
	 la $t4,L370
	 jr $t4
L369: 
	 lw $t5,__A_4
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L372
	 la $t5,L373
	 jr $t5
L372: 
	 addu $t4,$zero,4
	 move $t3,$t4
L373: 
	 la $t4,L371
	 jr $t4
L370: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L374
	 la $t4,L375
	 jr $t4
L374: 
	 lw $t5,__A_4
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L377
	 la $t5,L378
	 jr $t5
L377: 
	 addu $t4,$zero,4
	 move $t3,$t4
L378: 
	 la $t4,L376
	 jr $t4
L375: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L379
	 la $t4,L380
	 jr $t4
L379: 
	 lw $t5,__A_4
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L382
	 la $t5,L383
	 jr $t5
L382: 
	 addu $t4,$zero,4
	 move $t3,$t4
L383: 
	 la $t4,L381
	 jr $t4
L380: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L384
	 la $t4,L385
	 jr $t4
L384: 
	 lw $t5,__A_4
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L387
	 la $t5,L388
	 jr $t5
L387: 
	 addu $t4,$zero,4
	 move $t3,$t4
L388: 
	 la $t4,L386
	 jr $t4
L385: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L389
	 la $t4,L390
	 jr $t4
L389: 
	 lw $t5,__A_4
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L392
	 la $t5,L393
	 jr $t5
L392: 
	 addu $t4,$zero,4
	 move $t3,$t4
L393: 
	 la $t4,L391
	 jr $t4
L390: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L394
	 la $t4,L395
	 jr $t4
L394: 
	 lw $t5,__A_4
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L397
	 la $t5,L398
	 jr $t5
L397: 
	 addu $t4,$zero,4
	 move $t3,$t4
L398: 
	 la $t4,L396
	 jr $t4
L395: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L399
	 la $t4,L400
	 jr $t4
L399: 
	 lw $t5,__A_4
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L402
	 la $t5,L403
	 jr $t5
L402: 
	 addu $t4,$zero,4
	 move $t3,$t4
L403: 
	 la $t4,L401
	 jr $t4
L400: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L404
	 la $t4,L405
	 jr $t4
L404: 
	 lw $t5,__A_4
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L407
	 la $t5,L408
	 jr $t5
L407: 
	 addu $t4,$zero,4
	 move $t3,$t4
L408: 
	 la $t4,L406
	 jr $t4
L405: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L409
	 la $t4,L410
	 jr $t4
L409: 
	 lw $t5,__A_4
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L411
	 la $t5,L412
	 jr $t5
L411: 
	 addu $t4,$zero,4
	 move $t3,$t4
L412: 
L410: 
L406: 
L401: 
L396: 
L391: 
L386: 
L381: 
L376: 
L371: 
L366: 
L361: 
L356: 
L351: 
L346: 
L341: 
	 la $t4,L338
	 jr $t4
L337: 
	 addu $t4,$zero,5
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L413
	 la $t4,L414
	 jr $t4
L413: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L416
	 la $t4,L417
	 jr $t4
L416: 
	 lw $t5,__A_5
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L419
	 la $t5,L420
	 jr $t5
L419: 
	 addu $t4,$zero,5
	 move $t3,$t4
L420: 
	 la $t4,L418
	 jr $t4
L417: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L421
	 la $t4,L422
	 jr $t4
L421: 
	 lw $t5,__A_5
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L424
	 la $t5,L425
	 jr $t5
L424: 
	 addu $t4,$zero,5
	 move $t3,$t4
L425: 
	 la $t4,L423
	 jr $t4
L422: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L426
	 la $t4,L427
	 jr $t4
L426: 
	 lw $t5,__A_5
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L429
	 la $t5,L430
	 jr $t5
L429: 
	 addu $t4,$zero,5
	 move $t3,$t4
L430: 
	 la $t4,L428
	 jr $t4
L427: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L431
	 la $t4,L432
	 jr $t4
L431: 
	 lw $t5,__A_5
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L434
	 la $t5,L435
	 jr $t5
L434: 
	 addu $t4,$zero,5
	 move $t3,$t4
L435: 
	 la $t4,L433
	 jr $t4
L432: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L436
	 la $t4,L437
	 jr $t4
L436: 
	 lw $t5,__A_5
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L439
	 la $t5,L440
	 jr $t5
L439: 
	 addu $t4,$zero,5
	 move $t3,$t4
L440: 
	 la $t4,L438
	 jr $t4
L437: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L441
	 la $t4,L442
	 jr $t4
L441: 
	 lw $t5,__A_5
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L444
	 la $t5,L445
	 jr $t5
L444: 
	 addu $t4,$zero,5
	 move $t3,$t4
L445: 
	 la $t4,L443
	 jr $t4
L442: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L446
	 la $t4,L447
	 jr $t4
L446: 
	 lw $t5,__A_5
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L449
	 la $t5,L450
	 jr $t5
L449: 
	 addu $t4,$zero,5
	 move $t3,$t4
L450: 
	 la $t4,L448
	 jr $t4
L447: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L451
	 la $t4,L452
	 jr $t4
L451: 
	 lw $t5,__A_5
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L454
	 la $t5,L455
	 jr $t5
L454: 
	 addu $t4,$zero,5
	 move $t3,$t4
L455: 
	 la $t4,L453
	 jr $t4
L452: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L456
	 la $t4,L457
	 jr $t4
L456: 
	 lw $t5,__A_5
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L459
	 la $t5,L460
	 jr $t5
L459: 
	 addu $t4,$zero,5
	 move $t3,$t4
L460: 
	 la $t4,L458
	 jr $t4
L457: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L461
	 la $t4,L462
	 jr $t4
L461: 
	 lw $t5,__A_5
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L464
	 la $t5,L465
	 jr $t5
L464: 
	 addu $t4,$zero,5
	 move $t3,$t4
L465: 
	 la $t4,L463
	 jr $t4
L462: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L466
	 la $t4,L467
	 jr $t4
L466: 
	 lw $t5,__A_5
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L469
	 la $t5,L470
	 jr $t5
L469: 
	 addu $t4,$zero,5
	 move $t3,$t4
L470: 
	 la $t4,L468
	 jr $t4
L467: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L471
	 la $t4,L472
	 jr $t4
L471: 
	 lw $t5,__A_5
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L474
	 la $t5,L475
	 jr $t5
L474: 
	 addu $t4,$zero,5
	 move $t3,$t4
L475: 
	 la $t4,L473
	 jr $t4
L472: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L476
	 la $t4,L477
	 jr $t4
L476: 
	 lw $t5,__A_5
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L479
	 la $t5,L480
	 jr $t5
L479: 
	 addu $t4,$zero,5
	 move $t3,$t4
L480: 
	 la $t4,L478
	 jr $t4
L477: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L481
	 la $t4,L482
	 jr $t4
L481: 
	 lw $t5,__A_5
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L484
	 la $t5,L485
	 jr $t5
L484: 
	 addu $t4,$zero,5
	 move $t3,$t4
L485: 
	 la $t4,L483
	 jr $t4
L482: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L486
	 la $t4,L487
	 jr $t4
L486: 
	 lw $t5,__A_5
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L488
	 la $t5,L489
	 jr $t5
L488: 
	 addu $t4,$zero,5
	 move $t3,$t4
L489: 
L487: 
L483: 
L478: 
L473: 
L468: 
L463: 
L458: 
L453: 
L448: 
L443: 
L438: 
L433: 
L428: 
L423: 
L418: 
	 la $t4,L415
	 jr $t4
L414: 
	 addu $t4,$zero,6
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L490
	 la $t4,L491
	 jr $t4
L490: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L493
	 la $t4,L494
	 jr $t4
L493: 
	 lw $t5,__A_6
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L496
	 la $t5,L497
	 jr $t5
L496: 
	 addu $t4,$zero,6
	 move $t3,$t4
L497: 
	 la $t4,L495
	 jr $t4
L494: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L498
	 la $t4,L499
	 jr $t4
L498: 
	 lw $t5,__A_6
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L501
	 la $t5,L502
	 jr $t5
L501: 
	 addu $t4,$zero,6
	 move $t3,$t4
L502: 
	 la $t4,L500
	 jr $t4
L499: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L503
	 la $t4,L504
	 jr $t4
L503: 
	 lw $t5,__A_6
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L506
	 la $t5,L507
	 jr $t5
L506: 
	 addu $t4,$zero,6
	 move $t3,$t4
L507: 
	 la $t4,L505
	 jr $t4
L504: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L508
	 la $t4,L509
	 jr $t4
L508: 
	 lw $t5,__A_6
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L511
	 la $t5,L512
	 jr $t5
L511: 
	 addu $t4,$zero,6
	 move $t3,$t4
L512: 
	 la $t4,L510
	 jr $t4
L509: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L513
	 la $t4,L514
	 jr $t4
L513: 
	 lw $t5,__A_6
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L516
	 la $t5,L517
	 jr $t5
L516: 
	 addu $t4,$zero,6
	 move $t3,$t4
L517: 
	 la $t4,L515
	 jr $t4
L514: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L518
	 la $t4,L519
	 jr $t4
L518: 
	 lw $t5,__A_6
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L521
	 la $t5,L522
	 jr $t5
L521: 
	 addu $t4,$zero,6
	 move $t3,$t4
L522: 
	 la $t4,L520
	 jr $t4
L519: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L523
	 la $t4,L524
	 jr $t4
L523: 
	 lw $t5,__A_6
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L526
	 la $t5,L527
	 jr $t5
L526: 
	 addu $t4,$zero,6
	 move $t3,$t4
L527: 
	 la $t4,L525
	 jr $t4
L524: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L528
	 la $t4,L529
	 jr $t4
L528: 
	 lw $t5,__A_6
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L531
	 la $t5,L532
	 jr $t5
L531: 
	 addu $t4,$zero,6
	 move $t3,$t4
L532: 
	 la $t4,L530
	 jr $t4
L529: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L533
	 la $t4,L534
	 jr $t4
L533: 
	 lw $t5,__A_6
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L536
	 la $t5,L537
	 jr $t5
L536: 
	 addu $t4,$zero,6
	 move $t3,$t4
L537: 
	 la $t4,L535
	 jr $t4
L534: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L538
	 la $t4,L539
	 jr $t4
L538: 
	 lw $t5,__A_6
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L541
	 la $t5,L542
	 jr $t5
L541: 
	 addu $t4,$zero,6
	 move $t3,$t4
L542: 
	 la $t4,L540
	 jr $t4
L539: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L543
	 la $t4,L544
	 jr $t4
L543: 
	 lw $t5,__A_6
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L546
	 la $t5,L547
	 jr $t5
L546: 
	 addu $t4,$zero,6
	 move $t3,$t4
L547: 
	 la $t4,L545
	 jr $t4
L544: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L548
	 la $t4,L549
	 jr $t4
L548: 
	 lw $t5,__A_6
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L551
	 la $t5,L552
	 jr $t5
L551: 
	 addu $t4,$zero,6
	 move $t3,$t4
L552: 
	 la $t4,L550
	 jr $t4
L549: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L553
	 la $t4,L554
	 jr $t4
L553: 
	 lw $t5,__A_6
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L556
	 la $t5,L557
	 jr $t5
L556: 
	 addu $t4,$zero,6
	 move $t3,$t4
L557: 
	 la $t4,L555
	 jr $t4
L554: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L558
	 la $t4,L559
	 jr $t4
L558: 
	 lw $t5,__A_6
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L561
	 la $t5,L562
	 jr $t5
L561: 
	 addu $t4,$zero,6
	 move $t3,$t4
L562: 
	 la $t4,L560
	 jr $t4
L559: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L563
	 la $t4,L564
	 jr $t4
L563: 
	 lw $t5,__A_6
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L565
	 la $t5,L566
	 jr $t5
L565: 
	 addu $t4,$zero,6
	 move $t3,$t4
L566: 
L564: 
L560: 
L555: 
L550: 
L545: 
L540: 
L535: 
L530: 
L525: 
L520: 
L515: 
L510: 
L505: 
L500: 
L495: 
	 la $t4,L492
	 jr $t4
L491: 
	 addu $t4,$zero,7
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L567
	 la $t4,L568
	 jr $t4
L567: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L570
	 la $t4,L571
	 jr $t4
L570: 
	 lw $t5,__A_7
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L573
	 la $t5,L574
	 jr $t5
L573: 
	 addu $t4,$zero,7
	 move $t3,$t4
L574: 
	 la $t4,L572
	 jr $t4
L571: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L575
	 la $t4,L576
	 jr $t4
L575: 
	 lw $t5,__A_7
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L578
	 la $t5,L579
	 jr $t5
L578: 
	 addu $t4,$zero,7
	 move $t3,$t4
L579: 
	 la $t4,L577
	 jr $t4
L576: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L580
	 la $t4,L581
	 jr $t4
L580: 
	 lw $t5,__A_7
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L583
	 la $t5,L584
	 jr $t5
L583: 
	 addu $t4,$zero,7
	 move $t3,$t4
L584: 
	 la $t4,L582
	 jr $t4
L581: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L585
	 la $t4,L586
	 jr $t4
L585: 
	 lw $t5,__A_7
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L588
	 la $t5,L589
	 jr $t5
L588: 
	 addu $t4,$zero,7
	 move $t3,$t4
L589: 
	 la $t4,L587
	 jr $t4
L586: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L590
	 la $t4,L591
	 jr $t4
L590: 
	 lw $t5,__A_7
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L593
	 la $t5,L594
	 jr $t5
L593: 
	 addu $t4,$zero,7
	 move $t3,$t4
L594: 
	 la $t4,L592
	 jr $t4
L591: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L595
	 la $t4,L596
	 jr $t4
L595: 
	 lw $t5,__A_7
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L598
	 la $t5,L599
	 jr $t5
L598: 
	 addu $t4,$zero,7
	 move $t3,$t4
L599: 
	 la $t4,L597
	 jr $t4
L596: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L600
	 la $t4,L601
	 jr $t4
L600: 
	 lw $t5,__A_7
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L603
	 la $t5,L604
	 jr $t5
L603: 
	 addu $t4,$zero,7
	 move $t3,$t4
L604: 
	 la $t4,L602
	 jr $t4
L601: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L605
	 la $t4,L606
	 jr $t4
L605: 
	 lw $t5,__A_7
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L608
	 la $t5,L609
	 jr $t5
L608: 
	 addu $t4,$zero,7
	 move $t3,$t4
L609: 
	 la $t4,L607
	 jr $t4
L606: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L610
	 la $t4,L611
	 jr $t4
L610: 
	 lw $t5,__A_7
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L613
	 la $t5,L614
	 jr $t5
L613: 
	 addu $t4,$zero,7
	 move $t3,$t4
L614: 
	 la $t4,L612
	 jr $t4
L611: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L615
	 la $t4,L616
	 jr $t4
L615: 
	 lw $t5,__A_7
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L618
	 la $t5,L619
	 jr $t5
L618: 
	 addu $t4,$zero,7
	 move $t3,$t4
L619: 
	 la $t4,L617
	 jr $t4
L616: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L620
	 la $t4,L621
	 jr $t4
L620: 
	 lw $t5,__A_7
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L623
	 la $t5,L624
	 jr $t5
L623: 
	 addu $t4,$zero,7
	 move $t3,$t4
L624: 
	 la $t4,L622
	 jr $t4
L621: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L625
	 la $t4,L626
	 jr $t4
L625: 
	 lw $t5,__A_7
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L628
	 la $t5,L629
	 jr $t5
L628: 
	 addu $t4,$zero,7
	 move $t3,$t4
L629: 
	 la $t4,L627
	 jr $t4
L626: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L630
	 la $t4,L631
	 jr $t4
L630: 
	 lw $t5,__A_7
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L633
	 la $t5,L634
	 jr $t5
L633: 
	 addu $t4,$zero,7
	 move $t3,$t4
L634: 
	 la $t4,L632
	 jr $t4
L631: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L635
	 la $t4,L636
	 jr $t4
L635: 
	 lw $t5,__A_7
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L638
	 la $t5,L639
	 jr $t5
L638: 
	 addu $t4,$zero,7
	 move $t3,$t4
L639: 
	 la $t4,L637
	 jr $t4
L636: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L640
	 la $t4,L641
	 jr $t4
L640: 
	 lw $t5,__A_7
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L642
	 la $t5,L643
	 jr $t5
L642: 
	 addu $t4,$zero,7
	 move $t3,$t4
L643: 
L641: 
L637: 
L632: 
L627: 
L622: 
L617: 
L612: 
L607: 
L602: 
L597: 
L592: 
L587: 
L582: 
L577: 
L572: 
	 la $t4,L569
	 jr $t4
L568: 
	 addu $t4,$zero,8
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L644
	 la $t4,L645
	 jr $t4
L644: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L647
	 la $t4,L648
	 jr $t4
L647: 
	 lw $t5,__A_8
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L650
	 la $t5,L651
	 jr $t5
L650: 
	 addu $t4,$zero,8
	 move $t3,$t4
L651: 
	 la $t4,L649
	 jr $t4
L648: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L652
	 la $t4,L653
	 jr $t4
L652: 
	 lw $t5,__A_8
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L655
	 la $t5,L656
	 jr $t5
L655: 
	 addu $t4,$zero,8
	 move $t3,$t4
L656: 
	 la $t4,L654
	 jr $t4
L653: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L657
	 la $t4,L658
	 jr $t4
L657: 
	 lw $t5,__A_8
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L660
	 la $t5,L661
	 jr $t5
L660: 
	 addu $t4,$zero,8
	 move $t3,$t4
L661: 
	 la $t4,L659
	 jr $t4
L658: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L662
	 la $t4,L663
	 jr $t4
L662: 
	 lw $t5,__A_8
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L665
	 la $t5,L666
	 jr $t5
L665: 
	 addu $t4,$zero,8
	 move $t3,$t4
L666: 
	 la $t4,L664
	 jr $t4
L663: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L667
	 la $t4,L668
	 jr $t4
L667: 
	 lw $t5,__A_8
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L670
	 la $t5,L671
	 jr $t5
L670: 
	 addu $t4,$zero,8
	 move $t3,$t4
L671: 
	 la $t4,L669
	 jr $t4
L668: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L672
	 la $t4,L673
	 jr $t4
L672: 
	 lw $t5,__A_8
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L675
	 la $t5,L676
	 jr $t5
L675: 
	 addu $t4,$zero,8
	 move $t3,$t4
L676: 
	 la $t4,L674
	 jr $t4
L673: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L677
	 la $t4,L678
	 jr $t4
L677: 
	 lw $t5,__A_8
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L680
	 la $t5,L681
	 jr $t5
L680: 
	 addu $t4,$zero,8
	 move $t3,$t4
L681: 
	 la $t4,L679
	 jr $t4
L678: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L682
	 la $t4,L683
	 jr $t4
L682: 
	 lw $t5,__A_8
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L685
	 la $t5,L686
	 jr $t5
L685: 
	 addu $t4,$zero,8
	 move $t3,$t4
L686: 
	 la $t4,L684
	 jr $t4
L683: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L687
	 la $t4,L688
	 jr $t4
L687: 
	 lw $t5,__A_8
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L690
	 la $t5,L691
	 jr $t5
L690: 
	 addu $t4,$zero,8
	 move $t3,$t4
L691: 
	 la $t4,L689
	 jr $t4
L688: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L692
	 la $t4,L693
	 jr $t4
L692: 
	 lw $t5,__A_8
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L695
	 la $t5,L696
	 jr $t5
L695: 
	 addu $t4,$zero,8
	 move $t3,$t4
L696: 
	 la $t4,L694
	 jr $t4
L693: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L697
	 la $t4,L698
	 jr $t4
L697: 
	 lw $t5,__A_8
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L700
	 la $t5,L701
	 jr $t5
L700: 
	 addu $t4,$zero,8
	 move $t3,$t4
L701: 
	 la $t4,L699
	 jr $t4
L698: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L702
	 la $t4,L703
	 jr $t4
L702: 
	 lw $t5,__A_8
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L705
	 la $t5,L706
	 jr $t5
L705: 
	 addu $t4,$zero,8
	 move $t3,$t4
L706: 
	 la $t4,L704
	 jr $t4
L703: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L707
	 la $t4,L708
	 jr $t4
L707: 
	 lw $t5,__A_8
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L710
	 la $t5,L711
	 jr $t5
L710: 
	 addu $t4,$zero,8
	 move $t3,$t4
L711: 
	 la $t4,L709
	 jr $t4
L708: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L712
	 la $t4,L713
	 jr $t4
L712: 
	 lw $t5,__A_8
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L715
	 la $t5,L716
	 jr $t5
L715: 
	 addu $t4,$zero,8
	 move $t3,$t4
L716: 
	 la $t4,L714
	 jr $t4
L713: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L717
	 la $t4,L718
	 jr $t4
L717: 
	 lw $t5,__A_8
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L719
	 la $t5,L720
	 jr $t5
L719: 
	 addu $t4,$zero,8
	 move $t3,$t4
L720: 
L718: 
L714: 
L709: 
L704: 
L699: 
L694: 
L689: 
L684: 
L679: 
L674: 
L669: 
L664: 
L659: 
L654: 
L649: 
	 la $t4,L646
	 jr $t4
L645: 
	 addu $t4,$zero,9
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L721
	 la $t4,L722
	 jr $t4
L721: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L724
	 la $t4,L725
	 jr $t4
L724: 
	 lw $t5,__A_9
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L727
	 la $t5,L728
	 jr $t5
L727: 
	 addu $t4,$zero,9
	 move $t3,$t4
L728: 
	 la $t4,L726
	 jr $t4
L725: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L729
	 la $t4,L730
	 jr $t4
L729: 
	 lw $t5,__A_9
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L732
	 la $t5,L733
	 jr $t5
L732: 
	 addu $t4,$zero,9
	 move $t3,$t4
L733: 
	 la $t4,L731
	 jr $t4
L730: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L734
	 la $t4,L735
	 jr $t4
L734: 
	 lw $t5,__A_9
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L737
	 la $t5,L738
	 jr $t5
L737: 
	 addu $t4,$zero,9
	 move $t3,$t4
L738: 
	 la $t4,L736
	 jr $t4
L735: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L739
	 la $t4,L740
	 jr $t4
L739: 
	 lw $t5,__A_9
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L742
	 la $t5,L743
	 jr $t5
L742: 
	 addu $t4,$zero,9
	 move $t3,$t4
L743: 
	 la $t4,L741
	 jr $t4
L740: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L744
	 la $t4,L745
	 jr $t4
L744: 
	 lw $t5,__A_9
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L747
	 la $t5,L748
	 jr $t5
L747: 
	 addu $t4,$zero,9
	 move $t3,$t4
L748: 
	 la $t4,L746
	 jr $t4
L745: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L749
	 la $t4,L750
	 jr $t4
L749: 
	 lw $t5,__A_9
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L752
	 la $t5,L753
	 jr $t5
L752: 
	 addu $t4,$zero,9
	 move $t3,$t4
L753: 
	 la $t4,L751
	 jr $t4
L750: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L754
	 la $t4,L755
	 jr $t4
L754: 
	 lw $t5,__A_9
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L757
	 la $t5,L758
	 jr $t5
L757: 
	 addu $t4,$zero,9
	 move $t3,$t4
L758: 
	 la $t4,L756
	 jr $t4
L755: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L759
	 la $t4,L760
	 jr $t4
L759: 
	 lw $t5,__A_9
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L762
	 la $t5,L763
	 jr $t5
L762: 
	 addu $t4,$zero,9
	 move $t3,$t4
L763: 
	 la $t4,L761
	 jr $t4
L760: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L764
	 la $t4,L765
	 jr $t4
L764: 
	 lw $t5,__A_9
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L767
	 la $t5,L768
	 jr $t5
L767: 
	 addu $t4,$zero,9
	 move $t3,$t4
L768: 
	 la $t4,L766
	 jr $t4
L765: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L769
	 la $t4,L770
	 jr $t4
L769: 
	 lw $t5,__A_9
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L772
	 la $t5,L773
	 jr $t5
L772: 
	 addu $t4,$zero,9
	 move $t3,$t4
L773: 
	 la $t4,L771
	 jr $t4
L770: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L774
	 la $t4,L775
	 jr $t4
L774: 
	 lw $t5,__A_9
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L777
	 la $t5,L778
	 jr $t5
L777: 
	 addu $t4,$zero,9
	 move $t3,$t4
L778: 
	 la $t4,L776
	 jr $t4
L775: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L779
	 la $t4,L780
	 jr $t4
L779: 
	 lw $t5,__A_9
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L782
	 la $t5,L783
	 jr $t5
L782: 
	 addu $t4,$zero,9
	 move $t3,$t4
L783: 
	 la $t4,L781
	 jr $t4
L780: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L784
	 la $t4,L785
	 jr $t4
L784: 
	 lw $t5,__A_9
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L787
	 la $t5,L788
	 jr $t5
L787: 
	 addu $t4,$zero,9
	 move $t3,$t4
L788: 
	 la $t4,L786
	 jr $t4
L785: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L789
	 la $t4,L790
	 jr $t4
L789: 
	 lw $t5,__A_9
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L792
	 la $t5,L793
	 jr $t5
L792: 
	 addu $t4,$zero,9
	 move $t3,$t4
L793: 
	 la $t4,L791
	 jr $t4
L790: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L794
	 la $t4,L795
	 jr $t4
L794: 
	 lw $t5,__A_9
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L796
	 la $t5,L797
	 jr $t5
L796: 
	 addu $t4,$zero,9
	 move $t3,$t4
L797: 
L795: 
L791: 
L786: 
L781: 
L776: 
L771: 
L766: 
L761: 
L756: 
L751: 
L746: 
L741: 
L736: 
L731: 
L726: 
	 la $t4,L723
	 jr $t4
L722: 
	 addu $t4,$zero,10
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L798
	 la $t4,L799
	 jr $t4
L798: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L801
	 la $t4,L802
	 jr $t4
L801: 
	 lw $t5,__A_10
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L804
	 la $t5,L805
	 jr $t5
L804: 
	 addu $t4,$zero,10
	 move $t3,$t4
L805: 
	 la $t4,L803
	 jr $t4
L802: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L806
	 la $t4,L807
	 jr $t4
L806: 
	 lw $t5,__A_10
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L809
	 la $t5,L810
	 jr $t5
L809: 
	 addu $t4,$zero,10
	 move $t3,$t4
L810: 
	 la $t4,L808
	 jr $t4
L807: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L811
	 la $t4,L812
	 jr $t4
L811: 
	 lw $t5,__A_10
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L814
	 la $t5,L815
	 jr $t5
L814: 
	 addu $t4,$zero,10
	 move $t3,$t4
L815: 
	 la $t4,L813
	 jr $t4
L812: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L816
	 la $t4,L817
	 jr $t4
L816: 
	 lw $t5,__A_10
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L819
	 la $t5,L820
	 jr $t5
L819: 
	 addu $t4,$zero,10
	 move $t3,$t4
L820: 
	 la $t4,L818
	 jr $t4
L817: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L821
	 la $t4,L822
	 jr $t4
L821: 
	 lw $t5,__A_10
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L824
	 la $t5,L825
	 jr $t5
L824: 
	 addu $t4,$zero,10
	 move $t3,$t4
L825: 
	 la $t4,L823
	 jr $t4
L822: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L826
	 la $t4,L827
	 jr $t4
L826: 
	 lw $t5,__A_10
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L829
	 la $t5,L830
	 jr $t5
L829: 
	 addu $t4,$zero,10
	 move $t3,$t4
L830: 
	 la $t4,L828
	 jr $t4
L827: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L831
	 la $t4,L832
	 jr $t4
L831: 
	 lw $t5,__A_10
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L834
	 la $t5,L835
	 jr $t5
L834: 
	 addu $t4,$zero,10
	 move $t3,$t4
L835: 
	 la $t4,L833
	 jr $t4
L832: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L836
	 la $t4,L837
	 jr $t4
L836: 
	 lw $t5,__A_10
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L839
	 la $t5,L840
	 jr $t5
L839: 
	 addu $t4,$zero,10
	 move $t3,$t4
L840: 
	 la $t4,L838
	 jr $t4
L837: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L841
	 la $t4,L842
	 jr $t4
L841: 
	 lw $t5,__A_10
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L844
	 la $t5,L845
	 jr $t5
L844: 
	 addu $t4,$zero,10
	 move $t3,$t4
L845: 
	 la $t4,L843
	 jr $t4
L842: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L846
	 la $t4,L847
	 jr $t4
L846: 
	 lw $t5,__A_10
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L849
	 la $t5,L850
	 jr $t5
L849: 
	 addu $t4,$zero,10
	 move $t3,$t4
L850: 
	 la $t4,L848
	 jr $t4
L847: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L851
	 la $t4,L852
	 jr $t4
L851: 
	 lw $t5,__A_10
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L854
	 la $t5,L855
	 jr $t5
L854: 
	 addu $t4,$zero,10
	 move $t3,$t4
L855: 
	 la $t4,L853
	 jr $t4
L852: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L856
	 la $t4,L857
	 jr $t4
L856: 
	 lw $t5,__A_10
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L859
	 la $t5,L860
	 jr $t5
L859: 
	 addu $t4,$zero,10
	 move $t3,$t4
L860: 
	 la $t4,L858
	 jr $t4
L857: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L861
	 la $t4,L862
	 jr $t4
L861: 
	 lw $t5,__A_10
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L864
	 la $t5,L865
	 jr $t5
L864: 
	 addu $t4,$zero,10
	 move $t3,$t4
L865: 
	 la $t4,L863
	 jr $t4
L862: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L866
	 la $t4,L867
	 jr $t4
L866: 
	 lw $t5,__A_10
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L869
	 la $t5,L870
	 jr $t5
L869: 
	 addu $t4,$zero,10
	 move $t3,$t4
L870: 
	 la $t4,L868
	 jr $t4
L867: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L871
	 la $t4,L872
	 jr $t4
L871: 
	 lw $t5,__A_10
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L873
	 la $t5,L874
	 jr $t5
L873: 
	 addu $t4,$zero,10
	 move $t3,$t4
L874: 
L872: 
L868: 
L863: 
L858: 
L853: 
L848: 
L843: 
L838: 
L833: 
L828: 
L823: 
L818: 
L813: 
L808: 
L803: 
	 la $t4,L800
	 jr $t4
L799: 
	 addu $t4,$zero,11
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L875
	 la $t4,L876
	 jr $t4
L875: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L878
	 la $t4,L879
	 jr $t4
L878: 
	 lw $t5,__A_11
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L881
	 la $t5,L882
	 jr $t5
L881: 
	 addu $t4,$zero,11
	 move $t3,$t4
L882: 
	 la $t4,L880
	 jr $t4
L879: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L883
	 la $t4,L884
	 jr $t4
L883: 
	 lw $t5,__A_11
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L886
	 la $t5,L887
	 jr $t5
L886: 
	 addu $t4,$zero,11
	 move $t3,$t4
L887: 
	 la $t4,L885
	 jr $t4
L884: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L888
	 la $t4,L889
	 jr $t4
L888: 
	 lw $t5,__A_11
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L891
	 la $t5,L892
	 jr $t5
L891: 
	 addu $t4,$zero,11
	 move $t3,$t4
L892: 
	 la $t4,L890
	 jr $t4
L889: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L893
	 la $t4,L894
	 jr $t4
L893: 
	 lw $t5,__A_11
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L896
	 la $t5,L897
	 jr $t5
L896: 
	 addu $t4,$zero,11
	 move $t3,$t4
L897: 
	 la $t4,L895
	 jr $t4
L894: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L898
	 la $t4,L899
	 jr $t4
L898: 
	 lw $t5,__A_11
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L901
	 la $t5,L902
	 jr $t5
L901: 
	 addu $t4,$zero,11
	 move $t3,$t4
L902: 
	 la $t4,L900
	 jr $t4
L899: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L903
	 la $t4,L904
	 jr $t4
L903: 
	 lw $t5,__A_11
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L906
	 la $t5,L907
	 jr $t5
L906: 
	 addu $t4,$zero,11
	 move $t3,$t4
L907: 
	 la $t4,L905
	 jr $t4
L904: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L908
	 la $t4,L909
	 jr $t4
L908: 
	 lw $t5,__A_11
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L911
	 la $t5,L912
	 jr $t5
L911: 
	 addu $t4,$zero,11
	 move $t3,$t4
L912: 
	 la $t4,L910
	 jr $t4
L909: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L913
	 la $t4,L914
	 jr $t4
L913: 
	 lw $t5,__A_11
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L916
	 la $t5,L917
	 jr $t5
L916: 
	 addu $t4,$zero,11
	 move $t3,$t4
L917: 
	 la $t4,L915
	 jr $t4
L914: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L918
	 la $t4,L919
	 jr $t4
L918: 
	 lw $t5,__A_11
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L921
	 la $t5,L922
	 jr $t5
L921: 
	 addu $t4,$zero,11
	 move $t3,$t4
L922: 
	 la $t4,L920
	 jr $t4
L919: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L923
	 la $t4,L924
	 jr $t4
L923: 
	 lw $t5,__A_11
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L926
	 la $t5,L927
	 jr $t5
L926: 
	 addu $t4,$zero,11
	 move $t3,$t4
L927: 
	 la $t4,L925
	 jr $t4
L924: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L928
	 la $t4,L929
	 jr $t4
L928: 
	 lw $t5,__A_11
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L931
	 la $t5,L932
	 jr $t5
L931: 
	 addu $t4,$zero,11
	 move $t3,$t4
L932: 
	 la $t4,L930
	 jr $t4
L929: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L933
	 la $t4,L934
	 jr $t4
L933: 
	 lw $t5,__A_11
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L936
	 la $t5,L937
	 jr $t5
L936: 
	 addu $t4,$zero,11
	 move $t3,$t4
L937: 
	 la $t4,L935
	 jr $t4
L934: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L938
	 la $t4,L939
	 jr $t4
L938: 
	 lw $t5,__A_11
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L941
	 la $t5,L942
	 jr $t5
L941: 
	 addu $t4,$zero,11
	 move $t3,$t4
L942: 
	 la $t4,L940
	 jr $t4
L939: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L943
	 la $t4,L944
	 jr $t4
L943: 
	 lw $t5,__A_11
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L946
	 la $t5,L947
	 jr $t5
L946: 
	 addu $t4,$zero,11
	 move $t3,$t4
L947: 
	 la $t4,L945
	 jr $t4
L944: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L948
	 la $t4,L949
	 jr $t4
L948: 
	 lw $t5,__A_11
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L950
	 la $t5,L951
	 jr $t5
L950: 
	 addu $t4,$zero,11
	 move $t3,$t4
L951: 
L949: 
L945: 
L940: 
L935: 
L930: 
L925: 
L920: 
L915: 
L910: 
L905: 
L900: 
L895: 
L890: 
L885: 
L880: 
	 la $t4,L877
	 jr $t4
L876: 
	 addu $t4,$zero,12
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L952
	 la $t4,L953
	 jr $t4
L952: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L955
	 la $t4,L956
	 jr $t4
L955: 
	 lw $t5,__A_12
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L958
	 la $t5,L959
	 jr $t5
L958: 
	 addu $t4,$zero,12
	 move $t3,$t4
L959: 
	 la $t4,L957
	 jr $t4
L956: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L960
	 la $t4,L961
	 jr $t4
L960: 
	 lw $t5,__A_12
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L963
	 la $t5,L964
	 jr $t5
L963: 
	 addu $t4,$zero,12
	 move $t3,$t4
L964: 
	 la $t4,L962
	 jr $t4
L961: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L965
	 la $t4,L966
	 jr $t4
L965: 
	 lw $t5,__A_12
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L968
	 la $t5,L969
	 jr $t5
L968: 
	 addu $t4,$zero,12
	 move $t3,$t4
L969: 
	 la $t4,L967
	 jr $t4
L966: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L970
	 la $t4,L971
	 jr $t4
L970: 
	 lw $t5,__A_12
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L973
	 la $t5,L974
	 jr $t5
L973: 
	 addu $t4,$zero,12
	 move $t3,$t4
L974: 
	 la $t4,L972
	 jr $t4
L971: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L975
	 la $t4,L976
	 jr $t4
L975: 
	 lw $t5,__A_12
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L978
	 la $t5,L979
	 jr $t5
L978: 
	 addu $t4,$zero,12
	 move $t3,$t4
L979: 
	 la $t4,L977
	 jr $t4
L976: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L980
	 la $t4,L981
	 jr $t4
L980: 
	 lw $t5,__A_12
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L983
	 la $t5,L984
	 jr $t5
L983: 
	 addu $t4,$zero,12
	 move $t3,$t4
L984: 
	 la $t4,L982
	 jr $t4
L981: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L985
	 la $t4,L986
	 jr $t4
L985: 
	 lw $t5,__A_12
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L988
	 la $t5,L989
	 jr $t5
L988: 
	 addu $t4,$zero,12
	 move $t3,$t4
L989: 
	 la $t4,L987
	 jr $t4
L986: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L990
	 la $t4,L991
	 jr $t4
L990: 
	 lw $t5,__A_12
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L993
	 la $t5,L994
	 jr $t5
L993: 
	 addu $t4,$zero,12
	 move $t3,$t4
L994: 
	 la $t4,L992
	 jr $t4
L991: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L995
	 la $t4,L996
	 jr $t4
L995: 
	 lw $t5,__A_12
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L998
	 la $t5,L999
	 jr $t5
L998: 
	 addu $t4,$zero,12
	 move $t3,$t4
L999: 
	 la $t4,L997
	 jr $t4
L996: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1000
	 la $t4,L1001
	 jr $t4
L1000: 
	 lw $t5,__A_12
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1003
	 la $t5,L1004
	 jr $t5
L1003: 
	 addu $t4,$zero,12
	 move $t3,$t4
L1004: 
	 la $t4,L1002
	 jr $t4
L1001: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1005
	 la $t4,L1006
	 jr $t4
L1005: 
	 lw $t5,__A_12
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1008
	 la $t5,L1009
	 jr $t5
L1008: 
	 addu $t4,$zero,12
	 move $t3,$t4
L1009: 
	 la $t4,L1007
	 jr $t4
L1006: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1010
	 la $t4,L1011
	 jr $t4
L1010: 
	 lw $t5,__A_12
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1013
	 la $t5,L1014
	 jr $t5
L1013: 
	 addu $t4,$zero,12
	 move $t3,$t4
L1014: 
	 la $t4,L1012
	 jr $t4
L1011: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1015
	 la $t4,L1016
	 jr $t4
L1015: 
	 lw $t5,__A_12
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1018
	 la $t5,L1019
	 jr $t5
L1018: 
	 addu $t4,$zero,12
	 move $t3,$t4
L1019: 
	 la $t4,L1017
	 jr $t4
L1016: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1020
	 la $t4,L1021
	 jr $t4
L1020: 
	 lw $t5,__A_12
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1023
	 la $t5,L1024
	 jr $t5
L1023: 
	 addu $t4,$zero,12
	 move $t3,$t4
L1024: 
	 la $t4,L1022
	 jr $t4
L1021: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1025
	 la $t4,L1026
	 jr $t4
L1025: 
	 lw $t5,__A_12
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1027
	 la $t5,L1028
	 jr $t5
L1027: 
	 addu $t4,$zero,12
	 move $t3,$t4
L1028: 
L1026: 
L1022: 
L1017: 
L1012: 
L1007: 
L1002: 
L997: 
L992: 
L987: 
L982: 
L977: 
L972: 
L967: 
L962: 
L957: 
	 la $t4,L954
	 jr $t4
L953: 
	 addu $t4,$zero,13
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L1029
	 la $t4,L1030
	 jr $t4
L1029: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1032
	 la $t4,L1033
	 jr $t4
L1032: 
	 lw $t5,__A_13
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1035
	 la $t5,L1036
	 jr $t5
L1035: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1036: 
	 la $t4,L1034
	 jr $t4
L1033: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1037
	 la $t4,L1038
	 jr $t4
L1037: 
	 lw $t5,__A_13
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1040
	 la $t5,L1041
	 jr $t5
L1040: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1041: 
	 la $t4,L1039
	 jr $t4
L1038: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1042
	 la $t4,L1043
	 jr $t4
L1042: 
	 lw $t5,__A_13
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1045
	 la $t5,L1046
	 jr $t5
L1045: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1046: 
	 la $t4,L1044
	 jr $t4
L1043: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1047
	 la $t4,L1048
	 jr $t4
L1047: 
	 lw $t5,__A_13
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1050
	 la $t5,L1051
	 jr $t5
L1050: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1051: 
	 la $t4,L1049
	 jr $t4
L1048: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1052
	 la $t4,L1053
	 jr $t4
L1052: 
	 lw $t5,__A_13
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1055
	 la $t5,L1056
	 jr $t5
L1055: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1056: 
	 la $t4,L1054
	 jr $t4
L1053: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1057
	 la $t4,L1058
	 jr $t4
L1057: 
	 lw $t5,__A_13
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1060
	 la $t5,L1061
	 jr $t5
L1060: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1061: 
	 la $t4,L1059
	 jr $t4
L1058: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1062
	 la $t4,L1063
	 jr $t4
L1062: 
	 lw $t5,__A_13
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1065
	 la $t5,L1066
	 jr $t5
L1065: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1066: 
	 la $t4,L1064
	 jr $t4
L1063: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1067
	 la $t4,L1068
	 jr $t4
L1067: 
	 lw $t5,__A_13
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1070
	 la $t5,L1071
	 jr $t5
L1070: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1071: 
	 la $t4,L1069
	 jr $t4
L1068: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1072
	 la $t4,L1073
	 jr $t4
L1072: 
	 lw $t5,__A_13
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1075
	 la $t5,L1076
	 jr $t5
L1075: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1076: 
	 la $t4,L1074
	 jr $t4
L1073: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1077
	 la $t4,L1078
	 jr $t4
L1077: 
	 lw $t5,__A_13
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1080
	 la $t5,L1081
	 jr $t5
L1080: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1081: 
	 la $t4,L1079
	 jr $t4
L1078: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1082
	 la $t4,L1083
	 jr $t4
L1082: 
	 lw $t5,__A_13
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1085
	 la $t5,L1086
	 jr $t5
L1085: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1086: 
	 la $t4,L1084
	 jr $t4
L1083: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1087
	 la $t4,L1088
	 jr $t4
L1087: 
	 lw $t5,__A_13
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1090
	 la $t5,L1091
	 jr $t5
L1090: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1091: 
	 la $t4,L1089
	 jr $t4
L1088: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1092
	 la $t4,L1093
	 jr $t4
L1092: 
	 lw $t5,__A_13
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1095
	 la $t5,L1096
	 jr $t5
L1095: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1096: 
	 la $t4,L1094
	 jr $t4
L1093: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1097
	 la $t4,L1098
	 jr $t4
L1097: 
	 lw $t5,__A_13
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1100
	 la $t5,L1101
	 jr $t5
L1100: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1101: 
	 la $t4,L1099
	 jr $t4
L1098: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1102
	 la $t4,L1103
	 jr $t4
L1102: 
	 lw $t5,__A_13
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1104
	 la $t5,L1105
	 jr $t5
L1104: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1105: 
L1103: 
L1099: 
L1094: 
L1089: 
L1084: 
L1079: 
L1074: 
L1069: 
L1064: 
L1059: 
L1054: 
L1049: 
L1044: 
L1039: 
L1034: 
	 la $t4,L1031
	 jr $t4
L1030: 
	 addu $t4,$zero,14
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L1106
	 la $t4,L1107
	 jr $t4
L1106: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1108
	 la $t4,L1109
	 jr $t4
L1108: 
	 lw $t5,__A_14
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1111
	 la $t5,L1112
	 jr $t5
L1111: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1112: 
	 la $t4,L1110
	 jr $t4
L1109: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1113
	 la $t4,L1114
	 jr $t4
L1113: 
	 lw $t5,__A_14
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1116
	 la $t5,L1117
	 jr $t5
L1116: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1117: 
	 la $t4,L1115
	 jr $t4
L1114: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1118
	 la $t4,L1119
	 jr $t4
L1118: 
	 lw $t5,__A_14
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1121
	 la $t5,L1122
	 jr $t5
L1121: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1122: 
	 la $t4,L1120
	 jr $t4
L1119: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1123
	 la $t4,L1124
	 jr $t4
L1123: 
	 lw $t5,__A_14
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1126
	 la $t5,L1127
	 jr $t5
L1126: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1127: 
	 la $t4,L1125
	 jr $t4
L1124: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1128
	 la $t4,L1129
	 jr $t4
L1128: 
	 lw $t5,__A_14
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1131
	 la $t5,L1132
	 jr $t5
L1131: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1132: 
	 la $t4,L1130
	 jr $t4
L1129: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1133
	 la $t4,L1134
	 jr $t4
L1133: 
	 lw $t5,__A_14
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1136
	 la $t5,L1137
	 jr $t5
L1136: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1137: 
	 la $t4,L1135
	 jr $t4
L1134: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1138
	 la $t4,L1139
	 jr $t4
L1138: 
	 lw $t5,__A_14
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1141
	 la $t5,L1142
	 jr $t5
L1141: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1142: 
	 la $t4,L1140
	 jr $t4
L1139: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1143
	 la $t4,L1144
	 jr $t4
L1143: 
	 lw $t5,__A_14
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1146
	 la $t5,L1147
	 jr $t5
L1146: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1147: 
	 la $t4,L1145
	 jr $t4
L1144: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1148
	 la $t4,L1149
	 jr $t4
L1148: 
	 lw $t5,__A_14
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1151
	 la $t5,L1152
	 jr $t5
L1151: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1152: 
	 la $t4,L1150
	 jr $t4
L1149: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1153
	 la $t4,L1154
	 jr $t4
L1153: 
	 lw $t5,__A_14
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1156
	 la $t5,L1157
	 jr $t5
L1156: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1157: 
	 la $t4,L1155
	 jr $t4
L1154: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1158
	 la $t4,L1159
	 jr $t4
L1158: 
	 lw $t5,__A_14
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1161
	 la $t5,L1162
	 jr $t5
L1161: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1162: 
	 la $t4,L1160
	 jr $t4
L1159: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1163
	 la $t4,L1164
	 jr $t4
L1163: 
	 lw $t5,__A_14
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1166
	 la $t5,L1167
	 jr $t5
L1166: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1167: 
	 la $t4,L1165
	 jr $t4
L1164: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1168
	 la $t4,L1169
	 jr $t4
L1168: 
	 lw $t5,__A_14
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1171
	 la $t5,L1172
	 jr $t5
L1171: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1172: 
	 la $t4,L1170
	 jr $t4
L1169: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1173
	 la $t4,L1174
	 jr $t4
L1173: 
	 lw $t5,__A_14
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1176
	 la $t5,L1177
	 jr $t5
L1176: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1177: 
	 la $t4,L1175
	 jr $t4
L1174: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1178
	 la $t4,L1179
	 jr $t4
L1178: 
	 lw $t5,__A_14
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1180
	 la $t5,L1181
	 jr $t5
L1180: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1181: 
L1179: 
L1175: 
L1170: 
L1165: 
L1160: 
L1155: 
L1150: 
L1145: 
L1140: 
L1135: 
L1130: 
L1125: 
L1120: 
L1115: 
L1110: 
L1107: 
L1031: 
L954: 
L877: 
L800: 
L723: 
L646: 
L569: 
L492: 
L415: 
L338: 
L261: 
L184: 
L107: 
	 addu $t4,$zero,1
	 addu $t5,$t1,$t4
	 move $t1,$t5
	 la $t4,L102
	 jr $t4
L104: 
	 addu $t4,$zero,0
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1182
	 la $t4,L1183
	 jr $t4
L1182: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1185
	 la $t4,L1186
	 jr $t4
L1185: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1187
	 jr $t4
L1186: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1188
	 la $t4,L1189
	 jr $t4
L1188: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1190
	 jr $t4
L1189: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1191
	 la $t4,L1192
	 jr $t4
L1191: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1193
	 jr $t4
L1192: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1194
	 la $t4,L1195
	 jr $t4
L1194: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1196
	 jr $t4
L1195: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1197
	 la $t4,L1198
	 jr $t4
L1197: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1199
	 jr $t4
L1198: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1200
	 la $t4,L1201
	 jr $t4
L1200: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1202
	 jr $t4
L1201: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1203
	 la $t4,L1204
	 jr $t4
L1203: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1205
	 jr $t4
L1204: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1206
	 la $t4,L1207
	 jr $t4
L1206: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1208
	 jr $t4
L1207: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1209
	 la $t4,L1210
	 jr $t4
L1209: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1211
	 jr $t4
L1210: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1212
	 la $t4,L1213
	 jr $t4
L1212: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1214
	 jr $t4
L1213: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1215
	 la $t4,L1216
	 jr $t4
L1215: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1217
	 jr $t4
L1216: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1218
	 la $t4,L1219
	 jr $t4
L1218: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1220
	 jr $t4
L1219: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1221
	 la $t4,L1222
	 jr $t4
L1221: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1223
	 jr $t4
L1222: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1224
	 la $t4,L1225
	 jr $t4
L1224: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1226
	 jr $t4
L1225: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1227
	 la $t4,L1228
	 jr $t4
L1227: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
L1228: 
L1226: 
L1223: 
L1220: 
L1217: 
L1214: 
L1211: 
L1208: 
L1205: 
L1202: 
L1199: 
L1196: 
L1193: 
L1190: 
L1187: 
	 la $t4,L1184
	 jr $t4
L1183: 
	 addu $t4,$zero,1
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1229
	 la $t4,L1230
	 jr $t4
L1229: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1232
	 la $t4,L1233
	 jr $t4
L1232: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1234
	 jr $t4
L1233: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1235
	 la $t4,L1236
	 jr $t4
L1235: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1237
	 jr $t4
L1236: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1238
	 la $t4,L1239
	 jr $t4
L1238: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1240
	 jr $t4
L1239: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1241
	 la $t4,L1242
	 jr $t4
L1241: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1243
	 jr $t4
L1242: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1244
	 la $t4,L1245
	 jr $t4
L1244: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1246
	 jr $t4
L1245: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1247
	 la $t4,L1248
	 jr $t4
L1247: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1249
	 jr $t4
L1248: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1250
	 la $t4,L1251
	 jr $t4
L1250: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1252
	 jr $t4
L1251: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1253
	 la $t4,L1254
	 jr $t4
L1253: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1255
	 jr $t4
L1254: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1256
	 la $t4,L1257
	 jr $t4
L1256: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1258
	 jr $t4
L1257: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1259
	 la $t4,L1260
	 jr $t4
L1259: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1261
	 jr $t4
L1260: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1262
	 la $t4,L1263
	 jr $t4
L1262: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1264
	 jr $t4
L1263: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1265
	 la $t4,L1266
	 jr $t4
L1265: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1267
	 jr $t4
L1266: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1268
	 la $t4,L1269
	 jr $t4
L1268: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1270
	 jr $t4
L1269: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1271
	 la $t4,L1272
	 jr $t4
L1271: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1273
	 jr $t4
L1272: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1274
	 la $t4,L1275
	 jr $t4
L1274: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
L1275: 
L1273: 
L1270: 
L1267: 
L1264: 
L1261: 
L1258: 
L1255: 
L1252: 
L1249: 
L1246: 
L1243: 
L1240: 
L1237: 
L1234: 
	 la $t4,L1231
	 jr $t4
L1230: 
	 addu $t4,$zero,2
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1276
	 la $t4,L1277
	 jr $t4
L1276: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1279
	 la $t4,L1280
	 jr $t4
L1279: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1281
	 jr $t4
L1280: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1282
	 la $t4,L1283
	 jr $t4
L1282: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1284
	 jr $t4
L1283: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1285
	 la $t4,L1286
	 jr $t4
L1285: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1287
	 jr $t4
L1286: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1288
	 la $t4,L1289
	 jr $t4
L1288: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1290
	 jr $t4
L1289: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1291
	 la $t4,L1292
	 jr $t4
L1291: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1293
	 jr $t4
L1292: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1294
	 la $t4,L1295
	 jr $t4
L1294: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1296
	 jr $t4
L1295: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1297
	 la $t4,L1298
	 jr $t4
L1297: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1299
	 jr $t4
L1298: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1300
	 la $t4,L1301
	 jr $t4
L1300: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1302
	 jr $t4
L1301: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1303
	 la $t4,L1304
	 jr $t4
L1303: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1305
	 jr $t4
L1304: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1306
	 la $t4,L1307
	 jr $t4
L1306: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1308
	 jr $t4
L1307: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1309
	 la $t4,L1310
	 jr $t4
L1309: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1311
	 jr $t4
L1310: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1312
	 la $t4,L1313
	 jr $t4
L1312: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1314
	 jr $t4
L1313: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1315
	 la $t4,L1316
	 jr $t4
L1315: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1317
	 jr $t4
L1316: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1318
	 la $t4,L1319
	 jr $t4
L1318: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1320
	 jr $t4
L1319: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1321
	 la $t4,L1322
	 jr $t4
L1321: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
L1322: 
L1320: 
L1317: 
L1314: 
L1311: 
L1308: 
L1305: 
L1302: 
L1299: 
L1296: 
L1293: 
L1290: 
L1287: 
L1284: 
L1281: 
	 la $t4,L1278
	 jr $t4
L1277: 
	 addu $t4,$zero,3
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1323
	 la $t4,L1324
	 jr $t4
L1323: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1326
	 la $t4,L1327
	 jr $t4
L1326: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1328
	 jr $t4
L1327: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1329
	 la $t4,L1330
	 jr $t4
L1329: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1331
	 jr $t4
L1330: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1332
	 la $t4,L1333
	 jr $t4
L1332: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1334
	 jr $t4
L1333: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1335
	 la $t4,L1336
	 jr $t4
L1335: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1337
	 jr $t4
L1336: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1338
	 la $t4,L1339
	 jr $t4
L1338: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1340
	 jr $t4
L1339: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1341
	 la $t4,L1342
	 jr $t4
L1341: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1343
	 jr $t4
L1342: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1344
	 la $t4,L1345
	 jr $t4
L1344: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1346
	 jr $t4
L1345: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1347
	 la $t4,L1348
	 jr $t4
L1347: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1349
	 jr $t4
L1348: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1350
	 la $t4,L1351
	 jr $t4
L1350: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1352
	 jr $t4
L1351: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1353
	 la $t4,L1354
	 jr $t4
L1353: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1355
	 jr $t4
L1354: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1356
	 la $t4,L1357
	 jr $t4
L1356: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1358
	 jr $t4
L1357: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1359
	 la $t4,L1360
	 jr $t4
L1359: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1361
	 jr $t4
L1360: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1362
	 la $t4,L1363
	 jr $t4
L1362: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1364
	 jr $t4
L1363: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1365
	 la $t4,L1366
	 jr $t4
L1365: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1367
	 jr $t4
L1366: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1368
	 la $t4,L1369
	 jr $t4
L1368: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
L1369: 
L1367: 
L1364: 
L1361: 
L1358: 
L1355: 
L1352: 
L1349: 
L1346: 
L1343: 
L1340: 
L1337: 
L1334: 
L1331: 
L1328: 
	 la $t4,L1325
	 jr $t4
L1324: 
	 addu $t4,$zero,4
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1370
	 la $t4,L1371
	 jr $t4
L1370: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1373
	 la $t4,L1374
	 jr $t4
L1373: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1375
	 jr $t4
L1374: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1376
	 la $t4,L1377
	 jr $t4
L1376: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1378
	 jr $t4
L1377: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1379
	 la $t4,L1380
	 jr $t4
L1379: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1381
	 jr $t4
L1380: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1382
	 la $t4,L1383
	 jr $t4
L1382: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1384
	 jr $t4
L1383: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1385
	 la $t4,L1386
	 jr $t4
L1385: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1387
	 jr $t4
L1386: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1388
	 la $t4,L1389
	 jr $t4
L1388: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1390
	 jr $t4
L1389: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1391
	 la $t4,L1392
	 jr $t4
L1391: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1393
	 jr $t4
L1392: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1394
	 la $t4,L1395
	 jr $t4
L1394: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1396
	 jr $t4
L1395: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1397
	 la $t4,L1398
	 jr $t4
L1397: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1399
	 jr $t4
L1398: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1400
	 la $t4,L1401
	 jr $t4
L1400: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1402
	 jr $t4
L1401: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1403
	 la $t4,L1404
	 jr $t4
L1403: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1405
	 jr $t4
L1404: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1406
	 la $t4,L1407
	 jr $t4
L1406: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1408
	 jr $t4
L1407: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1409
	 la $t4,L1410
	 jr $t4
L1409: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1411
	 jr $t4
L1410: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1412
	 la $t4,L1413
	 jr $t4
L1412: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1414
	 jr $t4
L1413: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1415
	 la $t4,L1416
	 jr $t4
L1415: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
L1416: 
L1414: 
L1411: 
L1408: 
L1405: 
L1402: 
L1399: 
L1396: 
L1393: 
L1390: 
L1387: 
L1384: 
L1381: 
L1378: 
L1375: 
	 la $t4,L1372
	 jr $t4
L1371: 
	 addu $t4,$zero,5
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1417
	 la $t4,L1418
	 jr $t4
L1417: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1420
	 la $t4,L1421
	 jr $t4
L1420: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1422
	 jr $t4
L1421: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1423
	 la $t4,L1424
	 jr $t4
L1423: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1425
	 jr $t4
L1424: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1426
	 la $t4,L1427
	 jr $t4
L1426: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1428
	 jr $t4
L1427: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1429
	 la $t4,L1430
	 jr $t4
L1429: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1431
	 jr $t4
L1430: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1432
	 la $t4,L1433
	 jr $t4
L1432: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1434
	 jr $t4
L1433: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1435
	 la $t4,L1436
	 jr $t4
L1435: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1437
	 jr $t4
L1436: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1438
	 la $t4,L1439
	 jr $t4
L1438: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1440
	 jr $t4
L1439: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1441
	 la $t4,L1442
	 jr $t4
L1441: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1443
	 jr $t4
L1442: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1444
	 la $t4,L1445
	 jr $t4
L1444: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1446
	 jr $t4
L1445: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1447
	 la $t4,L1448
	 jr $t4
L1447: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1449
	 jr $t4
L1448: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1450
	 la $t4,L1451
	 jr $t4
L1450: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1452
	 jr $t4
L1451: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1453
	 la $t4,L1454
	 jr $t4
L1453: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1455
	 jr $t4
L1454: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1456
	 la $t4,L1457
	 jr $t4
L1456: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1458
	 jr $t4
L1457: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1459
	 la $t4,L1460
	 jr $t4
L1459: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1461
	 jr $t4
L1460: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1462
	 la $t4,L1463
	 jr $t4
L1462: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
L1463: 
L1461: 
L1458: 
L1455: 
L1452: 
L1449: 
L1446: 
L1443: 
L1440: 
L1437: 
L1434: 
L1431: 
L1428: 
L1425: 
L1422: 
	 la $t4,L1419
	 jr $t4
L1418: 
	 addu $t4,$zero,6
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1464
	 la $t4,L1465
	 jr $t4
L1464: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1467
	 la $t4,L1468
	 jr $t4
L1467: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1469
	 jr $t4
L1468: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1470
	 la $t4,L1471
	 jr $t4
L1470: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1472
	 jr $t4
L1471: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1473
	 la $t4,L1474
	 jr $t4
L1473: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1475
	 jr $t4
L1474: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1476
	 la $t4,L1477
	 jr $t4
L1476: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1478
	 jr $t4
L1477: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1479
	 la $t4,L1480
	 jr $t4
L1479: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1481
	 jr $t4
L1480: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1482
	 la $t4,L1483
	 jr $t4
L1482: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1484
	 jr $t4
L1483: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1485
	 la $t4,L1486
	 jr $t4
L1485: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1487
	 jr $t4
L1486: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1488
	 la $t4,L1489
	 jr $t4
L1488: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1490
	 jr $t4
L1489: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1491
	 la $t4,L1492
	 jr $t4
L1491: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1493
	 jr $t4
L1492: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1494
	 la $t4,L1495
	 jr $t4
L1494: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1496
	 jr $t4
L1495: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1497
	 la $t4,L1498
	 jr $t4
L1497: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1499
	 jr $t4
L1498: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1500
	 la $t4,L1501
	 jr $t4
L1500: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1502
	 jr $t4
L1501: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1503
	 la $t4,L1504
	 jr $t4
L1503: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1505
	 jr $t4
L1504: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1506
	 la $t4,L1507
	 jr $t4
L1506: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1508
	 jr $t4
L1507: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1509
	 la $t4,L1510
	 jr $t4
L1509: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
L1510: 
L1508: 
L1505: 
L1502: 
L1499: 
L1496: 
L1493: 
L1490: 
L1487: 
L1484: 
L1481: 
L1478: 
L1475: 
L1472: 
L1469: 
	 la $t4,L1466
	 jr $t4
L1465: 
	 addu $t4,$zero,7
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1511
	 la $t4,L1512
	 jr $t4
L1511: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1514
	 la $t4,L1515
	 jr $t4
L1514: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1516
	 jr $t4
L1515: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1517
	 la $t4,L1518
	 jr $t4
L1517: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1519
	 jr $t4
L1518: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1520
	 la $t4,L1521
	 jr $t4
L1520: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1522
	 jr $t4
L1521: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1523
	 la $t4,L1524
	 jr $t4
L1523: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1525
	 jr $t4
L1524: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1526
	 la $t4,L1527
	 jr $t4
L1526: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1528
	 jr $t4
L1527: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1529
	 la $t4,L1530
	 jr $t4
L1529: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1531
	 jr $t4
L1530: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1532
	 la $t4,L1533
	 jr $t4
L1532: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1534
	 jr $t4
L1533: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1535
	 la $t4,L1536
	 jr $t4
L1535: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1537
	 jr $t4
L1536: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1538
	 la $t4,L1539
	 jr $t4
L1538: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1540
	 jr $t4
L1539: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1541
	 la $t4,L1542
	 jr $t4
L1541: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1543
	 jr $t4
L1542: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1544
	 la $t4,L1545
	 jr $t4
L1544: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1546
	 jr $t4
L1545: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1547
	 la $t4,L1548
	 jr $t4
L1547: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1549
	 jr $t4
L1548: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1550
	 la $t4,L1551
	 jr $t4
L1550: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1552
	 jr $t4
L1551: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1553
	 la $t4,L1554
	 jr $t4
L1553: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1555
	 jr $t4
L1554: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1556
	 la $t4,L1557
	 jr $t4
L1556: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
L1557: 
L1555: 
L1552: 
L1549: 
L1546: 
L1543: 
L1540: 
L1537: 
L1534: 
L1531: 
L1528: 
L1525: 
L1522: 
L1519: 
L1516: 
	 la $t4,L1513
	 jr $t4
L1512: 
	 addu $t4,$zero,8
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1558
	 la $t4,L1559
	 jr $t4
L1558: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1561
	 la $t4,L1562
	 jr $t4
L1561: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1563
	 jr $t4
L1562: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1564
	 la $t4,L1565
	 jr $t4
L1564: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1566
	 jr $t4
L1565: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1567
	 la $t4,L1568
	 jr $t4
L1567: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1569
	 jr $t4
L1568: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1570
	 la $t4,L1571
	 jr $t4
L1570: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1572
	 jr $t4
L1571: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1573
	 la $t4,L1574
	 jr $t4
L1573: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1575
	 jr $t4
L1574: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1576
	 la $t4,L1577
	 jr $t4
L1576: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1578
	 jr $t4
L1577: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1579
	 la $t4,L1580
	 jr $t4
L1579: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1581
	 jr $t4
L1580: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1582
	 la $t4,L1583
	 jr $t4
L1582: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1584
	 jr $t4
L1583: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1585
	 la $t4,L1586
	 jr $t4
L1585: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1587
	 jr $t4
L1586: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1588
	 la $t4,L1589
	 jr $t4
L1588: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1590
	 jr $t4
L1589: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1591
	 la $t4,L1592
	 jr $t4
L1591: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1593
	 jr $t4
L1592: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1594
	 la $t4,L1595
	 jr $t4
L1594: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1596
	 jr $t4
L1595: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1597
	 la $t4,L1598
	 jr $t4
L1597: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1599
	 jr $t4
L1598: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1600
	 la $t4,L1601
	 jr $t4
L1600: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1602
	 jr $t4
L1601: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1603
	 la $t4,L1604
	 jr $t4
L1603: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
L1604: 
L1602: 
L1599: 
L1596: 
L1593: 
L1590: 
L1587: 
L1584: 
L1581: 
L1578: 
L1575: 
L1572: 
L1569: 
L1566: 
L1563: 
	 la $t4,L1560
	 jr $t4
L1559: 
	 addu $t4,$zero,9
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1605
	 la $t4,L1606
	 jr $t4
L1605: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1608
	 la $t4,L1609
	 jr $t4
L1608: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1610
	 jr $t4
L1609: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1611
	 la $t4,L1612
	 jr $t4
L1611: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1613
	 jr $t4
L1612: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1614
	 la $t4,L1615
	 jr $t4
L1614: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1616
	 jr $t4
L1615: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1617
	 la $t4,L1618
	 jr $t4
L1617: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1619
	 jr $t4
L1618: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1620
	 la $t4,L1621
	 jr $t4
L1620: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1622
	 jr $t4
L1621: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1623
	 la $t4,L1624
	 jr $t4
L1623: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1625
	 jr $t4
L1624: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1626
	 la $t4,L1627
	 jr $t4
L1626: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1628
	 jr $t4
L1627: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1629
	 la $t4,L1630
	 jr $t4
L1629: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1631
	 jr $t4
L1630: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1632
	 la $t4,L1633
	 jr $t4
L1632: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1634
	 jr $t4
L1633: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1635
	 la $t4,L1636
	 jr $t4
L1635: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1637
	 jr $t4
L1636: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1638
	 la $t4,L1639
	 jr $t4
L1638: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1640
	 jr $t4
L1639: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1641
	 la $t4,L1642
	 jr $t4
L1641: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1643
	 jr $t4
L1642: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1644
	 la $t4,L1645
	 jr $t4
L1644: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1646
	 jr $t4
L1645: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1647
	 la $t4,L1648
	 jr $t4
L1647: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1649
	 jr $t4
L1648: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1650
	 la $t4,L1651
	 jr $t4
L1650: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
L1651: 
L1649: 
L1646: 
L1643: 
L1640: 
L1637: 
L1634: 
L1631: 
L1628: 
L1625: 
L1622: 
L1619: 
L1616: 
L1613: 
L1610: 
	 la $t4,L1607
	 jr $t4
L1606: 
	 addu $t4,$zero,10
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1652
	 la $t4,L1653
	 jr $t4
L1652: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1655
	 la $t4,L1656
	 jr $t4
L1655: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1657
	 jr $t4
L1656: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1658
	 la $t4,L1659
	 jr $t4
L1658: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1660
	 jr $t4
L1659: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1661
	 la $t4,L1662
	 jr $t4
L1661: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1663
	 jr $t4
L1662: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1664
	 la $t4,L1665
	 jr $t4
L1664: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1666
	 jr $t4
L1665: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1667
	 la $t4,L1668
	 jr $t4
L1667: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1669
	 jr $t4
L1668: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1670
	 la $t4,L1671
	 jr $t4
L1670: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1672
	 jr $t4
L1671: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1673
	 la $t4,L1674
	 jr $t4
L1673: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1675
	 jr $t4
L1674: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1676
	 la $t4,L1677
	 jr $t4
L1676: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1678
	 jr $t4
L1677: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1679
	 la $t4,L1680
	 jr $t4
L1679: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1681
	 jr $t4
L1680: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1682
	 la $t4,L1683
	 jr $t4
L1682: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1684
	 jr $t4
L1683: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1685
	 la $t4,L1686
	 jr $t4
L1685: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1687
	 jr $t4
L1686: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1688
	 la $t4,L1689
	 jr $t4
L1688: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1690
	 jr $t4
L1689: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1691
	 la $t4,L1692
	 jr $t4
L1691: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1693
	 jr $t4
L1692: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1694
	 la $t4,L1695
	 jr $t4
L1694: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1696
	 jr $t4
L1695: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1697
	 la $t4,L1698
	 jr $t4
L1697: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
L1698: 
L1696: 
L1693: 
L1690: 
L1687: 
L1684: 
L1681: 
L1678: 
L1675: 
L1672: 
L1669: 
L1666: 
L1663: 
L1660: 
L1657: 
	 la $t4,L1654
	 jr $t4
L1653: 
	 addu $t4,$zero,11
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1699
	 la $t4,L1700
	 jr $t4
L1699: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1702
	 la $t4,L1703
	 jr $t4
L1702: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1704
	 jr $t4
L1703: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1705
	 la $t4,L1706
	 jr $t4
L1705: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1707
	 jr $t4
L1706: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1708
	 la $t4,L1709
	 jr $t4
L1708: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1710
	 jr $t4
L1709: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1711
	 la $t4,L1712
	 jr $t4
L1711: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1713
	 jr $t4
L1712: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1714
	 la $t4,L1715
	 jr $t4
L1714: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1716
	 jr $t4
L1715: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1717
	 la $t4,L1718
	 jr $t4
L1717: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1719
	 jr $t4
L1718: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1720
	 la $t4,L1721
	 jr $t4
L1720: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1722
	 jr $t4
L1721: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1723
	 la $t4,L1724
	 jr $t4
L1723: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1725
	 jr $t4
L1724: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1726
	 la $t4,L1727
	 jr $t4
L1726: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1728
	 jr $t4
L1727: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1729
	 la $t4,L1730
	 jr $t4
L1729: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1731
	 jr $t4
L1730: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1732
	 la $t4,L1733
	 jr $t4
L1732: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1734
	 jr $t4
L1733: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1735
	 la $t4,L1736
	 jr $t4
L1735: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1737
	 jr $t4
L1736: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1738
	 la $t4,L1739
	 jr $t4
L1738: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1740
	 jr $t4
L1739: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1741
	 la $t4,L1742
	 jr $t4
L1741: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1743
	 jr $t4
L1742: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1744
	 la $t4,L1745
	 jr $t4
L1744: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
L1745: 
L1743: 
L1740: 
L1737: 
L1734: 
L1731: 
L1728: 
L1725: 
L1722: 
L1719: 
L1716: 
L1713: 
L1710: 
L1707: 
L1704: 
	 la $t4,L1701
	 jr $t4
L1700: 
	 addu $t4,$zero,12
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1746
	 la $t4,L1747
	 jr $t4
L1746: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1749
	 la $t4,L1750
	 jr $t4
L1749: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1751
	 jr $t4
L1750: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1752
	 la $t4,L1753
	 jr $t4
L1752: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1754
	 jr $t4
L1753: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1755
	 la $t4,L1756
	 jr $t4
L1755: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1757
	 jr $t4
L1756: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1758
	 la $t4,L1759
	 jr $t4
L1758: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1760
	 jr $t4
L1759: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1761
	 la $t4,L1762
	 jr $t4
L1761: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1763
	 jr $t4
L1762: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1764
	 la $t4,L1765
	 jr $t4
L1764: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1766
	 jr $t4
L1765: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1767
	 la $t4,L1768
	 jr $t4
L1767: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1769
	 jr $t4
L1768: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1770
	 la $t4,L1771
	 jr $t4
L1770: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1772
	 jr $t4
L1771: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1773
	 la $t4,L1774
	 jr $t4
L1773: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1775
	 jr $t4
L1774: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1776
	 la $t4,L1777
	 jr $t4
L1776: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1778
	 jr $t4
L1777: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1779
	 la $t4,L1780
	 jr $t4
L1779: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1781
	 jr $t4
L1780: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1782
	 la $t4,L1783
	 jr $t4
L1782: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1784
	 jr $t4
L1783: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1785
	 la $t4,L1786
	 jr $t4
L1785: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1787
	 jr $t4
L1786: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1788
	 la $t4,L1789
	 jr $t4
L1788: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1790
	 jr $t4
L1789: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1791
	 la $t4,L1792
	 jr $t4
L1791: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
L1792: 
L1790: 
L1787: 
L1784: 
L1781: 
L1778: 
L1775: 
L1772: 
L1769: 
L1766: 
L1763: 
L1760: 
L1757: 
L1754: 
L1751: 
	 la $t4,L1748
	 jr $t4
L1747: 
	 addu $t4,$zero,13
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1793
	 la $t4,L1794
	 jr $t4
L1793: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1795
	 la $t4,L1796
	 jr $t4
L1795: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1797
	 jr $t4
L1796: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1798
	 la $t4,L1799
	 jr $t4
L1798: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1800
	 jr $t4
L1799: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1801
	 la $t4,L1802
	 jr $t4
L1801: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1803
	 jr $t4
L1802: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1804
	 la $t4,L1805
	 jr $t4
L1804: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1806
	 jr $t4
L1805: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1807
	 la $t4,L1808
	 jr $t4
L1807: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1809
	 jr $t4
L1808: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1810
	 la $t4,L1811
	 jr $t4
L1810: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1812
	 jr $t4
L1811: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1813
	 la $t4,L1814
	 jr $t4
L1813: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1815
	 jr $t4
L1814: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1816
	 la $t4,L1817
	 jr $t4
L1816: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1818
	 jr $t4
L1817: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1819
	 la $t4,L1820
	 jr $t4
L1819: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1821
	 jr $t4
L1820: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1822
	 la $t4,L1823
	 jr $t4
L1822: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1824
	 jr $t4
L1823: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1825
	 la $t4,L1826
	 jr $t4
L1825: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1827
	 jr $t4
L1826: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1828
	 la $t4,L1829
	 jr $t4
L1828: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1830
	 jr $t4
L1829: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1831
	 la $t4,L1832
	 jr $t4
L1831: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1833
	 jr $t4
L1832: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1834
	 la $t4,L1835
	 jr $t4
L1834: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1836
	 jr $t4
L1835: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1837
	 la $t4,L1838
	 jr $t4
L1837: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
L1838: 
L1836: 
L1833: 
L1830: 
L1827: 
L1824: 
L1821: 
L1818: 
L1815: 
L1812: 
L1809: 
L1806: 
L1803: 
L1800: 
L1797: 
L1794: 
L1748: 
L1701: 
L1654: 
L1607: 
L1560: 
L1513: 
L1466: 
L1419: 
L1372: 
L1325: 
L1278: 
L1231: 
L1184: 
	 la $t4,L18
	 jalr $t4
	 addu $t4,$zero,1
	 addu $t5,$t0,$t4
	 move $t0,$t5
	 la $t4,L99
	 jr $t4
L101: 
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

	 move $t0,$zero
	 addu $t1,$zero,0
	 move $t0,$t1
L1839: 
	 addu $t1,$zero,14
	 sle $t2,$t0,$t1
	 bne $t2,$zero,L1840
	 la $t1,L1841
	 jr $t1
L1840: 
	 addu $t1,$zero,0
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1842
	 la $t1,L1843
	 jr $t1
L1842: 
	 lw $t1,__A_0
	 move $a0, $t1
	 la $t2,L33
	 jalr $t2
	 la $t1,L2
	 move $a0, $t1
	 la $t2,L35
	 jalr $t2
	 la $t1,L1844
	 jr $t1
L1843: 
	 addu $t1,$zero,1
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1845
	 la $t1,L1846
	 jr $t1
L1845: 
	 lw $t1,__A_1
	 move $a0, $t1
	 la $t2,L33
	 jalr $t2
	 la $t1,L3
	 move $a0, $t1
	 la $t2,L35
	 jalr $t2
	 la $t1,L1847
	 jr $t1
L1846: 
	 addu $t1,$zero,2
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1848
	 la $t1,L1849
	 jr $t1
L1848: 
	 lw $t1,__A_2
	 move $a0, $t1
	 la $t2,L33
	 jalr $t2
	 la $t1,L4
	 move $a0, $t1
	 la $t2,L35
	 jalr $t2
	 la $t1,L1850
	 jr $t1
L1849: 
	 addu $t1,$zero,3
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1851
	 la $t1,L1852
	 jr $t1
L1851: 
	 lw $t1,__A_3
	 move $a0, $t1
	 la $t2,L33
	 jalr $t2
	 la $t1,L5
	 move $a0, $t1
	 la $t2,L35
	 jalr $t2
	 la $t1,L1853
	 jr $t1
L1852: 
	 addu $t1,$zero,4
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1854
	 la $t1,L1855
	 jr $t1
L1854: 
	 lw $t1,__A_4
	 move $a0, $t1
	 la $t2,L33
	 jalr $t2
	 la $t1,L6
	 move $a0, $t1
	 la $t2,L35
	 jalr $t2
	 la $t1,L1856
	 jr $t1
L1855: 
	 addu $t1,$zero,5
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1857
	 la $t1,L1858
	 jr $t1
L1857: 
	 lw $t1,__A_5
	 move $a0, $t1
	 la $t2,L33
	 jalr $t2
	 la $t1,L7
	 move $a0, $t1
	 la $t2,L35
	 jalr $t2
	 la $t1,L1859
	 jr $t1
L1858: 
	 addu $t1,$zero,6
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1860
	 la $t1,L1861
	 jr $t1
L1860: 
	 lw $t1,__A_6
	 move $a0, $t1
	 la $t2,L33
	 jalr $t2
	 la $t1,L8
	 move $a0, $t1
	 la $t2,L35
	 jalr $t2
	 la $t1,L1862
	 jr $t1
L1861: 
	 addu $t1,$zero,7
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1863
	 la $t1,L1864
	 jr $t1
L1863: 
	 lw $t1,__A_7
	 move $a0, $t1
	 la $t2,L33
	 jalr $t2
	 la $t1,L9
	 move $a0, $t1
	 la $t2,L35
	 jalr $t2
	 la $t1,L1865
	 jr $t1
L1864: 
	 addu $t1,$zero,8
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1866
	 la $t1,L1867
	 jr $t1
L1866: 
	 lw $t1,__A_8
	 move $a0, $t1
	 la $t2,L33
	 jalr $t2
	 la $t1,L10
	 move $a0, $t1
	 la $t2,L35
	 jalr $t2
	 la $t1,L1868
	 jr $t1
L1867: 
	 addu $t1,$zero,9
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1869
	 la $t1,L1870
	 jr $t1
L1869: 
	 lw $t1,__A_9
	 move $a0, $t1
	 la $t2,L33
	 jalr $t2
	 la $t1,L11
	 move $a0, $t1
	 la $t2,L35
	 jalr $t2
	 la $t1,L1871
	 jr $t1
L1870: 
	 addu $t1,$zero,10
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1872
	 la $t1,L1873
	 jr $t1
L1872: 
	 lw $t1,__A_10
	 move $a0, $t1
	 la $t2,L33
	 jalr $t2
	 la $t1,L12
	 move $a0, $t1
	 la $t2,L35
	 jalr $t2
	 la $t1,L1874
	 jr $t1
L1873: 
	 addu $t1,$zero,11
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1875
	 la $t1,L1876
	 jr $t1
L1875: 
	 lw $t1,__A_11
	 move $a0, $t1
	 la $t2,L33
	 jalr $t2
	 la $t1,L13
	 move $a0, $t1
	 la $t2,L35
	 jalr $t2
	 la $t1,L1877
	 jr $t1
L1876: 
	 addu $t1,$zero,12
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1878
	 la $t1,L1879
	 jr $t1
L1878: 
	 lw $t1,__A_12
	 move $a0, $t1
	 la $t2,L33
	 jalr $t2
	 la $t1,L14
	 move $a0, $t1
	 la $t2,L35
	 jalr $t2
	 la $t1,L1880
	 jr $t1
L1879: 
	 addu $t1,$zero,13
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1881
	 la $t1,L1882
	 jr $t1
L1881: 
	 lw $t1,__A_13
	 move $a0, $t1
	 la $t2,L33
	 jalr $t2
	 la $t1,L15
	 move $a0, $t1
	 la $t2,L35
	 jalr $t2
	 la $t1,L1883
	 jr $t1
L1882: 
	 addu $t1,$zero,14
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1884
	 la $t1,L1885
	 jr $t1
L1884: 
	 lw $t1,__A_14
	 move $a0, $t1
	 la $t2,L33
	 jalr $t2
	 la $t1,L16
	 move $a0, $t1
	 la $t2,L35
	 jalr $t2
L1885: 
L1883: 
L1880: 
L1877: 
L1874: 
L1871: 
L1868: 
L1865: 
L1862: 
L1859: 
L1856: 
L1853: 
L1850: 
L1847: 
L1844: 
	 addu $t1,$zero,1
	 addu $t2,$t0,$t1
	 move $t0,$t2
	 la $t1,L1839
	 jr $t1
L1841: 
	 la $t1,L17
	 move $a0, $t1
	 la $t2,L35
	 jalr $t2
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

L20: 
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
	 la $t1,__INTERNALX
	 sw $t0,0($t1) 
L21: 
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

	 addu $t0,$zero,17
	 lw $t2,__INTERNALX
	 mul $t1,$t0,$t2
	 addu $t0,$zero,13
	 addu $t2,$t1,$t0
	 addu $t0,$zero,32768
	 bne $t0,$zero,L1886
li $v0,4
la $a0,div_error_msg
syscall
li $v0,10
syscall
L1886: 
	 div $t2,$t0
	 mfhi $t1
	 la $t0,__INTERNALX
	 sw $t1,0($t0) 
	 lw $t0,__INTERNALX
	 move $v0,$t0
	 la $t1,L23
	 jr $t1
li $v0,4
la $a0,error_msg
syscall
li $v0,10
syscall
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

