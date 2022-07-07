# JavaSubset Compiler!

This compiler compiles J-- code (grammer defined below) into MIPS assembley code which can the be run via SPIM!

Run Instructions:
1) use makefile and bison to build the compiler using the command "cd src/ && bison parser.ypp && cd .. && make release"
2) use command "./output filepath" to compile assembly -> the output for this assembley can be found in output.asm.
3) use command "spim -f output.asm" to run the Generated Assembly file.

**OUTPUT EXAMPLES**
