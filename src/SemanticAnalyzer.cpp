#include "SemanticAnalyzer.hpp"

SemanticAnalyzer::SemanticAnalyzer(Node *tree)
{
    ast = tree;
    fillTypeCheckingTable();

    // Add preDefinedFunctions to the scope stack -- this will stay open for the rest of the program
    openScope("preDefined");

    /** Fill out predefined Functions **/

    // getchar()
    defineEntry("getchar", "int", "function");

    // halt()
    defineEntry("halt", "void", "function");

    // printb()
    defineEntry("printb", "int", "function(boolean)");

    // printc()
    defineEntry("printc", "void", "function(int)");

    // printi()
    defineEntry("printi", "void", "function(int)");

    // prints()
    defineEntry("prints", "void", "function(string)");

    // Add globalDeclarations to the scope stack. This scope will stay open for the rest of the program.
    openScope("globalDeclarations");
}

/**Traversal Code**/

// Code to traverse the AST in prePostOrder
void SemanticAnalyzer::prePostTraversal(Node *node, void (SemanticAnalyzer::*passCB)(Node *, bool childrenProcessed))
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

// Code to Traverse AST in postOrder
void SemanticAnalyzer::postTraversal(Node *node, void (SemanticAnalyzer::*passCB)(Node *))
{
    // Process Children
    for (Node *&child : node->childNodes)
    {
        postTraversal(child, passCB);
    }

    // Do something after processing Children -- PostOrder
    (this->*passCB)(node);
}

/** Pass Functions **/
void SemanticAnalyzer::globalDeclarationsPass(Node *node)
{
    std::string nodeType = node->type;

    // Define Entry Here
    if (nodeType == "mainFunctionDeclaration")
    {
        node->semanticInformation = defineEntry(node->childNodes[1]->value, node->childNodes[1]->type, "function");
        mainDeclarationCounter++;
        mainFunctionID = node->childNodes[1]->value;
        if (mainDeclarationCounter > 1)
        {
            std::cerr << "SEMANTIC ERROR: Multiple main declarations found. \n";
            exit(EXIT_FAILURE);
        }
    }

    // Define Entry Here
    else if (nodeType == "globalVardeclaration")
    {
        node->semanticInformation = defineEntry(node->childNodes[0]->semanticID, node->childNodes[0]->semanticType);
    }

    // Define Entry Here
    else if (nodeType == "functionDeclaration")
    {
        node->semanticInformation = defineEntry(node->childNodes[1]->value, node->childNodes[0]->type, "function" + node->childNodes[2]->semanticType);
    }

    else if (nodeType == "variableDeclaration")
    {
        node->semanticType = node->childNodes[0]->type;
        node->semanticID = node->childNodes[1]->value;

        Node *parentNode = node->getParentNode();
        Node *grandParentNode = parentNode->getParentNode();
        



        // Outer Block Check
        if (parentNode->type == "block")
        {
            if (grandParentNode->type != "functionDeclaration" && grandParentNode->type != "mainFunctionDeclaration")
            {
                std::cerr << "SEMANTIC ERROR: local declaration \'"+ node->semanticID+"\' was not in the outermost block on line: " + std::to_string(node->getLineNum()) + "\n";
                exit(EXIT_FAILURE);
            }
        }
    }

    else if (nodeType == "formalParameters")
    {
        if (node->getParentNode()->type == "mainFunctionDeclaration")
        {
            std::cerr << "SEMANTIC ERROR: The main declaration can't have parameters.\n";
            exit(EXIT_FAILURE);
        }
        std::string returnString = "(";
        for (auto formalParameter : node->childNodes)
        {
            returnString += formalParameter->semanticType + ",";
        }

        returnString.pop_back();
        returnString += ")";

        node->semanticType = returnString;
    }

    else if (nodeType == "formalParameter")
    {
        node->semanticType = node->childNodes[0]->type;
    }

    else if (nodeType == "unaryExpression")
    {
        node->semanticType = node->childNodes[0]->type;
    }
}

