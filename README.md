# JavaSubset Compiler!

This compiler compiles J-- code (grammer defined below) into MIPS assembley code which can the be run via SPIM!

Build Instructions:
1) use makefile and bison to build the compiler using the command "cd src/ && bison parser.ypp && cd .. && make release" - Please ensure Bison is installed on your machine

Run Instructions:
1) use command "./output filepath" to compile assembly -> the output for this assembley can be found in output.asm
2) use command "spim -f output.asm" to run the Generated Assembly file

**J-- Code Snippet**

The following is J-- source code for a recursive fibonacci sequence:

        main() {
                int i;
                i = 0;

                while (i <= 47) {
                        prints("fib(");
                        printi(i);
                        prints(") = ");
                        printi(fib(i));
                        prints("\n");
                        i = i + 1;
                }
        }

        int fib(int n) {
                if (n == 0) return 0;
                if (n == 1) return 1;
                return fib(n-1) + fib(n-2);
        }
 
 Which generates the following MIPS assembley:
                .data
        error_msg: .asciiz "Function did not return a value!"  
        div_error_msg: .asciiz "division by zero"  
        boolean_true: .asciiz "true\n"  
        boolean_false: .asciiz "false\n"  
        EOF_msg: .asciiz "EOF DETECTED: exiting program\n"  
        __input_char_mips__: .space 2 
        L2: .byte 102 105 98 40 0
        .align 2

        L3: .byte 41 32 61 32 0
        .align 2

        L4: .byte 10 0
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
                 addu $t1,$zero,0
                 move $t0,$t1
        L20: 
                 addu $t1,$zero,47
                 sle $t2,$t0,$t1
                 bne $t2,$zero,L21
                 la $t1,L22
                 jr $t1
        L21: 
                 la $t1,L2
                 move $a0, $t1
                 la $t2,L18
                 jalr $t2
                 move $a0, $t0
                 la $t1,L16
                 jalr $t1
                 la $t1,L3
                 move $a0, $t1
                 la $t2,L18
                 jalr $t2
                 move $a0, $t0
                 la $t1,L5
                 jalr $t1
                 move $t1,$v0
                 move $a0, $t1
                 la $t1,L16
                 jalr $t1
                 la $t1,L4
                 move $a0, $t1
                 la $t2,L18
                 jalr $t2
                 addu $t1,$zero,1
                 addu $t2,$t0,$t1
                 move $t0,$t2
                 la $t1,L20
                 jr $t1
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
                 addu $t1,$zero,0
                 seq $t2,$t0,$t1
                 bne $t2,$zero,L23
                 la $t1,L24
                 jr $t1
        L23: 
                 addu $t1,$zero,0
                 move $v0,$t1
                 la $t2,L6
                 jr $t2
        L24: 
                 addu $t1,$zero,1
                 seq $t2,$t0,$t1
                 bne $t2,$zero,L25
                 la $t1,L26
                 jr $t1
        L25: 
                 addu $t1,$zero,1
                 move $v0,$t1
                 la $t2,L6
                 jr $t2
        L26: 
                 addu $t1,$zero,1
                 subu $t2,$t0,$t1
                 move $a0, $t2
                 la $t1,L5
                 jalr $t1
                 move $t1,$v0
                 addu $t2,$zero,2
                 subu $t3,$t0,$t2
                 move $a0, $t3
                 la $t2,L5
                 jalr $t2
                 move $t2,$v0
                 addu $t3,$t1,$t2
                 move $v0,$t3
                 la $t1,L6
                 jr $t1
        li $v0,4
        la $a0,error_msg
        syscall
        li $v0,10
        syscall
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

Which generates the following output:
        fib(0) = 0
        fib(1) = 1
        fib(2) = 1
        fib(3) = 2
        fib(4) = 3
        fib(5) = 5
        fib(6) = 8
        fib(7) = 13
        fib(8) = 21
        fib(9) = 34
        fib(10) = 55
        fib(11) = 89
        fib(12) = 144
        fib(13) = 233
        fib(14) = 377
        fib(15) = 610
        fib(16) = 987
        fib(17) = 1597
        fib(18) = 2584
        fib(19) = 4181
        fib(20) = 6765
        fib(21) = 10946
        fib(22) = 17711
        fib(23) = 28657
        .
        .
        .
               

