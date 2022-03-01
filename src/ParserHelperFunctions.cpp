#include "parser.hpp"


Parser::Parser(std::vector<ParserToken> *tokens)
{
    tokenList = *tokens;
}

void Parser::errorHandler(std::string type)
{
    std::string lineNo = std::to_string(currToken->getLine());
    errorString.append("Error While Parsing " + type + " , At Line : " + lineNo + "\n");
}

void Parser::increment()
{
    currToken++;
    nextToken++;
}

void Parser::decrement()
{
    currToken--;
    nextToken--;
}

void Parser::decrementLoop(unsigned long storedIterVal)
{
    unsigned long currIterVal = currToken - tokenList.begin();

    for (size_t i = 0; i < (currIterVal - storedIterVal); i++)
    {
        decrement();
    }
}