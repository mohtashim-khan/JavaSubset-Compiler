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
Node::Node(std::string typ, std::optional<ParserToken> tok,std::vector<Node*> Nodes)
{
    type = typ;
    token = tok;
    NodeList = Nodes;
}

//Get Line Number for current Node
int Node::getLineNum()
{

    if (token.has_value())
        return token->getLine();

    else if(!NodeList.empty())
        return NodeList.at(0)->getLineNum();

    else
        return -1;
}

//Recursively Print AST
void Node::printAST(int level)
{
    for (int i = 0; i < level; i++)
    {
        std::cout<<"\t";
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
        node->printAST(currLevel);
    }

}
