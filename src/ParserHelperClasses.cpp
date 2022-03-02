#include "ParserHelperClasses.hpp"

//** Parser Token Functions **//

// constructor
ParserToken::ParserToken(Token tok, std::string lex, int lnNo)
{
    token = tok;
    lexeme = lex;
    lineNo = lnNo;
}

//** Node Functions **//
// Node Constructor
Node::Node(std::string typ, std::optional<ParserToken> tok, std::vector<Node *> Nodes)
{
    type = typ;
    token = tok;
    NodeList = Nodes;
}

// Get Line Number for current Node
int Node::getLineNum()
{

    if (token.has_value())
        return token->getLine();

    else if (!NodeList.empty())
        return NodeList.at(0)->getLineNum();

    else
        return -1;
}

// Recursively Print AST
void Node::printAST(int level)
{

    if (token.has_value() && token->getToken()!=Token::T_LBRACE && token->getToken()!=Token::T_RBRACE && token->getToken()!=Token::T_SEMICOLON && token->getToken()!=Token::T_LPARA && token->getToken()!=Token::T_RPARA)
    {
        for (int i = 0; i < level; i++)
        {
            std::cout << "  ";
        }
        std::cout << " {'type': '" << type << "', 'lineno': " << getLineNum();

        std::cout << ", 'Attribute': [" << token->getLexeme() << "]";
        std::cout << "} \n";
    }

    int currLevel = level + 1;

    for (auto &node : NodeList)
    {
        node->printAST(currLevel);
    }
}

// Recursively Print CST
void Node::printCST(int level)
{
    for (int i = 0; i < level; i++)
    {
        std::cout<<"  ";
    }
    

    std::cout <<" {'type': '" << type << "', 'lineno': " << getLineNum();

    if(token.has_value() && token->getLexeme() != "")
    {
        std::cout << ", 'attr': '" << token->getLexeme() <<"'";
    }

    std::cout << "} \n";

    int currLevel = level+1;

    for(auto &node : NodeList)
    {
        node->printCST(currLevel);
    }
}