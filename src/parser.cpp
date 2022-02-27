#include "parser.hpp"
#include <fstream>
#include <iostream>
#include <cerrno>

Parser::Parser(std::vector<ParserToken> *tokens)
{
    tokenList = *tokens;
}