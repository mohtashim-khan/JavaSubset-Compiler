.data
error_msg: .asciiz "MIPS ERROR: Function did not return!\n"  
boolean_true: .asciiz "true\n"  
boolean_false: .asciiz "false\n"  
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
L2: .asciiz " " 
L3: .asciiz " " 
L4: .asciiz " " 
L5: .asciiz " " 
L6: .asciiz " " 
L7: .asciiz " " 
L8: .asciiz " " 
L9: .asciiz " " 
L10: .asciiz " " 
L11: .asciiz " " 
L12: .asciiz " " 
L13: .asciiz " " 
L14: .asciiz " " 
L15: .asciiz " " 
L16: .asciiz " " 
L17: .asciiz "\n" 
__INTERNALX: .word 0 
.text
.globl main
main: 
	 jal L0
li $v0,10
syscall
L24: 
li $v0,12
syscall
jr $ra 
L26: 
li $v0,10
syscall
jr $ra 
L28: 
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
L30: 
li $v0,11
syscall
jr $ra 
L32: 
li $v0,1
syscall
jr $ra 
L34: 
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

	 addu $t4,$zero,1
	 move $a0, $t4
	 la $t4,L20
	 jalr $t4
	 addu $t4,$zero,0
	 move $t0,$t4
L36: 
	 addu $t4,$zero,14
	 sle $t5,$t0,$t4
	 bne $t5,$zero,L37
	 la $t4,L38
	 jr $t4
L37: 
	 addu $t4,$zero,0
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L39
	 la $t4,L40
	 jr $t4
L39: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_0
	 sw $t6,0($t4) 
	 la $t4,L41
	 jr $t4
L40: 
	 addu $t4,$zero,1
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L42
	 la $t4,L43
	 jr $t4
L42: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_1
	 sw $t6,0($t4) 
	 la $t4,L44
	 jr $t4
L43: 
	 addu $t4,$zero,2
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L45
	 la $t4,L46
	 jr $t4
L45: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_2
	 sw $t6,0($t4) 
	 la $t4,L47
	 jr $t4
L46: 
	 addu $t4,$zero,3
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L48
	 la $t4,L49
	 jr $t4
L48: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_3
	 sw $t6,0($t4) 
	 la $t4,L50
	 jr $t4
L49: 
	 addu $t4,$zero,4
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L51
	 la $t4,L52
	 jr $t4
L51: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_4
	 sw $t6,0($t4) 
	 la $t4,L53
	 jr $t4
L52: 
	 addu $t4,$zero,5
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L54
	 la $t4,L55
	 jr $t4
L54: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_5
	 sw $t6,0($t4) 
	 la $t4,L56
	 jr $t4
L55: 
	 addu $t4,$zero,6
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L57
	 la $t4,L58
	 jr $t4
L57: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_6
	 sw $t6,0($t4) 
	 la $t4,L59
	 jr $t4
L58: 
	 addu $t4,$zero,7
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L60
	 la $t4,L61
	 jr $t4
L60: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_7
	 sw $t6,0($t4) 
	 la $t4,L62
	 jr $t4
L61: 
	 addu $t4,$zero,8
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L63
	 la $t4,L64
	 jr $t4
L63: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_8
	 sw $t6,0($t4) 
	 la $t4,L65
	 jr $t4
L64: 
	 addu $t4,$zero,9
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L66
	 la $t4,L67
	 jr $t4
L66: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_9
	 sw $t6,0($t4) 
	 la $t4,L68
	 jr $t4
L67: 
	 addu $t4,$zero,10
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L69
	 la $t4,L70
	 jr $t4
L69: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_10
	 sw $t6,0($t4) 
	 la $t4,L71
	 jr $t4
L70: 
	 addu $t4,$zero,11
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L72
	 la $t4,L73
	 jr $t4
L72: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_11
	 sw $t6,0($t4) 
	 la $t4,L74
	 jr $t4
L73: 
	 addu $t4,$zero,12
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L75
	 la $t4,L76
	 jr $t4
L75: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_12
	 sw $t6,0($t4) 
	 la $t4,L77
	 jr $t4
L76: 
	 addu $t4,$zero,13
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L78
	 la $t4,L79
	 jr $t4
L78: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_13
	 sw $t6,0($t4) 
	 la $t4,L80
	 jr $t4
L79: 
	 addu $t4,$zero,14
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L81
	 la $t4,L82
	 jr $t4
L81: 
	 la $t4,L22
	 jalr $t4
	 move $t4,$v0
	 addu $t5,$zero,100
	 div $t4,$t5
	 mfhi $t6
	 la $t4,__A_14
	 sw $t6,0($t4) 
L82: 
L80: 
L77: 
L74: 
L71: 
L68: 
L65: 
L62: 
L59: 
L56: 
L53: 
L50: 
L47: 
L44: 
L41: 
	 addu $t4,$zero,1
	 addu $t5,$t0,$t4
	 move $t0,$t5
	 la $t4,L36
	 jr $t4
L38: 
	 la $t4,L18
	 jalr $t4
	 addu $t4,$zero,0
	 move $t0,$t4
L83: 
	 addu $t4,$zero,13
	 sle $t5,$t0,$t4
	 bne $t5,$zero,L84
	 la $t4,L85
	 jr $t4
L84: 
	 move $t3,$t0
	 addu $t4,$zero,1
	 addu $t5,$t0,$t4
	 move $t1,$t5
L86: 
	 addu $t4,$zero,14
	 sle $t5,$t1,$t4
	 bne $t5,$zero,L87
	 la $t4,L88
	 jr $t4
L87: 
	 addu $t4,$zero,1
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L89
	 la $t4,L90
	 jr $t4
L89: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L92
	 la $t4,L93
	 jr $t4
L92: 
	 lw $t5,__A_1
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L95
	 la $t5,L96
	 jr $t5
L95: 
	 addu $t4,$zero,1
	 move $t3,$t4
L96: 
	 la $t4,L94
	 jr $t4
L93: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L97
	 la $t4,L98
	 jr $t4
L97: 
	 lw $t5,__A_1
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L100
	 la $t5,L101
	 jr $t5
L100: 
	 addu $t4,$zero,1
	 move $t3,$t4
L101: 
	 la $t4,L99
	 jr $t4
L98: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L102
	 la $t4,L103
	 jr $t4
L102: 
	 lw $t5,__A_1
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L105
	 la $t5,L106
	 jr $t5
L105: 
	 addu $t4,$zero,1
	 move $t3,$t4
L106: 
	 la $t4,L104
	 jr $t4
L103: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L107
	 la $t4,L108
	 jr $t4
L107: 
	 lw $t5,__A_1
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L110
	 la $t5,L111
	 jr $t5
L110: 
	 addu $t4,$zero,1
	 move $t3,$t4
L111: 
	 la $t4,L109
	 jr $t4
L108: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L112
	 la $t4,L113
	 jr $t4
L112: 
	 lw $t5,__A_1
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L115
	 la $t5,L116
	 jr $t5
L115: 
	 addu $t4,$zero,1
	 move $t3,$t4
L116: 
	 la $t4,L114
	 jr $t4
L113: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L117
	 la $t4,L118
	 jr $t4
L117: 
	 lw $t5,__A_1
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L120
	 la $t5,L121
	 jr $t5
L120: 
	 addu $t4,$zero,1
	 move $t3,$t4
L121: 
	 la $t4,L119
	 jr $t4
L118: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L122
	 la $t4,L123
	 jr $t4
L122: 
	 lw $t5,__A_1
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L125
	 la $t5,L126
	 jr $t5
L125: 
	 addu $t4,$zero,1
	 move $t3,$t4
L126: 
	 la $t4,L124
	 jr $t4
L123: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L127
	 la $t4,L128
	 jr $t4
L127: 
	 lw $t5,__A_1
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L130
	 la $t5,L131
	 jr $t5
L130: 
	 addu $t4,$zero,1
	 move $t3,$t4
L131: 
	 la $t4,L129
	 jr $t4
L128: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L132
	 la $t4,L133
	 jr $t4
L132: 
	 lw $t5,__A_1
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L135
	 la $t5,L136
	 jr $t5
L135: 
	 addu $t4,$zero,1
	 move $t3,$t4
L136: 
	 la $t4,L134
	 jr $t4
L133: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L137
	 la $t4,L138
	 jr $t4
L137: 
	 lw $t5,__A_1
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L140
	 la $t5,L141
	 jr $t5
L140: 
	 addu $t4,$zero,1
	 move $t3,$t4
L141: 
	 la $t4,L139
	 jr $t4
L138: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L142
	 la $t4,L143
	 jr $t4
L142: 
	 lw $t5,__A_1
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L145
	 la $t5,L146
	 jr $t5
L145: 
	 addu $t4,$zero,1
	 move $t3,$t4
L146: 
	 la $t4,L144
	 jr $t4
L143: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L147
	 la $t4,L148
	 jr $t4
L147: 
	 lw $t5,__A_1
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L150
	 la $t5,L151
	 jr $t5
L150: 
	 addu $t4,$zero,1
	 move $t3,$t4
L151: 
	 la $t4,L149
	 jr $t4
L148: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L152
	 la $t4,L153
	 jr $t4
L152: 
	 lw $t5,__A_1
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L155
	 la $t5,L156
	 jr $t5
L155: 
	 addu $t4,$zero,1
	 move $t3,$t4
L156: 
	 la $t4,L154
	 jr $t4
L153: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L157
	 la $t4,L158
	 jr $t4
L157: 
	 lw $t5,__A_1
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L160
	 la $t5,L161
	 jr $t5
L160: 
	 addu $t4,$zero,1
	 move $t3,$t4
L161: 
	 la $t4,L159
	 jr $t4
L158: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L162
	 la $t4,L163
	 jr $t4
L162: 
	 lw $t5,__A_1
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L164
	 la $t5,L165
	 jr $t5
L164: 
	 addu $t4,$zero,1
	 move $t3,$t4
L165: 
L163: 
L159: 
L154: 
L149: 
L144: 
L139: 
L134: 
L129: 
L124: 
L119: 
L114: 
L109: 
L104: 
L99: 
L94: 
	 la $t4,L91
	 jr $t4
L90: 
	 addu $t4,$zero,2
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L166
	 la $t4,L167
	 jr $t4
L166: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L169
	 la $t4,L170
	 jr $t4
L169: 
	 lw $t5,__A_2
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L172
	 la $t5,L173
	 jr $t5
L172: 
	 addu $t4,$zero,2
	 move $t3,$t4
L173: 
	 la $t4,L171
	 jr $t4
L170: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L174
	 la $t4,L175
	 jr $t4
L174: 
	 lw $t5,__A_2
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L177
	 la $t5,L178
	 jr $t5
L177: 
	 addu $t4,$zero,2
	 move $t3,$t4
L178: 
	 la $t4,L176
	 jr $t4
L175: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L179
	 la $t4,L180
	 jr $t4
L179: 
	 lw $t5,__A_2
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L182
	 la $t5,L183
	 jr $t5
L182: 
	 addu $t4,$zero,2
	 move $t3,$t4
L183: 
	 la $t4,L181
	 jr $t4
L180: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L184
	 la $t4,L185
	 jr $t4
L184: 
	 lw $t5,__A_2
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L187
	 la $t5,L188
	 jr $t5
L187: 
	 addu $t4,$zero,2
	 move $t3,$t4
L188: 
	 la $t4,L186
	 jr $t4
L185: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L189
	 la $t4,L190
	 jr $t4
L189: 
	 lw $t5,__A_2
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L192
	 la $t5,L193
	 jr $t5
L192: 
	 addu $t4,$zero,2
	 move $t3,$t4
L193: 
	 la $t4,L191
	 jr $t4
L190: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L194
	 la $t4,L195
	 jr $t4
L194: 
	 lw $t5,__A_2
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L197
	 la $t5,L198
	 jr $t5
L197: 
	 addu $t4,$zero,2
	 move $t3,$t4
L198: 
	 la $t4,L196
	 jr $t4
L195: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L199
	 la $t4,L200
	 jr $t4
L199: 
	 lw $t5,__A_2
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L202
	 la $t5,L203
	 jr $t5
L202: 
	 addu $t4,$zero,2
	 move $t3,$t4
L203: 
	 la $t4,L201
	 jr $t4
L200: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L204
	 la $t4,L205
	 jr $t4
L204: 
	 lw $t5,__A_2
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L207
	 la $t5,L208
	 jr $t5
L207: 
	 addu $t4,$zero,2
	 move $t3,$t4
L208: 
	 la $t4,L206
	 jr $t4
L205: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L209
	 la $t4,L210
	 jr $t4
L209: 
	 lw $t5,__A_2
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L212
	 la $t5,L213
	 jr $t5
L212: 
	 addu $t4,$zero,2
	 move $t3,$t4
L213: 
	 la $t4,L211
	 jr $t4
L210: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L214
	 la $t4,L215
	 jr $t4
L214: 
	 lw $t5,__A_2
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L217
	 la $t5,L218
	 jr $t5
L217: 
	 addu $t4,$zero,2
	 move $t3,$t4
L218: 
	 la $t4,L216
	 jr $t4
L215: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L219
	 la $t4,L220
	 jr $t4
L219: 
	 lw $t5,__A_2
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L222
	 la $t5,L223
	 jr $t5
