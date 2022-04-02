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
    void identifierPass(Node *node, bool processedChildren); //can only be identified as formal variable decs, global var decs, or functionDeclarations

    // Pass 3 -- PostOrder
    void typeCheckingPass(Node *node);

    // Pass 4 -- PrePostOrder
    void miscPass(Node *node, bool processedChildren);

    //Extra pass -- used for testing
    void testPass(Node *node);
    

    // Driver Function
    void execute();

    // returns true on success, else returns false
    SymbolTableEntry * defineEntry(std::string id, std::string retType, std::string functionArgs = "");

    void openScope(std::string scopeName) { scopeStack.push_back(new SymbolTable(scopeName)); };
    void closeScope() { scopeStack.pop_back(); };

    // Lookup ID -- exits program if not found else returns SymbolTableEntry
    SymbolTableEntry *lookup(std::string id, int lineNo);

    //initilaize typeCheckingTable
    void fillTypeCheckingTable();

    // AST
    Node *ast;

    // Scope stack -- define it as a vector as that gives us the ability to iterate through it for look ups
    std::vector<SymbolTable *> scopeStack;

    // Type Checking table
    //table return entry structure == (left type, right type, return type)
    std::unordered_map<std::string, std::vector<std::vector<std::string>>>typeCheckingTable;

private:
    // Helper Attributes
    int mainDeclarationCounter = 0;
    int whileCounter = 0;
    int breakCounter = 0;
    int returnCounter = 0;
    std::string functionReturnType = "";
    std::string mainFunctionID = "";


    //Helper vector
    std::vector<SymbolTableEntry *> test;

    //Helper Function
    std::vector<std::string> getChildTypes(Node* node);

};

#endif