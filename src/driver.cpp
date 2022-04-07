#include "driver.hpp"
#include "header.h"

Driver::Driver(std::fstream* inputFil)
{
    inputFile = inputFil;
}



bool Driver::createAST(std::fstream &in) 
{
    // If the stream is bad or if the stream is at EOF
    // Return 1
    if (!in.good() && in.eof()) {
        return 1;
    }
    bool res = parse(in);
    return res;
}

// Calls yylex and returns the token.
// Called by the parser for every token
// Prints out the token if needed. Can be a flag or a global debug var.
int Driver::getToken(JCC::Parser::semantic_type *yylval, JCC::Parser::location_type *location)
{
    int tok = lexer->lex(yylval, location);
    //std::cout << "Token: " << getName((JCC::Parser::token::token_kind_type)tok) << ", Line: "<< *location <<"\n";
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
        exit(EXIT_FAILURE);
    }

    return 0;
}

void Driver::analyze()
{
    analyzer = std::make_unique<SemanticAnalyzer>(tree);
    analyzer->execute();
    tree->print();

}

void Driver::generate()
{
    generator = std::make_unique<CodeGenerator>(tree);
    generator->execute();
    //tree->print();
}