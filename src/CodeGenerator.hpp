

#ifndef CODEGEN_HH
#define CODEGEN_HH

#include "Node.hpp"
#include <vector>
#include <string>
#include <unordered_map>
#include <stack>

// Forward Declarations
class RegisterPool;
class CodeGenerator;
class CodeGenerator
{
public:
    CodeGenerator(Node *node);

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
    void prolouge(std::string id, std::string type); // Saves registers to the stack
    void epilouge(std::string id, std::string returnType, std::string type); // Loads registers from the stack

    // Label functions
    std::string createFunctionLabel(std::string id);
    std::string getFunctionLabel(std::string id);
    std::string createLabel();

    // MIPS helper code generation functions
    void mipsError();
    void mipsFunctionCall(std::string functionId, std::vector<std::string> args = {}); // args assigns $a0-$a3
    void mipsModifyGlobalVarValue(std::string globalVar, std::string reg);
    std::string mipsGetGlobalVarValueinReg(std::string globalVarLabel, std::string returnReg);

    // J-- library functions Code Generation -- $a0-$a3 are desginated as argument registers, $v0 as return register
    void generateLibraryFunctions();
    void mipsGetChar();
    void mipsHalt();
    void mipsPrintb();
    void mipsPrintc();
    void mipsPrinti();
    void mipsPrints();
    bool halt = true;
    bool getChar = true;
    bool printB = true;
    bool printC = true;
    bool printI = true;
    bool printS = true;

    // Register Stack Functions
    void addRegisterPool() { registerStack.push(new RegisterPool()); };
    void removeRegisterPool(){registerStack.pop();};

    Node *ast;

    // Register Pool

    // Stack of Register Pool
    std::stack<RegisterPool *> registerStack;
    // Assembly Output
    std::string output;

    // Function Labels
    std::unordered_map<std::string, std::string> functionIDToLabelMap;
    int funcLabelCounter = 2; // 0 is reserved for the main function prolouge, 1 is reserved for main function epilouge
};

class RegisterPool
{
public:
    RegisterPool();

    std::vector<std::pair<std::string, bool>> registerPool = {std::make_pair("$t0", true),
                                                              std::make_pair("$t1", true),
                                                              std::make_pair("$t2", true),
                                                              std::make_pair("$t3", true),
                                                              std::make_pair("$t4", true),
                                                              std::make_pair("$t5", true),
                                                              std::make_pair("$t6", true),
                                                              std::make_pair("$t7", true),
                                                              std::make_pair("$t8", true),
                                                              std::make_pair("$t9", true),
                                                              std::make_pair("$s0", true),
                                                              std::make_pair("$s1", true),
                                                              std::make_pair("$s2", true),
                                                              std::make_pair("$s3", true),
                                                              std::make_pair("$s4", true),
                                                              std::make_pair("$s5", true),
                                                              std::make_pair("$s6", true),
                                                              std::make_pair("$s7", true)};

    std::string getRegister();
    void freeRegister(std::string regName);
};

#endif