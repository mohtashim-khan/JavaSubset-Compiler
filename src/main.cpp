// This file was inspired and based on the tutorial made by my TA Shankar.
// The source code for the tutorial can be found here : https://pages.cpsc.ucalgary.ca/~sankarasubramanian.g/411/

#include "header.h"
#include "Parser.hpp"
#include <fstream>
#include <cstdlib>
#include <iostream>
#include <cerrno>

int main(int argc, char *argv[])
{
    // Check for correct amount of CLI arguments
    if (argc != 2)
    {
        std::cout << "Incorrect Amount of Command Line Arguments\n";
        return EXIT_FAILURE;
    }

    // Open provided CLI argument file
    std::fstream inputfile;
    inputfile.open(argv[1], std::ios::in);

    // Check if opened succesfully
    if (!inputfile.is_open())
    {
        std::cerr << "FAILED TO OPEN FILE: " << argv[1] << "\n";
        return EXIT_FAILURE;
    }

    // Initialize Lexer
    auto lexer = new Lexer(&inputfile);

    // Initialize ParserToken Vector
    std::vector<ParserToken> tokenVec;

    // Get First Token
    Token token = lexer->lex();

    std::cout << "Lexer Output: \n";

    // Print out all tokens until EOF including Line # and the Lexeme content
    while (token != Token::T_EOF)
    {
        //std::cout << "Line: " << lexer->getLine() << ", Token: [" << getName(token) << "], Lexeme: [" << lexer->getLexeme() << "]\n";

        // Push back ParserToken
        tokenVec.push_back(ParserToken(token, lexer->getLexeme(), lexer->getLine()));

        if (lexer->getWarnings() > 10)
        {
            std::cerr << "ERROR IN LEXER: TOO MANY WARNINGS, PROGRAM EXITING \n";
            return EXIT_FAILURE;
        }

        token = lexer->lex();
    }

    tokenVec.push_back(ParserToken(token, lexer->getLexeme(), lexer->getLine()));

    // Check for warnings before intializing Parser
    if (lexer->getWarnings() > 0)
    {
        std::cerr << "WARNINGS PRESENT IN LEXER, PROGRAM EXITING \n";
        return EXIT_FAILURE;
    }

    // Initialize Parser and run Parser
    auto parser = new Parser(&tokenVec);

    std::cout << "Parser Output: \n";

    parser->parse();

    return EXIT_SUCCESS;
}