#include "CodeGenerator.hpp"

CodeGenerator::CodeGenerator(Node *node)
{
    ast = node;
    output += ".data\n";
    output += "error_msg: .asciiz \"MIPS ERROR\\n\"  \n";
    output += "boolean_true: .asciiz \"true\\n\"  \n";
    output += "boolean_false: .asciiz \"false\\n\"  \n";
}

// Traversal Engine
void CodeGenerator::prePostTraversal(Node *node, void (CodeGenerator::*passCB)(Node *, bool childrenProcessed))
{
    // Do something to node before you see the children -- Preorder
    (this->*passCB)(node, false);

    // Process Children
    for (Node *&child : node->childNodes)
    {
        prePostTraversal(child, passCB);
    }

    // Do something to node after processing Children -- PostOrder

    (this->*passCB)(node, true);
}

/*Driver Code*/
void CodeGenerator::execute()
{
    prePostTraversal(ast, &CodeGenerator::globalVarsCodeGen);
    output += ".text\n";
    output += ".globl main\n";
    mipsFunctionCall("main");

    prePostTraversal(ast, &CodeGenerator::assignmentsAndOpsCodeGen);
}

/**PASS FUNCTIONS**/

// Create function Labels and fill out global variables
void CodeGenerator::globalVarsCodeGen(Node *node, bool processedChildren)
{

    // PreOrder
    if (!processedChildren)
    {
    }

    // PostOrder
    else
    {
        if (node->type == "functionDeclaration")
        {
            createFunctionLabel(node->semanticInformation->identifier);
        }

        else if (node->type == "globalVardeclaration")
        {
            output += node->semanticInformation->identifier + ": .word 0 \n"; // GlobalVar initialization to initial 0 values
        }

        else if (node->type == "string")
        {
            node->codeGenLabel = createLabel();
        }
    }
}

void CodeGenerator::assignmentsAndOpsCodeGen(Node *node, bool processedChildren)
{
    // PreOrder
    if (!processedChildren)
    {
        if (node->type == "ifStatement")
        {
            ifStatementPrune(node);
        }

        else if (node->type == "ifElseStatement")
        {
            ifElseStatementPrune(node);
        }

        else if (node->type == "whileStatement")
        {
            whileStatementPrune(node);
        }

        else if (node->type == "functionDeclaration")
        {
            addRegisterPool();
            prolouge(node->semanticInformation->identifier, node->type);
        }
    }

    // PostOrder
    else
    {
        if (node->type == "functionDeclaration")
        {
            epilouge(node->semanticInformation->identifier, node->semanticInformation->returnType, node->type);
            removeRegisterPool();
        }
    }
}

/** REGISTER ALLOCATER FUNCTIONS **/
std::string RegisterPool::getRegister()
{

    for (auto &reg : registerPool)
    {
        if (reg.second == true)
        {
            reg.second = false;
            return reg.first;
        }
    }
    std::cerr << "RAN OUT OF REGISTERS \n";
    exit(EXIT_FAILURE);
}

void RegisterPool::freeRegister(std::string regName)
{
    for (auto &reg : registerPool)
    {
        if (reg.first == regName)
        {
            reg.second = true;
            break;
        }
    }
    std::cerr << "REGISTER NOT FOUND \n";
    exit(EXIT_FAILURE);
}

std::string CodeGenerator::getRegister()
{
    return registerStack.top()->getRegister();
}

void CodeGenerator::freeRegister(std::string regName)
{
    registerStack.top()->freeRegister(regName);
}

/** STACK FUNCTIONS -- These functions will only be executed on function open and close **/
void CodeGenerator::prolouge(std::string id, std::string type)
{
    // Create Prolouge label
    if (type == "mainFunctionDeclaration")
    {
        output += "main: \n";
    }
    else
    {
        output += getFunctionLabel(id);
    }

    // Save Return Address
    output += "addiu $sp, $sp, -4 \n";
    output += "sw $ra, 0($sp)\n";

    for (int i = 0; i < 4; i++)
    {
        output += "addiu $sp, $sp, -4 \n";
        output += "sw $a" + std::to_string(i) + ", 0($sp)\n";
    }

    for (int i = 0; i < 10; i++)
    {
        output += "addiu $sp, $sp, -4 \n";
        output += "sw $t" + std::to_string(i) + ", 0($sp)\n";
    }

    for (int i = 0; i < 8; i++)
    {
        output += "addiu $sp, $sp, -4 \n";
        output += "sw $s" + std::to_string(i) + ", 0($sp)\n";
    }
}

void CodeGenerator::epilouge(std::string id, std::string returnType, std::string type)
{
    // Check for a return
    if (returnType != "void")
    {
        mipsError(); // Generate mips Error Code if there is a return
    }

    // Create epilouge label
    if (type == "mainFunctionDeclaration")
    {
        output += "L1: \n";
    }

    else
    {
        output += getFunctionLabel(id + "epilouge");
    }

    // Stack Operations

    // Load S registers
    for (int i = 0; i < 8; i++)
    {
        output += "lw $s" + std::to_string(7 - i) + ", 0($sp) \n";
        output += "addiu $sp, $sp, 4 \n";
    }

    // Load T registers
    for (int i = 0; i < 10; i++)
    {
        output += "lw $t" + std::to_string(9 - i) + ", 0($sp) \n";
        output += "addiu $sp, $sp, 4 \n";
    }

    // Load Argument registers
    for (int i = 0; i < 4; i++)
    {
        output += "lw $a" + std::to_string(3 - i) + ", 0($sp) \n";
        output += "addiu $sp, $sp, 4 \n";
    }

    // Load return address Register
    output += "lw $ra, 0($sp) \n";
    output += "addiu $sp, $sp, 4 \n";

    if (type == "mainFunctionDeclaration")
    {
        // Exit if main function
        output += "li $v0,10\n";
        output += "syscall\n";
    }
    else
    {
        // Return to calling function if regular function
        output += "jr $ra \n";
    }
}

