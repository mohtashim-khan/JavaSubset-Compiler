

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
    std::string errorString;
    //Token List from program
    std::vector<ParserToken> tokenList;

    //Keep track of current and next tokens
    std::vector<ParserToken>::iterator currToken;
    std::vector<ParserToken>::iterator nextToken;

    std::vector<Node *> resultTree;

    std::vector<Node*> start(); //DONE
    std::vector<Node*> literal(); //DONE
    std::vector<Node*> type(); //DONE
    
    std::vector<Node*> globalDeclarations(); 
    std::vector<Node*> globalDecPrime(); 

    std::vector<Node*> globalDeclaration();
    std::vector<Node*> variableDeclaration(); //DONE
    std::vector<Node*> identifier(); //DONE
    std::vector<Node*> functionDeclaration(); //DONE
    std::vector<Node*> functionHeader(); //DONE
   
    std::vector<Node*> functionDeclarator(); //DONE 

    
    std::vector<Node*> formalParameterList(); //DONE
    std::vector<Node*> formalParameterListPrime(); //DONE

    std::vector<Node*> formalParameter();   //DONE
    std::vector<Node*> mainFunctionDeclaration();   
    std::vector<Node*> mainFunctionDeclarator(); //DONE
    std::vector<Node*> block(); //DONE -- testing required
    
    std::vector<Node*> blockStatements(); //DONE -- testing required
    std::vector<Node*> blockStatementsPrime(); //DONE -- testing required

    std::vector<Node*> blockStatement(); //DONE -- testing required
    std::vector<Node*> statement();
    std::vector<Node*> statementExpression();
    std::vector<Node*> primary();   //DONE -- testing required
    
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



    void errorHandler(std::string type);
    void increment();
    void decrement();
    void decrementLoop(unsigned long storedIterValue);




    

    


};



#endif