L222: 
	 addu $t4,$zero,2
	 move $t3,$t4
L223: 
	 la $t4,L221
	 jr $t4
L220: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L224
	 la $t4,L225
	 jr $t4
L224: 
	 lw $t5,__A_2
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L227
	 la $t5,L228
	 jr $t5
L227: 
	 addu $t4,$zero,2
	 move $t3,$t4
L228: 
	 la $t4,L226
	 jr $t4
L225: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L229
	 la $t4,L230
	 jr $t4
L229: 
	 lw $t5,__A_2
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L232
	 la $t5,L233
	 jr $t5
L232: 
	 addu $t4,$zero,2
	 move $t3,$t4
L233: 
	 la $t4,L231
	 jr $t4
L230: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L234
	 la $t4,L235
	 jr $t4
L234: 
	 lw $t5,__A_2
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L237
	 la $t5,L238
	 jr $t5
L237: 
	 addu $t4,$zero,2
	 move $t3,$t4
L238: 
	 la $t4,L236
	 jr $t4
L235: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L239
	 la $t4,L240
	 jr $t4
L239: 
	 lw $t5,__A_2
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L241
	 la $t5,L242
	 jr $t5
L241: 
	 addu $t4,$zero,2
	 move $t3,$t4
L242: 
L240: 
L236: 
L231: 
L226: 
L221: 
L216: 
L211: 
L206: 
L201: 
L196: 
L191: 
L186: 
L181: 
L176: 
L171: 
	 la $t4,L168
	 jr $t4
L167: 
	 addu $t4,$zero,3
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L243
	 la $t4,L244
	 jr $t4
L243: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L246
	 la $t4,L247
	 jr $t4
L246: 
	 lw $t5,__A_3
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L249
	 la $t5,L250
	 jr $t5
L249: 
	 addu $t4,$zero,3
	 move $t3,$t4
L250: 
	 la $t4,L248
	 jr $t4
L247: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L251
	 la $t4,L252
	 jr $t4
L251: 
	 lw $t5,__A_3
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L254
	 la $t5,L255
	 jr $t5
L254: 
	 addu $t4,$zero,3
	 move $t3,$t4
L255: 
	 la $t4,L253
	 jr $t4
L252: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L256
	 la $t4,L257
	 jr $t4
L256: 
	 lw $t5,__A_3
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L259
	 la $t5,L260
	 jr $t5
L259: 
	 addu $t4,$zero,3
	 move $t3,$t4
L260: 
	 la $t4,L258
	 jr $t4
L257: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L261
	 la $t4,L262
	 jr $t4
L261: 
	 lw $t5,__A_3
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L264
	 la $t5,L265
	 jr $t5
L264: 
	 addu $t4,$zero,3
	 move $t3,$t4
L265: 
	 la $t4,L263
	 jr $t4
L262: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L266
	 la $t4,L267
	 jr $t4
L266: 
	 lw $t5,__A_3
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L269
	 la $t5,L270
	 jr $t5
L269: 
	 addu $t4,$zero,3
	 move $t3,$t4
L270: 
	 la $t4,L268
	 jr $t4
L267: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L271
	 la $t4,L272
	 jr $t4
L271: 
	 lw $t5,__A_3
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L274
	 la $t5,L275
	 jr $t5
L274: 
	 addu $t4,$zero,3
	 move $t3,$t4
L275: 
	 la $t4,L273
	 jr $t4
L272: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L276
	 la $t4,L277
	 jr $t4
L276: 
	 lw $t5,__A_3
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L279
	 la $t5,L280
	 jr $t5
L279: 
	 addu $t4,$zero,3
	 move $t3,$t4
L280: 
	 la $t4,L278
	 jr $t4
L277: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L281
	 la $t4,L282
	 jr $t4
L281: 
	 lw $t5,__A_3
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L284
	 la $t5,L285
	 jr $t5
L284: 
	 addu $t4,$zero,3
	 move $t3,$t4
L285: 
	 la $t4,L283
	 jr $t4
L282: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L286
	 la $t4,L287
	 jr $t4
L286: 
	 lw $t5,__A_3
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L289
	 la $t5,L290
	 jr $t5
L289: 
	 addu $t4,$zero,3
	 move $t3,$t4
L290: 
	 la $t4,L288
	 jr $t4
L287: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L291
	 la $t4,L292
	 jr $t4
L291: 
	 lw $t5,__A_3
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L294
	 la $t5,L295
	 jr $t5
L294: 
	 addu $t4,$zero,3
	 move $t3,$t4
L295: 
	 la $t4,L293
	 jr $t4
L292: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L296
	 la $t4,L297
	 jr $t4
L296: 
	 lw $t5,__A_3
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L299
	 la $t5,L300
	 jr $t5
L299: 
	 addu $t4,$zero,3
	 move $t3,$t4
L300: 
	 la $t4,L298
	 jr $t4
L297: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L301
	 la $t4,L302
	 jr $t4
L301: 
	 lw $t5,__A_3
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L304
	 la $t5,L305
	 jr $t5
L304: 
	 addu $t4,$zero,3
	 move $t3,$t4
L305: 
	 la $t4,L303
	 jr $t4
L302: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L306
	 la $t4,L307
	 jr $t4
L306: 
	 lw $t5,__A_3
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L309
	 la $t5,L310
	 jr $t5
L309: 
	 addu $t4,$zero,3
	 move $t3,$t4
L310: 
	 la $t4,L308
	 jr $t4
L307: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L311
	 la $t4,L312
	 jr $t4
L311: 
	 lw $t5,__A_3
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L314
	 la $t5,L315
	 jr $t5
L314: 
	 addu $t4,$zero,3
	 move $t3,$t4
L315: 
	 la $t4,L313
	 jr $t4
L312: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L316
	 la $t4,L317
	 jr $t4
L316: 
	 lw $t5,__A_3
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L318
	 la $t5,L319
	 jr $t5
L318: 
	 addu $t4,$zero,3
	 move $t3,$t4
L319: 
L317: 
L313: 
L308: 
L303: 
L298: 
L293: 
L288: 
L283: 
L278: 
L273: 
L268: 
L263: 
L258: 
L253: 
L248: 
	 la $t4,L245
	 jr $t4
L244: 
	 addu $t4,$zero,4
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L320
	 la $t4,L321
	 jr $t4
L320: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L323
	 la $t4,L324
	 jr $t4
L323: 
	 lw $t5,__A_4
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L326
	 la $t5,L327
	 jr $t5
L326: 
	 addu $t4,$zero,4
	 move $t3,$t4
L327: 
	 la $t4,L325
	 jr $t4
L324: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L328
	 la $t4,L329
	 jr $t4
L328: 
	 lw $t5,__A_4
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L331
	 la $t5,L332
	 jr $t5
L331: 
	 addu $t4,$zero,4
	 move $t3,$t4
L332: 
	 la $t4,L330
	 jr $t4
L329: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L333
	 la $t4,L334
	 jr $t4
L333: 
	 lw $t5,__A_4
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L336
	 la $t5,L337
	 jr $t5
L336: 
	 addu $t4,$zero,4
	 move $t3,$t4
L337: 
	 la $t4,L335
	 jr $t4
L334: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L338
	 la $t4,L339
	 jr $t4
L338: 
	 lw $t5,__A_4
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L341
	 la $t5,L342
	 jr $t5
L341: 
	 addu $t4,$zero,4
	 move $t3,$t4
L342: 
	 la $t4,L340
	 jr $t4
L339: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L343
	 la $t4,L344
	 jr $t4
L343: 
	 lw $t5,__A_4
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L346
	 la $t5,L347
	 jr $t5
L346: 
	 addu $t4,$zero,4
	 move $t3,$t4
L347: 
	 la $t4,L345
	 jr $t4
L344: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L348
	 la $t4,L349
	 jr $t4
L348: 
	 lw $t5,__A_4
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L351
	 la $t5,L352
	 jr $t5
L351: 
	 addu $t4,$zero,4
	 move $t3,$t4
L352: 
	 la $t4,L350
	 jr $t4
L349: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L353
	 la $t4,L354
	 jr $t4
L353: 
	 lw $t5,__A_4
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L356
	 la $t5,L357
	 jr $t5
L356: 
	 addu $t4,$zero,4
	 move $t3,$t4
L357: 
	 la $t4,L355
	 jr $t4
L354: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L358
	 la $t4,L359
	 jr $t4
L358: 
	 lw $t5,__A_4
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L361
	 la $t5,L362
	 jr $t5
L361: 
	 addu $t4,$zero,4
	 move $t3,$t4
L362: 
	 la $t4,L360
	 jr $t4
L359: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L363
	 la $t4,L364
	 jr $t4
L363: 
	 lw $t5,__A_4
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L366
	 la $t5,L367
	 jr $t5
L366: 
	 addu $t4,$zero,4
	 move $t3,$t4
L367: 
	 la $t4,L365
	 jr $t4
L364: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L368
	 la $t4,L369
	 jr $t4
L368: 
	 lw $t5,__A_4
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L371
	 la $t5,L372
	 jr $t5
L371: 
	 addu $t4,$zero,4
	 move $t3,$t4
L372: 
	 la $t4,L370
	 jr $t4
L369: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L373
	 la $t4,L374
	 jr $t4
L373: 
	 lw $t5,__A_4
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L376
	 la $t5,L377
	 jr $t5
L376: 
	 addu $t4,$zero,4
	 move $t3,$t4
L377: 
	 la $t4,L375
	 jr $t4
L374: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L378
	 la $t4,L379
	 jr $t4
L378: 
	 lw $t5,__A_4
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L381
	 la $t5,L382
	 jr $t5
L381: 
	 addu $t4,$zero,4
	 move $t3,$t4
L382: 
	 la $t4,L380
	 jr $t4
L379: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L383
	 la $t4,L384
	 jr $t4
L383: 
	 lw $t5,__A_4
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L386
	 la $t5,L387
	 jr $t5
L386: 
	 addu $t4,$zero,4
	 move $t3,$t4
L387: 
	 la $t4,L385
	 jr $t4
L384: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L388
	 la $t4,L389
	 jr $t4
L388: 
	 lw $t5,__A_4
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L391
	 la $t5,L392
	 jr $t5
L391: 
	 addu $t4,$zero,4
	 move $t3,$t4
L392: 
	 la $t4,L390
	 jr $t4
L389: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L393
	 la $t4,L394
	 jr $t4
L393: 
	 lw $t5,__A_4
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L395
	 la $t5,L396
	 jr $t5
L395: 
	 addu $t4,$zero,4
	 move $t3,$t4
L396: 
L394: 
L390: 
L385: 
L380: 
L375: 
L370: 
L365: 
L360: 
L355: 
L350: 
L345: 
L340: 
L335: 
L330: 
L325: 
	 la $t4,L322
	 jr $t4
L321: 
	 addu $t4,$zero,5
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L397
	 la $t4,L398
	 jr $t4
L397: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L400
	 la $t4,L401
	 jr $t4
L400: 
	 lw $t5,__A_5
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L403
	 la $t5,L404
	 jr $t5
L403: 
	 addu $t4,$zero,5
	 move $t3,$t4
L404: 
	 la $t4,L402
	 jr $t4
L401: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L405
	 la $t4,L406
	 jr $t4
L405: 
	 lw $t5,__A_5
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L408
	 la $t5,L409
	 jr $t5
L408: 
	 addu $t4,$zero,5
	 move $t3,$t4
L409: 
	 la $t4,L407
	 jr $t4
L406: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L410
	 la $t4,L411
	 jr $t4
L410: 
	 lw $t5,__A_5
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L413
	 la $t5,L414
	 jr $t5
L413: 
	 addu $t4,$zero,5
	 move $t3,$t4
L414: 
	 la $t4,L412
	 jr $t4
L411: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L415
	 la $t4,L416
	 jr $t4
L415: 
	 lw $t5,__A_5
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L418
	 la $t5,L419
	 jr $t5
L418: 
	 addu $t4,$zero,5
	 move $t3,$t4
L419: 
	 la $t4,L417
	 jr $t4
L416: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L420
	 la $t4,L421
	 jr $t4
L420: 
	 lw $t5,__A_5
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L423
	 la $t5,L424
	 jr $t5
L423: 
	 addu $t4,$zero,5
	 move $t3,$t4
L424: 
	 la $t4,L422
	 jr $t4
L421: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L425
	 la $t4,L426
	 jr $t4
L425: 
	 lw $t5,__A_5
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L428
	 la $t5,L429
	 jr $t5
L428: 
	 addu $t4,$zero,5
	 move $t3,$t4
L429: 
	 la $t4,L427
	 jr $t4
L426: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L430
	 la $t4,L431
	 jr $t4
L430: 
	 lw $t5,__A_5
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L433
	 la $t5,L434
	 jr $t5
L433: 
	 addu $t4,$zero,5
	 move $t3,$t4
L434: 
	 la $t4,L432
	 jr $t4
L431: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L435
	 la $t4,L436
	 jr $t4
L435: 
	 lw $t5,__A_5
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L438
	 la $t5,L439
	 jr $t5
L438: 
	 addu $t4,$zero,5
	 move $t3,$t4
L439: 
	 la $t4,L437
	 jr $t4
L436: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L440
	 la $t4,L441
	 jr $t4
L440: 
	 lw $t5,__A_5
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L443
	 la $t5,L444
	 jr $t5
