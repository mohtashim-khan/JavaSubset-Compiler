#include "header.h"
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

private:
    Token token;
    std::string lexeme;
    int lineNo;
};

// Used to Create AST(as a binary tree)
class Node
{
public:
    Node(std::string typ, std::optional<ParserToken> tok = std::nullopt, std::optional<Node *> lef = std::nullopt, std::optional<Node *> righ = std::nullopt);

    ~Node() = default;

    void printAST();

private:
    std::string type;
    std::optional<ParserToken> token;
    std::optional<Node *> left;
    std::optional<Node *> right;
};