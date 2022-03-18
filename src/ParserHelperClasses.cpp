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

    if (token.has_value() && token->getToken() != Token::T_LBRACE && token->getToken() != Token::T_RBRACE && token->getToken() != Token::T_SEMICOLON && token->getToken() != Token::T_LPARA && token->getToken() != Token::T_RPARA)
    {
        for (int i = 0; i < level; i++)
        {
            std::cout << "\t";
        }
        std::cout << " {'type': '" << type << "', 'lineno': " << getLineNum();

        std::cout << ", 'Attribute': [" << token->getLexeme() << "]";
        std::cout << "} \n";
    }


    if (NodeList.size() == 3 && (NodeList[1]->token->getToken() == Token::T_ADD ||
                                 NodeList[1]->token->getToken() == Token::T_SUB ||
                                 NodeList[1]->token->getToken() == Token::T_DIV ||
                                 NodeList[1]->token->getToken() == Token::T_MULT ||
                                 NodeList[1]->token->getToken() == Token::T_MOD ||
                                 NodeList[1]->token->getToken() == Token::T_LT ||
                                 NodeList[1]->token->getToken() == Token::T_GT ||
                                 NodeList[1]->token->getToken() == Token::T_LTE ||
                                 NodeList[1]->token->getToken() == Token::T_GTE ||
                                 // NodeList[1]->token->getToken() == Token::T_ASSIGN ||
                                 NodeList[1]->token->getToken() == Token::T_EQUAL ||
                                 NodeList[1]->token->getToken() == Token::T_NEQUAL ||
                                 NodeList[1]->token->getToken() == Token::T_NOT ||
                                 NodeList[1]->token->getToken() == Token::T_AND ||
                                 NodeList[1]->token->getToken() == Token::T_OR))
    {
        NodeList[1]->printAST(level);
        level++;
        NodeList[0]->printAST(level);
        NodeList[2]->printAST(level);
    }

    else
    {
        for (auto &node : NodeList)
        {
            if (node->token.has_value() && node->token->getToken() != Token::T_LBRACE && node->token->getToken() != Token::T_RBRACE && node->token->getToken() != Token::T_SEMICOLON && node->token->getToken() != Token::T_LPARA && node->token->getToken() != Token::T_RPARA)
            {
                node->printAST(level++);
            }

            else
            {
                node->printAST(level);
            }
            
        }
    }
}

// Recursively Print CST
void Node::printCST(int level)
{
    for (int i = 0; i < level; i++)
    {
        std::cout << "  ";
    }

    std::cout << " {'type': '" << type << "', 'lineno': " << getLineNum();

    if (token.has_value() && token->getLexeme() != "")
    {
        std::cout << ", 'attr': '" << token->getLexeme() << "'";
    }

    std::cout << "} \n";

    int currLevel = level + 1;

    for (auto &node : NodeList)
    {
        node->printCST(currLevel);
    }
}