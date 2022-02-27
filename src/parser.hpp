

#ifndef PARSER_H
#define PARSER_H

#include <vector>
#include <iostream>
#include <cerrno>
#include <string>
#include "header.h"
#include "ParserHelperClasses.hpp"


class Parser
{
public:
    // Token Parse Function
    void parse();

    //Constructor
    Parser(std::vector<ParserToken> *tokens);

    // Default Destructor.
    ~Parser() = default;

private:
    //Token List from program
    std::vector<ParserToken> tokenList;

    //Keep track of current and next tokens
    std::vector<ParserToken>::iterator currToken;
    std::vector<ParserToken>::iterator nextToken;

    Node resultTree;

    Node parseStart();
    Node parseLiteral();
    Node parseType();
    Node parseGlobalDeclarations(); //Infinite Recursion
    Node parseGlobalDeclaration();
    Node variableDeclaration();
    Node identifier();
    Node functionDeclaration();
    Node functionHeader();
    Node functionDeclarator();
    Node formalParameterList(); //Infinite Recursion
    Node formalParameter();
    Node mainFunctionDeclaration();
    Node mainFunctionDeclarator();
    Node block();
    Node blockStatements(); //Infinite Recursion
    Node blockStatment();
    Node statement();
    Node statementExpression();
    Node primary();
    Node argumentList(); //Infinite Recursion
    Node functionInvocation(); 
    Node postFixExpression();
    Node unaryExpression();
    Node multiplicativeExpression(); //Infinite Recursion
    Node additiveExpression(); //Infinite Recursion
    Node relationalExpression(); //Infinite Recursion
    Node equalityExpression(); //Infinite Recursion
    Node conditionalAndExpression(); //Infinite Recursion
    Node conditionalOrExpression(); //Infinite Recursion
    Node assignmentExpression();
    Node assignment();
    Node expression();


    

    


};



#endif