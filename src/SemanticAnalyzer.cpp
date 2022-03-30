#include "SemanticAnalyzer.hpp"

SemanticAnalyzer::SemanticAnalyzer(Node* tree)
{
    ast = tree;
}

//Code to traverse the AST in prePostOrder
void SemanticAnalyzer::prePostTraversal(Node *node, void (*passCB)(Node *))
{
    //Do something to node before you see the children


    //Process Children
    for (Node * &child : node->childNodes)
    {
        prePostTraversal(child, passCB);
    }

    //Do something to node after processing Children

    passCB(node);

    
}

//Code to Traverse AST in postOrder
void SemanticAnalyzer::postTraversal(Node *node, void (*passCB)(Node *))
{
    //Process Children
    for (Node * &child : node->childNodes)
    {
        postTraversal(child, passCB);
    }

    //Do something after processing Children
}