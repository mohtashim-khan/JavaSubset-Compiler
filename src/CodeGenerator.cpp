#include "CodeGenerator.hpp"

CodeGenerator::CodeGenerator(Node *node)
{
    ast = node;
    output += ".data\n";
    output += "error_msg: .asciiz \"MIPS ERROR\\n\"  \n";
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
    output += ".text";
    prePostTraversal(ast, &CodeGenerator::assignmentsAndOpsCodeGen);

    // saveRegistersCodeGen(14);
    // loadRegistersCodeGen(14);
}

/**PASS FUNCTIONS**/

void CodeGenerator::globalVarsCodeGen(Node *node, bool processedChildren)
{

    // PreOrder
    if (!processedChildren)
    {
    }

    // PostOrder
    else
    {
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
            prolouge(node);
        }
    }

    // PostOrder
    else
    {
        if (node->type == "functionDeclaration")
        {
            epilouge(node);
        }
    }
}

/** REGISTER ALLOCATER FUNCTIONS **/
std::string CodeGenerator::getRegister()
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

void CodeGenerator::freeRegister(std::string regName)
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

/** STACK FUNCTIONS -- These functions will only be executed on function open and close **/
void CodeGenerator::prolouge(Node *node)
{
    // Create Prolouge label
    if (node->type == "mainFunctionDeclaration")
    {
        output += "L0: \n";
    }
    else
    {
        output += createFunctionLabel(node->semanticInformation->identifier);
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

void CodeGenerator::epilouge(Node *node)
{
    // Check for a return
    if (node->semanticInformation->returnType != "void")
    {
        mipsError(); // Generate mips Error Code
    }

    // Create epilouge label
    if (node->type == "mainFunctionDeclaration")
    {
        output += "L1: \n";
    }

    else
    {
        output += getFunctionLabel(node->semanticInformation->identifier + "epilouge");
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

    if (node->type == "mainFunctionDeclaration")
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
    //Assign $a registers
    for(unsigned long i = 0; i < argRegisters.size(); i++)
    {
        output += "move $a"+std::to_string(i)+", "+argRegisters.at(i)+ "\n";
    }

    output+="jal "+ getFunctionLabel(functionId)+ "\n";
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

