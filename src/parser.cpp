#include "parser.hpp"


Parser::Parser(std::vector<ParserToken> *tokens)
{
    tokenList = *tokens;
}

void Parser::parse()
{
    currToken = tokenList.begin();
    nextToken = tokenList.begin()++;

    std::cout<<"debug";

    

}