#include "SemanticAnalyzer.hpp"

SemanticAnalyzer::SemanticAnalyzer(Node *tree)
{
    ast = tree;

    // Add preDefinedFunctions to the scope stack -- this will stay open for the rest of the program
    openScope("preDefined");

    /** Fill out predefined Functions **/

    // getChar()
    defineEntry("getChar", "int", "function");

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
        defineEntry(node->childNodes[1]->value, node->childNodes[1]->type, "function");
        mainDeclarationCounter++;
        if (mainDeclarationCounter > 1)
        {
            std::cerr << "SEMANTIC ERROR: Multiple main declarations found. \n";
            exit(EXIT_FAILURE);
        }
        node->semanticInformation = lookup(node->childNodes[1]->value);

    }

    // Define Entry Here
    else if (nodeType == "globalVardeclaration")
    {
        defineEntry(node->childNodes[0]->semanticID, node->childNodes[0]->semanticType);
        node->semanticInformation = lookup(node->childNodes[0]->semanticID);
    }

    // Define Entry Here
    else if (nodeType == "functionDeclaration")
    {
        defineEntry(node->childNodes[1]->value, node->childNodes[0]->type, "function" + node->childNodes[2]->semanticType);
        node->semanticInformation = lookup(node->childNodes[1]->value);

    }

    else if (nodeType == "variableDeclaration")
    {
        node->semanticType = node->childNodes[0]->type;
        node->semanticID = node->childNodes[1]->value;
    }

    else if (nodeType == "formalParameters")
    {
        std::string returnString = "(";
        for (auto formalParameter : node->childNodes)
        {
            returnString += node->childNodes[0]->semanticType + ",";
        }

        returnString.pop_back();
        returnString += ")";

        node->semanticType = returnString;
    }

    else if (nodeType == "formalParameter")
    {
        node->semanticType = node->childNodes[0]->type;
    }

    
}

void SemanticAnalyzer::identifierPass(Node *node, bool processedChildren)
{
    std::string nodeType = node->type;
    //PreOrder
    if(!processedChildren)
    {
        if(nodeType == "mainFunctionDeclaration" || nodeType == "functionDeclaration")
        {
            openScope(node->semanticInformation->identifier);
        }


    }

    //PostOrder
    else
    {
        if(nodeType == "mainFunctionDeclaration" || nodeType == "functionDeclaration")
        {
            closeScope();
        }

    }
    return;
}

void SemanticAnalyzer::typeCheckingPass(Node *node)
{
    return;
}

void SemanticAnalyzer::miscPass(Node *node, bool processedChildren)
{
     //PreOrder
    if(!processedChildren)
    {
        

    }

    //PostOrder
    else
    {

    }
    return;
}

/** Semantic Analyzer Driver Code **/
void SemanticAnalyzer::execute()
{
    // Perform Pass 1
    postTraversal(ast, &SemanticAnalyzer::globalDeclarationsPass);
    //main declaration check
    if (mainDeclarationCounter < 1)
    {
        std::cerr << "SEMANTIC ERROR: No main declaration found. \n";
        exit(EXIT_FAILURE);
    }
    // Perform Pass 2
    prePostTraversal(ast, &SemanticAnalyzer::identifierPass);

    // Perform Pass 3
    postTraversal(ast, &SemanticAnalyzer::typeCheckingPass);

    // Perform Pass 4
    prePostTraversal(ast, &SemanticAnalyzer::identifierPass);
}

/** Symbol Table functions **/
SymbolTableEntry *SemanticAnalyzer::lookup(std::string id)
{
    SymbolTableEntry *retVal;
    for (std::vector<SymbolTable *>::reverse_iterator i = scopeStack.rbegin(); i != scopeStack.rend(); ++i)
    {
        retVal = (*i)->lookup(id);
        if (retVal != nullptr)
            return retVal;
    }
    std::cerr << "SEMANTIC ERROR: An undeclared identifier: \"" << id << "\" is used. \n";
    exit(EXIT_FAILURE);
}

bool SemanticAnalyzer::defineEntry(std::string id, std::string retType, std::string functionArgs)
{
    SymbolTableEntry *newEntry;
    if (functionArgs != "")
        newEntry = new SymbolTableEntry(id, scopeStack.back()->scopeName, retType, functionArgs);
    else
        newEntry = new SymbolTableEntry(id, scopeStack.back()->scopeName, retType);

    if (scopeStack.back()->defineEntry(id, newEntry))
        return true;
    else
    {
        std::cerr << "SEMANTIC ERROR: The identifier: \"" << id << "\" is redefined within the same scope.\n";
        exit(EXIT_FAILURE);
    }
}
