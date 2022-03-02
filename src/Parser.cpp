#include "Parser.hpp"

void Parser::parse()
{
    currToken = tokenList.begin();
    nextToken = tokenList.begin() + 1;

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
        std::vector<Node *> childNodes = globalDeclarations(); // TODO: CHANGE LINE
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
        decrementLoop(storedIterVal);
        errorHandler("variableDeclaration");
        return {};
    }

    decrementLoop(storedIterVal);
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
        decrementLoop(storedIterVal);
        errorHandler("formalParameter");
        return {};
    }
    decrementLoop(storedIterVal);
    errorHandler("formalParameter");
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

        returnNodes.insert(returnNodes.end(), returnFormalParameterNodes.begin(), returnFormalParameterNodes.end());
        returnNodes.insert(returnNodes.end(), returnFormalParameterListPrimeNodes.begin(), returnFormalParameterListPrimeNodes.end());

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("formalParameterList", std::nullopt, returnNodes));
        return returnVec;
    }

    decrementLoop(storedIterVal);
    errorHandler("formalParameterList");
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

        returnNodes.insert(returnNodes.end(), returnBlockStatementNodes.begin(), returnBlockStatementNodes.end());
        returnNodes.insert(returnNodes.end(), returnBlockStatementsPrimeNodes.begin(), returnBlockStatementsPrimeNodes.end());

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("blockStatements", std::nullopt, returnNodes));
        return returnVec;
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