L443: 
	 addu $t4,$zero,5
	 move $t3,$t4
L444: 
	 la $t4,L442
	 jr $t4
L441: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L445
	 la $t4,L446
	 jr $t4
L445: 
	 lw $t5,__A_5
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L448
	 la $t5,L449
	 jr $t5
L448: 
	 addu $t4,$zero,5
	 move $t3,$t4
L449: 
	 la $t4,L447
	 jr $t4
L446: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L450
	 la $t4,L451
	 jr $t4
L450: 
	 lw $t5,__A_5
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L453
	 la $t5,L454
	 jr $t5
L453: 
	 addu $t4,$zero,5
	 move $t3,$t4
L454: 
	 la $t4,L452
	 jr $t4
L451: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L455
	 la $t4,L456
	 jr $t4
L455: 
	 lw $t5,__A_5
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L458
	 la $t5,L459
	 jr $t5
L458: 
	 addu $t4,$zero,5
	 move $t3,$t4
L459: 
	 la $t4,L457
	 jr $t4
L456: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L460
	 la $t4,L461
	 jr $t4
L460: 
	 lw $t5,__A_5
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L463
	 la $t5,L464
	 jr $t5
L463: 
	 addu $t4,$zero,5
	 move $t3,$t4
L464: 
	 la $t4,L462
	 jr $t4
L461: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L465
	 la $t4,L466
	 jr $t4
L465: 
	 lw $t5,__A_5
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L468
	 la $t5,L469
	 jr $t5
L468: 
	 addu $t4,$zero,5
	 move $t3,$t4
L469: 
	 la $t4,L467
	 jr $t4
L466: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L470
	 la $t4,L471
	 jr $t4
L470: 
	 lw $t5,__A_5
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L472
	 la $t5,L473
	 jr $t5
L472: 
	 addu $t4,$zero,5
	 move $t3,$t4
L473: 
L471: 
L467: 
L462: 
L457: 
L452: 
L447: 
L442: 
L437: 
L432: 
L427: 
L422: 
L417: 
L412: 
L407: 
L402: 
	 la $t4,L399
	 jr $t4
L398: 
	 addu $t4,$zero,6
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L474
	 la $t4,L475
	 jr $t4
L474: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L477
	 la $t4,L478
	 jr $t4
L477: 
	 lw $t5,__A_6
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L480
	 la $t5,L481
	 jr $t5
L480: 
	 addu $t4,$zero,6
	 move $t3,$t4
L481: 
	 la $t4,L479
	 jr $t4
L478: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L482
	 la $t4,L483
	 jr $t4
L482: 
	 lw $t5,__A_6
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L485
	 la $t5,L486
	 jr $t5
L485: 
	 addu $t4,$zero,6
	 move $t3,$t4
L486: 
	 la $t4,L484
	 jr $t4
L483: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L487
	 la $t4,L488
	 jr $t4
L487: 
	 lw $t5,__A_6
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L490
	 la $t5,L491
	 jr $t5
L490: 
	 addu $t4,$zero,6
	 move $t3,$t4
L491: 
	 la $t4,L489
	 jr $t4
L488: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L492
	 la $t4,L493
	 jr $t4
L492: 
	 lw $t5,__A_6
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L495
	 la $t5,L496
	 jr $t5
L495: 
	 addu $t4,$zero,6
	 move $t3,$t4
L496: 
	 la $t4,L494
	 jr $t4
L493: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L497
	 la $t4,L498
	 jr $t4
L497: 
	 lw $t5,__A_6
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L500
	 la $t5,L501
	 jr $t5
L500: 
	 addu $t4,$zero,6
	 move $t3,$t4
L501: 
	 la $t4,L499
	 jr $t4
L498: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L502
	 la $t4,L503
	 jr $t4
L502: 
	 lw $t5,__A_6
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L505
	 la $t5,L506
	 jr $t5
L505: 
	 addu $t4,$zero,6
	 move $t3,$t4
L506: 
	 la $t4,L504
	 jr $t4
L503: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L507
	 la $t4,L508
	 jr $t4
L507: 
	 lw $t5,__A_6
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L510
	 la $t5,L511
	 jr $t5
L510: 
	 addu $t4,$zero,6
	 move $t3,$t4
L511: 
	 la $t4,L509
	 jr $t4
L508: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L512
	 la $t4,L513
	 jr $t4
L512: 
	 lw $t5,__A_6
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L515
	 la $t5,L516
	 jr $t5
L515: 
	 addu $t4,$zero,6
	 move $t3,$t4
L516: 
	 la $t4,L514
	 jr $t4
L513: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L517
	 la $t4,L518
	 jr $t4
L517: 
	 lw $t5,__A_6
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L520
	 la $t5,L521
	 jr $t5
L520: 
	 addu $t4,$zero,6
	 move $t3,$t4
L521: 
	 la $t4,L519
	 jr $t4
L518: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L522
	 la $t4,L523
	 jr $t4
L522: 
	 lw $t5,__A_6
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L525
	 la $t5,L526
	 jr $t5
L525: 
	 addu $t4,$zero,6
	 move $t3,$t4
L526: 
	 la $t4,L524
	 jr $t4
L523: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L527
	 la $t4,L528
	 jr $t4
L527: 
	 lw $t5,__A_6
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L530
	 la $t5,L531
	 jr $t5
L530: 
	 addu $t4,$zero,6
	 move $t3,$t4
L531: 
	 la $t4,L529
	 jr $t4
L528: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L532
	 la $t4,L533
	 jr $t4
L532: 
	 lw $t5,__A_6
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L535
	 la $t5,L536
	 jr $t5
L535: 
	 addu $t4,$zero,6
	 move $t3,$t4
L536: 
	 la $t4,L534
	 jr $t4
L533: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L537
	 la $t4,L538
	 jr $t4
L537: 
	 lw $t5,__A_6
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L540
	 la $t5,L541
	 jr $t5
L540: 
	 addu $t4,$zero,6
	 move $t3,$t4
L541: 
	 la $t4,L539
	 jr $t4
L538: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L542
	 la $t4,L543
	 jr $t4
L542: 
	 lw $t5,__A_6
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L545
	 la $t5,L546
	 jr $t5
L545: 
	 addu $t4,$zero,6
	 move $t3,$t4
L546: 
	 la $t4,L544
	 jr $t4
L543: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L547
	 la $t4,L548
	 jr $t4
L547: 
	 lw $t5,__A_6
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L549
	 la $t5,L550
	 jr $t5
L549: 
	 addu $t4,$zero,6
	 move $t3,$t4
L550: 
L548: 
L544: 
L539: 
L534: 
L529: 
L524: 
L519: 
L514: 
L509: 
L504: 
L499: 
L494: 
L489: 
L484: 
L479: 
	 la $t4,L476
	 jr $t4
L475: 
	 addu $t4,$zero,7
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L551
	 la $t4,L552
	 jr $t4
L551: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L554
	 la $t4,L555
	 jr $t4
L554: 
	 lw $t5,__A_7
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L557
	 la $t5,L558
	 jr $t5
L557: 
	 addu $t4,$zero,7
	 move $t3,$t4
L558: 
	 la $t4,L556
	 jr $t4
L555: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L559
	 la $t4,L560
	 jr $t4
L559: 
	 lw $t5,__A_7
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L562
	 la $t5,L563
	 jr $t5
L562: 
	 addu $t4,$zero,7
	 move $t3,$t4
L563: 
	 la $t4,L561
	 jr $t4
L560: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L564
	 la $t4,L565
	 jr $t4
L564: 
	 lw $t5,__A_7
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L567
	 la $t5,L568
	 jr $t5
L567: 
	 addu $t4,$zero,7
	 move $t3,$t4
L568: 
	 la $t4,L566
	 jr $t4
L565: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L569
	 la $t4,L570
	 jr $t4
L569: 
	 lw $t5,__A_7
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L572
	 la $t5,L573
	 jr $t5
L572: 
	 addu $t4,$zero,7
	 move $t3,$t4
L573: 
	 la $t4,L571
	 jr $t4
L570: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L574
	 la $t4,L575
	 jr $t4
L574: 
	 lw $t5,__A_7
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L577
	 la $t5,L578
	 jr $t5
L577: 
	 addu $t4,$zero,7
	 move $t3,$t4
L578: 
	 la $t4,L576
	 jr $t4
L575: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L579
	 la $t4,L580
	 jr $t4
L579: 
	 lw $t5,__A_7
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L582
	 la $t5,L583
	 jr $t5
L582: 
	 addu $t4,$zero,7
	 move $t3,$t4
L583: 
	 la $t4,L581
	 jr $t4
L580: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L584
	 la $t4,L585
	 jr $t4
L584: 
	 lw $t5,__A_7
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L587
	 la $t5,L588
	 jr $t5
L587: 
	 addu $t4,$zero,7
	 move $t3,$t4
L588: 
	 la $t4,L586
	 jr $t4
L585: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L589
	 la $t4,L590
	 jr $t4
L589: 
	 lw $t5,__A_7
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L592
	 la $t5,L593
	 jr $t5
L592: 
	 addu $t4,$zero,7
	 move $t3,$t4
L593: 
	 la $t4,L591
	 jr $t4
L590: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L594
	 la $t4,L595
	 jr $t4
L594: 
	 lw $t5,__A_7
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L597
	 la $t5,L598
	 jr $t5
L597: 
	 addu $t4,$zero,7
	 move $t3,$t4
L598: 
	 la $t4,L596
	 jr $t4
L595: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L599
	 la $t4,L600
	 jr $t4
L599: 
	 lw $t5,__A_7
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L602
	 la $t5,L603
	 jr $t5
L602: 
	 addu $t4,$zero,7
	 move $t3,$t4
L603: 
	 la $t4,L601
	 jr $t4
L600: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L604
	 la $t4,L605
	 jr $t4
L604: 
	 lw $t5,__A_7
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L607
	 la $t5,L608
	 jr $t5
L607: 
	 addu $t4,$zero,7
	 move $t3,$t4
L608: 
	 la $t4,L606
	 jr $t4
L605: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L609
	 la $t4,L610
	 jr $t4
L609: 
	 lw $t5,__A_7
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L612
	 la $t5,L613
	 jr $t5
L612: 
	 addu $t4,$zero,7
	 move $t3,$t4
L613: 
	 la $t4,L611
	 jr $t4
L610: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L614
	 la $t4,L615
	 jr $t4
L614: 
	 lw $t5,__A_7
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L617
	 la $t5,L618
	 jr $t5
L617: 
	 addu $t4,$zero,7
	 move $t3,$t4
L618: 
	 la $t4,L616
	 jr $t4
L615: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L619
	 la $t4,L620
	 jr $t4
L619: 
	 lw $t5,__A_7
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L622
	 la $t5,L623
	 jr $t5
L622: 
	 addu $t4,$zero,7
	 move $t3,$t4
L623: 
	 la $t4,L621
	 jr $t4
L620: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L624
	 la $t4,L625
	 jr $t4
L624: 
	 lw $t5,__A_7
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L626
	 la $t5,L627
	 jr $t5
L626: 
	 addu $t4,$zero,7
	 move $t3,$t4
L627: 
L625: 
L621: 
L616: 
L611: 
L606: 
L601: 
L596: 
L591: 
L586: 
L581: 
L576: 
L571: 
L566: 
L561: 
L556: 
	 la $t4,L553
	 jr $t4
L552: 
	 addu $t4,$zero,8
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L628
	 la $t4,L629
	 jr $t4
L628: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L631
	 la $t4,L632
	 jr $t4
L631: 
	 lw $t5,__A_8
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L634
	 la $t5,L635
	 jr $t5
L634: 
	 addu $t4,$zero,8
	 move $t3,$t4
L635: 
	 la $t4,L633
	 jr $t4
L632: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L636
	 la $t4,L637
	 jr $t4
L636: 
	 lw $t5,__A_8
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L639
	 la $t5,L640
	 jr $t5
L639: 
	 addu $t4,$zero,8
	 move $t3,$t4
L640: 
	 la $t4,L638
	 jr $t4
L637: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L641
	 la $t4,L642
	 jr $t4
L641: 
	 lw $t5,__A_8
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L644
	 la $t5,L645
	 jr $t5
L644: 
	 addu $t4,$zero,8
	 move $t3,$t4
L645: 
	 la $t4,L643
	 jr $t4
L642: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L646
	 la $t4,L647
	 jr $t4
L646: 
	 lw $t5,__A_8
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L649
	 la $t5,L650
	 jr $t5
L649: 
	 addu $t4,$zero,8
	 move $t3,$t4
L650: 
	 la $t4,L648
	 jr $t4
L647: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L651
	 la $t4,L652
	 jr $t4
L651: 
	 lw $t5,__A_8
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L654
	 la $t5,L655
	 jr $t5
L654: 
	 addu $t4,$zero,8
	 move $t3,$t4
L655: 
	 la $t4,L653
	 jr $t4
L652: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L656
	 la $t4,L657
	 jr $t4
L656: 
	 lw $t5,__A_8
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L659
	 la $t5,L660
	 jr $t5
L659: 
	 addu $t4,$zero,8
	 move $t3,$t4
L660: 
	 la $t4,L658
	 jr $t4
L657: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L661
	 la $t4,L662
	 jr $t4
L661: 
	 lw $t5,__A_8
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L664
	 la $t5,L665
	 jr $t5
