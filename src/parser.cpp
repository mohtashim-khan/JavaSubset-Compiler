#include "parser.hpp"

Parser::Parser(std::vector<ParserToken> *tokens)
{
    tokenList = *tokens;
}

void Parser::errorHandler()
{
    std::cerr << "Error While Parsing, At Line : " << currToken->getLine() << "\n";
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

void Parser::parse()
{
    if (tokenList.size() >= 2)
    {
        currToken = tokenList.begin();
        nextToken = tokenList.begin() + 1;
    }

    // Expect start
    resultTree = start();

    // TODO: UNCOMMENT
    if (nextToken->getToken() != Token::T_EOF || currToken->getToken() != Token::T_EOF)
    {
        errorHandler();
    }

    resultTree.at(0)->printAST();
}

std::vector<Node *> Parser::start()
{
    std::vector<Node *> returnNodes;

    if (tokenList.empty())
    {

        returnNodes.push_back(new Node("start"));
    }

    else
    {
        std::vector<Node *> childNodes;
        childNodes = formalParameter(); // TODO: CHANGE LINE
        returnNodes.push_back(new Node("start", std::nullopt, childNodes));
    }

    return returnNodes;
}

std::vector<Node *> Parser::literal()
{
    std::vector<Node *> returnNodes;
    if (currToken->getToken() == Token::T_NUM)
    {

        std::vector<Node *> childNodes = {};
        returnNodes.push_back(new Node("NUM", *currToken, childNodes));
        increment();

        return returnNodes;
    }

    else if (currToken->getToken() == Token::T_STRING)
    {

        std::vector<Node *> childNodes = {};
        returnNodes.push_back(new Node("STRING", *currToken, childNodes));
        increment();

        return returnNodes;
    }

    else if (currToken->getToken() == Token::T_TRUE)
    {

        std::vector<Node *> childNodes = {};
        returnNodes.push_back(new Node("TRUE", *currToken, childNodes));
        increment();

        return returnNodes;
    }

    else if (currToken->getToken() == Token::T_FALSE)
    {

        std::vector<Node *> childNodes = {};
        returnNodes.push_back(new Node("FALSE", *currToken, returnNodes));
        increment();

        return returnNodes;
    }

    else
    {
        std::cerr << "ERROR PARSING LITERAL";
        errorHandler();
        return {};
    }
}

std::vector<Node *> Parser::type()
{
    std::vector<Node *> returnNodes;

    if (currToken->getToken() == Token::T_BOOLEAN)
    {

        std::vector<Node *> childNodes = {};
        returnNodes.push_back(new Node("BOOLEAN", *currToken, returnNodes));
        increment();

        return returnNodes;
    }

    else if (currToken->getToken() == Token::T_INT)
    {
        std::vector<Node *> childNodes = {};
        returnNodes.push_back(new Node("INT", *currToken, returnNodes));
        increment();

        return returnNodes;
    }

    else
    {
        std::cerr << "ERROR PARSING TYPE \n";
        errorHandler();
        return {};
    }
}

std::vector<Node *> Parser::identifier()
{
    std::vector<Node *> returnNodes;
    if (currToken->getToken() == Token::T_ID)
    {

        std::vector<Node *> childNodes = {};
        returnNodes.push_back(new Node("IDENTIFIER", *currToken, returnNodes));
        increment();

        return returnNodes;
    }

    else
    {
        std::cerr << "ERROR PARSING IDENTIFIER \n";
        errorHandler();
        return {};
    }
}

std::vector<Node *> Parser::variableDeclaration()
{
    std::vector<Node *> returnNodes;
    std::vector<Node *> returnTypeNodes;
    unsigned long currentIterVal = currToken - tokenList.begin();
    returnTypeNodes = type();   
    if (!returnTypeNodes.empty())
    {
        std::vector<Node *> returnIdentifierNodes = identifier();
        if (!returnIdentifierNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnTypeNodes.begin(), returnTypeNodes.end());
            returnNodes.insert(returnNodes.end(), returnIdentifierNodes.begin(), returnIdentifierNodes.end());


            if (currToken->getToken() == Token::T_SEMICOLON)
            {

                returnNodes.push_back(new Node(";", *currToken, {}));
                increment();

                return returnNodes;
            }

            else
            {
                for (size_t i = 0; i < returnIdentifierNodes.size()+returnTypeNodes.size(); i++)
                {
                    decrement();
                }
                
                return {};
            }
        }

        else
        {
            for (size_t i = 0; i < returnTypeNodes.size(); i++)
                {
                    decrement();
                }
            return {};
        }
    }

    else
    {
        return {};
    }
}

std::vector<Node *> Parser::formalParameter()
{
    std::vector<Node *> returnNodes;
    std::vector<Node *> returnTypeNodes;


    // Expect Type
    returnTypeNodes = type();
    if (!returnTypeNodes.empty())
    {
        // Expect Identifier
        std::vector<Node *> returnIdentifierNodes = identifier();
        if (!returnIdentifierNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnTypeNodes.begin(), returnTypeNodes.end());
            returnNodes.insert(returnNodes.end(), returnIdentifierNodes.begin(), returnIdentifierNodes.end());
            return returnNodes;
        }

        else
        {
            for (size_t i = 0; i < returnTypeNodes.size(); i++)
                {
                    decrement();
                }
            return {};
        }
    }

    else
    {
        return {};
    }
}

std::vector<Node *> Parser::formalParameterList()
{
    std::vector<Node *> returnNodes;
    std::vector<Node *> returnFormalParameterNodes;


    returnFormalParameterNodes = formalParameter();

    if(!returnFormalParameterNodes.empty())
    {
        std::vector<Node *> returnFormalParameterListPrimeNodes = formalParameterListPrime();
        if(!returnFormalParameterListPrimeNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnFormalParameterNodes.begin(), returnFormalParameterNodes.end());
            returnNodes.insert(returnNodes.end(), returnFormalParameterListPrimeNodes.begin(), returnFormalParameterListPrimeNodes.end());
            return returnNodes;
        }

        else
        {
            for (size_t i = 0; i < returnFormalParameterNodes.size(); i++)
                {
                    decrement();
                }
            return {};

        }

    }

    return {};
}

std::vector<Node *> Parser::formalParameterListPrime()
{
    std::vector<Node *> returnNodes;

    if(currToken->getToken() == Token::T_COMMA)
    {
        std::vector<Node *> returnFormalParameter = formalParameter();


    }

    return {};
}