std::vector<Node *> Parser::statement()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    if (currToken->getToken() == Token::T_SEMICOLON)
    {
        returnNodes.push_back(new Node(";", *currToken, {}));
        increment();

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("statement", std::nullopt, returnNodes));
        return returnVec;
    }

    else if (currToken->getToken() == Token::T_BREAK && nextToken->getToken() == Token::T_SEMICOLON)
    {
        returnNodes.push_back(new Node("BREAK", *currToken, {}));
        increment();

        returnNodes.push_back(new Node(";", *currToken, {}));
        increment();

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("statement", std::nullopt, returnNodes));
        return returnVec;
    }
    else if (currToken->getToken() == Token::T_RETURN && nextToken->getToken() == Token::T_SEMICOLON)
    {
        returnNodes.push_back(new Node("RETURN", *currToken, {}));
        increment();

        returnNodes.push_back(new Node(";", *currToken, {}));
        increment();

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("statement", std::nullopt, returnNodes));
        return returnVec;
    }

    else if (currToken->getToken() == Token::T_IF && nextToken->getToken() == Token::T_LPARA)
    {
        returnNodes.push_back(new Node("IF", *currToken, {}));
        increment();

        returnNodes.push_back(new Node("(", *currToken, {}));
        increment();

        std::vector<Node *> returnExpressionNodes = expression();
        if (!returnExpressionNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnExpressionNodes.begin(), returnExpressionNodes.end());

            if (currToken->getToken() == Token::T_RPARA)
            {
                returnNodes.push_back(new Node(")", *currToken, {}));
                increment();

                std::vector<Node *> returnStatementNodes = statement();
                if (!returnStatementNodes.empty())
                {
                    returnNodes.insert(returnNodes.end(), returnStatementNodes.begin(), returnStatementNodes.end());

                    // Dangling Else Check
                    if (currToken->getToken() == Token::T_ELSE)
                    {
                        returnNodes.push_back(new Node("ELSE", *currToken, {}));
                        increment();

                        std::vector<Node *> returnSecondStatementNodes = statement();
                        if (!returnSecondStatementNodes.empty())
                        {
                            returnNodes.insert(returnNodes.end(), returnSecondStatementNodes.begin(), returnSecondStatementNodes.end());

                            std::vector<Node *> returnVec;
                            returnVec.push_back(new Node("statement", std::nullopt, returnNodes));
                            return returnVec;
                        }

                        else
                        {
                            decrementLoop(storedIterVal);
                            errorHandler("statement");
                            return {};
                        }
                    }

                    else
                    {
                        std::vector<Node *> returnVec;
                        returnVec.push_back(new Node("statement", std::nullopt, returnNodes));
                        return returnVec;
                    }
                }

                else
                {
                    decrementLoop(storedIterVal);
                    errorHandler("statement");
                    return {};
                }
            }

            else
            {
                decrementLoop(storedIterVal);
                errorHandler("statement");
                return {};
            }
        }

        else
        {
            decrementLoop(storedIterVal);
            errorHandler("statement");
            return {};
        }
    }

    else if (currToken->getToken() == Token::T_WHILE && nextToken->getToken() == Token::T_LPARA)
    {
        returnNodes.push_back(new Node("WHILE", *currToken, {}));
        increment();

        returnNodes.push_back(new Node("(", *currToken, {}));
        increment();

        std::vector<Node *> returnExpressionNodes = expression();
        if (!returnExpressionNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnExpressionNodes.begin(), returnExpressionNodes.end());

            if (currToken->getToken() == Token::T_RPARA)
            {
                returnNodes.push_back(new Node(")", *currToken, {}));
                increment();

                std::vector<Node *> returnStatementNodes = statement();
                if (!returnStatementNodes.empty())
                {
                    returnNodes.insert(returnNodes.end(), returnStatementNodes.begin(), returnStatementNodes.end());

                    std::vector<Node *> returnVec;
                    returnVec.push_back(new Node("statement", std::nullopt, returnNodes));
                    return returnVec;
                }
                else
                {
                    decrementLoop(storedIterVal);
                    errorHandler("statement");
                    return {};
                }
            }
            else
            {
                decrementLoop(storedIterVal);
                errorHandler("statement");
                return {};
            }
        }
        else
        {
            decrementLoop(storedIterVal);
            errorHandler("statement");
            return {};
        }
    }

    else
    {
        std::vector<Node *> returnBlockNodes = block();
        if (!returnBlockNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnBlockNodes.begin(), returnBlockNodes.end());

            std::vector<Node *> returnVec;
            returnVec.push_back(new Node("statement", std::nullopt, returnNodes));
            return returnVec;
        }

        std::vector<Node *> returnStatementExpressionNodes = statementExpression();
        if (!returnStatementExpressionNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnStatementExpressionNodes.begin(), returnStatementExpressionNodes.end());

            if (currToken->getToken() == Token::T_SEMICOLON)
            {
                returnNodes.push_back(new Node(";", *currToken, {}));
                increment();

                std::vector<Node *> returnVec;
                returnVec.push_back(new Node("statement", std::nullopt, returnNodes));
                return returnVec;
            }

            else
            {
                decrementLoop(storedIterVal);
                errorHandler("statement");
                return {};
            }
        }

        decrementLoop(storedIterVal);
        errorHandler("statement");
        return {};
    }
}

std::vector<Node *> Parser::statementExpression()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    std::vector<Node *> returnAssignmentNodes = assignment();
    if (!returnAssignmentNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnAssignmentNodes.begin(), returnAssignmentNodes.end());

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("statementExpression", std::nullopt, returnNodes));
        return returnVec;
    }

    std::vector<Node *> returnFunctionInvocationNodes = functionInvocation();
    if (!returnFunctionInvocationNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnFunctionInvocationNodes.begin(), returnFunctionInvocationNodes.end());

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("statementExpression", std::nullopt, returnNodes));
        return returnVec;
    }

    decrementLoop(storedIterVal);
    errorHandler("statement");
    return {};
}

std::vector<Node *> Parser::argumentList()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    std::vector<Node *> returnExpressionNodes = expression();
    if (!returnExpressionNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnExpressionNodes.begin(), returnExpressionNodes.end());

        std::vector<Node *> returnArgumentListPrimeNodes = argumentListPrime();

        returnNodes.insert(returnNodes.end(), returnArgumentListPrimeNodes.begin(), returnArgumentListPrimeNodes.end());

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("argumentList", std::nullopt, returnNodes));
        return returnVec;
    }

    decrementLoop(storedIterVal);
    errorHandler("argumentList");
    return {};
}

