

#ifndef CODEGEN_HH
#define CODEGEN_HH

#include "Node.hpp"
#include <vector>
#include <string>
#include <unordered_map>
class CodeGenerator
{
public:
    CodeGenerator(Node* node){ast = node;}
    
    void prePostTraversal(Node *node, void (CodeGenerator::*passCB)(Node *, bool));

    // Driver code for code gen
    void execute();

    void ifStatementPrune(Node *node);
    void ifElseStatementPrune(Node *node);
    void whileStatementPrune(Node *node);

    void assignmentsAndOpsCodeGen(Node *node, bool processedChildren);

    void globalVarsCodeGen(Node *node, bool processedChildren);

    // Register Allocater
    std::string getRegister();
    void freeRegister(std::string regName);

    // Generates code for adjusting the stack pointer when entering and exiting a function
    void saveRegistersCodeGen(int numberOfRegisters); // Same as prolouge
    void loadRegistersCodeGen(int numberOfRegisters); // Same as epilouge

    Node *ast;

    std::vector<std::pair<std::string, bool>> registerPool = {std::make_pair("$t0", true), std::make_pair("$t1", true), std::make_pair("$t2", true), std::make_pair("$t3", true), std::make_pair("$t4", true), std::make_pair("$t5", true), std::make_pair("$t6", true), std::make_pair("$t7", true), std::make_pair("$t8", true), std::make_pair("$t9", true), std::make_pair("$s0", true), std::make_pair("$s1", true), std::make_pair("$s2", true), std::make_pair("$s3", true), std::make_pair("$s4", true), std::make_pair("$s5", true), std::make_pair("$s6", true), std::make_pair("$s7", true)};
    std::string output;
};

#endif