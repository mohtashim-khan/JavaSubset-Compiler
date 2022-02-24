

#ifndef PARSER_H
#define PARSER_H

#include <vector>
#include "header.h"

class Parser
{
public:
    //Token Parse Function
    void parse(std::vector <Token> &tokens);

    // Default Destructor.
    ~Parser() = default;

    
private:
    std::vector <Token> tokens;

    
    
};


#endif