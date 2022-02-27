#include "ParserHelperClasses.hpp"

//Parser Token Constructor
ParserToken::ParserToken(Token tok, std::string lex, int lnNo)
{
    token = tok;
    lexeme = lex;
    lineNo = lnNo;
}

//Node Constructor
Node::Node(std::string typ, std::optional<ParserToken> tok = std::nullopt, std::optional<Node *> lef = std::nullopt, std::optional<Node *> righ = std::nullopt)
{
    type = typ;
    token = tok;
    left = lef;
    right = righ;
}