std::vector<Node *> Parser::argumentListPrime()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    if (currToken->getToken() == Token::T_COMMA)
    {
        returnNodes.push_back(new Node(",", *currToken, {}));
        increment();

        std::vector<Node *> returnExpressionNodes = expression();
        if (!returnExpressionNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnExpressionNodes.begin(), returnExpressionNodes.end());

            std::vector<Node *> returnArgumentListPrimeNodes = argumentListPrime();

            returnNodes.insert(returnNodes.end(), returnExpressionNodes.begin(), returnExpressionNodes.end());
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

std::vector<Node *> Parser::functionInvocation()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    std::vector<Node *> returnIdentifierNodes = identifier();
    if (!returnIdentifierNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnIdentifierNodes.begin(), returnIdentifierNodes.end());
        if (currToken->getToken() == Token::T_LPARA)
        {
            returnNodes.push_back(new Node("(", *currToken, {}));
            increment();

            if (currToken->getToken() == Token::T_RPARA)
            {
                returnNodes.push_back(new Node(")", *currToken, {}));
                increment();

                std::vector<Node *> returnVec;
                returnVec.push_back(new Node("functionInvocation", std::nullopt, returnNodes));
                return returnVec;
            }

            std::vector<Node *> returnArgumentListNodes = argumentList();
            if (!returnArgumentListNodes.empty())
            {
                returnNodes.insert(returnNodes.end(), returnArgumentListNodes.begin(), returnArgumentListNodes.end());

                if (currToken->getToken() == Token::T_RPARA)
                {
                    returnNodes.push_back(new Node(")", *currToken, {}));
                    increment();

                    std::vector<Node *> returnVec;
                    returnVec.push_back(new Node("functionInvocation", std::nullopt, returnNodes));
                    return returnVec;
                }
            }
        }
    }

    decrementLoop(storedIterVal);
    errorHandler("functionInvocation");
    return {};
}

std::vector<Node *> Parser::postFixExpression()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    std::vector<Node *> returnPrimaryNodes = primary();
    if (!returnPrimaryNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnPrimaryNodes.begin(), returnPrimaryNodes.end());

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("postFixExpression", std::nullopt, returnNodes));
        return returnVec;
    }

    std::vector<Node *> returnIdentifierNodes = identifier();
    if (!returnIdentifierNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnIdentifierNodes.begin(), returnIdentifierNodes.end());

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("postFixExpression", std::nullopt, returnNodes));
        return returnVec;
    }

    decrementLoop(storedIterVal);
    errorHandler("postFixExpression");
    return {};
}

std::vector<Node *> Parser::unaryExpression()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    if (currToken->getToken() == Token::T_SUB)
    {
        returnNodes.push_back(new Node("-", *currToken, {}));
        increment();

        std::vector<Node *> returnUnaryNodes = unaryExpression();
        if (!returnUnaryNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnUnaryNodes.begin(), returnUnaryNodes.end());

            std::vector<Node *> returnVec;
            returnVec.push_back(new Node("unaryExpression", std::nullopt, returnNodes));
            return returnVec;
        }

        else
        {
            decrementLoop(storedIterVal);
            errorHandler("unaryExpression");
            return {};
        }
    }

    else if (currToken->getToken() == Token::T_NOT)
    {
        returnNodes.push_back(new Node("!", *currToken, {}));
        increment();

        std::vector<Node *> returnUnaryNodes = unaryExpression();
        if (!returnUnaryNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnUnaryNodes.begin(), returnUnaryNodes.end());

            std::vector<Node *> returnVec;
            returnVec.push_back(new Node("unaryExpression", std::nullopt, returnNodes));
            return returnVec;
        }

        else
        {
            decrementLoop(storedIterVal);
            errorHandler("unaryExpression");
            return {};
        }
    }

    else
    {
        std::vector<Node *> returnPostFixNodes = postFixExpression();
        if (!returnPostFixNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnPostFixNodes.begin(), returnPostFixNodes.end());

            std::vector<Node *> returnVec;
            returnVec.push_back(new Node("unaryExpression", std::nullopt, returnNodes));
            return returnVec;
        }

        decrementLoop(storedIterVal);
        errorHandler("unaryExpression");
        return {};
    }
}