L664: 
	 addu $t4,$zero,8
	 move $t3,$t4
L665: 
	 la $t4,L663
	 jr $t4
L662: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L666
	 la $t4,L667
	 jr $t4
L666: 
	 lw $t5,__A_8
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L669
	 la $t5,L670
	 jr $t5
L669: 
	 addu $t4,$zero,8
	 move $t3,$t4
L670: 
	 la $t4,L668
	 jr $t4
L667: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L671
	 la $t4,L672
	 jr $t4
L671: 
	 lw $t5,__A_8
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L674
	 la $t5,L675
	 jr $t5
L674: 
	 addu $t4,$zero,8
	 move $t3,$t4
L675: 
	 la $t4,L673
	 jr $t4
L672: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L676
	 la $t4,L677
	 jr $t4
L676: 
	 lw $t5,__A_8
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L679
	 la $t5,L680
	 jr $t5
L679: 
	 addu $t4,$zero,8
	 move $t3,$t4
L680: 
	 la $t4,L678
	 jr $t4
L677: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L681
	 la $t4,L682
	 jr $t4
L681: 
	 lw $t5,__A_8
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L684
	 la $t5,L685
	 jr $t5
L684: 
	 addu $t4,$zero,8
	 move $t3,$t4
L685: 
	 la $t4,L683
	 jr $t4
L682: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L686
	 la $t4,L687
	 jr $t4
L686: 
	 lw $t5,__A_8
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L689
	 la $t5,L690
	 jr $t5
L689: 
	 addu $t4,$zero,8
	 move $t3,$t4
L690: 
	 la $t4,L688
	 jr $t4
L687: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L691
	 la $t4,L692
	 jr $t4
L691: 
	 lw $t5,__A_8
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L694
	 la $t5,L695
	 jr $t5
L694: 
	 addu $t4,$zero,8
	 move $t3,$t4
L695: 
	 la $t4,L693
	 jr $t4
L692: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L696
	 la $t4,L697
	 jr $t4
L696: 
	 lw $t5,__A_8
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L699
	 la $t5,L700
	 jr $t5
L699: 
	 addu $t4,$zero,8
	 move $t3,$t4
L700: 
	 la $t4,L698
	 jr $t4
L697: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L701
	 la $t4,L702
	 jr $t4
L701: 
	 lw $t5,__A_8
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L703
	 la $t5,L704
	 jr $t5
L703: 
	 addu $t4,$zero,8
	 move $t3,$t4
L704: 
L702: 
L698: 
L693: 
L688: 
L683: 
L678: 
L673: 
L668: 
L663: 
L658: 
L653: 
L648: 
L643: 
L638: 
L633: 
	 la $t4,L630
	 jr $t4
L629: 
	 addu $t4,$zero,9
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L705
	 la $t4,L706
	 jr $t4
L705: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L708
	 la $t4,L709
	 jr $t4
L708: 
	 lw $t5,__A_9
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L711
	 la $t5,L712
	 jr $t5
L711: 
	 addu $t4,$zero,9
	 move $t3,$t4
L712: 
	 la $t4,L710
	 jr $t4
L709: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L713
	 la $t4,L714
	 jr $t4
L713: 
	 lw $t5,__A_9
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L716
	 la $t5,L717
	 jr $t5
L716: 
	 addu $t4,$zero,9
	 move $t3,$t4
L717: 
	 la $t4,L715
	 jr $t4
L714: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L718
	 la $t4,L719
	 jr $t4
L718: 
	 lw $t5,__A_9
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L721
	 la $t5,L722
	 jr $t5
L721: 
	 addu $t4,$zero,9
	 move $t3,$t4
L722: 
	 la $t4,L720
	 jr $t4
L719: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L723
	 la $t4,L724
	 jr $t4
L723: 
	 lw $t5,__A_9
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L726
	 la $t5,L727
	 jr $t5
L726: 
	 addu $t4,$zero,9
	 move $t3,$t4
L727: 
	 la $t4,L725
	 jr $t4
L724: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L728
	 la $t4,L729
	 jr $t4
L728: 
	 lw $t5,__A_9
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L731
	 la $t5,L732
	 jr $t5
L731: 
	 addu $t4,$zero,9
	 move $t3,$t4
L732: 
	 la $t4,L730
	 jr $t4
L729: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L733
	 la $t4,L734
	 jr $t4
L733: 
	 lw $t5,__A_9
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L736
	 la $t5,L737
	 jr $t5
L736: 
	 addu $t4,$zero,9
	 move $t3,$t4
L737: 
	 la $t4,L735
	 jr $t4
L734: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L738
	 la $t4,L739
	 jr $t4
L738: 
	 lw $t5,__A_9
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L741
	 la $t5,L742
	 jr $t5
L741: 
	 addu $t4,$zero,9
	 move $t3,$t4
L742: 
	 la $t4,L740
	 jr $t4
L739: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L743
	 la $t4,L744
	 jr $t4
L743: 
	 lw $t5,__A_9
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L746
	 la $t5,L747
	 jr $t5
L746: 
	 addu $t4,$zero,9
	 move $t3,$t4
L747: 
	 la $t4,L745
	 jr $t4
L744: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L748
	 la $t4,L749
	 jr $t4
L748: 
	 lw $t5,__A_9
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L751
	 la $t5,L752
	 jr $t5
L751: 
	 addu $t4,$zero,9
	 move $t3,$t4
L752: 
	 la $t4,L750
	 jr $t4
L749: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L753
	 la $t4,L754
	 jr $t4
L753: 
	 lw $t5,__A_9
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L756
	 la $t5,L757
	 jr $t5
L756: 
	 addu $t4,$zero,9
	 move $t3,$t4
L757: 
	 la $t4,L755
	 jr $t4
L754: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L758
	 la $t4,L759
	 jr $t4
L758: 
	 lw $t5,__A_9
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L761
	 la $t5,L762
	 jr $t5
L761: 
	 addu $t4,$zero,9
	 move $t3,$t4
L762: 
	 la $t4,L760
	 jr $t4
L759: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L763
	 la $t4,L764
	 jr $t4
L763: 
	 lw $t5,__A_9
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L766
	 la $t5,L767
	 jr $t5
L766: 
	 addu $t4,$zero,9
	 move $t3,$t4
L767: 
	 la $t4,L765
	 jr $t4
L764: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L768
	 la $t4,L769
	 jr $t4
L768: 
	 lw $t5,__A_9
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L771
	 la $t5,L772
	 jr $t5
L771: 
	 addu $t4,$zero,9
	 move $t3,$t4
L772: 
	 la $t4,L770
	 jr $t4
L769: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L773
	 la $t4,L774
	 jr $t4
L773: 
	 lw $t5,__A_9
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L776
	 la $t5,L777
	 jr $t5
L776: 
	 addu $t4,$zero,9
	 move $t3,$t4
L777: 
	 la $t4,L775
	 jr $t4
L774: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L778
	 la $t4,L779
	 jr $t4
L778: 
	 lw $t5,__A_9
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L780
	 la $t5,L781
	 jr $t5
L780: 
	 addu $t4,$zero,9
	 move $t3,$t4
L781: 
L779: 
L775: 
L770: 
L765: 
L760: 
L755: 
L750: 
L745: 
L740: 
L735: 
L730: 
L725: 
L720: 
L715: 
L710: 
	 la $t4,L707
	 jr $t4
L706: 
	 addu $t4,$zero,10
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L782
	 la $t4,L783
	 jr $t4
L782: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L785
	 la $t4,L786
	 jr $t4
L785: 
	 lw $t5,__A_10
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L788
	 la $t5,L789
	 jr $t5
L788: 
	 addu $t4,$zero,10
	 move $t3,$t4
L789: 
	 la $t4,L787
	 jr $t4
L786: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L790
	 la $t4,L791
	 jr $t4
L790: 
	 lw $t5,__A_10
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L793
	 la $t5,L794
	 jr $t5
L793: 
	 addu $t4,$zero,10
	 move $t3,$t4
L794: 
	 la $t4,L792
	 jr $t4
L791: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L795
	 la $t4,L796
	 jr $t4
L795: 
	 lw $t5,__A_10
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L798
	 la $t5,L799
	 jr $t5
L798: 
	 addu $t4,$zero,10
	 move $t3,$t4
L799: 
	 la $t4,L797
	 jr $t4
L796: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L800
	 la $t4,L801
	 jr $t4
L800: 
	 lw $t5,__A_10
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L803
	 la $t5,L804
	 jr $t5
L803: 
	 addu $t4,$zero,10
	 move $t3,$t4
L804: 
	 la $t4,L802
	 jr $t4
L801: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L805
	 la $t4,L806
	 jr $t4
L805: 
	 lw $t5,__A_10
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L808
	 la $t5,L809
	 jr $t5
L808: 
	 addu $t4,$zero,10
	 move $t3,$t4
L809: 
	 la $t4,L807
	 jr $t4
L806: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L810
	 la $t4,L811
	 jr $t4
L810: 
	 lw $t5,__A_10
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L813
	 la $t5,L814
	 jr $t5
L813: 
	 addu $t4,$zero,10
	 move $t3,$t4
L814: 
	 la $t4,L812
	 jr $t4
L811: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L815
	 la $t4,L816
	 jr $t4
L815: 
	 lw $t5,__A_10
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L818
	 la $t5,L819
	 jr $t5
L818: 
	 addu $t4,$zero,10
	 move $t3,$t4
L819: 
	 la $t4,L817
	 jr $t4
L816: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L820
	 la $t4,L821
	 jr $t4
L820: 
	 lw $t5,__A_10
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L823
	 la $t5,L824
	 jr $t5
L823: 
	 addu $t4,$zero,10
	 move $t3,$t4
L824: 
	 la $t4,L822
	 jr $t4
L821: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L825
	 la $t4,L826
	 jr $t4
L825: 
	 lw $t5,__A_10
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L828
	 la $t5,L829
	 jr $t5
L828: 
	 addu $t4,$zero,10
	 move $t3,$t4
L829: 
	 la $t4,L827
	 jr $t4
L826: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L830
	 la $t4,L831
	 jr $t4
L830: 
	 lw $t5,__A_10
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L833
	 la $t5,L834
	 jr $t5
L833: 
	 addu $t4,$zero,10
	 move $t3,$t4
L834: 
	 la $t4,L832
	 jr $t4
L831: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L835
	 la $t4,L836
	 jr $t4
L835: 
	 lw $t5,__A_10
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L838
	 la $t5,L839
	 jr $t5
L838: 
	 addu $t4,$zero,10
	 move $t3,$t4
L839: 
	 la $t4,L837
	 jr $t4
L836: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L840
	 la $t4,L841
	 jr $t4
L840: 
	 lw $t5,__A_10
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L843
	 la $t5,L844
	 jr $t5
L843: 
	 addu $t4,$zero,10
	 move $t3,$t4
L844: 
	 la $t4,L842
	 jr $t4
L841: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L845
	 la $t4,L846
	 jr $t4
L845: 
	 lw $t5,__A_10
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L848
	 la $t5,L849
	 jr $t5
L848: 
	 addu $t4,$zero,10
	 move $t3,$t4
L849: 
	 la $t4,L847
	 jr $t4
L846: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L850
	 la $t4,L851
	 jr $t4
L850: 
	 lw $t5,__A_10
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L853
	 la $t5,L854
	 jr $t5
L853: 
	 addu $t4,$zero,10
	 move $t3,$t4
L854: 
	 la $t4,L852
	 jr $t4
L851: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L855
	 la $t4,L856
	 jr $t4
L855: 
	 lw $t5,__A_10
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L857
	 la $t5,L858
	 jr $t5
L857: 
	 addu $t4,$zero,10
	 move $t3,$t4
L858: 
L856: 
L852: 
L847: 
L842: 
L837: 
L832: 
L827: 
L822: 
L817: 
L812: 
L807: 
L802: 
L797: 
L792: 
L787: 
	 la $t4,L784
	 jr $t4
L783: 
	 addu $t4,$zero,11
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L859
	 la $t4,L860
	 jr $t4
L859: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L862
	 la $t4,L863
	 jr $t4
L862: 
	 lw $t5,__A_11
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L865
	 la $t5,L866
	 jr $t5
L865: 
	 addu $t4,$zero,11
	 move $t3,$t4
L866: 
	 la $t4,L864
	 jr $t4
L863: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L867
	 la $t4,L868
	 jr $t4
L867: 
	 lw $t5,__A_11
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L870
	 la $t5,L871
	 jr $t5
L870: 
	 addu $t4,$zero,11
	 move $t3,$t4
L871: 
	 la $t4,L869
	 jr $t4
L868: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L872
	 la $t4,L873
	 jr $t4
L872: 
	 lw $t5,__A_11
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L875
	 la $t5,L876
	 jr $t5
L875: 
	 addu $t4,$zero,11
	 move $t3,$t4
L876: 
	 la $t4,L874
	 jr $t4
L873: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L877
	 la $t4,L878
	 jr $t4
L877: 
	 lw $t5,__A_11
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L880
	 la $t5,L881
	 jr $t5
L880: 
	 addu $t4,$zero,11
	 move $t3,$t4
L881: 
	 la $t4,L879
	 jr $t4
L878: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L882
	 la $t4,L883
	 jr $t4
