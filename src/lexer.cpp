//This file was inspired and based on the tutorial made by my TA Shankar. 
//The source code for the tutorial can be found here : https://pages.cpsc.ucalgary.ca/~sankarasubramanian.g/411/

#include "header.h"
#include <fstream>
#include <iostream>
#include <cerrno>

// Constructor
Lexer::Lexer(std::fstream *inputFile)
{
    in = inputFile;
}

JCC::Parser::token::token_kind_type Lexer::lex(JCC::Parser::semantic_type *yylval, JCC::Parser::location_type *location)
{

    while (!in->eof())
    {
        location->columns();
        // Clear previous token lexeme
        lexeme.clear();
        char c = in->peek();

        // If new line, Increment Line # and get next char
        if (c == '\n')
        {
            location->lines(); 
            location->step();
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
                curr_token = JCC::Parser::token::T_DIV;
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
            curr_token = JCC::Parser::token::T_ID;
            yylval->strVal = new std::string(lexeme);
            return curr_token;
        }

        // Check For String Literals
        else if (c == '\"')
        {
            in->get();
            if (!in->eof())

                // Read Chars until second Quotation Found. Set Current token to String
                readString();
                yylval->strVal = new std::string(lexeme);

            // If no error in string, return the token
            if (curr_token != JCC::Parser::token::T_ERR)
            {
                return curr_token;
            }

            std::cerr << "STRING MISSING END QUOTE AT LINE: " << lineno << "\n";
            warnings++;
        }

        // Check for Character Escapes
        else if (c == '\\')
        {
            // Set Token to appropriate Character Escape.
            checkCharacterEscapes();
            if (curr_token != JCC::Parser::token::T_ERR)
            {
                return curr_token;
            }
            illegal(c);
        }

        // Check For Integer Literals
        else if (isdigit(c))
        {
            // Read Int until non digit is found . Set Current token to Number
            readInt();
            yylval->ival = std::stoul(lexeme);
            return curr_token;
        }

        // Check for Operators Except for Division since that is already handled
        else if (isOperator(c))
        {
            readOperator();
            if (curr_token == JCC::Parser::token::T_ERR) // If there is only a single '&' or '|' Operator, Throw an Error
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
            return JCC::Parser::token::T_EOF;
        }
        else
        {
            illegal(c);
            in->get();
        }
    }
    return JCC::Parser::token::T_EOF;
}

// Read and Append to Lexeme until no alpha num or _ is found
void Lexer::readWord()
{
    lexeme.push_back(in->get());
    char c = in->peek();

    while (isalnum(c) || c == '_')
    {
        lexeme.push_back(in->get());
        c = in->peek();
    }
}

// Read Chars into lexeme until second Quotation Found. Sets Current token to String
void Lexer::readString()
{
    curr_token = JCC::Parser::token::T_STRING;
    lexeme.push_back(in->get());
    char c = in->peek();

    while (c != '\"' && !in->eof())
    {
        lexeme.push_back(in->get());
        c = in->peek();

        if (in->eof())
        {
            curr_token = JCC::Parser::token::T_ERR;
        }
        // If any escaped character appear, add them to the string
        if (c == '\\')
        {
            in->get();
            // get the total number of consecutive escapes.
            int escapeCount = 1;
            while (!in->eof() && in->peek() == '\\')
            {
                escapeCount++;
                in->get();
            }
            // if the total number of consecutive escapes is odd, Add the character following the escapes.
            if (escapeCount % 2 != 0)
            {
                // Add back the backslashes since they are a part of the string
                for (int i = 0; i < escapeCount; i++)
                {
                    lexeme.push_back('\\');
                }
                // Add the character following the backslashes
                lexeme.push_back(in->get());
                c = in->peek();
            }
        }
    }
    in->get();
    
}

