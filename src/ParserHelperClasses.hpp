#include "header.h"
#include <iostream>
#include <string>
#include <functional>
#include <optional>

// Parser Token class to read tokens from lexer
class ParserToken
{
public:
    // Constructor
    ParserToken(Token tok, std::string lex, int lnNo);

    // Default Constructor
    ParserToken() = default;

    // Default Destructor
    ~ParserToken() = default;

   int getLine(){return lineNo;};
   std::string getLexeme(){return lexeme;};
   Token getToken(){return token;};


private:
    Token token;
    std::string lexeme;
    int lineNo;

};

// Used to Create AST(as a binary tree), if Node only has one branch, then only left node gets populated
class Node
{
public:
    Node(std::string typ, std::optional<ParserToken> tok = std::nullopt, std::vector<Node*> Nodes = {});
    
    //Default Constructor
    Node() = default;
    //Default Destructor
    ~Node() = default;

    void printAST();

    int getLineNum();

private:
    std::string type;
    std::optional<ParserToken> token;
    std::vector<Node*> NodeList;
};