L882: 
	 lw $t5,__A_11
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L885
	 la $t5,L886
	 jr $t5
L885: 
	 addu $t4,$zero,11
	 move $t3,$t4
L886: 
	 la $t4,L884
	 jr $t4
L883: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L887
	 la $t4,L888
	 jr $t4
L887: 
	 lw $t5,__A_11
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L890
	 la $t5,L891
	 jr $t5
L890: 
	 addu $t4,$zero,11
	 move $t3,$t4
L891: 
	 la $t4,L889
	 jr $t4
L888: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L892
	 la $t4,L893
	 jr $t4
L892: 
	 lw $t5,__A_11
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L895
	 la $t5,L896
	 jr $t5
L895: 
	 addu $t4,$zero,11
	 move $t3,$t4
L896: 
	 la $t4,L894
	 jr $t4
L893: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L897
	 la $t4,L898
	 jr $t4
L897: 
	 lw $t5,__A_11
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L900
	 la $t5,L901
	 jr $t5
L900: 
	 addu $t4,$zero,11
	 move $t3,$t4
L901: 
	 la $t4,L899
	 jr $t4
L898: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L902
	 la $t4,L903
	 jr $t4
L902: 
	 lw $t5,__A_11
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L905
	 la $t5,L906
	 jr $t5
L905: 
	 addu $t4,$zero,11
	 move $t3,$t4
L906: 
	 la $t4,L904
	 jr $t4
L903: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L907
	 la $t4,L908
	 jr $t4
L907: 
	 lw $t5,__A_11
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L910
	 la $t5,L911
	 jr $t5
L910: 
	 addu $t4,$zero,11
	 move $t3,$t4
L911: 
	 la $t4,L909
	 jr $t4
L908: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L912
	 la $t4,L913
	 jr $t4
L912: 
	 lw $t5,__A_11
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L915
	 la $t5,L916
	 jr $t5
L915: 
	 addu $t4,$zero,11
	 move $t3,$t4
L916: 
	 la $t4,L914
	 jr $t4
L913: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L917
	 la $t4,L918
	 jr $t4
L917: 
	 lw $t5,__A_11
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L920
	 la $t5,L921
	 jr $t5
L920: 
	 addu $t4,$zero,11
	 move $t3,$t4
L921: 
	 la $t4,L919
	 jr $t4
L918: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L922
	 la $t4,L923
	 jr $t4
L922: 
	 lw $t5,__A_11
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L925
	 la $t5,L926
	 jr $t5
L925: 
	 addu $t4,$zero,11
	 move $t3,$t4
L926: 
	 la $t4,L924
	 jr $t4
L923: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L927
	 la $t4,L928
	 jr $t4
L927: 
	 lw $t5,__A_11
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L930
	 la $t5,L931
	 jr $t5
L930: 
	 addu $t4,$zero,11
	 move $t3,$t4
L931: 
	 la $t4,L929
	 jr $t4
L928: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L932
	 la $t4,L933
	 jr $t4
L932: 
	 lw $t5,__A_11
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L934
	 la $t5,L935
	 jr $t5
L934: 
	 addu $t4,$zero,11
	 move $t3,$t4
L935: 
L933: 
L929: 
L924: 
L919: 
L914: 
L909: 
L904: 
L899: 
L894: 
L889: 
L884: 
L879: 
L874: 
L869: 
L864: 
	 la $t4,L861
	 jr $t4
L860: 
	 addu $t4,$zero,12
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L936
	 la $t4,L937
	 jr $t4
L936: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L939
	 la $t4,L940
	 jr $t4
L939: 
	 lw $t5,__A_12
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L942
	 la $t5,L943
	 jr $t5
L942: 
	 addu $t4,$zero,12
	 move $t3,$t4
L943: 
	 la $t4,L941
	 jr $t4
L940: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L944
	 la $t4,L945
	 jr $t4
L944: 
	 lw $t5,__A_12
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L947
	 la $t5,L948
	 jr $t5
L947: 
	 addu $t4,$zero,12
	 move $t3,$t4
L948: 
	 la $t4,L946
	 jr $t4
L945: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L949
	 la $t4,L950
	 jr $t4
L949: 
	 lw $t5,__A_12
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L952
	 la $t5,L953
	 jr $t5
L952: 
	 addu $t4,$zero,12
	 move $t3,$t4
L953: 
	 la $t4,L951
	 jr $t4
L950: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L954
	 la $t4,L955
	 jr $t4
L954: 
	 lw $t5,__A_12
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L957
	 la $t5,L958
	 jr $t5
L957: 
	 addu $t4,$zero,12
	 move $t3,$t4
L958: 
	 la $t4,L956
	 jr $t4
L955: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L959
	 la $t4,L960
	 jr $t4
L959: 
	 lw $t5,__A_12
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L962
	 la $t5,L963
	 jr $t5
L962: 
	 addu $t4,$zero,12
	 move $t3,$t4
L963: 
	 la $t4,L961
	 jr $t4
L960: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L964
	 la $t4,L965
	 jr $t4
L964: 
	 lw $t5,__A_12
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L967
	 la $t5,L968
	 jr $t5
L967: 
	 addu $t4,$zero,12
	 move $t3,$t4
L968: 
	 la $t4,L966
	 jr $t4
L965: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L969
	 la $t4,L970
	 jr $t4
L969: 
	 lw $t5,__A_12
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L972
	 la $t5,L973
	 jr $t5
L972: 
	 addu $t4,$zero,12
	 move $t3,$t4
L973: 
	 la $t4,L971
	 jr $t4
L970: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L974
	 la $t4,L975
	 jr $t4
L974: 
	 lw $t5,__A_12
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L977
	 la $t5,L978
	 jr $t5
L977: 
	 addu $t4,$zero,12
	 move $t3,$t4
L978: 
	 la $t4,L976
	 jr $t4
L975: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L979
	 la $t4,L980
	 jr $t4
L979: 
	 lw $t5,__A_12
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L982
	 la $t5,L983
	 jr $t5
L982: 
	 addu $t4,$zero,12
	 move $t3,$t4
L983: 
	 la $t4,L981
	 jr $t4
L980: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L984
	 la $t4,L985
	 jr $t4
L984: 
	 lw $t5,__A_12
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L987
	 la $t5,L988
	 jr $t5
L987: 
	 addu $t4,$zero,12
	 move $t3,$t4
L988: 
	 la $t4,L986
	 jr $t4
L985: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L989
	 la $t4,L990
	 jr $t4
L989: 
	 lw $t5,__A_12
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L992
	 la $t5,L993
	 jr $t5
L992: 
	 addu $t4,$zero,12
	 move $t3,$t4
L993: 
	 la $t4,L991
	 jr $t4
L990: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L994
	 la $t4,L995
	 jr $t4
L994: 
	 lw $t5,__A_12
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L997
	 la $t5,L998
	 jr $t5
L997: 
	 addu $t4,$zero,12
	 move $t3,$t4
L998: 
	 la $t4,L996
	 jr $t4
L995: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L999
	 la $t4,L1000
	 jr $t4
L999: 
	 lw $t5,__A_12
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1002
	 la $t5,L1003
	 jr $t5
L1002: 
	 addu $t4,$zero,12
	 move $t3,$t4
L1003: 
	 la $t4,L1001
	 jr $t4
L1000: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1004
	 la $t4,L1005
	 jr $t4
L1004: 
	 lw $t5,__A_12
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1007
	 la $t5,L1008
	 jr $t5
L1007: 
	 addu $t4,$zero,12
	 move $t3,$t4
L1008: 
	 la $t4,L1006
	 jr $t4
L1005: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1009
	 la $t4,L1010
	 jr $t4
L1009: 
	 lw $t5,__A_12
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1011
	 la $t5,L1012
	 jr $t5
L1011: 
	 addu $t4,$zero,12
	 move $t3,$t4
L1012: 
L1010: 
L1006: 
L1001: 
L996: 
L991: 
L986: 
L981: 
L976: 
L971: 
L966: 
L961: 
L956: 
L951: 
L946: 
L941: 
	 la $t4,L938
	 jr $t4
L937: 
	 addu $t4,$zero,13
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L1013
	 la $t4,L1014
	 jr $t4
L1013: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1016
	 la $t4,L1017
	 jr $t4
L1016: 
	 lw $t5,__A_13
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1019
	 la $t5,L1020
	 jr $t5
L1019: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1020: 
	 la $t4,L1018
	 jr $t4
L1017: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1021
	 la $t4,L1022
	 jr $t4
L1021: 
	 lw $t5,__A_13
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1024
	 la $t5,L1025
	 jr $t5
L1024: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1025: 
	 la $t4,L1023
	 jr $t4
L1022: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1026
	 la $t4,L1027
	 jr $t4
L1026: 
	 lw $t5,__A_13
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1029
	 la $t5,L1030
	 jr $t5
L1029: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1030: 
	 la $t4,L1028
	 jr $t4
L1027: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1031
	 la $t4,L1032
	 jr $t4
L1031: 
	 lw $t5,__A_13
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1034
	 la $t5,L1035
	 jr $t5
L1034: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1035: 
	 la $t4,L1033
	 jr $t4
L1032: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1036
	 la $t4,L1037
	 jr $t4
L1036: 
	 lw $t5,__A_13
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1039
	 la $t5,L1040
	 jr $t5
L1039: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1040: 
	 la $t4,L1038
	 jr $t4
L1037: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1041
	 la $t4,L1042
	 jr $t4
L1041: 
	 lw $t5,__A_13
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1044
	 la $t5,L1045
	 jr $t5
L1044: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1045: 
	 la $t4,L1043
	 jr $t4
L1042: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1046
	 la $t4,L1047
	 jr $t4
L1046: 
	 lw $t5,__A_13
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1049
	 la $t5,L1050
	 jr $t5
L1049: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1050: 
	 la $t4,L1048
	 jr $t4
L1047: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1051
	 la $t4,L1052
	 jr $t4
L1051: 
	 lw $t5,__A_13
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1054
	 la $t5,L1055
	 jr $t5
L1054: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1055: 
	 la $t4,L1053
	 jr $t4
L1052: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1056
	 la $t4,L1057
	 jr $t4
L1056: 
	 lw $t5,__A_13
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1059
	 la $t5,L1060
	 jr $t5
L1059: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1060: 
	 la $t4,L1058
	 jr $t4
L1057: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1061
	 la $t4,L1062
	 jr $t4
L1061: 
	 lw $t5,__A_13
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1064
	 la $t5,L1065
	 jr $t5
L1064: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1065: 
	 la $t4,L1063
	 jr $t4
L1062: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1066
	 la $t4,L1067
	 jr $t4
L1066: 
	 lw $t5,__A_13
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1069
	 la $t5,L1070
	 jr $t5
L1069: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1070: 
	 la $t4,L1068
	 jr $t4
L1067: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1071
	 la $t4,L1072
	 jr $t4
L1071: 
	 lw $t5,__A_13
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1074
	 la $t5,L1075
	 jr $t5
L1074: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1075: 
	 la $t4,L1073
	 jr $t4
L1072: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1076
	 la $t4,L1077
	 jr $t4
L1076: 
	 lw $t5,__A_13
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1079
	 la $t5,L1080
	 jr $t5
L1079: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1080: 
	 la $t4,L1078
	 jr $t4
L1077: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1081
	 la $t4,L1082
	 jr $t4
L1081: 
	 lw $t5,__A_13
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1084
	 la $t5,L1085
	 jr $t5
L1084: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1085: 
	 la $t4,L1083
	 jr $t4
L1082: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1086
	 la $t4,L1087
	 jr $t4
L1086: 
	 lw $t5,__A_13
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1088
	 la $t5,L1089
	 jr $t5
L1088: 
	 addu $t4,$zero,13
	 move $t3,$t4
L1089: 
L1087: 
L1083: 
L1078: 
L1073: 
L1068: 
L1063: 
L1058: 
L1053: 
L1048: 
L1043: 
L1038: 
L1033: 
L1028: 
L1023: 
L1018: 
	 la $t4,L1015
	 jr $t4
L1014: 
	 addu $t4,$zero,14
	 seq $t5,$t1,$t4
	 bne $t5,$zero,L1090
	 la $t4,L1091
	 jr $t4
L1090: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1092
	 la $t4,L1093
	 jr $t4
L1092: 
	 lw $t5,__A_14
	 lw $t6,__A_0
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1095
	 la $t5,L1096
	 jr $t5
L1095: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1096: 
	 la $t4,L1094
	 jr $t4
L1093: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1097
	 la $t4,L1098
	 jr $t4
L1097: 
	 lw $t5,__A_14
	 lw $t6,__A_1
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1100
	 la $t5,L1101
	 jr $t5
L1100: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1101: 
	 la $t4,L1099
	 jr $t4
L1098: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1102
	 la $t4,L1103
	 jr $t4
L1102: 
	 lw $t5,__A_14
	 lw $t6,__A_2
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1105
	 la $t5,L1106
	 jr $t5
L1105: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1106: 
	 la $t4,L1104
	 jr $t4
L1103: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1107
	 la $t4,L1108
	 jr $t4
L1107: 
	 lw $t5,__A_14
	 lw $t6,__A_3
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1110
	 la $t5,L1111
	 jr $t5
L1110: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1111: 
	 la $t4,L1109
	 jr $t4
L1108: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1112
	 la $t4,L1113
	 jr $t4