// Checks for Reserved words, Clear Lexeme if found
bool Lexer::isReserved()
{
    if (lexeme == "true")
    {
        curr_token = JCC::Parser::token::T_TRUE;
        lexeme.clear();
        return true;
    }
    else if (lexeme == "false")
    {
        curr_token = JCC::Parser::token::T_FALSE;
        lexeme.clear();
        return true;
    }

    else if (lexeme == "boolean")
    {
        curr_token = JCC::Parser::token::T_BOOLEAN;
        lexeme.clear();
        return true;
    }

    else if (lexeme == "int")
    {
        curr_token = JCC::Parser::token::T_INT;
        lexeme.clear();
        return true;
    }

    else if (lexeme == "void")
    {
        curr_token = JCC::Parser::token::T_VOID;
        lexeme.clear();
        return true;
    }

    else if (lexeme == "if")
    {
        curr_token = JCC::Parser::token::T_IF;
        lexeme.clear();
        return true;
    }

    else if (lexeme == "else")
    {
        curr_token = JCC::Parser::token::T_ELSE;
        lexeme.clear();
        return true;
    }

    else if (lexeme == "while")
    {
        curr_token = JCC::Parser::token::T_WHILE;
        lexeme.clear();
        return true;
    }

    else if (lexeme == "break")
    {
        curr_token = JCC::Parser::token::T_BREAK;
        lexeme.clear();
        return true;
    }

    else if (lexeme == "return")
    {
        curr_token = JCC::Parser::token::T_RETURN;
        lexeme.clear();
        return true;
    }

    return false;
}

// Assign Character Escape tokens
void Lexer::checkCharacterEscapes()
{
    in->get();
    char c = in->peek();
    if (c == 'b')
    {
        curr_token = JCC::Parser::token::T_CESC_B;
    }

    else if (c == 'f')
    {
        curr_token = JCC::Parser::token::T_CESC_F;
    }

    else if (c == 't')
    {
        curr_token = JCC::Parser::token::T_CESC_T;
    }

    else if (c == 'r')
    {
        curr_token = JCC::Parser::token::T_CESC_R;
    }

    else if (c == 'n')
    {
        curr_token = JCC::Parser::token::T_CESC_N;
    }

    else if (c == '\'')
    {
        curr_token = JCC::Parser::token::T_CESC_APOST;
    }

    else if (c == '\"')
    {
        curr_token = JCC::Parser::token::T_CESC_QUOT;
    }

    else if (c == '\\')
    {
        curr_token = JCC::Parser::token::T_CESC_SLASH;
    }
    else
    {
        curr_token = JCC::Parser::token::T_ERR;
    }
}

// read up till the first non digit
void Lexer::readInt()
{
    curr_token = JCC::Parser::token::T_NUM;
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

// Assign operator tokens
void Lexer::readOperator()
{
    char c = in->get();
    switch (c)
    {
    case '+':
        curr_token = JCC::Parser::token::T_ADD;
        break;
    case '-':
        curr_token = JCC::Parser::token::T_SUB;
        break;
    case '*':
        curr_token = JCC::Parser::token::T_MULT;
        break;
    case '%':
        curr_token = JCC::Parser::token::T_MOD;
        break;
    
    case '<':
        curr_token = JCC::Parser::token::T_LT;
        if (in->peek() == '=')
        {
            curr_token = JCC::Parser::token::T_LTE;
            in->get();
        }
        break;
    case '>':
        curr_token = JCC::Parser::token::T_GT;
        if (in->peek() == '=')
        {
            curr_token = JCC::Parser::token::T_GTE;
            in->get();
        }
        break;

    case '=':
        curr_token = JCC::Parser::token::T_ASSIGN;
        if (in->peek() == '=')
        {
            curr_token = JCC::Parser::token::T_EQUAL;
            in->get();
        }
        break;

    case '!':
        curr_token = JCC::Parser::token::T_NOT;
        if (in->peek() == '=')
        {
            curr_token = JCC::Parser::token::T_NEQUAL;
            in->get();
        }
        break;

    case '&':
        curr_token = JCC::Parser::token::T_ERR;
        if (in->peek() == '&')
        {
            curr_token = JCC::Parser::token::T_AND;
            in->get();
        }
        break;

    case '|':
        curr_token = JCC::Parser::token::T_ERR;
        if (in->peek() == '|')
        {
            curr_token = JCC::Parser::token::T_OR;
            in->get();
        }
        break;

    default:
        break;
    }
}

// Other attributes
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

// Assign Other Attribute Tokens
void Lexer::readOther()
{
    char c = in->get();
    switch (c)
    {
    case '(':
        curr_token = JCC::Parser::token::T_LPARA;
        break;
    case ')':
        curr_token = JCC::Parser::token::T_RPARA;
        break;
    case '{':
        curr_token = JCC::Parser::token::T_LBRACE;
        break;
    case '}':
        curr_token = JCC::Parser::token::T_RBRACE;
        break;

    case ';':
        curr_token = JCC::Parser::token::T_SEMICOLON;
        break;

    case ',':
        curr_token = JCC::Parser::token::T_COMMA;
        break;

    default:
        break;
    }
}

// Inform User of Errors
void Lexer::illegal(char c)
{
    std::cerr << "Illegal character " << c << " at line " << lineno << '\n';
    warnings++;
}