std::vector<Node *> Parser::multiplicativeExpression()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    std::vector<Node *> returnUnaryNodes = unaryExpression();
    if (!returnUnaryNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnUnaryNodes.begin(), returnUnaryNodes.end());
        std::vector<Node *> returnMultiplicativeExpressionPrimeNodes = multiplicativeExpressionPrime();

        returnNodes.insert(returnNodes.end(), returnMultiplicativeExpressionPrimeNodes.begin(), returnMultiplicativeExpressionPrimeNodes.end());

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("multiplicativeExpression", std::nullopt, returnNodes));
        return returnVec;
    }

    decrementLoop(storedIterVal);
    errorHandler("multiplicativeExpression");
    return {};
}

std::vector<Node *> Parser::multiplicativeExpressionPrime()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    if (currToken->getToken() == Token::T_MULT)
    {
        returnNodes.push_back(new Node("*", *currToken, {}));
        increment();

        std::vector<Node *> returnUnaryNodes = unaryExpression();
        if (!returnUnaryNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnUnaryNodes.begin(), returnUnaryNodes.end());
            std::vector<Node *> returnMultiplicativeExpressionPrimeNodes = multiplicativeExpressionPrime();

            returnNodes.insert(returnNodes.end(), returnMultiplicativeExpressionPrimeNodes.begin(), returnMultiplicativeExpressionPrimeNodes.end());

            return returnNodes;
        }
    }

    else if (currToken->getToken() == Token::T_DIV)
    {
        returnNodes.push_back(new Node("/", *currToken, {}));
        increment();

        std::vector<Node *> returnUnaryNodes = unaryExpression();
        if (!returnUnaryNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnUnaryNodes.begin(), returnUnaryNodes.end());
            std::vector<Node *> returnMultiplicativeExpressionPrimeNodes = multiplicativeExpressionPrime();

            returnNodes.insert(returnNodes.end(), returnMultiplicativeExpressionPrimeNodes.begin(), returnMultiplicativeExpressionPrimeNodes.end());

            return returnNodes;
        }
    }

    else if (currToken->getToken() == Token::T_MOD)
    {
        returnNodes.push_back(new Node("%", *currToken, {}));
        increment();

        std::vector<Node *> returnUnaryNodes = unaryExpression();
        if (!returnUnaryNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnUnaryNodes.begin(), returnUnaryNodes.end());
            std::vector<Node *> returnMultiplicativeExpressionPrimeNodes = multiplicativeExpressionPrime();

            returnNodes.insert(returnNodes.end(), returnMultiplicativeExpressionPrimeNodes.begin(), returnMultiplicativeExpressionPrimeNodes.end());

            return returnNodes;
        }
    }

    decrementLoop(storedIterVal);
    return {};
}

std::vector<Node *> Parser::additiveExpression()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    std::vector<Node *> returnMultiplicativeExpressionNodes = multiplicativeExpression();
    if (!returnMultiplicativeExpressionNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnMultiplicativeExpressionNodes.begin(), returnMultiplicativeExpressionNodes.end());
        std::vector<Node *> returnAdditivieExpressionPrimeNodes = additiveExpressionPrime();

        returnNodes.insert(returnNodes.end(), returnAdditivieExpressionPrimeNodes.begin(), returnAdditivieExpressionPrimeNodes.end());

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("additiveExpression", std::nullopt, returnNodes));
        return returnVec;
    }

    decrementLoop(storedIterVal);
    errorHandler("additiveExpression");
    return {};
}