void SemanticAnalyzer::identifierPass(Node *node, bool processedChildren)
{
    std::string nodeType = node->type;
    // PreOrder
    if (!processedChildren)
    {
        if (nodeType == "mainFunctionDeclaration" || nodeType == "functionDeclaration")
        {
            openScope(node->semanticInformation->identifier);
        }
    }

    // PostOrder
    else
    {
        if (nodeType == "mainFunctionDeclaration" || nodeType == "functionDeclaration")
        {
            closeScope();
        }

        if (nodeType == "id")
        {
            Node *parentNode = node->getParentNode();

            // if id belongs to a variableDeclaration -- check if this is a global variable, if not define it within the current scope.
            if (parentNode->type == "variableDeclaration")
            {
                if (parentNode->getParentNode()->type == "globalVardeclaration")
                {
                    node->semanticInformation = lookup(node->value, node->getLineNum());
                }
                else
                {
                    node->semanticInformation = defineEntry(node->value, parentNode->childNodes[0]->type);
                }
            }

            // If id belongs to a function declaration -- this will already be defined in the global scope
            else if (parentNode->type == "functionDeclaration" || parentNode->type == "mainFunctionDeclaration")
            {
                node->semanticInformation = lookup(node->value, node->getLineNum());
            }

            // If id belongs to a formalParameter -- this will be declared in the local scope
            else if (parentNode->type == "formalParameter")
            {
                node->semanticInformation = defineEntry(node->value, parentNode->childNodes[0]->type);
            }

            else if (parentNode->type == "functionInvocation")
            {
                node->semanticInformation = lookup(node->value, node->getLineNum());
                if (parentNode->semanticInformation == nullptr)
                    parentNode->semanticInformation = node->semanticInformation;

                if (node->value == mainFunctionID)
                {
                    std::cerr << "SEMANTIC ERROR: The main function can't be called. it is being called on line: " + std::to_string(node->getLineNum()) + "\n";
                    exit(EXIT_FAILURE);
                }
            }

            // Otherwise lookup information about the id
            else
            {
                node->semanticInformation = lookup(node->value, node->getLineNum());
            }
        }
        // Handle unaryExpression Edge case for type checking
        if (nodeType == "unaryExpression")
        {
            if (node->childNodes[0]->semanticInformation != nullptr)
                node->semanticType = node->childNodes[0]->semanticInformation->returnType;
            else
                node->semanticType = node->childNodes[0]->semanticType;
        }
    }
    return;
}

void SemanticAnalyzer::typeCheckingPass(Node *node)
{
    std::unordered_map<std::string, std::vector<std::vector<std::string>>>::const_iterator validTypes = typeCheckingTable.find(node->type);

    // TypeChecking if a Operator Node is Encountered
    if (validTypes != typeCheckingTable.end())
    {
        std::vector<std::string> childArgs;
        // Get Child Types
        childArgs = getChildTypes(node);

        for (auto &validType : validTypes->second)
        {
            bool errorFlag = false;
            // Will comapre either only the L type or both L and R types with the child types. Skips over return type
            for (unsigned long i = 0; i < validType.size() - 1; i++)
            {
                if (validType[i].compare(childArgs[i]) != 0)
                {
                    errorFlag = true;
                    break;
                }
            }

            if (errorFlag)
            {
                // If there are no more types to check, throw error  and exit
                if (validType == validTypes->second.back())
                {
                    std::cerr << "SEMANTIC ERROR: Type mismatch for an operator \'" + node->type + "\' at line: " + std::to_string(node->getLineNum()) + "\n";
                    exit(EXIT_FAILURE);
                }
            }
            // If valid type found stop the type checking and set the return type for the operator
            else
            {
                node->semanticType = validType.back();
                break;
            }
        }
    }
}

