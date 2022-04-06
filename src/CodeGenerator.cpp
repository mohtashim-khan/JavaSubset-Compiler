#include "CodeGenerator.hpp"

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

/**PASS FUNCTIONS**/
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
    }

    // PostOrder
    else
    {
    }
}

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

/**REGISTER ALLOCATER FUNCTIONS**/
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
    std::cerr << "RAN OUT OF REGISTERS";
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
}

/** STACK FUNCTIONS **/
void CodeGenerator::saveRegistersCodeGen(int numberOfRegisters)
{
    std::cout << "SAVE REGISTERS: \n";
    std::string outputSave;

    for (int i = 0; i < numberOfRegisters && i <= 9; i++)
    {
        outputSave += "addiu $sp, $sp, -4 \n";
        outputSave += "sw $t" + std::to_string(i) + ", 0($sp)\n";
    }

    if (numberOfRegisters > 10)
    {
        for (int i = 0; i < numberOfRegisters - 10 && i <= 7; i++)
        {
            outputSave += "addiu $sp, $sp, -4 \n";
            outputSave += "sw $s" + std::to_string(i) + ", 0($sp)\n";
        }
    }

    std::cout << outputSave;
}

void CodeGenerator::loadRegistersCodeGen(int numberOfRegisters)
{
    std::cout << "LOAD REGISTERS: \n";
    std::string outputLoad;

    if (numberOfRegisters > 10)
    {

        int sub = 0;
        for (int i = 0; i < numberOfRegisters - 10 && i < 8; i++)
        {
            outputLoad += "lw $s" + std::to_string(numberOfRegisters - 10 - i - 1) + ", 0($sp) \n";
            outputLoad += "addiu $sp, $sp, 4 \n";
            sub++;
        }

        for (int i = 0; i < numberOfRegisters - sub && i < 10; i++)
        {
            outputLoad += "lw $t" + std::to_string(numberOfRegisters - sub - i - 1) + ", 0($sp) \n";
            outputLoad += "addiu $sp, $sp, 4 \n";
        }
    }

    std::cout << outputLoad;
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

/*Driver Code*/
void CodeGenerator::execute()
{
    // prePostTraversal(ast, &CodeGenerator::globalVarsCodeGen);
    // prePostTraversal(ast, &CodeGenerator::assignmentsAndOpsCodeGen);

    saveRegistersCodeGen(14);
    loadRegistersCodeGen(14);
}