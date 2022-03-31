#include <vector>
#include <string>
#include <iostream>
#include <stack>
#include "Node.hpp"

#ifndef SEMANTICANALYZER_HH
#define SEMANTICANALYZER_HH

class SemanticAnalyzer
{
public:

    SemanticAnalyzer(Node* tree);

    //Traversal Functions
    void prePostTraversal(Node *node, void (SemanticAnalyzer::*passCB)(Node *, bool));
    
    void postTraversal(Node *node, void (SemanticAnalyzer::*passCB)(Node *));

    //Pass 1 -- PostOrder
    void globalDeclarationsPass(Node *node);

    //Pass 2 -- PrePostOrder
    void identifierPass(Node *node, bool postOrder);

    //Pass 3 -- PostOrder
    void typeCheckingPass(Node *node);

    //Pass 4 -- PrePostOrder
    void miscPass(Node *node, bool postOrder);

    //Driver Function
    void execute();

    // AST
    Node *ast; 

    //Scope stack
    std::stack<SymbolTable*> scopeStack; 


private:
//Helper Attributes
int mainDeclarationCounter = 0;

};

#endif