std::vector<Node *> Parser::additiveExpressionPrime()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    if (currToken->getToken() == Token::T_ADD)
    {
        returnNodes.push_back(new Node("+", *currToken, {}));
        increment();

        std::vector<Node *> returnMultiplicativeExpressionNodes = multiplicativeExpression();
        if (!returnMultiplicativeExpressionNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnMultiplicativeExpressionNodes.begin(), returnMultiplicativeExpressionNodes.end());
            std::vector<Node *> returnAdditivieExpressionPrimeNodes = additiveExpressionPrime();

            returnNodes.insert(returnNodes.end(), returnAdditivieExpressionPrimeNodes.begin(), returnAdditivieExpressionPrimeNodes.end());

            return returnNodes;
        }
    }

    else if (currToken->getToken() == Token::T_SUB)
    {
        returnNodes.push_back(new Node("-", *currToken, {}));
        increment();

        std::vector<Node *> returnMultiplicativeExpressionNodes = multiplicativeExpression();
        if (!returnMultiplicativeExpressionNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnMultiplicativeExpressionNodes.begin(), returnMultiplicativeExpressionNodes.end());
            std::vector<Node *> returnAdditivieExpressionPrimeNodes = additiveExpressionPrime();

            returnNodes.insert(returnNodes.end(), returnAdditivieExpressionPrimeNodes.begin(), returnAdditivieExpressionPrimeNodes.end());

            return returnNodes;
        }
    }

    decrementLoop(storedIterVal);
    return {};
}

std::vector<Node *> Parser::relationalExpression()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    std::vector<Node *> returnAdditiveExpressionNodes = additiveExpression();
    if (!returnAdditiveExpressionNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnAdditiveExpressionNodes.begin(), returnAdditiveExpressionNodes.end());
        std::vector<Node *> returnRelationalExpressionPrimeNodes = relationalExpressionPrime();

        returnNodes.insert(returnNodes.end(), returnRelationalExpressionPrimeNodes.begin(), returnRelationalExpressionPrimeNodes.end());

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("relationalExpression", std::nullopt, returnNodes));
        return returnVec;
    }

    decrementLoop(storedIterVal);
    errorHandler("relationalExpression");
    return {};
}

std::vector<Node *> Parser::relationalExpressionPrime()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    if (currToken->getToken() == Token::T_LT)
    {
        returnNodes.push_back(new Node("<", *currToken, {}));
        increment();

        std::vector<Node *> returnAdditiveExpressionNodes = additiveExpression();
        if (!returnAdditiveExpressionNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnAdditiveExpressionNodes.begin(), returnAdditiveExpressionNodes.end());
            std::vector<Node *> returnRelationalExpressionPrimeNodes = relationalExpressionPrime();

            returnNodes.insert(returnNodes.end(), returnRelationalExpressionPrimeNodes.begin(), returnRelationalExpressionPrimeNodes.end());

            return returnNodes;
        }
    }

    else if (currToken->getToken() == Token::T_GT)
    {
        returnNodes.push_back(new Node(">", *currToken, {}));
        increment();

        std::vector<Node *> returnAdditiveExpressionNodes = additiveExpression();
        if (!returnAdditiveExpressionNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnAdditiveExpressionNodes.begin(), returnAdditiveExpressionNodes.end());
            std::vector<Node *> returnRelationalExpressionPrimeNodes = relationalExpressionPrime();

            returnNodes.insert(returnNodes.end(), returnRelationalExpressionPrimeNodes.begin(), returnRelationalExpressionPrimeNodes.end());

            return returnNodes;
        }
    }

    else if (currToken->getToken() == Token::T_LTE)
    {
        returnNodes.push_back(new Node("<=", *currToken, {}));
        increment();

        std::vector<Node *> returnAdditiveExpressionNodes = additiveExpression();
        if (!returnAdditiveExpressionNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnAdditiveExpressionNodes.begin(), returnAdditiveExpressionNodes.end());
            std::vector<Node *> returnRelationalExpressionPrimeNodes = relationalExpressionPrime();

            returnNodes.insert(returnNodes.end(), returnRelationalExpressionPrimeNodes.begin(), returnRelationalExpressionPrimeNodes.end());

            return returnNodes;
        }
    }

    else if (currToken->getToken() == Token::T_GTE)
    {
        returnNodes.push_back(new Node(">=", *currToken, {}));
        increment();

        std::vector<Node *> returnAdditiveExpressionNodes = additiveExpression();
        if (!returnAdditiveExpressionNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnAdditiveExpressionNodes.begin(), returnAdditiveExpressionNodes.end());
            std::vector<Node *> returnRelationalExpressionPrimeNodes = relationalExpressionPrime();

            returnNodes.insert(returnNodes.end(), returnRelationalExpressionPrimeNodes.begin(), returnRelationalExpressionPrimeNodes.end());

            return returnNodes;
        }
    }

    decrementLoop(storedIterVal);
    return {};
}