L1112: 
	 lw $t5,__A_14
	 lw $t6,__A_4
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1115
	 la $t5,L1116
	 jr $t5
L1115: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1116: 
	 la $t4,L1114
	 jr $t4
L1113: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1117
	 la $t4,L1118
	 jr $t4
L1117: 
	 lw $t5,__A_14
	 lw $t6,__A_5
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1120
	 la $t5,L1121
	 jr $t5
L1120: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1121: 
	 la $t4,L1119
	 jr $t4
L1118: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1122
	 la $t4,L1123
	 jr $t4
L1122: 
	 lw $t5,__A_14
	 lw $t6,__A_6
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1125
	 la $t5,L1126
	 jr $t5
L1125: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1126: 
	 la $t4,L1124
	 jr $t4
L1123: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1127
	 la $t4,L1128
	 jr $t4
L1127: 
	 lw $t5,__A_14
	 lw $t6,__A_7
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1130
	 la $t5,L1131
	 jr $t5
L1130: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1131: 
	 la $t4,L1129
	 jr $t4
L1128: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1132
	 la $t4,L1133
	 jr $t4
L1132: 
	 lw $t5,__A_14
	 lw $t6,__A_8
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1135
	 la $t5,L1136
	 jr $t5
L1135: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1136: 
	 la $t4,L1134
	 jr $t4
L1133: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1137
	 la $t4,L1138
	 jr $t4
L1137: 
	 lw $t5,__A_14
	 lw $t6,__A_9
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1140
	 la $t5,L1141
	 jr $t5
L1140: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1141: 
	 la $t4,L1139
	 jr $t4
L1138: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1142
	 la $t4,L1143
	 jr $t4
L1142: 
	 lw $t5,__A_14
	 lw $t6,__A_10
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1145
	 la $t5,L1146
	 jr $t5
L1145: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1146: 
	 la $t4,L1144
	 jr $t4
L1143: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1147
	 la $t4,L1148
	 jr $t4
L1147: 
	 lw $t5,__A_14
	 lw $t6,__A_11
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1150
	 la $t5,L1151
	 jr $t5
L1150: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1151: 
	 la $t4,L1149
	 jr $t4
L1148: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1152
	 la $t4,L1153
	 jr $t4
L1152: 
	 lw $t5,__A_14
	 lw $t6,__A_12
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1155
	 la $t5,L1156
	 jr $t5
L1155: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1156: 
	 la $t4,L1154
	 jr $t4
L1153: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1157
	 la $t4,L1158
	 jr $t4
L1157: 
	 lw $t5,__A_14
	 lw $t6,__A_13
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1160
	 la $t5,L1161
	 jr $t5
L1160: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1161: 
	 la $t4,L1159
	 jr $t4
L1158: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1162
	 la $t4,L1163
	 jr $t4
L1162: 
	 lw $t5,__A_14
	 lw $t6,__A_14
	 slt $t4,$t5,$t6
	 bne $t4,$zero,L1164
	 la $t5,L1165
	 jr $t5
L1164: 
	 addu $t4,$zero,14
	 move $t3,$t4
L1165: 
L1163: 
L1159: 
L1154: 
L1149: 
L1144: 
L1139: 
L1134: 
L1129: 
L1124: 
L1119: 
L1114: 
L1109: 
L1104: 
L1099: 
L1094: 
L1091: 
L1015: 
L938: 
L861: 
L784: 
L707: 
L630: 
L553: 
L476: 
L399: 
L322: 
L245: 
L168: 
L91: 
	 addu $t4,$zero,1
	 addu $t5,$t1,$t4
	 move $t1,$t5
	 la $t4,L86
	 jr $t4
L88: 
	 addu $t4,$zero,0
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1166
	 la $t4,L1167
	 jr $t4
L1166: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1169
	 la $t4,L1170
	 jr $t4
L1169: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1171
	 jr $t4
L1170: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1172
	 la $t4,L1173
	 jr $t4
L1172: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1174
	 jr $t4
L1173: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1175
	 la $t4,L1176
	 jr $t4
L1175: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1177
	 jr $t4
L1176: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1178
	 la $t4,L1179
	 jr $t4
L1178: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1180
	 jr $t4
L1179: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1181
	 la $t4,L1182
	 jr $t4
L1181: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1183
	 jr $t4
L1182: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1184
	 la $t4,L1185
	 jr $t4
L1184: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1186
	 jr $t4
L1185: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1187
	 la $t4,L1188
	 jr $t4
L1187: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1189
	 jr $t4
L1188: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1190
	 la $t4,L1191
	 jr $t4
L1190: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1192
	 jr $t4
L1191: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1193
	 la $t4,L1194
	 jr $t4
L1193: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1195
	 jr $t4
L1194: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1196
	 la $t4,L1197
	 jr $t4
L1196: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1198
	 jr $t4
L1197: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1199
	 la $t4,L1200
	 jr $t4
L1199: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1201
	 jr $t4
L1200: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1202
	 la $t4,L1203
	 jr $t4
L1202: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1204
	 jr $t4
L1203: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1205
	 la $t4,L1206
	 jr $t4
L1205: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1207
	 jr $t4
L1206: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1208
	 la $t4,L1209
	 jr $t4
L1208: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
	 la $t4,L1210
	 jr $t4
L1209: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1211
	 la $t4,L1212
	 jr $t4
L1211: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_0
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_0
	 sw $t2,0($t4) 
L1212: 
L1210: 
L1207: 
L1204: 
L1201: 
L1198: 
L1195: 
L1192: 
L1189: 
L1186: 
L1183: 
L1180: 
L1177: 
L1174: 
L1171: 
	 la $t4,L1168
	 jr $t4
L1167: 
	 addu $t4,$zero,1
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1213
	 la $t4,L1214
	 jr $t4
L1213: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1216
	 la $t4,L1217
	 jr $t4
L1216: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1218
	 jr $t4
L1217: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1219
	 la $t4,L1220
	 jr $t4
L1219: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1221
	 jr $t4
L1220: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1222
	 la $t4,L1223
	 jr $t4
L1222: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1224
	 jr $t4
L1223: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1225
	 la $t4,L1226
	 jr $t4
L1225: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1227
	 jr $t4
L1226: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1228
	 la $t4,L1229
	 jr $t4
L1228: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1230
	 jr $t4
L1229: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1231
	 la $t4,L1232
	 jr $t4
L1231: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1233
	 jr $t4
L1232: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1234
	 la $t4,L1235
	 jr $t4
L1234: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1236
	 jr $t4
L1235: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1237
	 la $t4,L1238
	 jr $t4
L1237: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1239
	 jr $t4
L1238: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1240
	 la $t4,L1241
	 jr $t4
L1240: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1242
	 jr $t4
L1241: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1243
	 la $t4,L1244
	 jr $t4
L1243: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1245
	 jr $t4
L1244: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1246
	 la $t4,L1247
	 jr $t4
L1246: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1248
	 jr $t4
L1247: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1249
	 la $t4,L1250
	 jr $t4
L1249: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1251
	 jr $t4
L1250: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1252
	 la $t4,L1253
	 jr $t4
L1252: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1254
	 jr $t4
L1253: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1255
	 la $t4,L1256
	 jr $t4
L1255: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
	 la $t4,L1257
	 jr $t4
L1256: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1258
	 la $t4,L1259
	 jr $t4
L1258: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_1
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_1
	 sw $t2,0($t4) 
L1259: 
L1257: 
L1254: 
L1251: 
L1248: 
L1245: 
L1242: 
L1239: 
L1236: 
L1233: 
L1230: 
L1227: 
L1224: 
L1221: 
L1218: 
	 la $t4,L1215
	 jr $t4
L1214: 
	 addu $t4,$zero,2
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1260
	 la $t4,L1261
	 jr $t4
L1260: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1263
	 la $t4,L1264
	 jr $t4
L1263: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1265
	 jr $t4
L1264: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1266
	 la $t4,L1267
	 jr $t4
L1266: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1268
	 jr $t4
L1267: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1269
	 la $t4,L1270
	 jr $t4
L1269: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1271
	 jr $t4
L1270: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1272
	 la $t4,L1273
	 jr $t4
L1272: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1274
	 jr $t4
L1273: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1275
	 la $t4,L1276
	 jr $t4
L1275: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1277
	 jr $t4
L1276: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1278
	 la $t4,L1279
	 jr $t4
L1278: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1280
	 jr $t4
L1279: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1281
	 la $t4,L1282
	 jr $t4
L1281: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1283
	 jr $t4
L1282: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1284
	 la $t4,L1285
	 jr $t4
L1284: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1286
	 jr $t4
L1285: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1287
	 la $t4,L1288
	 jr $t4
L1287: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1289
	 jr $t4
L1288: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1290
	 la $t4,L1291
	 jr $t4
L1290: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1292
	 jr $t4
L1291: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1293
	 la $t4,L1294
	 jr $t4
L1293: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1295
	 jr $t4
L1294: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1296
	 la $t4,L1297
	 jr $t4
L1296: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1298
	 jr $t4
L1297: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1299
	 la $t4,L1300
	 jr $t4
L1299: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1301
	 jr $t4
L1300: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1302
	 la $t4,L1303
	 jr $t4
L1302: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
	 la $t4,L1304
	 jr $t4
L1303: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1305
	 la $t4,L1306
	 jr $t4
L1305: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_2
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_2
	 sw $t2,0($t4) 
L1306: 
L1304: 
L1301: 
L1298: 
L1295: 
L1292: 
L1289: 
L1286: 
L1283: 
L1280: 
L1277: 
L1274: 
L1271: 
L1268: 
L1265: 
	 la $t4,L1262
	 jr $t4
L1261: 
	 addu $t4,$zero,3
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1307
	 la $t4,L1308
	 jr $t4
L1307: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1310
	 la $t4,L1311
	 jr $t4
L1310: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1312
	 jr $t4
L1311: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1313
	 la $t4,L1314
	 jr $t4
L1313: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1315
	 jr $t4
L1314: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1316
	 la $t4,L1317
	 jr $t4
L1316: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1318
	 jr $t4
L1317: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1319
	 la $t4,L1320
	 jr $t4
L1319: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1321
	 jr $t4
L1320: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1322
	 la $t4,L1323
	 jr $t4
L1322: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1324
	 jr $t4
L1323: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1325
	 la $t4,L1326
	 jr $t4
L1325: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1327
	 jr $t4
L1326: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1328
	 la $t4,L1329
	 jr $t4
L1328: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1330
	 jr $t4
L1329: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1331
	 la $t4,L1332
	 jr $t4
L1331: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1333
	 jr $t4
L1332: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1334
	 la $t4,L1335
	 jr $t4
L1334: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1336
	 jr $t4
L1335: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1337
	 la $t4,L1338
	 jr $t4
L1337: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1339
	 jr $t4
L1338: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1340
	 la $t4,L1341
	 jr $t4
L1340: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1342
	 jr $t4
L1341: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1343
	 la $t4,L1344
	 jr $t4
L1343: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1345
	 jr $t4
L1344: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1346
	 la $t4,L1347
	 jr $t4
L1346: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1348
	 jr $t4
L1347: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1349
	 la $t4,L1350
	 jr $t4
L1349: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
	 la $t4,L1351
	 jr $t4
L1350: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1352
	 la $t4,L1353
	 jr $t4
L1352: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_3
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_3
	 sw $t2,0($t4) 
L1353: 
L1351: 
L1348: 
L1345: 
L1342: 
L1339: 
L1336: 
L1333: 
L1330: 
L1327: 
L1324: 
L1321: 
L1318: 
L1315: 
L1312: 
	 la $t4,L1309
	 jr $t4
L1308: 
	 addu $t4,$zero,4
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1354
	 la $t4,L1355
	 jr $t4
L1354: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1357
	 la $t4,L1358
	 jr $t4
L1357: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1359
	 jr $t4
L1358: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1360
	 la $t4,L1361
	 jr $t4
L1360: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1362
	 jr $t4
L1361: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1363
	 la $t4,L1364
	 jr $t4
L1363: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1365
	 jr $t4
L1364: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1366
	 la $t4,L1367
	 jr $t4
L1366: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1368
	 jr $t4
L1367: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1369
	 la $t4,L1370
	 jr $t4
L1369: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1371
	 jr $t4
L1370: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1372
	 la $t4,L1373
	 jr $t4
L1372: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1374
	 jr $t4
L1373: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1375
	 la $t4,L1376
	 jr $t4
L1375: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1377
	 jr $t4
L1376: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1378
	 la $t4,L1379
	 jr $t4
L1378: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1380
	 jr $t4
L1379: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1381
	 la $t4,L1382
	 jr $t4
L1381: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1383
	 jr $t4
L1382: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1384
	 la $t4,L1385
	 jr $t4
L1384: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1386
	 jr $t4
L1385: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1387
	 la $t4,L1388
	 jr $t4
L1387: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1389
	 jr $t4
L1388: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1390
	 la $t4,L1391
	 jr $t4
L1390: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1392
	 jr $t4
L1391: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1393
	 la $t4,L1394
	 jr $t4
L1393: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1395
	 jr $t4
L1394: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1396
	 la $t4,L1397
	 jr $t4
L1396: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
	 la $t4,L1398
	 jr $t4
L1397: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1399
	 la $t4,L1400
	 jr $t4