void SemanticAnalyzer::miscPass(Node *node, bool processedChildren)
{
    // PreOrder
    if (!processedChildren)
    {
        if (node->type == "whileStatement")
        {
            whileCounter++;
        }

        // Break Check
        else if (node->type == "breakStatement")
        {
            if (whileCounter == 0)
            {
                std::cerr << "SEMANTIC ERROR: Break statement must be inside a while statement. at line: " + std::to_string(node->getLineNum()) + "\n";
                exit(EXIT_FAILURE);
            }
        }
        else if (node->type == "returnStatement")
        {
            returnCounter++;
        }

        // Store function Return type if a functionDeclaration encountered
        else if (node->type == "functionDeclaration")
        {
            functionReturnType = node->semanticInformation->returnType;
        }
    }

    // PostOrder
    else
    {
        if (node->type == "whileStatement")
        {
            whileCounter--;
            std::vector<std::string> expressionType = getChildTypes(node);

            if (expressionType[0] != "boolean")
            {
                std::cerr << "SEMANTIC ERROR: while-condition must be of Boolean type. at line: " + std::to_string(node->getLineNum()) + "\n";
                exit(EXIT_FAILURE);
            }
        }
        else if (node->type == "ifStatement")
        {
            std::vector<std::string> expressionType = getChildTypes(node);

            if (expressionType[0] != "boolean")
            {
                std::cerr << "SEMANTIC ERROR: if-condition must be of Boolean type. at line: " + std::to_string(node->getLineNum()) + "\n";
                exit(EXIT_FAILURE);
            }
        }
        // Clear function Return type if a functionDeclaration encountered
        else if (node->type == "functionDeclaration")
        {
            if (functionReturnType != "" && functionReturnType != "void")
            {
                if (returnCounter == 0)
                {
                    std::cerr << "SEMANTIC ERROR: No return statement in a non-void function. at line: " + std::to_string(node->getLineNum()) + "\n";
                    exit(EXIT_FAILURE);
                }
            }
            functionReturnType = "";
            returnCounter = 0;
        }

        // if a returnStatement is encountered, check the return type
        else if (node->type == "returnStatement")
        {
            std::vector<std::string> expressionType = getChildTypes(node);
            if (expressionType.empty())
            {
                expressionType.push_back("void");
            }

            if (expressionType[0] != functionReturnType)
            {
                if (functionReturnType != "void")
                {
                    if (expressionType[0] == "void")
                    {
                        std::cerr << "SEMANTIC ERROR: A non-void function must return a value. At line: " + std::to_string(node->getLineNum()) + "\n";
                        exit(EXIT_FAILURE);
                    }

                    std::cerr << "SEMANTIC ERROR: A value \'" + expressionType[0] + "\' returned from a function has the wrong type, it should be \'" + functionReturnType + "\' at line: " + std::to_string(node->getLineNum()) + "\n";
                    exit(EXIT_FAILURE);
                }

                else if (functionReturnType == "void")
                {
                    std::cerr << "SEMANTIC ERROR: A void function can't return a value. at line: " + std::to_string(node->getLineNum()) + "\n";
                    exit(EXIT_FAILURE);
                }
            }
        }

        else if (node->type == "functionInvocation")
        {
            // Function Invocation vs Function Declaration check
            std::vector<std::string> funcInvocArguments = getChildTypes(node);
            std::string funcArgs = node->semanticInformation->functionArgs;
            std::string compareString = "function";
            if (funcInvocArguments.size() >= 2)
            {
                compareString += "(";
                for (unsigned long i = 1; i < funcInvocArguments.size(); i++)
                {
                    compareString += funcInvocArguments[i] + ",";
                }

                compareString.pop_back();
                compareString += ")";
            }

            if (compareString.compare(funcArgs) != 0)
            {
                std::cerr << "SEMANTIC ERROR: The number/type of arguments \'" + compareString + "\' in a function call doesn't match the function's declaration \'" + funcArgs + "\' at line: " + std::to_string(node->getLineNum()) + "\n";
                ;
                exit(EXIT_FAILURE);
            }
        }
    }
    return;
}

/** Semantic Analyzer Driver Code **/
void SemanticAnalyzer::execute()
{
    // Perform Pass 1
    postTraversal(ast, &SemanticAnalyzer::globalDeclarationsPass);
    // main declaration check
    if (mainDeclarationCounter < 1)
    {
        std::cerr << "SEMANTIC ERROR: No main declaration found. \n";
        exit(EXIT_FAILURE);
    }
    // Perform Pass 2
    prePostTraversal(ast, &SemanticAnalyzer::identifierPass);

    postTraversal(ast, &SemanticAnalyzer::testPass);

    // Perform Pass 3
    postTraversal(ast, &SemanticAnalyzer::typeCheckingPass);

    // Perform Pass 4
    prePostTraversal(ast, &SemanticAnalyzer::miscPass);
}

