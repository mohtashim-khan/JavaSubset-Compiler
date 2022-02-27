

#ifndef PARSER_H
#define PARSER_H

#include <vector>
#include "header.h"
#include <string>
#include "ParserHelperClasses.hpp"


class Parser
{
public:
    // Token Parse Function
    void parse();

    //Constructor
    Parser(std::vector<ParserToken> *tokens);

    // Default Destructor.
    ~Parser() = default;

private:
    //Token List from program
    std::vector<ParserToken> tokenList;

    //Keep track of current and next tokens
    std::vector<ParserToken>::iterator currToken;
    std::vector<ParserToken>::iterator nextToken;

    
   int expectStart();

    


};



#endif