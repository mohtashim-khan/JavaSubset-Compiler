

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
    bool errorFlag = false;
    //Token List from program
    std::vector<ParserToken> tokenList;

    //Keep track of current and next tokens
    std::vector<ParserToken>::iterator currToken;
    std::vector<ParserToken>::iterator nextToken;

    std::vector<Node *> resultTree;

    std::vector<Node*> start();
    std::vector<Node*> literal();
    std::vector<Node*> type();
    
    std::vector<Node*> globalDeclarations(); //Immediate Left Recursion
    std::vector<Node*> globalDecPrime(); //Immediate Left Recursion Solution

    std::vector<Node*> globalDeclaration();
    std::vector<Node*> variableDeclaration();
    std::vector<Node*> identifier();
    std::vector<Node*> functionDeclaration();
    std::vector<Node*> functionHeader();
   
    std::vector<Node*> functionDeclarator(); //Left Factoring Required
    std::vector<Node*> functionDeclaratorPrime(); //Left Factoring Solved

    
    std::vector<Node*> formalParameterList(); //Immediate Left Recursion
    std::vector<Node*> formalParameterListPrime(); //Immediate Left Recursion Solution

    std::vector<Node*> formalParameter();
    std::vector<Node*> mainFunctionDeclaration();
    std::vector<Node*> mainFunctionDeclarator();
    std::vector<Node*> block();
    
    std::vector<Node*> blockStatements(); //Immediate Left Recursion
    std::vector<Node*> blockStatementsPrime(); //Immediate Left Recursion Solution

    std::vector<Node*> blockStatment();
    std::vector<Node*> statement();
    std::vector<Node*> statementExpression();
    std::vector<Node*> primary();
    
    std::vector<Node*> argumentList(); //Immediate Left Recursion
    std::vector<Node*> argumentListPrime(); //Immediate Left Recursion Solution


    std::vector<Node*> functionInvocation(); 
    std::vector<Node*> postFixExpression();
    std::vector<Node*> unaryExpression();
    
    std::vector<Node*> multiplicativeExpression(); //Immediate Left Recursion
    std::vector<Node*> multiplicativeExpressionPrime(); //Immediate Left Recursion Solution

    
    std::vector<Node*> additiveExpression(); //Immediate Left Recursion
    std::vector<Node*> additiveExpressionPrime(); //Immediate Left Recursion Solution

    std::vector<Node*> relationalExpression(); //Immediate Left Recursion
    std::vector<Node*> relationalExpressionPrime(); //Immediate Left Recursion Solution

    std::vector<Node*> equalityExpression(); //Immediate Left Recursion
    std::vector<Node*> equalityExpressionPrime(); //Immediate Left Recursion Solution

    std::vector<Node*> conditionalAndExpression(); //Immediate Left Recursion
    std::vector<Node*> conditionalAndExpressionPrime(); //Immediate Left Recursion Solution

    std::vector<Node*> conditionalOrExpression(); //Immediate Left Recursion
    std::vector<Node*> conditionalOrExpressionPrime(); //Immediate Left Recursion Solution

    std::vector<Node*> assignmentExpression();
    std::vector<Node*> assignment();
    std::vector<Node*> expression();



    void errorHandler();
    void increment();
    void decrement();
    void decrementLoop(unsigned long storedIterValue);




    

    


};



#endif