std::vector<Node *> Parser::equalityExpression()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    std::vector<Node *> returnRelationalExpressionNodes = relationalExpression();
    if (!returnRelationalExpressionNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnRelationalExpressionNodes.begin(), returnRelationalExpressionNodes.end());
        std::vector<Node *> returnEqualityExpressionPrimeNodes = equalityExpressionPrime();

        returnNodes.insert(returnNodes.end(), returnEqualityExpressionPrimeNodes.begin(), returnEqualityExpressionPrimeNodes.end());

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("equalityExpression", std::nullopt, returnNodes));
        return returnVec;
    }

    decrementLoop(storedIterVal);
    errorHandler("equalityExpression");
    return {};
}

std::vector<Node *> Parser::equalityExpressionPrime()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    if (currToken->getToken() == Token::T_EQUAL)
    {
        returnNodes.push_back(new Node("==", *currToken, {}));
        increment();

        std::vector<Node *> returnRelationalExpressionNodes = relationalExpression();
        if (!returnRelationalExpressionNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnRelationalExpressionNodes.begin(), returnRelationalExpressionNodes.end());
            std::vector<Node *> returnEqualityExpressionPrimeNodes = equalityExpressionPrime();

            returnNodes.insert(returnNodes.end(), returnEqualityExpressionPrimeNodes.begin(), returnEqualityExpressionPrimeNodes.end());

            return returnNodes;
        }
    }

    else if (currToken->getToken() == Token::T_NEQUAL)
    {
        returnNodes.push_back(new Node("!=", *currToken, {}));
        increment();

        std::vector<Node *> returnRelationalExpressionNodes = relationalExpression();
        if (!returnRelationalExpressionNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnRelationalExpressionNodes.begin(), returnRelationalExpressionNodes.end());
            std::vector<Node *> returnEqualityExpressionPrimeNodes = equalityExpressionPrime();

            returnNodes.insert(returnNodes.end(), returnEqualityExpressionPrimeNodes.begin(), returnEqualityExpressionPrimeNodes.end());

            return returnNodes;
        }
    }

    decrementLoop(storedIterVal);
    return {};
}

std::vector<Node *> Parser::conditionalAndExpression()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    std::vector<Node *> returnEqualityExpressionNodes = equalityExpression();
    if (!returnEqualityExpressionNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnEqualityExpressionNodes.begin(), returnEqualityExpressionNodes.end());
        std::vector<Node *> returnConditionalAndExpressionPrimePrimeNodes = conditionalAndExpressionPrime();

        returnNodes.insert(returnNodes.end(), returnConditionalAndExpressionPrimePrimeNodes.begin(), returnConditionalAndExpressionPrimePrimeNodes.end());

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("conditionalAndExpression", std::nullopt, returnNodes));
        return returnVec;
    }

    decrementLoop(storedIterVal);
    errorHandler("conditionalAndExpression");
    return {};
}

std::vector<Node *> Parser::conditionalAndExpressionPrime()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    if (currToken->getToken() == Token::T_AND)
    {
        returnNodes.push_back(new Node("&&", *currToken, {}));
        increment();

        std::vector<Node *> returnEqualityExpressionNodes = equalityExpression();
        if (!returnEqualityExpressionNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnEqualityExpressionNodes.begin(), returnEqualityExpressionNodes.end());
            std::vector<Node *> returnConditionalAndExpressionPrimePrimeNodes = conditionalAndExpressionPrime();

            returnNodes.insert(returnNodes.end(), returnConditionalAndExpressionPrimePrimeNodes.begin(), returnConditionalAndExpressionPrimePrimeNodes.end());

            return returnNodes;
        }
    }

    decrementLoop(storedIterVal);
    return {};
}