Try running this code yourself using the released binary and the run instructions!

**OUTPUT EXAMPLES**

To see examples of the compiler in action, testing files are provided. 
1) The "Testing files" directory contains test files of J-- source code
2) The "Generated Assembley" directory contains the generated assembley for each respective testing file
3) The "Test Outputs" directory contains the program output of running the assembley generated for each testing file.

**J-- Grammer**


        start           : /* empty */
                        | globaldeclarations
                        ;

        literal         : NUMBER
                        | STRING
                        | TRUE
                        | FALSE
                        ;

        type            : BOOLEAN
                        | INT
                        ;

        globaldeclarations      : globaldeclaration
                                | globaldeclarations globaldeclaration
                                ;

        globaldeclaration       : variabledeclaration
                                | functiondeclaration
                                | mainfunctiondeclaration
                                ;

        variabledeclaration     : type identifier ';'
                                ;

        identifier              : ID
                                ;

        functiondeclaration     : functionheader block
                                ;

        functionheader          : type functiondeclarator
                                | VOID functiondeclarator
                                ;

        functiondeclarator      : identifier '(' formalparameterlist ')'
                                | identifier '(' ')'
                                ;

        formalparameterlist     : formalparameter
                                | formalparameterlist ',' formalparameter
                                ;

        formalparameter         : type identifier
                                ;

        mainfunctiondeclaration : mainfunctiondeclarator block
                                ;

        mainfunctiondeclarator  : identifier '(' ')'
                                ;

        block                   : '{' blockstatements '}'
                                | '{' '}'
                                ;

        blockstatements         : blockstatement
                                | blockstatements blockstatement
                                ;

        blockstatement          : variabledeclaration
                                | statement
                                ;

        statement               : block
                                | ';'
                                | statementexpression ';'
                                | BREAK ';'
                                | RETURN expression ';'
                                | RETURN ';'
                                | IF '(' expression ')' statement
                                | IF '(' expression ')' statement ELSE statement
                                | WHILE '(' expression ')' statement
                                ;

        statementexpression     : assignment
                                | functioninvocation
                                ;

        primary                 : literal
                                | '(' expression ')'
                                | functioninvocation
                                ;

        argumentlist            : expression
                                | argumentlist ',' expression
                                ;

        functioninvocation      : identifier '(' argumentlist ')'
                                | identifier '(' ')'
                                ;

        postfixexpression       : primary
                                | identifier
                                ;

        unaryexpression         : '-' unaryexpression
                                | '!' unaryexpression
                                | postfixexpression
                                ;

        multiplicativeexpression: unaryexpression
                                | multiplicativeexpression '*' unaryexpression
                                | multiplicativeexpression '/' unaryexpression
                                | multiplicativeexpression '% ' unaryexpression
                                ;

        additiveexpression      : multiplicativeexpression
                                | additiveexpression '+' multiplicativeexpression
                                | additiveexpression '-' multiplicativeexpression
                                ;

        relationalexpression    : additiveexpression
                                | relationalexpression '<' additiveexpression
                                | relationalexpression '>' additiveexpression
                                | relationalexpression LE additiveexpression
                                | relationalexpression GE additiveexpression
                                ;

        equalityexpression      : relationalexpression
                                | equalityexpression EQ relationalexpression
                                | equalityexpression NE relationalexpression
                                ;

        conditionalandexpression: equalityexpression
                                | conditionalandexpression AND equalityexpression
                                ;

        conditionalorexpression : conditionalandexpression
                                | conditionalorexpression OR conditionalandexpression
                                ;

        assignmentexpression    : conditionalorexpression
                                | assignment
                                ;

        assignment              : identifier '=' assignmentexpression
                                ;

        expression              : assignmentexpression
                                ;