L1399: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_4
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_4
	 sw $t2,0($t4) 
L1400: 
L1398: 
L1395: 
L1392: 
L1389: 
L1386: 
L1383: 
L1380: 
L1377: 
L1374: 
L1371: 
L1368: 
L1365: 
L1362: 
L1359: 
	 la $t4,L1356
	 jr $t4
L1355: 
	 addu $t4,$zero,5
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1401
	 la $t4,L1402
	 jr $t4
L1401: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1404
	 la $t4,L1405
	 jr $t4
L1404: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1406
	 jr $t4
L1405: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1407
	 la $t4,L1408
	 jr $t4
L1407: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1409
	 jr $t4
L1408: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1410
	 la $t4,L1411
	 jr $t4
L1410: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1412
	 jr $t4
L1411: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1413
	 la $t4,L1414
	 jr $t4
L1413: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1415
	 jr $t4
L1414: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1416
	 la $t4,L1417
	 jr $t4
L1416: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1418
	 jr $t4
L1417: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1419
	 la $t4,L1420
	 jr $t4
L1419: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1421
	 jr $t4
L1420: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1422
	 la $t4,L1423
	 jr $t4
L1422: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1424
	 jr $t4
L1423: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1425
	 la $t4,L1426
	 jr $t4
L1425: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1427
	 jr $t4
L1426: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1428
	 la $t4,L1429
	 jr $t4
L1428: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1430
	 jr $t4
L1429: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1431
	 la $t4,L1432
	 jr $t4
L1431: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1433
	 jr $t4
L1432: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1434
	 la $t4,L1435
	 jr $t4
L1434: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1436
	 jr $t4
L1435: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1437
	 la $t4,L1438
	 jr $t4
L1437: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1439
	 jr $t4
L1438: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1440
	 la $t4,L1441
	 jr $t4
L1440: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1442
	 jr $t4
L1441: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1443
	 la $t4,L1444
	 jr $t4
L1443: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
	 la $t4,L1445
	 jr $t4
L1444: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1446
	 la $t4,L1447
	 jr $t4
L1446: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_5
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_5
	 sw $t2,0($t4) 
L1447: 
L1445: 
L1442: 
L1439: 
L1436: 
L1433: 
L1430: 
L1427: 
L1424: 
L1421: 
L1418: 
L1415: 
L1412: 
L1409: 
L1406: 
	 la $t4,L1403
	 jr $t4
L1402: 
	 addu $t4,$zero,6
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1448
	 la $t4,L1449
	 jr $t4
L1448: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1451
	 la $t4,L1452
	 jr $t4
L1451: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1453
	 jr $t4
L1452: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1454
	 la $t4,L1455
	 jr $t4
L1454: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1456
	 jr $t4
L1455: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1457
	 la $t4,L1458
	 jr $t4
L1457: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1459
	 jr $t4
L1458: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1460
	 la $t4,L1461
	 jr $t4
L1460: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1462
	 jr $t4
L1461: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1463
	 la $t4,L1464
	 jr $t4
L1463: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1465
	 jr $t4
L1464: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1466
	 la $t4,L1467
	 jr $t4
L1466: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1468
	 jr $t4
L1467: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1469
	 la $t4,L1470
	 jr $t4
L1469: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1471
	 jr $t4
L1470: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1472
	 la $t4,L1473
	 jr $t4
L1472: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1474
	 jr $t4
L1473: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1475
	 la $t4,L1476
	 jr $t4
L1475: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1477
	 jr $t4
L1476: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1478
	 la $t4,L1479
	 jr $t4
L1478: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1480
	 jr $t4
L1479: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1481
	 la $t4,L1482
	 jr $t4
L1481: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1483
	 jr $t4
L1482: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1484
	 la $t4,L1485
	 jr $t4
L1484: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1486
	 jr $t4
L1485: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1487
	 la $t4,L1488
	 jr $t4
L1487: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1489
	 jr $t4
L1488: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1490
	 la $t4,L1491
	 jr $t4
L1490: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
	 la $t4,L1492
	 jr $t4
L1491: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1493
	 la $t4,L1494
	 jr $t4
L1493: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_6
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_6
	 sw $t2,0($t4) 
L1494: 
L1492: 
L1489: 
L1486: 
L1483: 
L1480: 
L1477: 
L1474: 
L1471: 
L1468: 
L1465: 
L1462: 
L1459: 
L1456: 
L1453: 
	 la $t4,L1450
	 jr $t4
L1449: 
	 addu $t4,$zero,7
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1495
	 la $t4,L1496
	 jr $t4
L1495: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1498
	 la $t4,L1499
	 jr $t4
L1498: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1500
	 jr $t4
L1499: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1501
	 la $t4,L1502
	 jr $t4
L1501: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1503
	 jr $t4
L1502: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1504
	 la $t4,L1505
	 jr $t4
L1504: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1506
	 jr $t4
L1505: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1507
	 la $t4,L1508
	 jr $t4
L1507: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1509
	 jr $t4
L1508: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1510
	 la $t4,L1511
	 jr $t4
L1510: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1512
	 jr $t4
L1511: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1513
	 la $t4,L1514
	 jr $t4
L1513: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1515
	 jr $t4
L1514: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1516
	 la $t4,L1517
	 jr $t4
L1516: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1518
	 jr $t4
L1517: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1519
	 la $t4,L1520
	 jr $t4
L1519: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1521
	 jr $t4
L1520: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1522
	 la $t4,L1523
	 jr $t4
L1522: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1524
	 jr $t4
L1523: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1525
	 la $t4,L1526
	 jr $t4
L1525: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1527
	 jr $t4
L1526: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1528
	 la $t4,L1529
	 jr $t4
L1528: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1530
	 jr $t4
L1529: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1531
	 la $t4,L1532
	 jr $t4
L1531: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1533
	 jr $t4
L1532: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1534
	 la $t4,L1535
	 jr $t4
L1534: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1536
	 jr $t4
L1535: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1537
	 la $t4,L1538
	 jr $t4
L1537: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
	 la $t4,L1539
	 jr $t4
L1538: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1540
	 la $t4,L1541
	 jr $t4
L1540: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_7
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_7
	 sw $t2,0($t4) 
L1541: 
L1539: 
L1536: 
L1533: 
L1530: 
L1527: 
L1524: 
L1521: 
L1518: 
L1515: 
L1512: 
L1509: 
L1506: 
L1503: 
L1500: 
	 la $t4,L1497
	 jr $t4
L1496: 
	 addu $t4,$zero,8
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1542
	 la $t4,L1543
	 jr $t4
L1542: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1545
	 la $t4,L1546
	 jr $t4
L1545: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1547
	 jr $t4
L1546: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1548
	 la $t4,L1549
	 jr $t4
L1548: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1550
	 jr $t4
L1549: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1551
	 la $t4,L1552
	 jr $t4
L1551: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1553
	 jr $t4
L1552: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1554
	 la $t4,L1555
	 jr $t4
L1554: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1556
	 jr $t4
L1555: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1557
	 la $t4,L1558
	 jr $t4
L1557: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1559
	 jr $t4
L1558: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1560
	 la $t4,L1561
	 jr $t4
L1560: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1562
	 jr $t4
L1561: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1563
	 la $t4,L1564
	 jr $t4
L1563: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1565
	 jr $t4
L1564: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1566
	 la $t4,L1567
	 jr $t4
L1566: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1568
	 jr $t4
L1567: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1569
	 la $t4,L1570
	 jr $t4
L1569: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1571
	 jr $t4
L1570: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1572
	 la $t4,L1573
	 jr $t4
L1572: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1574
	 jr $t4
L1573: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1575
	 la $t4,L1576
	 jr $t4
L1575: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1577
	 jr $t4
L1576: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1578
	 la $t4,L1579
	 jr $t4
L1578: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1580
	 jr $t4
L1579: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1581
	 la $t4,L1582
	 jr $t4
L1581: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1583
	 jr $t4
L1582: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1584
	 la $t4,L1585
	 jr $t4
L1584: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
	 la $t4,L1586
	 jr $t4
L1585: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1587
	 la $t4,L1588
	 jr $t4
L1587: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_8
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_8
	 sw $t2,0($t4) 
L1588: 
L1586: 
L1583: 
L1580: 
L1577: 
L1574: 
L1571: 
L1568: 
L1565: 
L1562: 
L1559: 
L1556: 
L1553: 
L1550: 
L1547: 
	 la $t4,L1544
	 jr $t4
L1543: 
	 addu $t4,$zero,9
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1589
	 la $t4,L1590
	 jr $t4
L1589: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1592
	 la $t4,L1593
	 jr $t4
L1592: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1594
	 jr $t4
L1593: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1595
	 la $t4,L1596
	 jr $t4
L1595: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1597
	 jr $t4
L1596: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1598
	 la $t4,L1599
	 jr $t4
L1598: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1600
	 jr $t4
L1599: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1601
	 la $t4,L1602
	 jr $t4
L1601: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1603
	 jr $t4
L1602: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1604
	 la $t4,L1605
	 jr $t4
L1604: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1606
	 jr $t4
L1605: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1607
	 la $t4,L1608
	 jr $t4
L1607: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1609
	 jr $t4
L1608: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1610
	 la $t4,L1611
	 jr $t4
L1610: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1612
	 jr $t4
L1611: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1613
	 la $t4,L1614
	 jr $t4
L1613: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1615
	 jr $t4
L1614: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1616
	 la $t4,L1617
	 jr $t4
L1616: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1618
	 jr $t4
L1617: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1619
	 la $t4,L1620
	 jr $t4
L1619: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1621
	 jr $t4
L1620: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1622
	 la $t4,L1623
	 jr $t4
L1622: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1624
	 jr $t4
L1623: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1625
	 la $t4,L1626
	 jr $t4
L1625: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1627
	 jr $t4
L1626: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1628
	 la $t4,L1629
	 jr $t4
L1628: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1630
	 jr $t4
L1629: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1631
	 la $t4,L1632
	 jr $t4
L1631: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
	 la $t4,L1633
	 jr $t4
L1632: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1634
	 la $t4,L1635
	 jr $t4
L1634: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_9
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_9
	 sw $t2,0($t4) 
L1635: 
L1633: 
L1630: 
L1627: 
L1624: 
L1621: 
L1618: 
L1615: 
L1612: 
L1609: 
L1606: 
L1603: 
L1600: 
L1597: 
L1594: 
	 la $t4,L1591
	 jr $t4
L1590: 
	 addu $t4,$zero,10
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1636
	 la $t4,L1637
	 jr $t4
L1636: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1639
	 la $t4,L1640
	 jr $t4
L1639: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1641
	 jr $t4
L1640: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1642
	 la $t4,L1643
	 jr $t4
L1642: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1644
	 jr $t4
L1643: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1645
	 la $t4,L1646
	 jr $t4
L1645: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1647
	 jr $t4
L1646: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1648
	 la $t4,L1649
	 jr $t4
L1648: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1650
	 jr $t4
L1649: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1651
	 la $t4,L1652
	 jr $t4
L1651: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1653
	 jr $t4
L1652: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1654
	 la $t4,L1655
	 jr $t4
L1654: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1656
	 jr $t4
L1655: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1657
	 la $t4,L1658
	 jr $t4
L1657: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1659
	 jr $t4
L1658: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1660
	 la $t4,L1661
	 jr $t4
L1660: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1662
	 jr $t4
L1661: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1663
	 la $t4,L1664
	 jr $t4
L1663: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1665
	 jr $t4
L1664: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1666
	 la $t4,L1667
	 jr $t4
L1666: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1668
	 jr $t4
L1667: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1669
	 la $t4,L1670
	 jr $t4
L1669: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1671
	 jr $t4
L1670: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1672
	 la $t4,L1673
	 jr $t4
L1672: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1674
	 jr $t4
L1673: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1675
	 la $t4,L1676
	 jr $t4
L1675: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1677
	 jr $t4
L1676: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1678
	 la $t4,L1679
	 jr $t4
L1678: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
	 la $t4,L1680
	 jr $t4
L1679: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1681
	 la $t4,L1682
	 jr $t4
L1681: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_10
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_10
	 sw $t2,0($t4) 
L1682: 
L1680: 
L1677: 
L1674: 
L1671: 
L1668: 
L1665: 
L1662: 
L1659: 
L1656: 
L1653: 
L1650: 
L1647: 
L1644: 
L1641: 
	 la $t4,L1638
	 jr $t4
L1637: 
	 addu $t4,$zero,11
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1683
	 la $t4,L1684
	 jr $t4
L1683: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1686
	 la $t4,L1687
	 jr $t4
L1686: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1688
	 jr $t4
L1687: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1689
	 la $t4,L1690
	 jr $t4
L1689: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1691
	 jr $t4
L1690: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1692
	 la $t4,L1693
	 jr $t4
L1692: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1694
	 jr $t4
L1693: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1695
	 la $t4,L1696
	 jr $t4
L1695: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1697
	 jr $t4
L1696: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1698
	 la $t4,L1699
	 jr $t4
L1698: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1700
	 jr $t4
L1699: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1701
	 la $t4,L1702
	 jr $t4
L1701: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1703
	 jr $t4
L1702: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1704
	 la $t4,L1705
	 jr $t4
L1704: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1706
	 jr $t4
L1705: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1707
	 la $t4,L1708
	 jr $t4
L1707: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1709
	 jr $t4
