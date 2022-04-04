

#ifndef CODEGEN_HH
#define CODEGEN_HH

#include "Node.hpp"
class CodeGenerator
{
public:
    
    void prePostTraversal(Node *node, void (CodeGenerator::*passCB)(Node *, bool));

private:
    

};

#endif