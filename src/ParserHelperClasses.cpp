#include "ParserHelperClasses.hpp"

//** Parser Token Functions **//

//constructor
ParserToken::ParserToken(Token tok, std::string lex, int lnNo)
{
    token = tok;
    lexeme = lex;
    lineNo = lnNo;
}

//** Node Functions **//
// Node Constructor
Node::Node(std::string typ, std::optional<ParserToken> tok, Node *leftNode, Node *rightNode)
{
    type = typ;
    token = tok;
    left = leftNode;
    right = rightNode;
}

//Get Line Number for current Node
int Node::getLineNum()
{

    if (token.has_value())
        return token->getLine();

    else
        return left->getLineNum();
}

//Recursively Print AST
void Node::printAST()
{
    if (type != "start")
    {
        std::cout << "\t";
    }

    std::cout << type << " { 'type': '" << type << "', 'lineno': " << getLineNum();

    if(token.has_value() && token->getLexeme() != "")
    {
        std::cout << ", 'attr': '" << token->getLexeme() <<"'";
    }

    std::cout << "} \n \t";

    if(left!=NULL)
    {
        left->printAST();
    }

    if(right!=NULL)
    {
        right->printAST();
    }

}