L1708: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1710
	 la $t4,L1711
	 jr $t4
L1710: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1712
	 jr $t4
L1711: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1713
	 la $t4,L1714
	 jr $t4
L1713: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1715
	 jr $t4
L1714: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1716
	 la $t4,L1717
	 jr $t4
L1716: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1718
	 jr $t4
L1717: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1719
	 la $t4,L1720
	 jr $t4
L1719: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1721
	 jr $t4
L1720: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1722
	 la $t4,L1723
	 jr $t4
L1722: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1724
	 jr $t4
L1723: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1725
	 la $t4,L1726
	 jr $t4
L1725: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
	 la $t4,L1727
	 jr $t4
L1726: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1728
	 la $t4,L1729
	 jr $t4
L1728: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_11
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_11
	 sw $t2,0($t4) 
L1729: 
L1727: 
L1724: 
L1721: 
L1718: 
L1715: 
L1712: 
L1709: 
L1706: 
L1703: 
L1700: 
L1697: 
L1694: 
L1691: 
L1688: 
	 la $t4,L1685
	 jr $t4
L1684: 
	 addu $t4,$zero,12
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1730
	 la $t4,L1731
	 jr $t4
L1730: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1733
	 la $t4,L1734
	 jr $t4
L1733: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1735
	 jr $t4
L1734: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1736
	 la $t4,L1737
	 jr $t4
L1736: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1738
	 jr $t4
L1737: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1739
	 la $t4,L1740
	 jr $t4
L1739: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1741
	 jr $t4
L1740: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1742
	 la $t4,L1743
	 jr $t4
L1742: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1744
	 jr $t4
L1743: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1745
	 la $t4,L1746
	 jr $t4
L1745: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1747
	 jr $t4
L1746: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1748
	 la $t4,L1749
	 jr $t4
L1748: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1750
	 jr $t4
L1749: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1751
	 la $t4,L1752
	 jr $t4
L1751: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1753
	 jr $t4
L1752: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1754
	 la $t4,L1755
	 jr $t4
L1754: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1756
	 jr $t4
L1755: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1757
	 la $t4,L1758
	 jr $t4
L1757: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1759
	 jr $t4
L1758: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1760
	 la $t4,L1761
	 jr $t4
L1760: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1762
	 jr $t4
L1761: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1763
	 la $t4,L1764
	 jr $t4
L1763: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1765
	 jr $t4
L1764: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1766
	 la $t4,L1767
	 jr $t4
L1766: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1768
	 jr $t4
L1767: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1769
	 la $t4,L1770
	 jr $t4
L1769: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1771
	 jr $t4
L1770: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1772
	 la $t4,L1773
	 jr $t4
L1772: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
	 la $t4,L1774
	 jr $t4
L1773: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1775
	 la $t4,L1776
	 jr $t4
L1775: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_12
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_12
	 sw $t2,0($t4) 
L1776: 
L1774: 
L1771: 
L1768: 
L1765: 
L1762: 
L1759: 
L1756: 
L1753: 
L1750: 
L1747: 
L1744: 
L1741: 
L1738: 
L1735: 
	 la $t4,L1732
	 jr $t4
L1731: 
	 addu $t4,$zero,13
	 seq $t5,$t0,$t4
	 bne $t5,$zero,L1777
	 la $t4,L1778
	 jr $t4
L1777: 
	 addu $t4,$zero,0
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1779
	 la $t4,L1780
	 jr $t4
L1779: 
	 lw $t4,__A_0
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_0
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1781
	 jr $t4
L1780: 
	 addu $t4,$zero,1
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1782
	 la $t4,L1783
	 jr $t4
L1782: 
	 lw $t4,__A_1
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_1
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1784
	 jr $t4
L1783: 
	 addu $t4,$zero,2
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1785
	 la $t4,L1786
	 jr $t4
L1785: 
	 lw $t4,__A_2
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_2
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1787
	 jr $t4
L1786: 
	 addu $t4,$zero,3
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1788
	 la $t4,L1789
	 jr $t4
L1788: 
	 lw $t4,__A_3
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_3
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1790
	 jr $t4
L1789: 
	 addu $t4,$zero,4
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1791
	 la $t4,L1792
	 jr $t4
L1791: 
	 lw $t4,__A_4
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_4
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1793
	 jr $t4
L1792: 
	 addu $t4,$zero,5
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1794
	 la $t4,L1795
	 jr $t4
L1794: 
	 lw $t4,__A_5
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_5
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1796
	 jr $t4
L1795: 
	 addu $t4,$zero,6
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1797
	 la $t4,L1798
	 jr $t4
L1797: 
	 lw $t4,__A_6
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_6
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1799
	 jr $t4
L1798: 
	 addu $t4,$zero,7
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1800
	 la $t4,L1801
	 jr $t4
L1800: 
	 lw $t4,__A_7
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_7
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1802
	 jr $t4
L1801: 
	 addu $t4,$zero,8
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1803
	 la $t4,L1804
	 jr $t4
L1803: 
	 lw $t4,__A_8
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_8
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1805
	 jr $t4
L1804: 
	 addu $t4,$zero,9
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1806
	 la $t4,L1807
	 jr $t4
L1806: 
	 lw $t4,__A_9
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_9
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1808
	 jr $t4
L1807: 
	 addu $t4,$zero,10
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1809
	 la $t4,L1810
	 jr $t4
L1809: 
	 lw $t4,__A_10
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_10
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1811
	 jr $t4
L1810: 
	 addu $t4,$zero,11
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1812
	 la $t4,L1813
	 jr $t4
L1812: 
	 lw $t4,__A_11
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_11
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1814
	 jr $t4
L1813: 
	 addu $t4,$zero,12
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1815
	 la $t4,L1816
	 jr $t4
L1815: 
	 lw $t4,__A_12
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_12
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1817
	 jr $t4
L1816: 
	 addu $t4,$zero,13
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1818
	 la $t4,L1819
	 jr $t4
L1818: 
	 lw $t4,__A_13
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_13
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
	 la $t4,L1820
	 jr $t4
L1819: 
	 addu $t4,$zero,14
	 seq $t5,$t3,$t4
	 bne $t5,$zero,L1821
	 la $t4,L1822
	 jr $t4
L1821: 
	 lw $t4,__A_14
	 move $t2,$t4
	 lw $t4,__A_13
	 la $t5,__A_14
	 sw $t4,0($t5) 
	 la $t4,__A_13
	 sw $t2,0($t4) 
L1822: 
L1820: 
L1817: 
L1814: 
L1811: 
L1808: 
L1805: 
L1802: 
L1799: 
L1796: 
L1793: 
L1790: 
L1787: 
L1784: 
L1781: 
L1778: 
L1732: 
L1685: 
L1638: 
L1591: 
L1544: 
L1497: 
L1450: 
L1403: 
L1356: 
L1309: 
L1262: 
L1215: 
L1168: 
	 la $t4,L18
	 jalr $t4
	 addu $t4,$zero,1
	 addu $t5,$t0,$t4
	 move $t0,$t5
	 la $t4,L83
	 jr $t4
L85: 
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

	 addu $t1,$zero,0
	 move $t0,$t1
L1823: 
	 addu $t1,$zero,14
	 sle $t2,$t0,$t1
	 bne $t2,$zero,L1824
	 la $t1,L1825
	 jr $t1
L1824: 
	 addu $t1,$zero,0
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1826
	 la $t1,L1827
	 jr $t1
L1826: 
	 lw $t1,__A_0
	 move $a0, $t1
	 la $t2,L32
	 jalr $t2
	 la $t1,L2
	 move $a0, $t1
	 la $t2,L34
	 jalr $t2
	 la $t1,L1828
	 jr $t1
L1827: 
	 addu $t1,$zero,1
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1829
	 la $t1,L1830
	 jr $t1
L1829: 
	 lw $t1,__A_1
	 move $a0, $t1
	 la $t2,L32
	 jalr $t2
	 la $t1,L3
	 move $a0, $t1
	 la $t2,L34
	 jalr $t2
	 la $t1,L1831
	 jr $t1
L1830: 
	 addu $t1,$zero,2
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1832
	 la $t1,L1833
	 jr $t1
L1832: 
	 lw $t1,__A_2
	 move $a0, $t1
	 la $t2,L32
	 jalr $t2
	 la $t1,L4
	 move $a0, $t1
	 la $t2,L34
	 jalr $t2
	 la $t1,L1834
	 jr $t1
L1833: 
	 addu $t1,$zero,3
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1835
	 la $t1,L1836
	 jr $t1
L1835: 
	 lw $t1,__A_3
	 move $a0, $t1
	 la $t2,L32
	 jalr $t2
	 la $t1,L5
	 move $a0, $t1
	 la $t2,L34
	 jalr $t2
	 la $t1,L1837
	 jr $t1
L1836: 
	 addu $t1,$zero,4
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1838
	 la $t1,L1839
	 jr $t1
L1838: 
	 lw $t1,__A_4
	 move $a0, $t1
	 la $t2,L32
	 jalr $t2
	 la $t1,L6
	 move $a0, $t1
	 la $t2,L34
	 jalr $t2
	 la $t1,L1840
	 jr $t1
L1839: 
	 addu $t1,$zero,5
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1841
	 la $t1,L1842
	 jr $t1
L1841: 
	 lw $t1,__A_5
	 move $a0, $t1
	 la $t2,L32
	 jalr $t2
	 la $t1,L7
	 move $a0, $t1
	 la $t2,L34
	 jalr $t2
	 la $t1,L1843
	 jr $t1
L1842: 
	 addu $t1,$zero,6
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1844
	 la $t1,L1845
	 jr $t1
L1844: 
	 lw $t1,__A_6
	 move $a0, $t1
	 la $t2,L32
	 jalr $t2
	 la $t1,L8
	 move $a0, $t1
	 la $t2,L34
	 jalr $t2
	 la $t1,L1846
	 jr $t1
L1845: 
	 addu $t1,$zero,7
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1847
	 la $t1,L1848
	 jr $t1
L1847: 
	 lw $t1,__A_7
	 move $a0, $t1
	 la $t2,L32
	 jalr $t2
	 la $t1,L9
	 move $a0, $t1
	 la $t2,L34
	 jalr $t2
	 la $t1,L1849
	 jr $t1
L1848: 
	 addu $t1,$zero,8
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1850
	 la $t1,L1851
	 jr $t1
L1850: 
	 lw $t1,__A_8
	 move $a0, $t1
	 la $t2,L32
	 jalr $t2
	 la $t1,L10
	 move $a0, $t1
	 la $t2,L34
	 jalr $t2
	 la $t1,L1852
	 jr $t1
L1851: 
	 addu $t1,$zero,9
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1853
	 la $t1,L1854
	 jr $t1
L1853: 
	 lw $t1,__A_9
	 move $a0, $t1
	 la $t2,L32
	 jalr $t2
	 la $t1,L11
	 move $a0, $t1
	 la $t2,L34
	 jalr $t2
	 la $t1,L1855
	 jr $t1
L1854: 
	 addu $t1,$zero,10
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1856
	 la $t1,L1857
	 jr $t1
L1856: 
	 lw $t1,__A_10
	 move $a0, $t1
	 la $t2,L32
	 jalr $t2
	 la $t1,L12
	 move $a0, $t1
	 la $t2,L34
	 jalr $t2
	 la $t1,L1858
	 jr $t1
L1857: 
	 addu $t1,$zero,11
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1859
	 la $t1,L1860
	 jr $t1
L1859: 
	 lw $t1,__A_11
	 move $a0, $t1
	 la $t2,L32
	 jalr $t2
	 la $t1,L13
	 move $a0, $t1
	 la $t2,L34
	 jalr $t2
	 la $t1,L1861
	 jr $t1
L1860: 
	 addu $t1,$zero,12
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1862
	 la $t1,L1863
	 jr $t1
L1862: 
	 lw $t1,__A_12
	 move $a0, $t1
	 la $t2,L32
	 jalr $t2
	 la $t1,L14
	 move $a0, $t1
	 la $t2,L34
	 jalr $t2
	 la $t1,L1864
	 jr $t1
L1863: 
	 addu $t1,$zero,13
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1865
	 la $t1,L1866
	 jr $t1
L1865: 
	 lw $t1,__A_13
	 move $a0, $t1
	 la $t2,L32
	 jalr $t2
	 la $t1,L15
	 move $a0, $t1
	 la $t2,L34
	 jalr $t2
	 la $t1,L1867
	 jr $t1
L1866: 
	 addu $t1,$zero,14
	 seq $t2,$t0,$t1
	 bne $t2,$zero,L1868
	 la $t1,L1869
	 jr $t1
L1868: 
	 lw $t1,__A_14
	 move $a0, $t1
	 la $t2,L32
	 jalr $t2
	 la $t1,L16
	 move $a0, $t1
	 la $t2,L34
	 jalr $t2
L1869: 
L1867: 
L1864: 
L1861: 
L1858: 
L1855: 
L1852: 
L1849: 
L1846: 
L1843: 
L1840: 
L1837: 
L1834: 
L1831: 
L1828: 
	 addu $t1,$zero,1
	 addu $t2,$t0,$t1
	 move $t0,$t2
	 la $t1,L1823
	 jr $t1
L1825: 
	 la $t1,L17
	 move $a0, $t1
	 la $t2,L34
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