std::vector<Node *> Parser::conditionalOrExpression()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    std::vector<Node *> returnConditionalAndNodes = conditionalAndExpression();
    if (!returnConditionalAndNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnConditionalAndNodes.begin(), returnConditionalAndNodes.end());
        std::vector<Node *> returnConditionalOrExpressionPrimeNodes = conditionalOrExpressionPrime();

        returnNodes.insert(returnNodes.end(), returnConditionalOrExpressionPrimeNodes.begin(), returnConditionalOrExpressionPrimeNodes.end());

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("conditionalOrExpression", std::nullopt, returnNodes));
        return returnVec;
    }

    decrementLoop(storedIterVal);
    errorHandler("conditionalOrExpression");
    return {};
}

std::vector<Node *> Parser::conditionalOrExpressionPrime()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    if (currToken->getToken() == Token::T_OR)
    {
        returnNodes.push_back(new Node("||", *currToken, {}));
        increment();

        std::vector<Node *> returnConditionalAndNodes = conditionalAndExpression();
        if (!returnConditionalAndNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnConditionalAndNodes.begin(), returnConditionalAndNodes.end());
            std::vector<Node *> returnConditionalOrExpressionPrimeNodes = conditionalOrExpressionPrime();

            returnNodes.insert(returnNodes.end(), returnConditionalOrExpressionPrimeNodes.begin(), returnConditionalOrExpressionPrimeNodes.end());

            return returnNodes;
        }
    }

    decrementLoop(storedIterVal);
    return {};
}

std::vector<Node *> Parser::assignmentExpression()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    std::vector<Node *> returnConditionalOrNodes = conditionalOrExpression();
    if (!returnConditionalOrNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnConditionalOrNodes.begin(), returnConditionalOrNodes.end());

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("assignmentExpression", std::nullopt, returnNodes));
        return returnVec;
    }

    std::vector<Node *> returnAssignmentNodes = assignment();
    if (!returnAssignmentNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnAssignmentNodes.begin(), returnAssignmentNodes.end());

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("assignmentExpression", std::nullopt, returnNodes));
        return returnVec;
    }

    decrementLoop(storedIterVal);
    errorHandler("assignmentExpression");
    return {};
}

std::vector<Node *> Parser::assignment()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    std::vector<Node *> returnIdentifierNodes = identifier();
    if (!returnIdentifierNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnIdentifierNodes.begin(), returnIdentifierNodes.end());

        if (currToken->getToken() == Token::T_ASSIGN)
        {
            returnNodes.push_back(new Node("=", *currToken, {}));
            increment();

            std::vector<Node *> returnAssignmentExpressionNodes = assignmentExpression();
            if (!returnAssignmentExpressionNodes.empty())
            {
                returnNodes.insert(returnNodes.end(), returnAssignmentExpressionNodes.begin(), returnAssignmentExpressionNodes.end());

                std::vector<Node *> returnVec;
                returnVec.push_back(new Node("assignment", std::nullopt, returnNodes));
                return returnVec;
            }
        }
    }

    decrementLoop(storedIterVal);
    errorHandler("assignment");
    return {};
}

std::vector<Node *> Parser::expression()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    std::vector<Node *> returnAssignmentExpressionNodes = assignmentExpression();
    if (!returnAssignmentExpressionNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnAssignmentExpressionNodes.begin(), returnAssignmentExpressionNodes.end());

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("expression", std::nullopt, returnNodes));
        return returnVec;
    }

    decrementLoop(storedIterVal);
    errorHandler("expression");
    return {};
}

