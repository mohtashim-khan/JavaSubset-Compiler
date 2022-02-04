#include "header.h"
#include <fstream>
#include <iostream>
#include <cerrno>

// Constructor
Lexer::Lexer(std::fstream *inputFile)
{
    in = inputFile;
}

Token Lexer::lex()
{

    while (!in->eof())
    {
        // Clear previous token lexeme
        lexeme.clear();
        char c = in->peek();

        // If new line, Increment Line # and get next char
        if (c == '\n')
        {
            lineno++;
            in->get();
        }

        // Skip over whiteSpaces
        else if (isspace(c))
        {
            in->get();
        }

        // Check for division or comment
        else if (c == '/')
        {
            c = in->get();

            // Check for comments and skip over
            if (in->peek() == '/')
            {
                while (in->peek() != '\n' && !in->eof())
                {
                    in->get();
                }
            }

            // Otherwise return Division Operator token
            else
            {
                curr_token = Token::T_DIV;
                return curr_token;
            }
        }

        // If AlphaNumeric, Check if ID or Reserved Word
        else if (isalpha(c) || c == '_')
        {

            // Read Chars until non Alpha Numeric Found
            readWord();

            // Return Reserved Token if Word is Reserved
            if (isReserved())
            {
                return curr_token;
            }

            // Else Return ID token
            curr_token = Token::T_ID;
            return curr_token;
        }

        // Check For String Literals
        else if (c == '\"')
        {
            in->get();
            if (!in->eof())

                // Read Chars until second Quotation Found. Set Current token to String
                readString();
            return curr_token;
        }

        // Check for Character Escapes
        else if (c == '\\')
        {
            // Set Token to appropriate Character Escape.
            checkCharacterEscapes();
            return curr_token;
        }

        // Check For Integer Literals
        else if (isdigit(c))
        {
            // Read Int until non digit is found . Set Current token to Number
            readInt();
            return curr_token;
        }

        // Check for Operators Except for Division since that is already handled
        else if (isOperator(c))
        {
            readOperator();
            if (curr_token == Token::T_ERR) // If there is only a single '&' or '|' Operator, Throw an Error
            {
                illegal(c);
            }
            else
            {
                return curr_token;
            }
        }

        // Check for Parantheses, braces, Semicolons, commas
        else if (isOther(c))
        {
            readOther();
            return curr_token;
        }
        else if (in->eof())
        {
            return Token::T_EOF;
        }
        else
        {
            illegal(c);
            in->get();
        }
    }
    return Token::T_EOF;
}

// Read and Append to Lexeme until no alpha num or _ is found
void Lexer::readWord()
{
    lexeme.push_back(in->get());
    char c = in->peek();

    while (isalnum(c) || c == '_' || in->eof())
    {
        lexeme.push_back(in->get());
        c = in->peek();
    }
}

// Read Chars into lexeme until second Quotation Found. Sets Current token to String
void Lexer::readString()
{
    curr_token = Token::T_STRING;
    lexeme.push_back(in->get());
    char c = in->peek();

    while (c != '\"' && !in->eof())
    {
        lexeme.push_back(in->get());
        c = in->peek();
    }
    in->get();
}

// Checks for Reserved words, Clear Lexeme if found
bool Lexer::isReserved()
{
    if (lexeme == "true")
    {
        curr_token = Token::T_TRUE;
        lexeme.clear();
        return true;
    }

    else if (lexeme == "false")
    {
        curr_token = Token::T_FALSE;
        lexeme.clear();
        return true;
    }

    else if (lexeme == "boolean")
    {
        curr_token = Token::T_BOOLEAN;
        lexeme.clear();
        return true;
    }

    else if (lexeme == "int")
    {
        curr_token = Token::T_INT;
        lexeme.clear();
        return true;
    }

    else if (lexeme == "void")
    {
        curr_token = Token::T_VOID;
        lexeme.clear();
        return true;
    }

    else if (lexeme == "if")
    {
        curr_token = Token::T_IF;
        lexeme.clear();
        return true;
    }

    else if (lexeme == "else")
    {
        curr_token = Token::T_ELSE;
        lexeme.clear();
        return true;
    }

    else if (lexeme == "while")
    {
        curr_token = Token::T_WHILE;
        lexeme.clear();
        return true;
    }

    else if (lexeme == "break")
    {
        curr_token = Token::T_BREAK;
        lexeme.clear();
        return true;
    }

    else if (lexeme == "return")
    {
        curr_token = Token::T_RETURN;
        lexeme.clear();
        return true;
    }

    return false;
}

