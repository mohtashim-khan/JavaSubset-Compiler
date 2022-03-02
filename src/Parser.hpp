

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
    
    std::vector<Node*> globalDeclarations(); //DONE -- testing required
    std::vector<Node*> globalDeclarationsPrime(); //DONE -- testing required

    std::vector<Node*> globalDeclaration(); //DONE -- testing required
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
    std::vector<Node*> statement(); //DONE -- testing required
    std::vector<Node*> statementExpression(); //DONE -- testing required
    std::vector<Node*> primary();   //DONE -- testing required
    
    std::vector<Node*> argumentList(); //DONE -- testing required
    std::vector<Node*> argumentListPrime(); //DONE -- testing required


    std::vector<Node*> functionInvocation(); //DONE --testing required
    std::vector<Node*> postFixExpression(); //DONE --testing required
    std::vector<Node*> unaryExpression(); //DONE --testing required
    
    std::vector<Node*> multiplicativeExpression(); //DONE --testing required
    std::vector<Node*> multiplicativeExpressionPrime(); //DONE --testing required

    
    std::vector<Node*> additiveExpression(); //DONE --testing required
    std::vector<Node*> additiveExpressionPrime(); //DONE --testing required

    std::vector<Node*> relationalExpression(); //DONE --testing required
    std::vector<Node*> relationalExpressionPrime(); //DONE --testing required

    std::vector<Node*> equalityExpression(); //DONE --testing required
    std::vector<Node*> equalityExpressionPrime(); //DONE --testing required

    std::vector<Node*> conditionalAndExpression(); //DONE --testing required
    std::vector<Node*> conditionalAndExpressionPrime(); //DONE --testing required

    std::vector<Node*> conditionalOrExpression(); //DONE --testing required
    std::vector<Node*> conditionalOrExpressionPrime(); //DONE --testing required

    std::vector<Node*> assignmentExpression(); //DONE --testing required
    std::vector<Node*> assignment(); //DONE --testing required
    std::vector<Node*> expression(); //DONE --testing required



    void errorHandler(std::string type);
    void increment();
    void decrement();
    void decrementLoop(unsigned long storedIterValue);




    

    


};



#endif