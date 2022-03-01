#include "parser.hpp"

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
        std::cerr << "ERROR WHILE PARSING, OUTPUTTING ERROR STACK:"
                  << "\n \n";

        std::cerr << errorString << "\n";

        std::cerr << "ERROR: EOF Not Reached! last line reached without errors: " << currToken->getLine() << "\n";
    }

    else
    {
        resultTree.at(0)->printAST();
    }
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
        childNodes = mainFunctionDeclarator(); // TODO: CHANGE LINE
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

        returnNodes.push_back(new Node("NUM", *currToken, {}));
        increment();

        return returnNodes;
    }

    else if (currToken->getToken() == Token::T_STRING)
    {

        returnNodes.push_back(new Node("STRING", *currToken, {}));
        increment();

        return returnNodes;
    }

    else if (currToken->getToken() == Token::T_TRUE)
    {

        returnNodes.push_back(new Node("TRUE", *currToken, {}));
        increment();

        return returnNodes;
    }

    else if (currToken->getToken() == Token::T_FALSE)
    {

        returnNodes.push_back(new Node("FALSE", *currToken, {}));
        increment();

        return returnNodes;
    }

    else
    {
        errorHandler("LITERAL");
        return {};
    }

    errorHandler("LITERAL");

    return {};
}

std::vector<Node *> Parser::type()
{
    std::vector<Node *> returnNodes;

    if (currToken->getToken() == Token::T_BOOLEAN)
    {

        returnNodes.push_back(new Node("BOOLEAN", *currToken, {}));
        increment();

        return returnNodes;
    }

    else if (currToken->getToken() == Token::T_INT)
    {

        returnNodes.push_back(new Node("INT", *currToken, {}));
        increment();

        return returnNodes;
    }

    else
    {
        errorHandler("TYPE");
        return {};
    }

    errorHandler("TYPE");
    return {};
}

std::vector<Node *> Parser::identifier()
{
    std::vector<Node *> returnNodes;
    if (currToken->getToken() == Token::T_ID)
    {

        returnNodes.push_back(new Node("IDENTIFIER", *currToken, {}));
        increment();

        return returnNodes;
    }

    else
    {
        errorHandler("IDENTIFIER");
        return {};
    }

    errorHandler("IDENTIFIER");
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
                errorHandler("variableDeclaration");
                return {};
            }
        }

        else
        {
            decrementLoop(storedIterVal);
            errorHandler("variableDeclaration");

            return {};
        }
    }

    else
    {
        errorHandler("variableDeclaration");
        return {};
    }

    errorHandler("variableDeclaration");
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
            errorHandler("formalParameter");
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
            errorHandler("formalParameterList");
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

    decrementLoop(storedIterVal);
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
                        errorHandler("functionDeclarator");

                        return {};
                    }
                }

                else
                {
                    decrementLoop(storedIterVal);
                    errorHandler("functionDeclarator");

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
                errorHandler("functionDeclarator");

                return {};
            }
        }

        else
        {
            decrementLoop(storedIterVal);
            errorHandler("functionDeclarator");

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
            errorHandler("functionHeader");

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
                errorHandler("functionHeader");
                return {};
            }
        }

        else
        {
            decrementLoop(storedIterVal);
            errorHandler("functionHeader");
            return {};
        }
    }
    return {};
}

std::vector<Node *> Parser::mainFunctionDeclarator()
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

            if (currToken->getToken() == Token::T_RPARA)
            {
                returnNodes.push_back(new Node(")", *currToken, {}));
                increment();

                std::vector<Node *> returnVec;
                returnVec.push_back(new Node("mainFunctionDeclarator", std::nullopt, returnNodes));
                return returnVec;
            }

            else
            {
                decrementLoop(storedIterVal);
                errorHandler("mainFunctionDeclarator");
                return {};
            }
        }

        else
        {
            decrementLoop(storedIterVal);
            errorHandler("mainFunctionDeclarator");
            return {};
        }
    }
    errorHandler("mainFunctionDeclarator");

    return {};
}

/**** UNTESTED CODE PAST THIS POINT ***/