/** Symbol Table functions **/
SymbolTableEntry *SemanticAnalyzer::lookup(std::string id, int lineNo)
{
    SymbolTableEntry *retVal;
    for (std::vector<SymbolTable *>::reverse_iterator i = scopeStack.rbegin(); i != scopeStack.rend(); ++i)
    {
        retVal = (*i)->lookup(id);
        if (retVal != nullptr)
            return retVal;
    }
    std::cerr << "SEMANTIC ERROR: An undeclared identifier \"" << id << "\" is used at line: " + std::to_string(lineNo) + "\n";
    exit(EXIT_FAILURE);
}

SymbolTableEntry *SemanticAnalyzer::defineEntry(std::string id, std::string retType, std::string functionArgs)
{
    SymbolTableEntry *newEntry;
    if (functionArgs != "")
        newEntry = new SymbolTableEntry(id, scopeStack.back(), retType, functionArgs);
    else
        newEntry = new SymbolTableEntry(id, scopeStack.back(), retType);

    SymbolTableEntry *retValue = scopeStack.back()->defineEntry(id, newEntry);
    if (retValue != nullptr)
        return retValue;
    else
    {
        std::cerr << "SEMANTIC ERROR: The identifier: \"" << id << "\" is redefined within the same scope.\n";
        exit(EXIT_FAILURE);
    }
}

/** Fill out typeChecking Table **/

void SemanticAnalyzer::fillTypeCheckingTable()
{
    // table return entry structure == (left type, right type, return type)
    //                              == (left type, result type) -- unary operations
    typeCheckingTable["||"] = std::vector<std::vector<std::string>>{{"boolean", "boolean", "boolean"}};
    typeCheckingTable["&&"] = std::vector<std::vector<std::string>>{{"boolean", "boolean", "boolean"}};
    typeCheckingTable["=="] = std::vector<std::vector<std::string>>{{"boolean", "boolean", "boolean"}, {"int", "int", "boolean"}};
    typeCheckingTable["!="] = std::vector<std::vector<std::string>>{{"boolean", "boolean", "boolean"}, {"int", "int", "boolean"}};
    typeCheckingTable["="] = std::vector<std::vector<std::string>>{{"boolean", "boolean", "boolean"}, {"int", "int", "int"}};
    typeCheckingTable["<"] = std::vector<std::vector<std::string>>{{"int", "int", "boolean"}};
    typeCheckingTable[">"] = std::vector<std::vector<std::string>>{{"int", "int", "boolean"}};
    typeCheckingTable["<="] = std::vector<std::vector<std::string>>{{"int", "int", "boolean"}};
    typeCheckingTable[">="] = std::vector<std::vector<std::string>>{{"int", "int", "boolean"}};
    typeCheckingTable["+"] = std::vector<std::vector<std::string>>{{"int", "int", "int"}};
    typeCheckingTable["*"] = std::vector<std::vector<std::string>>{{"int", "int", "int"}};
    typeCheckingTable["/"] = std::vector<std::vector<std::string>>{{"int", "int", "int"}};
    typeCheckingTable["%"] = std::vector<std::vector<std::string>>{{"int", "int", "int"}};
    typeCheckingTable["!"] = std::vector<std::vector<std::string>>{{"boolean", "boolean"}};
    typeCheckingTable["-"] = std::vector<std::vector<std::string>>{{"int", "int", "int"}, {"int", "int"}};
}

std::vector<std::string> SemanticAnalyzer::getChildTypes(Node *node)
{
    std::vector<std::string> childArgs;
    // Get Child Types
    for (unsigned long i = 0; i < node->childNodes.size(); i++)
    {
        if (node->childNodes[i]->type == "boolean" || node->childNodes[i]->type == "int" || node->childNodes[i]->type == "string")
        {
            childArgs.push_back(node->childNodes[i]->type);
        }
        else
        {
            if (node->childNodes[i]->semanticInformation != nullptr)
            {
                childArgs.push_back(node->childNodes[i]->semanticInformation->returnType);
            }
            else
            {
                childArgs.push_back(node->childNodes[i]->semanticType);
            }
        }
    }

    return childArgs;
}

/**DEBUGGING FUNCTION**/
void SemanticAnalyzer::testPass(Node *node)
{
    if (node->type == "id" && node->semanticInformation == nullptr)
    {
        std::cerr << "ERROR ON ID: \'" + node->value + "\'";
    }
    if (node->type == "functionInvocation")
    {
        test.push_back(node->semanticInformation);
    }
}