#ifndef HEADER_H
#define HEADER_H

#include <string>


// Token Enum
enum class Token
{
    T_EOF = 0,

    // Literals
    T_ID = 1,
    T_NUM,
    T_STRING,

    T_CESC_B,
    T_CESC_F,
    T_CESC_T,
    T_CESC_R,
    T_CESC_N,
    T_CESC_APOST,
    T_CESC_QUOT,
    T_CESC_SLASH,

    // Reserved Words
    T_TRUE,
    T_FALSE,
    T_BOOLEAN,
    T_INT,
    T_VOID,
    T_IF,
    T_ELSE,
    T_WHILE,
    T_BREAK,
    T_RETURN,

    // Operators
    T_ADD,
    T_SUB,
    T_MULT,
    T_DIV,
    T_MOD,
    T_LT,
    T_GT,
    T_LTE,
    T_GTE,
    T_ASSIGN,
    T_EQUAL,
    T_NEQUAL,
    T_NOT,
    T_AND,
    T_OR,

    // Other Things
    T_LPARA,
    T_RPARA,
    T_LBRACE,
    T_RBRACE,
    T_SEMICOLON,
    T_COMMA,

    //ERROR TOKEN
    T_ERR
};

// Lexer Class Del
class Lexer
{
public:
    //Constructor
    Lexer(std::fstream *input);

    // Default Destructor.
    ~Lexer() = default;

    int getLine() { return lineno; }

    Token lex();

    void func();

    std::string getLexeme() { return lexeme; };

private:
    std::fstream *in;
    int lineno = 1;
    Token curr_token;
    std::string lexeme;

    void readWord();
    bool isReserved();
    void checkCharacterEscapes();
    void readString();
    void readInt();
    bool isOperator(char c);
    void readOperator();
    bool isOther(char c);
    void readOther();
    void illegal(char c);

};



char const *getName(Token token);

#endif