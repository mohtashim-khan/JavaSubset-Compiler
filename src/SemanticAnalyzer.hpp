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
    SemanticAnalyzer(Node *tree);

    // Traversal Functions
    void prePostTraversal(Node *node, void (SemanticAnalyzer::*passCB)(Node *, bool));

    void postTraversal(Node *node, void (SemanticAnalyzer::*passCB)(Node *));

    // Pass 1 -- PostOrder
    void globalDeclarationsPass(Node *node);

    // Pass 2 -- PrePostOrder
    void identifierPass(Node *node, bool postOrder);

    // Pass 3 -- PostOrder
    void typeCheckingPass(Node *node);

    // Pass 4 -- PrePostOrder
    void miscPass(Node *node, bool postOrder);

    // Driver Function
    void execute();

    // returns true on success, else returns false
    bool defineEntry(std::string id, std::string retType, std::string type = "");

    void openScope(std::string scopeName) { scopeStack.push_back(new SymbolTable(scopeName)); };
    void closeScope() { scopeStack.pop_back(); };

    // Lookup ID -- returns nullptr if not found
    SymbolTableEntry *lookup(std::string id);

    // AST
    Node *ast;

    // Scope stack -- define it as a vector as that gives us the ability to iterate through it for look ups
    std::vector<SymbolTable *> scopeStack;

private:
    // Helper Attributes
    int mainDeclarationCounter = 0;
};

#endif