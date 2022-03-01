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

void Parser::decrementLoop(unsigned long storedIterVal)
{
    unsigned long currIterVal = currToken - tokenList.begin();

    for (size_t i = 0; i < currIterVal - storedIterVal; i++)
    {
        decrement();
    }
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
    if (currToken->getToken() != Token::T_EOF)
    {
        std::cerr << "ERROR: EOF Not Reached! last line reached without errors: " << currToken->getLine() << "\n";
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
        childNodes = functionHeader(); // TODO: CHANGE LINE
        if (!childNodes.empty())
            returnNodes.push_back(new Node("start", std::nullopt, childNodes));
        else
            returnNodes.push_back(new Node("start"));
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

    std::cerr << "ERROR PARSING LITERAL";
    errorHandler();
    return {};
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

    std::cerr << "ERROR PARSING TYPE \n";
    errorHandler();
    return {};
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

    std::cerr << "ERROR PARSING IDENTIFIER \n";
    errorHandler();
    return {};
}

std::vector<Node *> Parser::variableDeclaration()
{
    std::vector<Node *> returnNodes;
    std::vector<Node *> returnTypeNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();
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
                decrementLoop(storedIterVal);
                return {};
            }
        }

        else
        {
            decrementLoop(storedIterVal);
            return {};
        }
    }

    else
    {
        return {};
    }

    return {};
}

std::vector<Node *> Parser::formalParameter()
{
    std::vector<Node *> returnNodes;
    std::vector<Node *> returnTypeNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

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
            std::vector<Node *> returnVec;
            returnVec.push_back(new Node("formalParameter", std::nullopt, returnNodes));
            return returnVec;
        }

        else
        {
            decrementLoop(storedIterVal);
            return {};
        }
    }

    else
    {
        return {};
    }
    return {};
}

std::vector<Node *> Parser::formalParameterList()
{
    std::vector<Node *> returnNodes;
    std::vector<Node *> returnFormalParameterNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    returnFormalParameterNodes = formalParameter();

    if (!returnFormalParameterNodes.empty())
    {
        std::vector<Node *> returnFormalParameterListPrimeNodes = formalParameterListPrime();
        if (!returnFormalParameterListPrimeNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnFormalParameterNodes.begin(), returnFormalParameterNodes.end());
            returnNodes.insert(returnNodes.end(), returnFormalParameterListPrimeNodes.begin(), returnFormalParameterListPrimeNodes.end());

            std::vector<Node *> returnVec;
            returnVec.push_back(new Node("formalParameterList", std::nullopt, returnNodes));
            return returnVec;
        }

        else
        {
            decrementLoop(storedIterVal);
            return {};
        }
    }

    return {};
}

std::vector<Node *> Parser::formalParameterListPrime()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    if (currToken->getToken() == Token::T_COMMA)
    {
        returnNodes.push_back(new Node(",", *currToken, {}));
        increment();
        std::vector<Node *> returnFormalParameterNodes = formalParameter();
        if (!returnFormalParameterNodes.empty())
        {
            std::vector<Node *> returnFormalParameterListPrimeNodes = formalParameterListPrime();

            returnNodes.insert(returnNodes.end(), returnFormalParameterNodes.begin(), returnFormalParameterNodes.end());
            returnNodes.insert(returnNodes.end(), returnFormalParameterListPrimeNodes.begin(), returnFormalParameterListPrimeNodes.end());
            return returnNodes;
        }

        else
        {
            decrementLoop(storedIterVal);
            return {};
        }
    }

    return {};
}

std::vector<Node *> Parser::functionDeclarator()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin(); // Store currToken Value

    std::vector<Node *> returnIdentifierNodes = identifier();
    if (!returnIdentifierNodes.empty())
    {
        if (currToken->getToken() == Token::T_LPARA)
        {
            returnNodes.push_back(new Node("(", *currToken, {}));
            increment();

            if (currToken->getToken() != Token::T_RPARA)
            {
                std::vector<Node *> returnFormalParameterList = formalParameterList();
                if (!returnFormalParameterList.empty())
                {
                    if (currToken->getToken() == Token::T_RPARA)
                    {
                        returnNodes.insert(returnNodes.end(), returnFormalParameterList.begin(), returnFormalParameterList.end());

                        returnNodes.push_back(new Node(")", *currToken, {}));
                        increment();

                        std::vector<Node *> returnVec;
                        returnVec.push_back(new Node("functionDeclarator", std::nullopt, returnNodes));
                        return returnVec;
                    }

                    else
                    {
                        decrementLoop(storedIterVal);
                        return {};
                    }
                }

                else
                {
                    decrementLoop(storedIterVal);
                    return {};
                }
            }

            else if (currToken->getToken() == Token::T_RPARA)
            {
                returnNodes.push_back(new Node(")", *currToken, {}));
                increment();

                std::vector<Node *> returnVec;
                returnVec.push_back(new Node("functionDeclarator", std::nullopt, returnNodes));
                return returnVec;
            }

            else
            {
                decrementLoop(storedIterVal);
                return {};
            }
        }

        else
        {
            decrementLoop(storedIterVal);
            return {};
        }
    }

    return {};
}

std::vector<Node *> Parser::functionHeader()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin(); // Store currToken Value

    if (currToken->getToken() == Token::T_VOID)
    {
        returnNodes.push_back(new Node("VOID", *currToken, {}));
        increment();

        std::vector<Node *> returnFunctionDeclaratorNodes = functionDeclarator();
        if (!returnFunctionDeclaratorNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnFunctionDeclaratorNodes.begin(), returnFunctionDeclaratorNodes.end());

            std::vector<Node *> returnVec;
            returnVec.push_back(new Node("functionHeader", std::nullopt, returnNodes));
            return returnVec;
        }
        else
        {
            decrementLoop(storedIterVal);
            return {};
        }
    }
    else
    {
        std::vector<Node *> returnTypeNodes = type();
        if (!returnTypeNodes.empty())
        {
            std::vector<Node *> returnFunctionDeclaratorNodes = functionDeclarator();
            if (!returnFunctionDeclaratorNodes.empty())
            {
                returnNodes.insert(returnNodes.end(), returnTypeNodes.begin(), returnTypeNodes.end());
                returnNodes.insert(returnNodes.end(), returnFunctionDeclaratorNodes.begin(), returnFunctionDeclaratorNodes.end());

                std::vector<Node *> returnVec;
                returnVec.push_back(new Node("functionHeader", std::nullopt, returnNodes));
                return returnVec;
            }

            else
            {
                decrementLoop(storedIterVal);
                return {};
            }
        }

        else
        {
            decrementLoop(storedIterVal);
            return {};
        }
    }
    return {};
}
