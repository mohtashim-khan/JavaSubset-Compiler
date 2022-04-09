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
    // GET GLOBAL VARS
    prePostTraversal(ast, &CodeGenerator::globalVarsCodeGen);

    // MIPS OUTPUT
    output += ".text\n";
    output += ".globl main\n";
    output += "main: \n";
    mipsFunctionCall(mainFunctionId);
    output += "li $v0,10\n";
    output += "syscall\n";

    generateLibraryFunctions();

    // ACTUAL CODE GEN
    prePostTraversal(ast, &CodeGenerator::assignmentsAndOpsCodeGen);
    writetoOutputFile("./assembly_testfiles/test.asm");
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

        else if (node->type == "mainFunctionDeclaration")
        {
            createFunctionLabel(node->semanticInformation->identifier, true);
            mainFunctionId = node->semanticInformation->identifier;
        }

        else if (node->type == "globalVardeclaration")
        {
            output += node->semanticInformation->identifier + ": .word 0 \n"; // GlobalVar initialization to initial 0 values
        }

        else if (node->type == "string")
        {
            node->codeGenLabel = createLabel();
            output += node->codeGenLabel + ": .asciiz \"" + node->value + "\" \n";
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

        else if (node->type == "functionDeclaration" || node->type == "mainFunctionDeclaration")
        {
            addRegisterPool();
            prolouge(node->semanticInformation->identifier, node->type);
            currentFunctionId = node->semanticInformation->identifier;
        }
    }

    // PostOrder
    else
    {
        if (node->type == "functionDeclaration" || node->type == "mainFunctionDeclaration")
        {
            epilouge(node->semanticInformation->identifier, node->semanticInformation->returnType, node->type);
            removeRegisterPool();
            currentFunctionId = "";
        }

        else if (node->type == "variableDeclaration" && node->getParentNode()->type != "globalVardeclaration")
        {
            node->childNodes[1]->semanticInformation->idRegister = getRegister(); // Assign every variable declaration its own register to map to.
        }

        else if (node->type == "formalParameters")
        {
            int argCounter = 0;
            for (auto &formalParameter : node->childNodes)
            {
                formalParameter->childNodes[1]->semanticInformation->idRegister = getRegister();
                mipsInstruction("move", formalParameter->childNodes[1]->semanticInformation->idRegister, "$a" + std::to_string(argCounter));
                argCounter++;
            }
        }

        else if (node->type == "=")
        {

            if (node->childNodes[0]->semanticInformation->scope->scopeName != "globalDeclarations")
            {
                mipsInstruction("move", node->childNodes[0]->semanticInformation->idRegister, node->childNodes[1]->returnRegister);
                node->returnRegister = node->childNodes[0]->semanticInformation->idRegister; // copy id register into '=' returnRegisterValue
                freeNodeRegister(node->childNodes[1]);
            }
            else
            {
                mipsModifyGlobalVarValue(node->childNodes[0]->semanticInformation->identifier, node->childNodes[1]->returnRegister);

                node->returnRegister = getRegister();
                mipsInstruction("move", node->returnRegister, node->childNodes[1]->returnRegister); // Assign '=' registerValue the result of the right hand side.
                freeNodeRegister(node->childNodes[1]);
            }
        }

        else if (node->type == "number")
        {
            node->returnRegister = getRegister();
            mipsInstruction("addiu", node->returnRegister, "$zero", node->value); // assign returnRegister the value of the number
        }

        else if (node->type == "boolean")
        {
            if (node->value == "true")
            {
                node->returnRegister = getRegister();
                mipsInstruction("addiu", node->returnRegister, "$zero", "1");
            }

            else if (node->value == "false")
            {
                node->returnRegister = getRegister();
                mipsInstruction("addiu", node->returnRegister, "$zero", "0");
            }
        }

        // POTENTIAL BUG: NO VOID TYPE CHECK TODO
        else if (node->type == "functionInvocation")
        {
            // get Arguments
            std::vector<std::string> argumentRegisters;
            std::string stringAddressRegister;
            std::string globalReg;
            std::vector<std::string> freeRegisters;
            for (unsigned long i = 1; i < node->childNodes.size(); i++)
            {
                Node *argNode = node->childNodes[i];

                if (argNode->type == "string")
                {
                    stringAddressRegister = getRegister();
                    mipsInstruction("la", stringAddressRegister, argNode->codeGenLabel);
                    argumentRegisters.push_back(stringAddressRegister);
                    freeRegisters.push_back(stringAddressRegister);
                }

                else if (argNode->type == "id")
                {
                    if (argNode->semanticInformation->scope->scopeName == "globalDeclarations")
                    {
                        globalReg = getRegister();
                        mipsGetGlobalVarValueinReg(argNode->semanticInformation->identifier, globalReg);
                        argumentRegisters.push_back(globalReg);
                        freeRegisters.push_back(globalReg);
                    }
                    else
                    {
                        argumentRegisters.push_back(argNode->semanticInformation->idRegister);
                    }
                }

                else
                {
                    argumentRegisters.push_back(argNode->returnRegister);
                    freeNodeRegister(argNode);
                }
            }
            mipsFunctionCall(node->semanticInformation->identifier, argumentRegisters);
            node->returnRegister = "$v0"; // Assign the return value to the function return register

            // Free global and string registers
            for (auto &regName : freeRegisters)
            {
                freeRegister(regName);
            }
        }

        // This wont need to allocate any return registers since it returns nothing up the tree
        else if (node->type == "returnStatement")
        {
            if (!node->childNodes.empty())
            {
                mipsInstruction("move", "$v0", node->childNodes[0]->returnRegister);
            }

            mipsInstruction("j", getFunctionLabel(currentFunctionId + "epilouge"));
        }

        /** OPERATIONS **/
        else if (node->type == "+")
        {
            node->returnRegister = getRegister(); // store return of the function in this register
            std::string firstRegisterOperand = getReturnRegister(node->childNodes[0]);
            std::string secondRegisterOperand = getReturnRegister(node->childNodes[1]);
            mipsInstruction("addu", node->returnRegister, firstRegisterOperand, secondRegisterOperand);
            freeChildReturnRegisters(node);
        }
        else if (node->type == "-")
        {
            node->returnRegister = getRegister(); // store return of the function in this register
            std::string firstRegisterOperand = getReturnRegister(node->childNodes[0]);
            std::string secondRegisterOperand = getReturnRegister(node->childNodes[1]);
            mipsInstruction("subu", node->returnRegister, firstRegisterOperand, secondRegisterOperand);

            freeChildReturnRegisters(node);
        }
        else if (node->type == "*")
        {
            node->returnRegister = getRegister(); // store return of the function in this register
            std::string firstRegisterOperand = getReturnRegister(node->childNodes[0]);
            std::string secondRegisterOperand = getReturnRegister(node->childNodes[1]);
            mipsInstruction("mul", node->returnRegister, firstRegisterOperand, secondRegisterOperand);

            freeChildReturnRegisters(node);
        }
        else if (node->type == "/")
        {
            node->returnRegister = getRegister(); // store return of the function in this register
            std::string firstRegisterOperand = getReturnRegister(node->childNodes[0]);
            std::string secondRegisterOperand = getReturnRegister(node->childNodes[1]);
            mipsInstruction("div", firstRegisterOperand, secondRegisterOperand);
            mipsInstruction("mflo", node->returnRegister);
            freeChildReturnRegisters(node);
        }
        else if (node->type == "%")
        {
            node->returnRegister = getRegister(); // store return of the function in this register
            std::string firstRegisterOperand = getReturnRegister(node->childNodes[0]);
            std::string secondRegisterOperand = getReturnRegister(node->childNodes[1]);
            mipsInstruction("div", firstRegisterOperand, secondRegisterOperand);
            mipsInstruction("mfhi", node->returnRegister);
            freeChildReturnRegisters(node);
        }

        else if (node->type == ">")
        {
            node->returnRegister = getRegister(); // store return of the function in this register
            std::string firstRegisterOperand = getReturnRegister(node->childNodes[0]);
            std::string secondRegisterOperand = getReturnRegister(node->childNodes[1]);
            mipsInstruction("sgt", node->returnRegister,firstRegisterOperand, secondRegisterOperand);
            freeChildReturnRegisters(node);
        }
        else if (node->type == ">=")
        {
            node->returnRegister = getRegister(); // store return of the function in this register
            std::string firstRegisterOperand = getReturnRegister(node->childNodes[0]);
            std::string secondRegisterOperand = getReturnRegister(node->childNodes[1]);
            mipsInstruction("sge", node->returnRegister,firstRegisterOperand, secondRegisterOperand);
            freeChildReturnRegisters(node);
        }
        else if (node->type == "<")
        {
            node->returnRegister = getRegister(); // store return of the function in this register
            std::string firstRegisterOperand = getReturnRegister(node->childNodes[0]);
            std::string secondRegisterOperand = getReturnRegister(node->childNodes[1]);
            mipsInstruction("slt", node->returnRegister,firstRegisterOperand, secondRegisterOperand);
            freeChildReturnRegisters(node);
        }
        else if (node->type == "<=")
        {
            node->returnRegister = getRegister(); // store return of the function in this register
            std::string firstRegisterOperand = getReturnRegister(node->childNodes[0]);
            std::string secondRegisterOperand = getReturnRegister(node->childNodes[1]);
            mipsInstruction("sle", node->returnRegister,firstRegisterOperand, secondRegisterOperand);
            freeChildReturnRegisters(node);
        }
        else if (node->type == "!=")
        {
            node->returnRegister = getRegister(); // store return of the function in this register
            std::string firstRegisterOperand = getReturnRegister(node->childNodes[0]);
            std::string secondRegisterOperand = getReturnRegister(node->childNodes[1]);
            mipsInstruction("sne", node->returnRegister,firstRegisterOperand, secondRegisterOperand);
            freeChildReturnRegisters(node);
        }
        else if (node->type == "==")
        {
            node->returnRegister = getRegister(); // store return of the function in this register
            std::string firstRegisterOperand = getReturnRegister(node->childNodes[0]);
            std::string secondRegisterOperand = getReturnRegister(node->childNodes[1]);
            mipsInstruction("seq", node->returnRegister,firstRegisterOperand, secondRegisterOperand);
            freeChildReturnRegisters(node);
        }
        else if (node->type == "&&")
        {
            node->returnRegister = getRegister(); // store return of the function in this register
            
            std::string firstRegisterOperand = getReturnRegister(node->childNodes[0]);
            std::string secondRegisterOperand = getReturnRegister(node->childNodes[1]);
            std::string firstRegResult = getRegister();
            std::string secondRegResult = getRegister();
            std::string trueLabel = createLabel();
            std::string falseLabel = createLabel();
            mipsInstruction("sne", firstRegResult,firstRegisterOperand, "$zero"); // if firstRegisterOperand == true set firstRegResult = true

            mipsInstruction("sne", secondRegResult,secondRegisterOperand, "$zero"); // If secondRegisterOperand == true set secondRegResult = true
            output+= trueLabel+": \n";
            mipsInstruction("addiu", node->returnRegister, "1");
            freeRegister(firstRegResult);
            freeRegister(secondRegResult);
            freeChildReturnRegisters(node);
        }
        else if (node->type == "||")
        {

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
    if (regName == "$v0" || regName == "$v1" || regName == "$a0" || regName == "$a1" || regName == "$a2" || regName == "$a3" || regName == "$a4")
    {
        return;
    }

    for (auto &reg : registerPool)
    {
        if (reg.first == regName)
        {
            reg.second = true;
            return;
        }
    }
    std::cerr << "REGISTER NOT FOUND \n";
    exit(EXIT_FAILURE);
}

std::string CodeGenerator::getRegister()
{
    return registerStack.top()->getRegister();
}

void CodeGenerator::freeNodeRegister(Node *node)
{
    if (node->type == "id")
    {
        return;
    }
    else
        registerStack.top()->freeRegister(node->returnRegister);
}

void CodeGenerator::freeChildReturnRegisters(Node *node)
{
    // Free Child Registers
    for (auto &child : node->childNodes)
    {
        freeNodeRegister(child);
    }
}

void CodeGenerator::freeRegister(std::string RegName)
{
    registerStack.top()->freeRegister(RegName);
}
/** STACK FUNCTIONS -- These functions will only be executed on function open and close **/
void CodeGenerator::prolouge(std::string id, std::string type)
{
    // Create Prolouge label
    output += getFunctionLabel(id) + ": \n";

    if (stackOperations)
    {
        // Save Return Address -- COMMENT THESE OUT TO HELP READABILITY FOR NOW
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
}

void CodeGenerator::epilouge(std::string id, std::string returnType, std::string type)
{
    // Check for a return
    if (returnType != "void")
    {
        mipsError(); // Generate mips Error Code if there is a return
    }

    // Create epilouge label

    output += getFunctionLabel(id + "epilouge") + ": \n";

    // Stack Operations
    if (stackOperations)
    {
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
    }

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
std::string CodeGenerator::createFunctionLabel(std::string id, bool isMain)
{
    if (!isMain)
    {
        std::string prolougeLabel = "L" + std::to_string(funcLabelCounter);
        funcLabelCounter++;
        functionIDToLabelMap[id] = prolougeLabel;
        std::string epilougeLabel = "L" + std::to_string(funcLabelCounter);
        funcLabelCounter++;
        functionIDToLabelMap[id + "epilouge"] = epilougeLabel;
        return prolougeLabel;
    }

    else
    {
        functionIDToLabelMap[id] = "L0";
        functionIDToLabelMap[id + "epilouge"] = "L1";
        return "L0";
    }
}

// Unused function
std::string CodeGenerator::createLabel()
{
    std::string label = "L" + std::to_string(funcLabelCounter);
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
    std::string returnVal = label->second;
    return returnVal; // change to first for debugging
}

std::string CodeGenerator::getReturnRegister(Node *node)
{
    std::string globalVarReg;
    if (node->type == "id")
    {
        if (node->semanticInformation->scope->scopeName == "globalDeclarations")
        {
            globalVarReg = getRegister();
            mipsGetGlobalVarValueinReg(node->semanticInformation->identifier, globalVarReg);
            return globalVarReg;
        }
        else
        {
            return node->semanticInformation->idRegister;
        }
    }

    else
    {
        return node->returnRegister;
    }
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
void CodeGenerator::mipsGetGlobalVarValueinReg(std::string globalVarLabel, std::string returnReg)
{
    output += "lw " + returnReg + "," + globalVarLabel + "\n";
}

void CodeGenerator::mipsInstruction(std::string instruction, std::string leftVal, std::string middleVal, std::string rightVal)
{
    if (rightVal != "")
        output += instruction + " " + leftVal + "," + middleVal + "," + rightVal + "\n";
    else if (middleVal != "")
        output += instruction + " " + leftVal + "," + middleVal + "\n";
    else
        output += instruction + " " + leftVal + "\n";
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
    output += getFunctionLabel("getChar") + ": \n";
    output += "li $v0,12\n";
    output += "syscall\n"; // v0 Contains the return value
    output += "jr $ra \n";
}
void CodeGenerator::mipsHalt()
{
    createFunctionLabel("halt");
    output += getFunctionLabel("halt") + ": \n";
    output += "li $v0,10\n";
    output += "syscall\n";
    output += "jr $ra \n";
}

void CodeGenerator::mipsPrintb()
{
    createFunctionLabel("printb");
    output += getFunctionLabel("printb") + ": \n";

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
    output += "jr $ra \n";
}

void CodeGenerator::mipsPrintc()
{
    createFunctionLabel("printc");
    output += getFunctionLabel("printc") + ": \n";
    output += "li $v0,11\n";
    output += "syscall\n";
    output += "jr $ra \n";
}
void CodeGenerator::mipsPrinti()
{
    createFunctionLabel("printi");
    output += getFunctionLabel("printi") + ": \n";
    output += "li $v0,1\n";
    output += "syscall\n";
    output += "jr $ra \n";
}

// Assume a0 contains the address of the string
void CodeGenerator::mipsPrints()
{
    createFunctionLabel("prints");
    output += getFunctionLabel("prints") + ": \n";
    output += "li $v0,4\n";
    output += "syscall\n";
    output += "jr $ra \n";
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

/** Write To output file **/
void CodeGenerator::writetoOutputFile(std::string outputFile)
{
    std::cout << output;
    std::ofstream myfile;
    myfile.open(outputFile);
    if (!myfile.is_open())
    {
        std::cout << "ERROR OPENING FILE \n";
    }
    myfile << output;
    myfile.close();
}