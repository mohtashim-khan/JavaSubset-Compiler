#include "driver.hpp"
#include "header.h"

Driver::Driver(std::fstream* inputFil)
{
    inputFile = inputFil;
}



bool Driver::start(std::fstream &in) 
{
    // If the stream is bad or if the stream is at EOF
    // Return 1
    if (!in.good() && in.eof()) {
        return 1;
    }
    bool res = parse(in);
    if (!res) tree->print();

    return res;
}

// Calls yylex and returns the token.
// Called by the parser for every token
// Prints out the token if needed. Can be a flag or a global debug var.
int Driver::getToken(JCC::Parser::semantic_type *yylval, JCC::Parser::location_type *location)
{
    int tok = lexer->lex(yylval, location);
    std::cout << "Token: " << getName((JCC::Parser::token::token_kind_type)tok) << "\n";
    return tok;
}


bool Driver::parse(std::fstream &in) 
{
    lexer = std::make_unique<Lexer>(&in);

    // Pass this driver as an argument.
    parser = std::make_unique<JCC::Parser>(*this);
   
    if( parser->parse() != 0 )
    {
        std::cerr << "Parse failed!!\n";
        return 1;
    }

    return 0;
}