std::vector<Node *> Parser::globalDeclarations()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    std::vector<Node *> returnGlobalDeclarationNodes = globalDeclaration();
    if (!returnGlobalDeclarationNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnGlobalDeclarationNodes.begin(), returnGlobalDeclarationNodes.end());

        std::vector<Node *> returnGlobalDeclarationsPrimeNodes = globalDeclarationsPrime();

        returnNodes.insert(returnNodes.end(), returnGlobalDeclarationsPrimeNodes.begin(), returnGlobalDeclarationsPrimeNodes.end());

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("globalDeclarations", std::nullopt, returnNodes));
        return returnVec;
    }

    decrementLoop(storedIterVal);
    errorHandler("globalDeclarations");
    return {};
}

std::vector<Node *> Parser::globalDeclarationsPrime()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    std::vector<Node *> returnGlobalDeclarationNodes = globalDeclaration();
    if (!returnGlobalDeclarationNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnGlobalDeclarationNodes.begin(), returnGlobalDeclarationNodes.end());

        std::vector<Node *> returnGlobalDeclarationsPrimeNodes = globalDeclarationsPrime();

        returnNodes.insert(returnNodes.end(), returnGlobalDeclarationsPrimeNodes.begin(), returnGlobalDeclarationsPrimeNodes.end());

        return returnNodes;
    }

    decrementLoop(storedIterVal);
    return {};
}

std::vector<Node *> Parser::globalDeclaration()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    std::vector<Node *> returnVariableDeclarationNodes = variableDeclaration();
    if (!returnVariableDeclarationNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnVariableDeclarationNodes.begin(), returnVariableDeclarationNodes.end());

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("globalDeclarations", std::nullopt, returnNodes));
        return returnVec;
    }

    std::vector<Node *> returnFunctionDeclarationNodes = functionDeclaration();
    if (!returnFunctionDeclarationNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnFunctionDeclarationNodes.begin(), returnFunctionDeclarationNodes.end());

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("globalDeclarations", std::nullopt, returnNodes));
        return returnVec;
    }

    std::vector<Node *> returnMainFunctionDeclarationNodes = mainFunctionDeclaration();
    if (!returnMainFunctionDeclarationNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnMainFunctionDeclarationNodes.begin(), returnMainFunctionDeclarationNodes.end());

        std::vector<Node *> returnVec;
        returnVec.push_back(new Node("globalDeclarations", std::nullopt, returnNodes));
        return returnVec;
    }

    decrementLoop(storedIterVal);
    errorHandler("globalDeclaration");
    return {};
}

std::vector<Node *> Parser::functionDeclaration()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    std::vector<Node *> returnFunctionHeaderNodes = functionHeader();
    if (!returnFunctionHeaderNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnFunctionHeaderNodes.begin(), returnFunctionHeaderNodes.end());

        std::vector<Node *> returnBlockNodes = block();
        if (!returnBlockNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnBlockNodes.begin(), returnBlockNodes.end());

            std::vector<Node *> returnVec;
            returnVec.push_back(new Node("functionDeclaration", std::nullopt, returnNodes));
            return returnVec;
        }
    }

    decrementLoop(storedIterVal);
    errorHandler("functionDeclaration");
    return {};
}

std::vector<Node *> Parser::mainFunctionDeclaration()
{
    std::vector<Node *> returnNodes;
    unsigned long storedIterVal = currToken - tokenList.begin();

    std::vector<Node *> returnMainFunctionDeclaratorNodes = mainFunctionDeclarator();
    if (!returnMainFunctionDeclaratorNodes.empty())
    {
        returnNodes.insert(returnNodes.end(), returnMainFunctionDeclaratorNodes.begin(), returnMainFunctionDeclaratorNodes.end());

        std::vector<Node *> returnBlockNodes = block();
        if (!returnBlockNodes.empty())
        {
            returnNodes.insert(returnNodes.end(), returnBlockNodes.begin(), returnBlockNodes.end());

            std::vector<Node *> returnVec;
            returnVec.push_back(new Node("mainFunctionDeclaration", std::nullopt, returnNodes));
            return returnVec;
        }
    }

    decrementLoop(storedIterVal);
    errorHandler("mainFunctionDeclaration");
    return {};
}
