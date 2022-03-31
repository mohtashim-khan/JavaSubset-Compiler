#include "SemanticAnalyzer.hpp"

SemanticAnalyzer::SemanticAnalyzer(Node* tree)
{
    ast = tree;
    
    //Add preDefinedFunctions to the scope stack
    SymbolTable* preDefinedFunctions = new SymbolTable("preDefinedFunctions");
    scopeStack.push(preDefinedFunctions);


}

//Code to traverse the AST in prePostOrder
void SemanticAnalyzer::prePostTraversal(Node *node, void (SemanticAnalyzer::*passCB)(Node *, bool childrenProcessed))
{
    //Do something to node before you see the children -- Preorder
    (this->*passCB)(node, false);

    //Process Children
    for (Node * &child : node->childNodes)
    {
        prePostTraversal(child, passCB);
    }

    //Do something to node after processing Children -- PostOrder

   (this->*passCB)(node, true);


    
}

//Code to Traverse AST in postOrder
void SemanticAnalyzer::postTraversal(Node *node, void (SemanticAnalyzer::*passCB)(Node *))
{
    //Process Children
    for (Node * &child : node->childNodes)
    {
        postTraversal(child, passCB);
    }

    //Do something after processing Children -- PostOrder
   (this->*passCB)(node);

}

/** Passes **/
void SemanticAnalyzer::globalDeclarationsPass(Node *node)
{
    mainDeclarationCounter++;

    return;
    
}

void SemanticAnalyzer::identifierPass(Node *node, bool postOrder)
{
    return;
}

void SemanticAnalyzer::typeCheckingPass(Node *node)
{
    return;
}

void SemanticAnalyzer::miscPass(Node *node, bool postOrder)
{
    return;
}

void SemanticAnalyzer::execute()
{
    //Perform Pass 1
    postTraversal(ast, &SemanticAnalyzer::globalDeclarationsPass);

    //Perform Pass 2
    prePostTraversal(ast, &SemanticAnalyzer::identifierPass);

    //Perform Pass 3
    postTraversal(ast, &SemanticAnalyzer::typeCheckingPass);

    //Perform Pass 4
    prePostTraversal(ast, &SemanticAnalyzer::identifierPass);

}