std::vector<Node *> Parser::primary()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin(); // Store currToken Value

    std::vector<Node *> returnLiteralNodes = literal();
    if (!returnLiteralNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnLiteralNodes.begin(), returnLiteralNodes.end());

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("primary", std::nullopt, returnNodes));
        return returnVec;
    }

    else if (currToken->getToken() == Token::T_LPARA)
    {
        returnNodes.push_back(new Node("(", *currToken, {}));
        increment();

        std::vector<Node *> returnExpressionNodes = expression();
        if (!returnExpressionNodes.empty())
        {
            if (currToken->getToken() == Token::T_RPARA)
            {
                returnNodes.insert(returnNodes.end(), returnExpressionNodes.begin(), returnExpressionNodes.end());

                returnNodes.push_back(new Node(")", *currToken, {}));
                increment();

                std::vector<Node *> returnVec;
                returnVec.push_back(new Node("primary", std::nullopt, returnNodes));
                return returnVec;
            }

            else
            {
                decrementLoop(storedIterVal);
                errorHandler("primary");
                return {};
            }
        }

        else
        {
            decrementLoop(storedIterVal);
            errorHandler("primary");
            return {};
        }
    }

    else
    {
        std::vector<Node *> returnFunctionInvocationNodes = functionInvocation();
        if (!returnFunctionInvocationNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnFunctionInvocationNodes.begin(), returnFunctionInvocationNodes.end());
            std::vector<Node *> returnVec;
            returnVec.push_back(new Node("primary", std::nullopt, returnNodes));
            return returnVec;
        }

        else
        {
            decrementLoop(storedIterVal);
            errorHandler("primary");
            return {};
        }
    }

    decrementLoop(storedIterVal);
    errorHandler("primary");
    return {};
}

std::vector<Node *> Parser::block()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin(); // Store currToken Value

    if (currToken->getToken() == Token::T_LBRACE)
    {
        returnNodes.push_back(new Node("{", *currToken, {}));
        increment();

        if (currToken->getToken() == Token::T_RBRACE)
        {
            returnNodes.push_back(new Node("}", *currToken, {}));
            increment();

            std::vector<Node *> returnVec;
            returnVec.push_back(new Node("block", std::nullopt, returnNodes));
            return returnVec;
        }
        else
        {
            std::vector<Node *> returnBlockStatements = blockStatements();
            if (!returnBlockStatements.empty())
            {
                if (currToken->getToken() == Token::T_RBRACE)
                {
                    returnNodes.insert(returnNodes.end(), returnBlockStatements.begin(), returnBlockStatements.end());

                    returnNodes.push_back(new Node("}", *currToken, {}));
                    increment();

                    std::vector<Node *> returnVec;
                    returnVec.push_back(new Node("block", std::nullopt, returnNodes));
                    return returnVec;
                }

                else
                {
                    decrementLoop(storedIterVal);
                    errorHandler("block");
                    return {};
                }
            }

            else
            {
                decrementLoop(storedIterVal);
                errorHandler("block");
                return {};
            }
        }
    }

    else
    {
        decrementLoop(storedIterVal);
        errorHandler("block");
        return {};
    }

    decrementLoop(storedIterVal);
    errorHandler("block");
    return {};
}

std::vector<Node *> Parser::blockStatements()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    std::vector<Node *> returnBlockStatementNodes = blockStatement();

    if (!returnBlockStatementNodes.empty())
    {
        std::vector<Node *> returnBlockStatementsPrimeNodes = blockStatementsPrime();
        if (!returnBlockStatementsPrimeNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnBlockStatementNodes.begin(), returnBlockStatementNodes.end());
            returnNodes.insert(returnNodes.end(), returnBlockStatementsPrimeNodes.begin(), returnBlockStatementsPrimeNodes.end());

            std::vector<Node *> returnVec;
            returnVec.push_back(new Node("blockStatements", std::nullopt, returnNodes));
            return returnVec;
        }

        else
        {
            decrementLoop(storedIterVal);
            errorHandler("blockStatements");
            return {};
        }
    }

    decrementLoop(storedIterVal);
    errorHandler("blockStatements");
    return {};
}

std::vector<Node *> Parser::blockStatementsPrime()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    std::vector<Node *> returnBlockStatementNodes = blockStatement();
    if (!returnBlockStatementNodes.empty())
    {
        std::vector<Node *> returnBlockStatementsPrimeNodes = blockStatementsPrime();

        returnNodes.insert(returnNodes.end(), returnBlockStatementNodes.begin(), returnBlockStatementNodes.end());
        returnNodes.insert(returnNodes.end(), returnBlockStatementsPrimeNodes.begin(), returnBlockStatementsPrimeNodes.end());
        return returnNodes;
    }

    else
    {
        decrementLoop(storedIterVal);
        return {};
    }

    decrementLoop(storedIterVal);
    return {};
}

std::vector<Node *> Parser::blockStatement()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    std::vector<Node *> returnVariableDeclarationNodes = variableDeclaration();
    if (!returnVariableDeclarationNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnVariableDeclarationNodes.begin(), returnVariableDeclarationNodes.end());

            std::vector<Node *> returnVec;
            returnVec.push_back(new Node("blockStatement", std::nullopt, returnNodes));
            return returnVec;

    }

    else
    {
        std::vector<Node *> returnStatementNodes = statement();
        if (!returnStatementNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnStatementNodes.begin(), returnStatementNodes.end());

            std::vector<Node *> returnVec;
            returnVec.push_back(new Node("blockStatement", std::nullopt, returnNodes));
            return returnVec;
        }

        else
        {
            decrementLoop(storedIterVal);
            errorHandler("blockStatement");
            return {};
        }
    }

    decrementLoop(storedIterVal);
    errorHandler("blockStatement");
    return {};
}
