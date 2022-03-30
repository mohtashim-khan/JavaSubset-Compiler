#include <vector>
#include <string>
#include <iostream>
#include "Node.hpp"

#ifndef SEMANTICANALYZER_HH
#define SEMANTICANALYZER_HH

class SemanticAnalyzer
{
public:

    SemanticAnalyzer(Node* tree);

    void prePostTraversal(Node *node, void (*passCB)(Node *));
    
    void postTraversal(Node *node, void (*passCB)(Node *));

    void globalDeclarationsPass(Node *node);

    void identifierPass(Node *node);

    void typeCheckingPass(Node *node);

    void miscPass(Node *node);

private:
    Node *ast;
};

#endif