/**Function Label Functions**/
std::string CodeGenerator::createFunctionLabel(std::string id)
{
    std::string prolougeLabel = "L" + std::to_string(funcLabelCounter) + ": \n";
    funcLabelCounter++;
    functionIDToLabelMap[id] = prolougeLabel;
    std::string epilougeLabel = "L" + std::to_string(funcLabelCounter) + ": \n";
    funcLabelCounter++;
    functionIDToLabelMap[id + "epilouge"] = epilougeLabel;
    return prolougeLabel;
}

// Unused function
std::string CodeGenerator::createLabel()
{
    std::string label = "L" + std::to_string(funcLabelCounter) + ": \n";
    funcLabelCounter++;
    return label;
}

std::string CodeGenerator::getFunctionLabel(std::string id)
{
    std::unordered_map<std::string, std::string>::const_iterator label = functionIDToLabelMap.find(id);
    if (label == functionIDToLabelMap.end())
    {
        std::cerr << "FUNCTION LABEL NOT FOUND \n";
        exit(EXIT_FAILURE);
    }
    return label->second;
}

/**MIPS code generation helper functions**/

void CodeGenerator::mipsError()
{
    // Print Error
    output += "li $v0,4\n";
    output += "la $a0,error_msg\n";
    output += "syscall\n";

    // Exit
    output += "li $v0,10\n";
    output += "syscall\n";
}

void CodeGenerator::mipsFunctionCall(std::string functionId, std::vector<std::string> argRegisters) // CHECK IF THERE ARE ANY FUNCTIONS WITH MORE THAN 4 ARGS
{
    if (argRegisters.size() > 4)
    {
        std::cerr << "function Call has More than 4 args. Not enough $a registers \n";
        exit(EXIT_FAILURE);
    }
    // Assign $a registers
    for (unsigned long i = 0; i < argRegisters.size(); i++)
    {
        output += "move $a" + std::to_string(i) + ", " + argRegisters.at(i) + "\n";
    }

    output += "jal " + getFunctionLabel(functionId) + "\n";
}

void CodeGenerator::mipsModifyGlobalVarValue(std::string globalVarLabel, std::string newValReg)
{
    std::string addressReg = getRegister();
    output += "la " + addressReg + "," + globalVarLabel + "\n";
    output += "sw " + newValReg + ",0(" + addressReg + ") \n";
    freeRegister(addressReg);
}

// Remember to Free register after calling and using this function
std::string CodeGenerator::mipsGetGlobalVarValueinReg(std::string globalVarLabel, std::string returnReg)
{
    output += "lw " + returnReg + "," + globalVarLabel + "\n";
}

/**Prune functions**/
void CodeGenerator::ifStatementPrune(Node *node)
{
}

void CodeGenerator::ifElseStatementPrune(Node *node)
{
}

void CodeGenerator::whileStatementPrune(Node *node)
{
}

/** J-- Library Functions Code Gen **/

void CodeGenerator::mipsGetChar()
{
    createFunctionLabel("getChar");
    prolouge("getChar", "functionDeclaration");
    output += "li $v0,12\n";
    output += "syscall\n"; // v0 Contains the return value

    epilouge("getChar", "int", "functionDeclaration");
}
void CodeGenerator::mipsHalt()
{
    createFunctionLabel("halt");
    prolouge("halt", "functionDeclaration");

    output += "li $v0,10\n";
    output += "syscall\n";

    epilouge("halt", "void", "functionDeclaration");
}

void CodeGenerator::mipsPrintb()
{
    createFunctionLabel("printb");
    prolouge("printb", "functionDeclaration");

    output += "beq $a0, $zero, isFalse\n";

    // If a0 != 0 then load true address
    output += "isTrue:\n";
    output += "la $a0, boolean_true\n";
    output += "j printBoolean\n";

    // If a0 == 0 then load false address
    output += "isFalse:\n";
    output += "la $a0, boolean_false\n";

    // Print
    output += "printBoolean:\n";
    output += "li $v0,4\n";
    output += "syscall\n";

    epilouge("printb", "void", "functionDeclaration");
}

void CodeGenerator::mipsPrintc()
{
    createFunctionLabel("printc");
    prolouge("printc", "functionDeclaration");

    output += "li $v0,11\n";
    output += "syscall\n";

    epilouge("printc", "void", "functionDeclaration");
}
void CodeGenerator::mipsPrinti()
{
    createFunctionLabel("printi");
    prolouge("printi", "functionDeclaration");

    output += "li $v0,1\n";
    output += "syscall\n";

    epilouge("printi", "void", "functionDeclaration");
}

// Assume a0 contains the address of the string
void CodeGenerator::mipsPrints()
{
    createFunctionLabel("prints");
    prolouge("prints", "functionDeclaration");

    output += "li $v0,4\n";
    output += "syscall\n";

    epilouge("prints", "void", "functionDeclaration");
}

void CodeGenerator::generateLibraryFunctions()
{
    mipsGetChar();
    mipsHalt();
    mipsPrintb();
    mipsPrintc();
    mipsPrinti();
    mipsPrints();
}