void Lexer::checkCharacterEscapes()
{
    char c = in->peek();
    if (c == 'b')
    {
        curr_token = Token::T_CESC_B;
    }

    else if (c == 'f')
    {
        curr_token = Token::T_CESC_F;
    }

    else if (c == 't')
    {
        curr_token = Token::T_CESC_T;
    }

    else if (c == 'r')
    {
        curr_token = Token::T_CESC_R;
    }

    else if (c == 'n')
    {
        curr_token = Token::T_CESC_N;
    }

    else if (c == '\'')
    {
        curr_token = Token::T_CESC_APOST;
    }

    else if (c == '\"')
    {
        curr_token = Token::T_CESC_QUOT;
    }

    else if (c == '\\')
    {
        curr_token = Token::T_CESC_SLASH;
    }
}

void Lexer::readInt()
{
    curr_token = Token::T_NUM;
    lexeme.push_back(in->get());
    char c = in->peek();
    while (isdigit(c))
    {
        lexeme.push_back(in->get());
        c = in->peek();
    }
}

// Operators except for division
bool Lexer::isOperator(char c)
{
    switch (c)
    {
    case '+':
    case '-':
    case '*':
    case '%':
    case '<':
    case '>':
    case '=':
    case '!':
    case '&':
    case '|':
        return true;
    default:
        return false;
    }
}

void Lexer::readOperator()
{
    char c = in->get();
    switch (c)
    {
    case '+':
        curr_token = Token::T_ADD;
        break;
    case '-':
        curr_token = Token::T_SUB;
        break;
    case '*':
        curr_token = Token::T_MULT;
        break;
    case '<':
        curr_token = Token::T_LT;
        if (in->peek() == '=')
        {
            curr_token = Token::T_LTE;
            in->get();
        }
        break;
    case '>':
        curr_token = Token::T_GT;
        if (in->peek() == '=')
        {
            curr_token = Token::T_GTE;
            in->get();
        }
        break;

    case '=':
        curr_token = Token::T_ASSIGN;
        if (in->peek() == '=')
        {
            curr_token = Token::T_EQUAL;
            in->get();
        }
        break;

    case '!':
        curr_token = Token::T_NOT;
        if (in->peek() == '=')
        {
            curr_token = Token::T_NEQUAL;
            in->get();
        }
        break;

    case '&':
        curr_token = Token::T_ERR;
        if (in->peek() == '&')
        {
            curr_token = Token::T_AND;
            in->get();
        }
        break;

    case '|':
        curr_token = Token::T_ERR;
        if (in->peek() == '|')
        {
            curr_token = Token::T_OR;
            in->get();
        }
        break;

    default:
        break;
    }
}

bool Lexer::isOther(char c)
{
    switch (c)
    {
    case '(':
    case ')':
    case '{':
    case '}':
    case ';':
    case ',':
        return true;
    default:
        return false;
    }
}

void Lexer::readOther()
{
    char c = in->get();
    switch (c)
    {
    case '(':
        curr_token = Token::T_LPARA;
        break;
    case ')':
        curr_token = Token::T_RPARA;
        break;
    case '{':
        curr_token = Token::T_LBRACE;
        break;
    case '}':
        curr_token = Token::T_RBRACE;
        break;

    case ';':
        curr_token = Token::T_SEMICOLON;
        break;

    case ',':
        curr_token = Token::T_COMMA;
        break;

    default:
        break;
    }
}

void Lexer::illegal(char c)
{
    std::cerr << "Illegal character " << c << " at line " << lineno << '\n';
}